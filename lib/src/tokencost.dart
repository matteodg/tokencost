import 'dart:convert';
import 'dart:core';
import 'dart:developer' as developer;
import 'dart:math';

import 'package:fpdart/fpdart.dart';
import 'package:http/http.dart' as http;
import 'package:money2/money2.dart';
import 'package:tiktoken/tiktoken.dart';
import 'package:tokencost/src/local_model_prices_and_context_window_map.dart';
import 'package:tokencost/src/model/model_prices_and_context_window.dart';

const kPricesUrl = 'https://raw.githubusercontent.com/BerriAI/litellm/main/model_prices_and_context_window.json';

class TokenCost {
  static TokenCost? _instance;
  Map<String, ModelPricesAndContextWindow>? _tokenCosts;
  int? _maxScale;

  TokenCost._();

  static Future<TokenCost> getInstance() async {
    if (_instance == null) {
      _instance = TokenCost._();
      _instance?._tokenCosts = (await _init().run()).fold(
        (ex) {
          developer.log('Using local model prices and context window: $ex');
          return kLocalModelPricesAndContextWindowMap.map(
            (key, value) => MapEntry(
              key,
              ModelPricesAndContextWindow.fromJson(value),
            ),
          );
        },
        (modelPricesAndContextWindow) => modelPricesAndContextWindow,
      );
      _instance?._maxScale = calculateMaxScale(_instance!._tokenCosts!);
    }
    return _instance!;
  }

  static TokenCost getLocalInstance() {
    if (_instance == null) {
      _instance = TokenCost._();
      _instance?._tokenCosts = kLocalModelPricesAndContextWindowMap.map(
        (key, value) => MapEntry(
          key,
          ModelPricesAndContextWindow.fromJson(value),
        ),
      );
      _instance?._maxScale = calculateMaxScale(_instance!._tokenCosts!);
    }
    return _instance!;
  }

  static int? calculateMaxScale(Map<String, ModelPricesAndContextWindow> tokenCosts) {
    return tokenCosts.values
        .flatMap((e) => [e.inputCostPerToken, e.outputCostPerToken])
        .filter((e) => e != null && e > 0.0)
        .minimumBy(Order.orderDouble)
        .fold(
      () => null,
      (t) {
        final string = t.toString();
        if (string.contains('e')) {
          final result = -int.parse(string.split('e')[1]);
          if (!string.contains('.')) {
            return result;
          }
          final posE = string.indexOf('e');
          final posDot = string.indexOf('.');
          return result + string.substring(posDot + 1, posE).length;
        }
        return string.split('.')[1].length;
      },
    );
  }

  static TaskEither<Exception, Map<String, ModelPricesAndContextWindow>> _init() {
    return TaskEither.tryCatch(
      () async {
        final response = await http.Client().get(Uri.parse(kPricesUrl));
        if (response.statusCode != 200) {
          throw Exception(
            'Failed to fetch model prices and context window '
            'from $kPricesUrl, status code: ${response.statusCode}, '
            'reason phrase: ${response.reasonPhrase}',
          );
        }
        final jsonBody = json.decode(response.body) as Map<String, dynamic>;
        return jsonBody.map(
          (key, value) => MapEntry(
            key,
            ModelPricesAndContextWindow.fromJson(value as Map<String, dynamic>),
          ),
        );
      },
      (error, stackTrace) => Exception(error.toString()),
    );
  }

  /// Returns the total number of tokens in a prompt's messages.
  ///
  /// Arguments:
  /// - [messages] Message format for prompt requests. e.g.:
  ///   ```dart
  ///   [
  ///    {'role': 'user', 'content': 'Hello world'},
  ///    {'role': 'assistant', 'content': 'How may I assist you today?'}
  ///   ]
  ///   ```
  /// - [modelName] Name of LLM to choose encoding for.
  ///
  /// Returns:
  /// - [int] Total number of tokens in message.
  int countMessageTokens(List<Map<String, String>> messages, String modelName) {
    final model = modelName.toLowerCase();
    Tiktoken encoding;
    try {
      encoding = encodingForModel(model);
    } catch (e) {
      developer.log('Warning: model not found. Using cl100k_base encoding.');
      encoding = getEncoding('cl100k_base');
    }

    int tokensPerMessage;
    int tokensPerName;
    if ([
      'gpt-3.5-turbo-0613',
      'gpt-3.5-turbo-16k-0613',
      'gpt-4-0314',
      'gpt-4-32k-0314',
      'gpt-4-0613',
      'gpt-4-32k-0613',
    ].contains(model)) {
      tokensPerMessage = 3;
      tokensPerName = 1;
    } else if (model == 'gpt-3.5-turbo-0301') {
      tokensPerMessage = 4;
      tokensPerName = -1; // if there's a name, the role is omitted
    } else if (model.contains('gpt-3.5-turbo')) {
      developer.log('Warning: gpt-3.5-turbo may update over time. Returning num '
          'tokens assuming gpt-3.5-turbo-0613.');
      return countMessageTokens(messages, 'gpt-3.5-turbo-0613');
    } else if (model.contains('gpt-4')) {
      developer.log('Warning: gpt-4 may update over time. Returning num tokens '
          'assuming gpt-4-0613.');
      return countMessageTokens(messages, 'gpt-4-0613');
    } else {
      throw Exception('countMessageTokens() is not implemented for model $model. '
          'See https://github.com/openai/openai-python/blob/main/chatml.md for '
          'how messages are converted to tokens.');
    }

    var numTokens = 0;
    for (final message in messages) {
      numTokens += tokensPerMessage;
      for (final entry in message.entries) {
        numTokens += encoding.encode(entry.value).length;
        if (entry.key == 'name') {
          numTokens += tokensPerName;
        }
      }
    }

    // every reply is primed with <|start|>assistant<|message|>
    return numTokens + 3;
  }

