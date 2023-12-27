import 'dart:core';
import 'dart:developer' as developer;

import 'package:tiktoken/tiktoken.dart';
import 'package:tokencost/src/constants.dart';

// TODO(matteodg): Add Claude support
// https://www-files.anthropic.com/production/images/model_pricing_july2023.pdf
// Note: cl100k is the openai base tokenizer. Nothing to do with Claude.
// Tiktoken doesn't have claude yet.
// https://github.com/anthropics/anthropic-tokenizer-typescript/blob/main/index.ts

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
int calculatePromptCost(dynamic prompt, String modelName) {
  final model = modelName.toLowerCase();
  if (!tokenCosts.containsKey(model)) {
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
  final promptCost = tokenCosts[model]!['prompt']!;

  return promptCost * promptTokens;
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
int calculateCompletionCost(String completion, String model) {
  if (!tokenCosts.containsKey(model)) {
    throw Exception('Model $model is not implemented. Double-check your '
        'spelling, or submit an issue/PR');
  }

  final completionTokens = countStringTokens(completion, model);
  final completionCost = tokenCosts[model]!['completion']!;

  return completionCost * completionTokens;
}
