/// Prices last updated Jan 27, 2024 from: https://openai.com/pricing and https://github.com/BerriAI/litellm/blob/main/model_prices_and_context_window.json
///
/// Applications using the gpt-3.5-turbo name will automatically be upgraded to the new model on December 11, 2023.
/// Note: Documentation for some of the gpt-3.5s has a max_prompt/context window typo that says 4096.
/// Can send 4097 prompt tokens (which returns 1 completion token, so total 4098)
/// and overloading API returns error message that states limit of 4097.
const modelPrices = '''
gpt-4:
  max_prompt: 8192
  prompt: 3000
  completion: 6000
gpt-4-0314:
  max_prompt: 8192
  prompt: 3000
  completion: 6000
gpt-4-0613:
  max_prompt: 8192
  prompt: 3000
  completion: 6000
gpt-4-32k:
  max_prompt: 32768
  prompt: 6000
  completion: 12000
gpt-4-32k-0314:
  max_prompt: 32768
  prompt: 6000
  completion: 12000
gpt-4-32k-0613:
  max_prompt: 32768
  prompt: 6000
  completion: 12000
gpt-4-1106-preview:
  max_prompt: 128000
  prompt: 1000
  completion: 3000
gpt-4-0125-preview:
  max_prompt: 128000
  prompt: 1000
  completion: 3000
gpt-4-vision-preview:
  max_prompt: 128000
  prompt: 1000
  completion: 3000
gpt-3.5-turbo:
  max_prompt: 4097
  prompt: 150
  completion: 200
gpt-3.5-turbo-0301:
  max_prompt: 4097
  prompt: 150
  completion: 200
gpt-3.5-turbo-0613:
  max_prompt: 4097
  prompt: 150
  completion: 200
gpt-3.5-turbo-1106:
  max_prompt: 16385
  prompt: 50
  completion: 150
gpt-3.5-turbo-0125:
  max_prompt: 16385
  prompt: 50
  completion: 150
gpt-3.5-turbo-16k:
  max_prompt: 16385
  prompt: 300
  completion: 400
gpt-3.5-turbo-16k-0613:
  max_prompt: 16385
  prompt: 300
  completion: 400
text-embedding-ada-002:
  max_prompt: 8191
  prompt: 10
  completion: 0
text-embedding-3-small:
  max_prompt: 8191
  prompt: 2
  completion: 0
text-embedding-3-large:
  max_prompt: 8191
  prompt: 13
  completion: 0
azure/gpt-4-1106-preview:
  max_prompt: 128000
  prompt: 1000
  completion: 3000
azure/gpt-4-0613:
  max_prompt: 8192
  prompt: 3000
  completion: 6000
azure/gpt-4-32k-0613:
  max_prompt: 32768
  prompt: 6000
  completion: 12000
azure/gpt-4-32k:
  max_prompt: 32768
  prompt: 6000
  completion: 12000
azure/gpt-4:
  max_prompt: 8192
  prompt: 3000
  completion: 6000
azure/gpt-35-turbo-16k-0613:
  max_prompt: 16385
  prompt: 300
  completion: 400
azure/gpt-35-turbo-1106:
  max_prompt: 16384
  prompt: 150
  completion: 200
azure/gpt-35-turbo-16k:
  max_prompt: 16385
  prompt: 300
  completion: 400
azure/gpt-35-turbo:
  max_prompt: 4097
  prompt: 150
  completion: 200
azure/text-embedding-ada-002:
  max_prompt: 8191
  prompt: 10
  completion: 0
text-davinci-003:
  max_prompt: 4097
  prompt: 200
  completion: 200
text-curie-001:
  max_prompt: 2049
  prompt: 200
  completion: 200
text-babbage-001:
  max_prompt: 2049
  prompt: 40
  completion: 40
text-ada-001:
  max_prompt: 2049
  prompt: 40
  completion: 40
babbage-002:
  max_prompt: 16384
  prompt: 40
  completion: 40
davinci-002:
  max_prompt: 16384
  prompt: 200
  completion: 200
gpt-3.5-turbo-instruct:
  max_prompt: 8192
  prompt: 150
  completion: 200
claude-instant-1:
  max_prompt: 100000
  prompt: 160
  completion: 550
mistral/mistral-tiny:
  max_prompt: 8192
  prompt: 10
  completion: 40
mistral/mistral-small:
  max_prompt: 8192
  prompt: 60
  completion: 190
mistral/mistral-medium:
  max_prompt: 8192
  prompt: 270
  completion: 820
claude-instant-1.2:
  max_prompt: 100000
  prompt: 10
  completion: 50
claude-2:
  max_prompt: 100000
  prompt: 800
  completion: 2400
claude-2.1:
  max_prompt: 200000
  prompt: 800
  completion: 2400
text-bison:
  max_prompt: 8192
  prompt: 10
  completion: 10
text-bison@001:
  max_prompt: 8192
  prompt: 10
  completion: 10
text-unicorn:
  max_prompt: 8192
  prompt: 1000
  completion: 2800
text-unicorn@001:
  max_prompt: 8192
  prompt: 1000
  completion: 2800
chat-bison:
  max_prompt: 4096
  prompt: 10
  completion: 10
chat-bison@001:
  max_prompt: 4096
  prompt: 10
  completion: 10
chat-bison@002:
  max_prompt: 4096
  prompt: 10
  completion: 10
chat-bison-32k:
  max_prompt: 32000
  prompt: 10
  completion: 10
code-bison:
  max_prompt: 6144
  prompt: 10
  completion: 10
code-bison@001:
  max_prompt: 6144
  prompt: 10
  completion: 10
code-gecko@001:
  max_prompt: 2048
  prompt: 10
  completion: 10
code-gecko@002:
  max_prompt: 2048
  prompt: 10
  completion: 10
code-gecko:
  max_prompt: 2048
  prompt: 10
  completion: 10
codechat-bison:
  max_prompt: 6144
  prompt: 10
  completion: 10
codechat-bison@001:
  max_prompt: 6144
  prompt: 10
  completion: 10
codechat-bison-32k:
  max_prompt: 32000
  prompt: 10
  completion: 10
gemini-pro:
  max_prompt: 30720
  prompt: 20
  completion: 50
gemini-pro-vision:
  max_prompt: 30720
  prompt: 20
  completion: 50
palm/chat-bison:
  max_prompt: 4096
  prompt: 10
  completion: 10
palm/chat-bison-001:
  max_prompt: 4096
  prompt: 10
  completion: 10
palm/text-bison:
  max_prompt: 8196
  prompt: 10
  completion: 10
palm/text-bison-001:
  max_prompt: 8196
  prompt: 10
  completion: 10
palm/text-bison-safety-off:
  max_prompt: 8196
  prompt: 10
  completion: 10
palm/text-bison-safety-recitation-off:
  max_prompt: 8196
  prompt: 10
  completion: 10
command-nightly:
  max_prompt: 4096
  prompt: 1500
  completion: 1500
command:
  max_prompt: 4096
  prompt: 1500
  completion: 1500
command-light:
  max_prompt: 4096
  prompt: 1500
  completion: 1500
command-medium-beta:
  max_prompt: 4096
  prompt: 1500
  completion: 1500
command-xlarge-beta:
  max_prompt: 4096
  prompt: 1500
  completion: 1500
openrouter/openai/gpt-3.5-turbo:
  max_prompt: 4095
  prompt: 150
  completion: 200
openrouter/openai/gpt-3.5-turbo-16k:
  max_prompt: 16383
  prompt: 300
  completion: 400
openrouter/openai/gpt-4:
  max_prompt: 8192
  prompt: 3000
  completion: 6000
openrouter/anthropic/claude-instant-v1:
  max_prompt: 100000
  prompt: 160
  completion: 550
openrouter/anthropic/claude-2:
  max_prompt: 100000
  prompt: 1100
  completion: 3260
openrouter/google/palm-2-chat-bison:
  max_prompt: 8000
  prompt: 50
  completion: 50
openrouter/google/palm-2-codechat-bison:
  max_prompt: 8000
  prompt: 50
  completion: 50
openrouter/meta-llama/llama-2-13b-chat:
  max_prompt: 4096
  prompt: 20
  completion: 20
openrouter/meta-llama/llama-2-70b-chat:
  max_prompt: 4096
  prompt: 150
  completion: 150
openrouter/meta-llama/codellama-34b-instruct:
  max_prompt: 8096
  prompt: 50
  completion: 50
openrouter/nousresearch/nous-hermes-llama2-13b:
  max_prompt: 4096
  prompt: 20
  completion: 20
openrouter/mancer/weaver:
  max_prompt: 8000
  prompt: 560
  completion: 560
openrouter/gryphe/mythomax-l2-13b:
  max_prompt: 8192
  prompt: 180
  completion: 180
openrouter/jondurbin/airoboros-l2-70b-2.1:
  max_prompt: 4096
  prompt: 1380
  completion: 1380
openrouter/undi95/remm-slerp-l2-13b:
  max_prompt: 6144
  prompt: 180
  completion: 180
openrouter/pygmalionai/mythalion-13b:
  max_prompt: 4096
  prompt: 180
  completion: 180
openrouter/mistralai/mistral-7b-instruct:
  max_prompt: 4096
  prompt: 0
  completion: 0
j2-ultra:
  max_prompt: 8192
  prompt: 1500
  completion: 1500
j2-mid:
  max_prompt: 8192
  prompt: 1000
  completion: 1000
j2-light:
  max_prompt: 8192
  prompt: 300
  completion: 300
dolphin:
  max_prompt: 4096
  prompt: 2000
  completion: 2000
chatdolphin:
  max_prompt: 4096
  prompt: 2000
  completion: 2000
luminous-base:
  max_prompt: 2048
  prompt: 3000
  completion: 3300
luminous-base-control:
  max_prompt: 2048
  prompt: 3740
  completion: 4120
luminous-extended:
  max_prompt: 2048
  prompt: 4500
  completion: 4940
luminous-extended-control:
  max_prompt: 2048
  prompt: 5620
  completion: 6180
luminous-supreme:
  max_prompt: 2048
  prompt: 17500
  completion: 19250
luminous-supreme-control:
  max_prompt: 2048
  prompt: 21870
  completion: 24060
ai21.j2-mid-v1:
  max_prompt: 8191
  prompt: 1250
  completion: 1250
ai21.j2-ultra-v1:
  max_prompt: 8191
  prompt: 1880
  completion: 1880
amazon.titan-text-lite-v1:
  max_prompt: 8000
  prompt: 30
  completion: 40
amazon.titan-text-express-v1:
  max_prompt: 8000
  prompt: 130
  completion: 170
anthropic.claude-v1:
  max_prompt: 100000
  prompt: 800
  completion: 2400
bedrock/us-east-1/anthropic.claude-v1:
  max_prompt: 100000
  prompt: 800
  completion: 2400
bedrock/us-west-2/anthropic.claude-v1:
  max_prompt: 100000
  prompt: 800
  completion: 2400
bedrock/ap-northeast-1/anthropic.claude-v1:
  max_prompt: 100000
  prompt: 800
  completion: 2400
bedrock/eu-central-1/anthropic.claude-v1:
  max_prompt: 100000
  prompt: 800
  completion: 2400
anthropic.claude-v2:
  max_prompt: 100000
  prompt: 800
  completion: 2400
bedrock/us-east-1/anthropic.claude-v2:
  max_prompt: 100000
  prompt: 800
  completion: 2400
bedrock/us-west-2/anthropic.claude-v2:
  max_prompt: 100000
  prompt: 800
  completion: 2400
bedrock/ap-northeast-1/anthropic.claude-v2:
  max_prompt: 100000
  prompt: 800
  completion: 2400
bedrock/eu-central-1/anthropic.claude-v2:
  max_prompt: 100000
  prompt: 800
  completion: 2400
anthropic.claude-v2:1:
  max_prompt: 200000
  prompt: 800
  completion: 2400
bedrock/us-east-1/anthropic.claude-v2:1:
  max_prompt: 100000
  prompt: 800
  completion: 2400
bedrock/us-west-2/anthropic.claude-v2:1:
  max_prompt: 100000
  prompt: 800
  completion: 2400
bedrock/ap-northeast-1/anthropic.claude-v2:1:
  max_prompt: 100000
  prompt: 800
  completion: 2400
bedrock/eu-central-1/anthropic.claude-v2:1:
  max_prompt: 100000
  prompt: 800
  completion: 2400
anthropic.claude-instant-v1:
  max_prompt: 100000
  prompt: 160
  completion: 550
bedrock/us-east-1/anthropic.claude-instant-v1:
  max_prompt: 100000
  prompt: 80
  completion: 240
bedrock/us-west-2/anthropic.claude-instant-v1:
  max_prompt: 100000
  prompt: 80
  completion: 240
bedrock/ap-northeast-1/anthropic.claude-instant-v1:
  max_prompt: 100000
  prompt: 220
  completion: 750
bedrock/eu-central-1/anthropic.claude-instant-v1:
  max_prompt: 100000
  prompt: 240
  completion: 830
cohere.command-text-v14:
  max_prompt: 4096
  prompt: 150
  completion: 200
cohere.command-light-text-v14:
  max_prompt: 4000
  prompt: 30
  completion: 60
cohere.embed-english-v3:
  max_prompt: 512
  prompt: 10
  completion: 0
cohere.embed-multilingual-v3:
  max_prompt: 512
  prompt: 10
  completion: 0
meta.llama2-13b-chat-v1:
  max_prompt: 4096
  prompt: 70
  completion: 100
meta.llama2-70b-chat-v1:
  max_prompt: 4096
  prompt: 190
  completion: 250
sagemaker/meta-textgeneration-llama-2-7b:
  max_prompt: 4096
  prompt: 0
  completion: 0
sagemaker/meta-textgeneration-llama-2-7b-f:
  max_prompt: 4096
  prompt: 0
  completion: 0
sagemaker/meta-textgeneration-llama-2-13b:
  max_prompt: 4096
  prompt: 0
  completion: 0
sagemaker/meta-textgeneration-llama-2-13b-f:
  max_prompt: 4096
  prompt: 0
  completion: 0
sagemaker/meta-textgeneration-llama-2-70b:
  max_prompt: 4096
  prompt: 0
  completion: 0
sagemaker/meta-textgeneration-llama-2-70b-b-f:
  max_prompt: 4096
  prompt: 0
  completion: 0
together-ai-7.1b-20b:
  max_prompt: 1000
  prompt: 40
  completion: 40
ollama/llama2:
  max_prompt: 4096
  prompt: 0
  completion: 0
ollama/llama2:13b:
  max_prompt: 4096
  prompt: 0
  completion: 0
ollama/llama2:70b:
  max_prompt: 4096
  prompt: 0
  completion: 0
ollama/llama2-uncensored:
  max_prompt: 4096
  prompt: 0
  completion: 0
ollama/mistral:
  max_prompt: 8192
  prompt: 0
  completion: 0
ollama/codellama:
  max_prompt: 4096
  prompt: 0
  completion: 0
ollama/orca-mini:
  max_prompt: 4096
  prompt: 0
  completion: 0
ollama/vicuna:
  max_prompt: 2048
  prompt: 0
  completion: 0
deepinfra/meta-llama/Llama-2-70b-chat-hf:
  max_prompt: 4096
  prompt: 70
  completion: 90
deepinfra/codellama/CodeLlama-34b-Instruct-hf:
  max_prompt: 4096
  prompt: 60
  completion: 60
deepinfra/meta-llama/Llama-2-13b-chat-hf:
  max_prompt: 4096
  prompt: 30
  completion: 30
deepinfra/meta-llama/Llama-2-7b-chat-hf:
  max_prompt: 4096
  prompt: 20
  completion: 20
deepinfra/mistralai/Mistral-7B-Instruct-v0.1:
  max_prompt: 4096
  prompt: 20
  completion: 20
deepinfra/jondurbin/airoboros-l2-70b-gpt4-1.4.1:
  max_prompt: 4096
  prompt: 70
  completion: 90
perplexity/pplx-7b-chat:
  max_prompt: 8192
  prompt: 0
  completion: 0
perplexity/pplx-70b-chat:
  max_prompt: 4096
  prompt: 0
  completion: 0
perplexity/pplx-7b-online:
  max_prompt: 4096
  prompt: 0
  completion: 50000
perplexity/pplx-70b-online:
  max_prompt: 4096
  prompt: 0
  completion: 50000
perplexity/llama-2-13b-chat:
  max_prompt: 4096
  prompt: 0
  completion: 0
perplexity/llama-2-70b-chat:
  max_prompt: 4096
  prompt: 0
  completion: 0
perplexity/mistral-7b-instruct:
  max_prompt: 4096
  prompt: 0
  completion: 0
perplexity/replit-code-v1.5-3b:
  max_prompt: 4096
  prompt: 0
  completion: 0
anyscale/mistralai/Mistral-7B-Instruct-v0.1:
  max_prompt: 16384
  prompt: 10
  completion: 10
anyscale/HuggingFaceH4/zephyr-7b-beta:
  max_prompt: 16384
  prompt: 10
  completion: 10
anyscale/meta-llama/Llama-2-7b-chat-hf:
  max_prompt: 4096
  prompt: 10
  completion: 10
anyscale/meta-llama/Llama-2-13b-chat-hf:
  max_prompt: 4096
  prompt: 20
  completion: 20
anyscale/meta-llama/Llama-2-70b-chat-hf:
  max_prompt: 4096
  prompt: 100
  completion: 100
anyscale/codellama/CodeLlama-34b-Instruct-hf:
  max_prompt: 16384
  prompt: 100
  completion: 100
cloudflare/@cf/meta/llama-2-7b-chat-fp16:
  max_prompt: 3072
  prompt: 190
  completion: 190
cloudflare/@cf/meta/llama-2-7b-chat-int8:
  max_prompt: 2048
  prompt: 190
  completion: 190
cloudflare/@cf/mistral/mistral-7b-instruct-v0.1:
  max_prompt: 8192
  prompt: 190
  completion: 190
cloudflare/@hf/thebloke/codellama-7b-instruct-awq:
  max_prompt: 4096
  prompt: 190
  completion: 190
voyage/voyage-01:
  max_prompt: 4096
  prompt: 10
  completion: 0
voyage/voyage-lite-01:
  max_prompt: 4096
  prompt: 10
  completion: 0
''';