  /// Returns the number of tokens in a (prompt or completion) text string.
  ///
  /// Arguments:
  /// - [prompt] The text string
  /// - [modelName] The name of the encoding to use. (e.g., ```'gpt-3.5-turbo'```)
  ///
  /// Returns:
  /// - [int] The number of tokens in the text string.
  int countStringTokens(String prompt, String modelName) {
    final model = modelName.toLowerCase();
    Tiktoken encoding;
    try {
      encoding = encodingForModel(model);
    } catch (e) {
      developer.log('Warning: model not found. Using cl100k_base encoding.');
      encoding = getEncoding('cl100k_base');
    }
    return encoding.encode(prompt).length;
  }

  /// Calculates the prompt's cost in token price units (TPU). 1 TPU = $1/10,000,000.
  /// e.g. 100,000 TPUs = $0.01.
  ///
  /// Arguments:
  /// - [prompt] List of message objects [List<Map<String,String>>] or a single
  ///   [String] prompt.
  /// - [modelName] The model name.
  ///
  /// Returns:
  /// - [int] The calculated cost in TPUs.
  ///
  /// e.g.:
  /// ```dart
  /// const prompt = [
  ///   {'role': 'user', 'content': 'Hello world'},
  ///   {'role': 'assistant', 'content': 'How may I assist you today?'},
  /// ];
  /// calculatePromptCost(prompt, 'gpt-3.5-turbo');
  /// // 300
  /// ```
  /// or
  /// ```dart
  /// const prompt = 'Hello world';
  /// calculatePromptCost(prompt, 'gpt-3.5-turbo');
  /// // 30
  /// ```
  Money calculatePromptCost(dynamic prompt, String modelName) {
    final model = modelName.toLowerCase();
    if (!_tokenCosts!.containsKey(model)) {
      throw Exception('Model $model is not implemented. Double-check your '
          'spelling, or submit an issue/PR');
    }

    int promptTokens;
    if (prompt is String) {
      promptTokens = countStringTokens(prompt, model);
    } else if (prompt is List<Map<String, String>>) {
      promptTokens = countMessageTokens(prompt, model);
    } else {
      throw Exception('Prompt and completion each must be either a string or '
          'list of message objects. They are ${prompt.runtimeType} and '
          '${prompt.runtimeType}, respectively.');
    }

    return TokenType.input.calculateCostByTokens(this, promptTokens, model);
  }

  /// Calculates the completion's cost in token price units (TPU).
  /// 1 TPU = $1/10,000,000. e.g. 100,000 TPUs = $0.01.
  ///
  /// Arguments:
  /// - [completion] Completion string.
  /// - [modelName] The model name.
  ///
  /// Returns:
  /// - [int] The calculated cost in TPUs.
  ///
  /// e.g.:
  /// ```
  /// const completion = 'How may I assist you today?';
  /// calculateCompletionCost(completion, 'gpt-3.5-turbo');
  /// // 140
  /// ```
  Money calculateCompletionCost(String completion, String model) {
    if (!_tokenCosts!.containsKey(model)) {
      throw Exception('Model $model is not implemented. Double-check your '
          'spelling, or submit an issue/PR');
    }
    final completionTokens = countStringTokens(completion, model);

    return TokenType.output.calculateCostByTokens(this, completionTokens, model);
  }

  /// Calculate the cost based on the number of tokens and the model.
  ///
  /// Arguments:
  /// - [numTokens] The number of tokens.
  /// - [model] The model name.
  /// - [tokenType] Type of token ('input' or 'output').
  ///
  /// Returns:
  /// - [Money] The calculated cost in USD.
  Money calculateCostByTokens(int numTokens, String model, TokenType tokenType) {
    return tokenType.calculateCostByTokens(this, numTokens, model);
  }

  /// Calculate the cost based on the number of pixels and the model.
  ///
  /// Arguments:
  /// - [numPixels] The number of pixels.
  /// - [model] The model name.
  /// - [tokenType] Type of token ('input' or 'output').
  ///
  /// Returns:
  /// - [Money] The calculated cost in USD.
  Money calculateCostByPixels(int numPixels, String model, TokenType tokenType) {
    return tokenType.calculateCostByPixels(this, numPixels, model);
  }
}

enum TokenType {
  input,
  output;

  Money calculateCostByTokens(
    TokenCost tokenCost,
    int numTokens,
    String model,
  ) {
    final doubleCostPerToken = switch (this) {
      TokenType.input => tokenCost._tokenCosts![model]!.inputCostPerToken ?? 0.0,
      TokenType.output => tokenCost._tokenCosts![model]!.outputCostPerToken ?? 0.0
    };
    final scaledIntCostPerToken = (doubleCostPerToken * pow(10, tokenCost._maxScale!)).toInt();
    return Money.fromInt(
      scaledIntCostPerToken * numTokens,
      decimalDigits: tokenCost._maxScale,
      isoCode: 'USD',
    );
  }

  Money calculateCostByPixels(
    TokenCost tokenCost,
    int numPixels,
    String model,
  ) {
    final doubleCostPerPixel = switch (this) {
      TokenType.input => tokenCost._tokenCosts![model]!.inputCostPerPixel ?? 0.0,
      TokenType.output => tokenCost._tokenCosts![model]!.outputCostPerPixel ?? 0.0
    };
    final scaledIntCostPerPixel = (doubleCostPerPixel * pow(10, tokenCost._maxScale!)).toInt();
    return Money.fromInt(
      scaledIntCostPerPixel * numPixels,
      decimalDigits: tokenCost._maxScale,
      isoCode: 'USD',
    );
  }
}
