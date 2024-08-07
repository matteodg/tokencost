# 0.2.10
- Update prices and context window local file to Jun 30, 2024.
- Add `TokenCost.calculateCostByDuration()` to calculate the cost using the duration in seconds.

# 0.2.9
- Update prices and context window local file to May 21, 2024.
- Update all dependencies to their latest versions.

# 0.2.8
- Update prices and context window local file to May 09, 2024.
- Update all dependencies to their latest versions.

# 0.2.7
- Update prices and context window local file to May 04, 2024.

# 0.2.6
- Update prices and context window local file to Apr 02, 2024.

# 0.2.5
- Update prices and context window local file to Mar 19, 2024.

# 0.2.4
- Update prices and context window local file to Mar 18, 2024.
- Add all other possible fields in `ModelPricesAndContextWindow`
- Add `TokenCost.calculateCostByPixels()` to calculate the cost when pixel count is available

# 0.2.3
- Update prices and context window local file to Mar 14, 2024.

# 0.2.2
- Add TokenCost.calculateCostByTokens() to calculate the cost when token count is available

# 0.2.1
- Update prices and context window local file.

# 0.2.0
- using `package:money2` instead of TPU units. This is a breaking change, as the API has changed.

# 0.1.1
- Converted model_prices.yaml file to a String constant, so it works in other packages

# 0.1.0
- Consider 0.0.6 invalid as according to https://dart.dev/tools/pub/versioning#semantic-versions we should have
  changed the minor version number as there is a breaking changed in the API.
- *Breaking change* in the API: 1 Token Price Unit (TPU) is now defined as 1/100,000,000 of $1 (USD).
  1,000,000 TPUs would equate to $0.01.

# 0.0.6
- Update to latest changes in https://github.com/AgentOps-AI/tokencost/, except support for LlamaIndex callbacks
- Use LiteLLMs cost dictionary from https://github.com/BerriAI/litellm/blob/main/model_prices_and_context_window.json
- Add new pricing models as of 2024-01-26:
  - Including two new OpenAI embedding models: `text-embedding-3-small`, and `text-embedding-3-large`
  - New aliases `gpt-3.5-turbo`, `gpt-4`, and `gpt-4-turbo-preview`
  - An update of GPT-4 and GPT-3.5 prices
  - Included a lot of other LLMs, proprietary and open source

# 0.0.5
- Improve README.md and pubspec.yaml 

# 0.0.4
- Add link to https://github.com/AgentOps-AI/tokencost in README.md

# 0.0.3
- Add platforms in pubspec.yaml

# 0.0.2
- Initial release of tokencost, full port as a Dart package of
  [AgentOps-AI/tokencost](https://github.com/AgentOps-AI/tokencost) under
  MIT license.
