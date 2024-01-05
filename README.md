# tokencost

[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)
[![License: MIT][license_badge]][license_link]

## Overview
Clientside token counting + price estimation for LLM apps and AI agents.
tokencost helps calculate the USD cost of using major Large Language Model
(LLMs) APIs by calculating the estimated cost of prompts and completions.

Ported from Python tokencost package, see
[AgentOps-AI/tokencost](https://github.com/AgentOps-AI/tokencost).

### Features
* **LLM Price Tracking** Major LLM providers frequently add new models and
  update pricing. This repo helps track the latest price changes
* **Token counting** Accurately count prompt tokens before sending OpenAI
  requests
* **Easy integration** Get the cost of a prompt or completion with a single
  function

### Example usage:

```dart
import 'package:tokencost/tokencost.dart';

void main() {
  const model = 'gpt-3.5-turbo';
  const prompt = [
    {
      'role': 'user',
      'content': 'Hello world',
    },
  ];
  const completion = 'How may I assist you today?';

  final promptCost = calculatePromptCost(prompt, model);
  final completionCost = calculateCompletionCost(completion, model);

  print('$promptCost + $completionCost = ${promptCost + completionCost}');
  // 135 + 140 = 275 ($0.0000275)
  // Priced in TPUs (token price units), which is 1/10,000,000th of a USD.
}
```

## Installation 💻

**❗ In order to start using tokencost you must have the [Dart SDK][dart_install_link] installed on your machine.**

Install via `dart pub add`:

```sh
dart pub add tokencost
```

## Usage

### Cost estimates
Calculating the cost of prompts and completions from OpenAI requests
```dart
import 'package:tokencost/tokencost.dart';
import 'package:dart_openai/dart_openai.dart';

const model = 'gpt-3.5-turbo';
const prompt = [{'role': 'user', 'content': 'Say this is a test'}];

OpenAICompletioModel chatCompletion = await OpenAI.instance.completion.create(
    model: model,
    prompt: prompt,
);

completion = chatCompletion.choices.first.message.content!.first.text!;
// This is a test.

final promptCost = calculatePromptCost(prompt, model)
final completionCost = calculateCompletionCost(completion, model)
print(''$promptCost + $completionCost = ${promptCost + completionCost}'');
// 180 + 100 = 280 ($0.0000280)

print('Cost USD: ${(promptCost + completionCost)/usdPerTpu}');
// Cost USD: $2.8e-05
```

**Calculating cost using string prompts instead of messages:**
```dart
const promptString = 'Hello world'; 
const response = 'How may I assist you today?';
const model = 'gpt-3.5-turbo';

final promptCost = calculatePromptCost(promptString, model);
print('Cost: ${promptCost/usdPerTpu}');
// Cost: $3e-06
```

### Counting tokens

```dart
import 'package:tokencost/tokencost.dart';

const messagePrompt = [{'role': 'user', 'content': 'Hello world'}];
// Counting tokens in prompts formatted as message lists
print(countMessageTokens(messagePrompt, 'gpt-3.5-turbo'));
// 9

// Alternatively, counting tokens in string prompts
print(countStringTokens('Hello world', 'gpt-3.5-turbo'));
// 2
```

## Cost table
Units denominated in TPUs (Token Price Units = 1/10,000,000 USD). All prices can
be located in `lib/model_prices.yaml`.

| Model Name | Prompt Cost | Completion Cost | Max Prompt Tokens | 
| --- | --- | --- | --- |
| gpt-3.5-turbo | 15 | 20 | 4097 |
| gpt-3.5-turbo-instruct | 15 | 20 | 8192 |
| gpt-3.5-turbo-0301 | 15 | 20 | 4097 |
| gpt-3.5-turbo-0613 | 15 | 20 | 4097 |
| gpt-3.5-turbo-1106 | 10 | 20 | 16385 |
| gpt-3.5-turbo-16k | 30 | 40 | 16385 |
| gpt-3.5-turbo-16k-0613 | 30 | 40 | 16385 |
| gpt-4 | 300 | 600 | 8192 |
| gpt-4-0314 | 300 | 600 | 8192 |
| gpt-4-0613 | 300 | 600 | 8192 |
| gpt-4-32k | 600 | 1200 | 32768 |
| gpt-4-32k-0314 | 600 | 1200 | 32768 |
| gpt-4-32k-0613 | 600 | 1200 | 32768 |
| gpt-4-1106-preview | 100 | 300 | 128000 |
| gpt-4-vision-preview | 100 | 300 | 128000 |
| text-davinci-003 | 20 | 20 | 4097 |
| text-curie-001 | 20 | 20 | 2049 |
| text-babbage-001 | 4 | 4 | 2049 |
| text-ada-001 | 4 | 4 | 2049 |
| babbage-002 | 4 | 4 | 16384 |
| davinci-002 | 20 | 20 | 16384 |
| text-embedding-ada-002 | 1 | 0 | 8191 |
| azure/gpt-4-1106-preview | 100 | 300 | 128000 |
| azure/gpt-4-0613 | 300 | 600 | 8192 |
| azure/gpt-4-32k-0613 | 600 | 1200 | 32768 |
| azure/gpt-4-32k | 600 | 1200 | 32768 |
| azure/gpt-4 | 300 | 600 | 8192 |
| azure/gpt-35-turbo-16k-0613 | 30 | 40 | 16385 |
| azure/gpt-35-turbo-1106 | 15 | 20 | 16384 |
| azure/gpt-35-turbo-16k | 30 | 40 | 16385 |
| azure/gpt-35-turbo | 15 | 20 | 4097 |
| azure/text-embedding-ada-002 | 1 | 0 | 8191 |
| claude-instant-1 | 16 | 55 | 100000 |
| mistral/mistral-tiny | 1 | 4 | 8192 |
| mistral/mistral-small | 6 | 19 | 8192 |
| mistral/mistral-medium | 27 | 82 | 8192 |
| claude-instant-1.2 | 1 | 5 | 100000 |
| claude-2 | 80 | 240 | 100000 |
| claude-2.1 | 80 | 240 | 200000 |
| text-bison | 1 | 1 | 8192 |
| text-bison@001 | 1 | 1 | 8192 |
| text-unicorn | 100 | 280 | 8192 |
| text-unicorn@001 | 100 | 280 | 8192 |
| chat-bison | 1 | 1 | 4096 |
| chat-bison@001 | 1 | 1 | 4096 |
| chat-bison@002 | 1 | 1 | 4096 |
| chat-bison-32k | 1 | 1 | 32000 |
| code-bison | 1 | 1 | 6144 |
| code-bison@001 | 1 | 1 | 6144 |
| code-gecko@001 | 1 | 1 | 2048 |
| code-gecko@002 | 1 | 1 | 2048 |
| code-gecko | 1 | 1 | 2048 |
| codechat-bison | 1 | 1 | 6144 |
| codechat-bison@001 | 1 | 1 | 6144 |
| codechat-bison-32k | 1 | 1 | 32000 |
| gemini-pro | 2 | 5 | 30720 |
| gemini-pro-vision | 2 | 5 | 30720 |
| palm/chat-bison | 1 | 1 | 4096 |
| palm/chat-bison-001 | 1 | 1 | 4096 |
| palm/text-bison | 1 | 1 | 8196 |
| palm/text-bison-001 | 1 | 1 | 8196 |
| palm/text-bison-safety-off | 1 | 1 | 8196 |
| palm/text-bison-safety-recitation-off | 1 | 1 | 8196 |
| command-nightly | 150 | 150 | 4096 |
| command | 150 | 150 | 4096 |
| command-light | 150 | 150 | 4096 |
| command-medium-beta | 150 | 150 | 4096 |
| command-xlarge-beta | 150 | 150 | 4096 |
| openrouter/openai/gpt-3.5-turbo | 15 | 20 | 4095 |
| openrouter/openai/gpt-3.5-turbo-16k | 30 | 40 | 16383 |
| openrouter/openai/gpt-4 | 300 | 600 | 8192 |
| openrouter/anthropic/claude-instant-v1 | 16 | 55 | 100000 |
| openrouter/anthropic/claude-2 | 110 | 326 | 100000 |
| openrouter/google/palm-2-chat-bison | 5 | 5 | 8000 |
| openrouter/google/palm-2-codechat-bison | 5 | 5 | 8000 |
| openrouter/meta-llama/llama-2-13b-chat | 2 | 2 | 4096 |
| openrouter/meta-llama/llama-2-70b-chat | 15 | 15 | 4096 |
| openrouter/meta-llama/codellama-34b-instruct | 5 | 5 | 8096 |
| openrouter/nousresearch/nous-hermes-llama2-13b | 2 | 2 | 4096 |
| openrouter/mancer/weaver | 56 | 56 | 8000 |
| openrouter/gryphe/mythomax-l2-13b | 18 | 18 | 8192 |
| openrouter/jondurbin/airoboros-l2-70b-2.1 | 138 | 138 | 4096 |
| openrouter/undi95/remm-slerp-l2-13b | 18 | 18 | 6144 |
| openrouter/pygmalionai/mythalion-13b | 18 | 18 | 4096 |
| openrouter/mistralai/mistral-7b-instruct | 0 | 0 | 4096 |
| j2-ultra | 150 | 150 | 8192 |
| j2-mid | 100 | 100 | 8192 |
| j2-light | 30 | 30 | 8192 |
| dolphin | 200 | 200 | 4096 |
| chatdolphin | 200 | 200 | 4096 |
| luminous-base | 300 | 330 | 2048 |
| luminous-base-control | 374 | 412 | 2048 |
| luminous-extended | 450 | 494 | 2048 |
| luminous-extended-control | 562 | 618 | 2048 |
| luminous-supreme | 1750 | 1925 | 2048 |
| luminous-supreme-control | 2187 | 2406 | 2048 |
| ai21.j2-mid-v1 | 125 | 125 | 8191 |
| ai21.j2-ultra-v1 | 188 | 188 | 8191 |
| amazon.titan-text-lite-v1 | 3 | 4 | 8000 |
| amazon.titan-text-express-v1 | 13 | 17 | 8000 |
| anthropic.claude-v1 | 80 | 240 | 100000 |
| bedrock/us-east-1/anthropic.claude-v1 | 80 | 240 | 100000 |
| bedrock/us-west-2/anthropic.claude-v1 | 80 | 240 | 100000 |
| bedrock/ap-northeast-1/anthropic.claude-v1 | 80 | 240 | 100000 |
| bedrock/eu-central-1/anthropic.claude-v1 | 80 | 240 | 100000 |
| anthropic.claude-v2 | 80 | 240 | 100000 |
| bedrock/us-east-1/anthropic.claude-v2 | 80 | 240 | 100000 |
| bedrock/us-west-2/anthropic.claude-v2 | 80 | 240 | 100000 |
| bedrock/ap-northeast-1/anthropic.claude-v2 | 80 | 240 | 100000 |
| bedrock/eu-central-1/anthropic.claude-v2 | 80 | 240 | 100000 |
| anthropic.claude-v2:1 | 80 | 240 | 200000 |
| bedrock/us-east-1/anthropic.claude-v2:1 | 80 | 240 | 100000 |
| bedrock/us-west-2/anthropic.claude-v2:1 | 80 | 240 | 100000 |
| bedrock/ap-northeast-1/anthropic.claude-v2:1 | 80 | 240 | 100000 |
| bedrock/eu-central-1/anthropic.claude-v2:1 | 80 | 240 | 100000 |
| anthropic.claude-instant-v1 | 16 | 55 | 100000 |
| bedrock/us-east-1/anthropic.claude-instant-v1 | 8 | 24 | 100000 |
| bedrock/us-west-2/anthropic.claude-instant-v1 | 8 | 24 | 100000 |
| bedrock/ap-northeast-1/anthropic.claude-instant-v1 | 22 | 75 | 100000 |
| bedrock/eu-central-1/anthropic.claude-instant-v1 | 24 | 83 | 100000 |
| cohere.command-text-v14 | 15 | 20 | 4096 |
| cohere.command-light-text-v14 | 3 | 6 | 4000 |
| cohere.embed-english-v3 | 1 | 0 | 512 |
| cohere.embed-multilingual-v3 | 1 | 0 | 512 |
| meta.llama2-13b-chat-v1 | 7 | 10 | 4096 |
| meta.llama2-70b-chat-v1 | 19 | 25 | 4096 |
| sagemaker/meta-textgeneration-llama-2-7b | 0 | 0 | 4096 |
| sagemaker/meta-textgeneration-llama-2-7b-f | 0 | 0 | 4096 |
| sagemaker/meta-textgeneration-llama-2-13b | 0 | 0 | 4096 |
| sagemaker/meta-textgeneration-llama-2-13b-f | 0 | 0 | 4096 |
| sagemaker/meta-textgeneration-llama-2-70b | 0 | 0 | 4096 |
| sagemaker/meta-textgeneration-llama-2-70b-b-f | 0 | 0 | 4096 |
| together-ai-7.1b-20b | 4 | 4 | 1000 |
| ollama/llama2 | 0 | 0 | 4096 |
| ollama/llama2:13b | 0 | 0 | 4096 |
| ollama/llama2:70b | 0 | 0 | 4096 |
| ollama/llama2-uncensored | 0 | 0 | 4096 |
| ollama/mistral | 0 | 0 | 8192 |
| ollama/codellama | 0 | 0 | 4096 |
| ollama/orca-mini | 0 | 0 | 4096 |
| ollama/vicuna | 0 | 0 | 2048 |
| deepinfra/meta-llama/Llama-2-70b-chat-hf | 7 | 9 | 4096 |
| deepinfra/codellama/CodeLlama-34b-Instruct-hf | 6 | 6 | 4096 |
| deepinfra/meta-llama/Llama-2-13b-chat-hf | 3 | 3 | 4096 |
| deepinfra/meta-llama/Llama-2-7b-chat-hf | 2 | 2 | 4096 |
| deepinfra/mistralai/Mistral-7B-Instruct-v0.1 | 2 | 2 | 4096 |
| deepinfra/jondurbin/airoboros-l2-70b-gpt4-1.4.1 | 7 | 9 | 4096 |
| perplexity/pplx-7b-chat | 0 | 0 | 8192 |
| perplexity/pplx-70b-chat | 0 | 0 | 4096 |
| perplexity/pplx-7b-online | 0 | 5000 | 4096 |
| perplexity/pplx-70b-online | 0 | 5000 | 4096 |
| perplexity/llama-2-13b-chat | 0 | 0 | 4096 |
| perplexity/llama-2-70b-chat | 0 | 0 | 4096 |
| perplexity/mistral-7b-instruct | 0 | 0 | 4096 |
| perplexity/replit-code-v1.5-3b | 0 | 0 | 4096 |
| anyscale/mistralai/Mistral-7B-Instruct-v0.1 | 1 | 1 | 16384 |
| anyscale/HuggingFaceH4/zephyr-7b-beta | 1 | 1 | 16384 |
| anyscale/meta-llama/Llama-2-7b-chat-hf | 1 | 1 | 4096 |
| anyscale/meta-llama/Llama-2-13b-chat-hf | 2 | 2 | 4096 |
| anyscale/meta-llama/Llama-2-70b-chat-hf | 10 | 10 | 4096 |
| anyscale/codellama/CodeLlama-34b-Instruct-hf | 10 | 10 | 16384 |
| cloudflare/@cf/meta/llama-2-7b-chat-fp16 | 19 | 19 | 3072 |
| cloudflare/@cf/meta/llama-2-7b-chat-int8 | 19 | 19 | 2048 |
| cloudflare/@cf/mistral/mistral-7b-instruct-v0.1 | 19 | 19 | 8192 |
| cloudflare/@hf/thebloke/codellama-7b-instruct-awq | 19 | 19 | 4096 |
| voyage/voyage-01 | 1 | 0 | 4096 |
| voyage/voyage-lite-01 | 1 | 0 | 4096 |


---

## Continuous Integration 🤖

tokencost comes with a built-in [GitHub Actions workflow][github_actions_link] powered by [Very Good Workflows][very_good_workflows_link] but you can also add your preferred CI/CD solution.

Out of the box, on each pull request and push, the CI `formats`, `lints`, and `tests` the code. This ensures the code remains consistent and behaves correctly as you add functionality or make changes. The project uses [Very Good Analysis][very_good_analysis_link] for a strict set of analysis options used by our team. Code coverage is enforced using the [Very Good Workflows][very_good_coverage_link].

---

## Running Tests 🧪

To run all unit tests:

```sh
dart pub global activate coverage 1.2.0
dart test --coverage=coverage
dart pub global run coverage:format_coverage --lcov --in=coverage --out=coverage/lcov.info
```

To view the generated coverage report you can use [lcov](https://github.com/linux-test-project/lcov).

```sh
# Generate Coverage Report
genhtml coverage/lcov.info -o coverage/

# Open Coverage Report
open coverage/index.html
```

---

## Contributing

Contributions to TokenCost are welcome! Feel free to create an
[issue](https://github.com/matteodg/tokencost/issues) for any bug reports,
complaints, or feature suggestions.

## License

TokenCost is released under the MIT License.

[dart_install_link]: https://dart.dev/get-dart
[github_actions_link]: https://docs.github.com/en/actions/learn-github-actions
[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
[logo_black]: https://raw.githubusercontent.com/VGVentures/very_good_brand/main/styles/README/vgv_logo_black.png#gh-light-mode-only
[logo_white]: https://raw.githubusercontent.com/VGVentures/very_good_brand/main/styles/README/vgv_logo_white.png#gh-dark-mode-only
[mason_link]: https://github.com/felangel/mason
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
[very_good_coverage_link]: https://github.com/marketplace/actions/very-good-coverage
[very_good_ventures_link]: https://verygood.ventures
[very_good_ventures_link_light]: https://verygood.ventures#gh-light-mode-only
[very_good_ventures_link_dark]: https://verygood.ventures#gh-dark-mode-only
[very_good_workflows_link]: https://github.com/VeryGoodOpenSource/very_good_workflows
