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
  // $0.00001350 + $0.00001400 = $0.00002750
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
// $0.00001800 + $0.00001000 = $0.00002800

print('Cost USD: ${(promptCost + completionCost)}');
// Cost USD: $2.8e-05
```

**Calculating cost using string prompts instead of messages:**
```dart
const promptString = 'Hello world'; 
const response = 'How may I assist you today?';
const model = 'gpt-3.5-turbo';

final promptCost = calculatePromptCost(promptString, model);
print('Cost: $promptCost');
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
[money2_link]: https://pub.dev/packages/money2
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
[very_good_coverage_link]: https://github.com/marketplace/actions/very-good-coverage
[very_good_ventures_link]: https://verygood.ventures
[very_good_ventures_link_light]: https://verygood.ventures#gh-light-mode-only
[very_good_ventures_link_dark]: https://verygood.ventures#gh-dark-mode-only
[very_good_workflows_link]: https://github.com/VeryGoodOpenSource/very_good_workflows
