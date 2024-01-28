// Prompt (aka context) tokens are based on number of words + other chars
// (eg spaces and punctuation) in input.
// Completion tokens are similarly based on how long ChatGPT's response is.
// Prompt tokens + completion tokens = total tokens.
// The max total limit is typically 1 more than the prompt token limit, so
// there's space for at least one completion token.
//
// You can use ChatGPT's webapp (which uses their tiktoken repo) to see how
// many tokens your phrase is:
// https://platform.openai.com/tokenizer
//
// Note: When asking follow-up questions, everything above and including
// your follow-up question
// is considered a prompt (for the purpose of context) and will thus cost
// prompt tokens.

import 'dart:io';

import 'package:yaml/yaml.dart';

/// 1 Token Price Unit (TPU) is defined as 1/100,000,000 of $1 (USD). 1,000,000
/// TPUs would equate to $0.01.
const usdPerTpu = 100 * 1000 * 1000;

/// The cost of each token for each model: prompt token cost, completion token
/// cost, and max prompt limit.
final Map<String, Map<String, int>> tokenCosts = (loadYaml(
  File(
    'lib/model_prices.yaml',
  ).readAsStringSync(),
) as YamlMap)
    .nodes
    .map(
      (dynamic model, YamlNode node1) => MapEntry(
        (model as YamlScalar).value as String,
        (node1 as YamlMap).nodes.map(
              (dynamic key, YamlNode node2) => MapEntry(
                // How to read tokenCosts[model][key] map:
                //  - [max_prompt] Max prompt limit of each model is __ tokens.
                //  - [prompt]     Each prompt token costs __ TPUs per token.
                //  - [completion] Each completion token costs __ TPUs per token.
                (key as YamlScalar).value as String,
                node2.value as int,
              ),
            ),
      ),
    );
