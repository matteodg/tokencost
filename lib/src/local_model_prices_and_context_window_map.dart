/// Prices last updated Mar 03, 2024 from: https://github.com/BerriAI/litellm/blob/main/model_prices_and_context_window.json
const Map<String, Map<String, dynamic>> kLocalModelPricesAndContextWindowMap = {
  'gpt-4': {
    'max_tokens': 8192,
    'max_input_tokens': 8192,
    'max_output_tokens': 4096,
    'input_cost_per_token': 0.00003,
    'output_cost_per_token': 0.00006,
    'litellm_provider': 'openai',
    'mode': 'chat',
    'supports_function_calling': true
  },
  'gpt-4-turbo-preview': {
    'max_tokens': 8192,
    'max_input_tokens': 8192,
    'max_output_tokens': 4096,
    'input_cost_per_token': 0.00001,
    'output_cost_per_token': 0.00003,
    'litellm_provider': 'openai',
    'mode': 'chat',
    'supports_function_calling': true,
    'supports_parallel_function_calling': true
  },
  'gpt-4-0314': {
    'max_tokens': 8192,
    'max_input_tokens': 8192,
    'max_output_tokens': 4096,
    'input_cost_per_token': 0.00003,
    'output_cost_per_token': 0.00006,
    'litellm_provider': 'openai',
    'mode': 'chat'
  },
  'gpt-4-0613': {
    'max_tokens': 8192,
    'max_input_tokens': 8192,
    'max_output_tokens': 4096,
    'input_cost_per_token': 0.00003,
    'output_cost_per_token': 0.00006,
    'litellm_provider': 'openai',
    'mode': 'chat',
    'supports_function_calling': true
  },
  'gpt-4-32k': {
    'max_tokens': 32768,
    'max_input_tokens': 32768,
    'max_output_tokens': 4096,
    'input_cost_per_token': 0.00006,
    'output_cost_per_token': 0.00012,
    'litellm_provider': 'openai',
    'mode': 'chat'
  },
  'gpt-4-32k-0314': {
    'max_tokens': 32768,
    'max_input_tokens': 32768,
    'max_output_tokens': 4096,
    'input_cost_per_token': 0.00006,
    'output_cost_per_token': 0.00012,
    'litellm_provider': 'openai',
    'mode': 'chat'
  },
  'gpt-4-32k-0613': {
    'max_tokens': 32768,
    'max_input_tokens': 32768,
    'max_output_tokens': 4096,
    'input_cost_per_token': 0.00006,
    'output_cost_per_token': 0.00012,
    'litellm_provider': 'openai',
    'mode': 'chat'
  },
  'gpt-4-1106-preview': {
    'max_tokens': 128000,
    'max_input_tokens': 128000,
    'max_output_tokens': 4096,
    'input_cost_per_token': 0.00001,
    'output_cost_per_token': 0.00003,
    'litellm_provider': 'openai',
    'mode': 'chat',
    'supports_function_calling': true,
    'supports_parallel_function_calling': true
  },
  'gpt-4-0125-preview': {
    'max_tokens': 128000,
    'max_input_tokens': 128000,
    'max_output_tokens': 4096,
    'input_cost_per_token': 0.00001,
    'output_cost_per_token': 0.00003,
    'litellm_provider': 'openai',
    'mode': 'chat',
    'supports_function_calling': true,
    'supports_parallel_function_calling': true
  },
  'gpt-4-vision-preview': {
    'max_tokens': 128000,
    'max_input_tokens': 128000,
    'max_output_tokens': 4096,
    'input_cost_per_token': 0.00001,
    'output_cost_per_token': 0.00003,
    'litellm_provider': 'openai',
    'mode': 'chat'
  },
  'gpt-4-1106-vision-preview': {
    'max_tokens': 128000,
    'max_input_tokens': 128000,
    'max_output_tokens': 4096,
    'input_cost_per_token': 0.00001,
    'output_cost_per_token': 0.00003,
    'litellm_provider': 'openai',
    'mode': 'chat'
  },
  'gpt-3.5-turbo': {
    'max_tokens': 4097,
    'max_input_tokens': 16385,
    'max_output_tokens': 4096,
    'input_cost_per_token': 0.0000015,
    'output_cost_per_token': 0.000002,
    'litellm_provider': 'openai',
    'mode': 'chat',
    'supports_function_calling': true
  },
  'gpt-3.5-turbo-0301': {
    'max_tokens': 4097,
    'max_input_tokens': 4097,
    'max_output_tokens': 4096,
    'input_cost_per_token': 0.0000015,
    'output_cost_per_token': 0.000002,
    'litellm_provider': 'openai',
    'mode': 'chat'
  },
  'gpt-3.5-turbo-0613': {
    'max_tokens': 4097,
    'max_input_tokens': 4097,
    'max_output_tokens': 4096,
    'input_cost_per_token': 0.0000015,
    'output_cost_per_token': 0.000002,
    'litellm_provider': 'openai',
    'mode': 'chat',
    'supports_function_calling': true
  },
  'gpt-3.5-turbo-1106': {
    'max_tokens': 16385,
    'max_input_tokens': 16385,
    'max_output_tokens': 4096,
    'input_cost_per_token': 0.0000010,
    'output_cost_per_token': 0.0000020,
    'litellm_provider': 'openai',
    'mode': 'chat',
    'supports_function_calling': true,
    'supports_parallel_function_calling': true
  },
  'gpt-3.5-turbo-0125': {
    'max_tokens': 16385,
    'max_input_tokens': 16385,
    'max_output_tokens': 4096,
    'input_cost_per_token': 0.0000005,
    'output_cost_per_token': 0.0000015,
    'litellm_provider': 'openai',
    'mode': 'chat',
    'supports_function_calling': true,
    'supports_parallel_function_calling': true
  },
  'gpt-3.5-turbo-16k': {
    'max_tokens': 16385,
    'max_input_tokens': 16385,
    'max_output_tokens': 4096,
    'input_cost_per_token': 0.000003,
    'output_cost_per_token': 0.000004,
    'litellm_provider': 'openai',
    'mode': 'chat'
  },
  'gpt-3.5-turbo-16k-0613': {
    'max_tokens': 16385,
    'max_input_tokens': 16385,
    'max_output_tokens': 4096,
    'input_cost_per_token': 0.000003,
    'output_cost_per_token': 0.000004,
    'litellm_provider': 'openai',
    'mode': 'chat'
  },
  'ft:gpt-3.5-turbo': {
    'max_tokens': 4097,
    'max_input_tokens': 4097,
    'max_output_tokens': 4096,
    'input_cost_per_token': 0.000003,
    'output_cost_per_token': 0.000006,
    'litellm_provider': 'openai',
    'mode': 'chat'
  },
  'text-embedding-3-large': {
    'max_tokens': 8191,
    'input_cost_per_token': 0.00000013,
    'output_cost_per_token': 0.000000,
    'litellm_provider': 'openai',
    'mode': 'embedding'
  },
  'text-embedding-3-small': {
    'max_tokens': 8191,
    'input_cost_per_token': 0.00000002,
    'output_cost_per_token': 0.000000,
    'litellm_provider': 'openai',
    'mode': 'embedding'
  },
  'text-embedding-ada-002': {
    'max_tokens': 8191,
    'input_cost_per_token': 0.0000001,
    'output_cost_per_token': 0.000000,
    'litellm_provider': 'openai',
    'mode': 'embedding'
  },
  'text-embedding-ada-002-v2': {
    'max_tokens': 8191,
    'input_cost_per_token': 0.0000001,
    'output_cost_per_token': 0.000000,
    'litellm_provider': 'openai',
    'mode': 'embedding'
  },
  'text-moderation-stable': {
    'max_tokens': 32768,
    'max_input_tokens': 32768,
    'max_output_tokens': 0,
    'input_cost_per_token': 0.000000,
    'output_cost_per_token': 0.000000,
    'litellm_provider': 'openai',
    'mode': 'moderations'
  },
  'text-moderation-007': {
    'max_tokens': 32768,
    'max_input_tokens': 32768,
    'max_output_tokens': 0,
    'input_cost_per_token': 0.000000,
    'output_cost_per_token': 0.000000,
    'litellm_provider': 'openai',
    'mode': 'moderations'
  },
  'text-moderation-latest': {
    'max_tokens': 32768,
    'max_input_tokens': 32768,
    'max_output_tokens': 0,
    'input_cost_per_token': 0.000000,
    'output_cost_per_token': 0.000000,
    'litellm_provider': 'openai',
    'mode': 'moderations'
  },
  '256-x-256/dall-e-2': {
    'mode': 'image_generation',
    'input_cost_per_pixel': 0.00000024414,
    'output_cost_per_pixel': 0.0,
    'litellm_provider': 'openai'
  },
  '512-x-512/dall-e-2': {
    'mode': 'image_generation',
    'input_cost_per_pixel': 0.0000000686,
    'output_cost_per_pixel': 0.0,
    'litellm_provider': 'openai'
  },
  '1024-x-1024/dall-e-2': {
    'mode': 'image_generation',
    'input_cost_per_pixel': 0.000000019,
    'output_cost_per_pixel': 0.0,
    'litellm_provider': 'openai'
  },
  'hd/1024-x-1792/dall-e-3': {
    'mode': 'image_generation',
    'input_cost_per_pixel': 0.00000006539,
    'output_cost_per_pixel': 0.0,
    'litellm_provider': 'openai'
  },
  'hd/1792-x-1024/dall-e-3': {
    'mode': 'image_generation',
    'input_cost_per_pixel': 0.00000006539,
    'output_cost_per_pixel': 0.0,
    'litellm_provider': 'openai'
  },
  'hd/1024-x-1024/dall-e-3': {
    'mode': 'image_generation',
    'input_cost_per_pixel': 0.00000007629,
    'output_cost_per_pixel': 0.0,
    'litellm_provider': 'openai'
  },
  'standard/1024-x-1792/dall-e-3': {
    'mode': 'image_generation',
    'input_cost_per_pixel': 0.00000004359,
    'output_cost_per_pixel': 0.0,
    'litellm_provider': 'openai'
  },
  'standard/1792-x-1024/dall-e-3': {
    'mode': 'image_generation',
    'input_cost_per_pixel': 0.00000004359,
    'output_cost_per_pixel': 0.0,
    'litellm_provider': 'openai'
  },
  'standard/1024-x-1024/dall-e-3': {
    'mode': 'image_generation',
    'input_cost_per_pixel': 0.0000000381469,
    'output_cost_per_pixel': 0.0,
    'litellm_provider': 'openai'
  },
  'whisper-1': {
    'mode': 'audio_transcription',
    'input_cost_per_second': 0,
    'output_cost_per_second': 0.0001,
    'litellm_provider': 'openai'
  },
  'azure/whisper-1': {
    'mode': 'audio_transcription',
    'input_cost_per_second': 0,
    'output_cost_per_second': 0.0001,
    'litellm_provider': 'azure'
  },
  'azure/gpt-4-0125-preview': {
    'max_tokens': 128000,
    'max_input_tokens': 128000,
    'max_output_tokens': 4096,
    'input_cost_per_token': 0.00001,
    'output_cost_per_token': 0.00003,
    'litellm_provider': 'azure',
    'mode': 'chat',
    'supports_function_calling': true,
    'supports_parallel_function_calling': true
  },
  'azure/gpt-4-1106-preview': {
    'max_tokens': 128000,
    'max_input_tokens': 128000,
    'max_output_tokens': 4096,
    'input_cost_per_token': 0.00001,
    'output_cost_per_token': 0.00003,
    'litellm_provider': 'azure',
    'mode': 'chat',
    'supports_function_calling': true,
    'supports_parallel_function_calling': true
  },
  'azure/gpt-4-0613': {
    'max_tokens': 8192,
    'max_input_tokens': 8192,
    'max_output_tokens': 4096,
    'input_cost_per_token': 0.00003,
    'output_cost_per_token': 0.00006,
    'litellm_provider': 'azure',
    'mode': 'chat',
    'supports_function_calling': true
  },
  'azure/gpt-4-32k-0613': {
    'max_tokens': 32768,
    'max_input_tokens': 32768,
    'max_output_tokens': 4096,
    'input_cost_per_token': 0.00006,
    'output_cost_per_token': 0.00012,
    'litellm_provider': 'azure',
    'mode': 'chat'
  },
  'azure/gpt-4-32k': {
    'max_tokens': 32768,
    'max_input_tokens': 32768,
    'max_output_tokens': 4096,
    'input_cost_per_token': 0.00006,
    'output_cost_per_token': 0.00012,
    'litellm_provider': 'azure',
    'mode': 'chat'
  },
  'azure/gpt-4': {
    'max_tokens': 8192,
    'max_input_tokens': 8192,
    'max_output_tokens': 4096,
    'input_cost_per_token': 0.00003,
    'output_cost_per_token': 0.00006,
    'litellm_provider': 'azure',
    'mode': 'chat',
    'supports_function_calling': true
  },
  'azure/gpt-4-turbo': {
    'max_tokens': 128000,
    'max_input_tokens': 128000,
    'max_output_tokens': 4096,
    'input_cost_per_token': 0.00001,
    'output_cost_per_token': 0.00003,
    'litellm_provider': 'azure',
    'mode': 'chat',
    'supports_function_calling': true,
    'supports_parallel_function_calling': true
  },
  'azure/gpt-4-turbo-vision-preview': {
    'max_tokens': 128000,
    'max_input_tokens': 128000,
    'max_output_tokens': 4096,
    'input_cost_per_token': 0.00001,
    'output_cost_per_token': 0.00003,
    'litellm_provider': 'azure',
    'mode': 'chat'
  },
  'azure/gpt-35-turbo-16k-0613': {
    'max_tokens': 16385,
    'max_input_tokens': 16385,
    'max_output_tokens': 4096,
    'input_cost_per_token': 0.000003,
    'output_cost_per_token': 0.000004,
    'litellm_provider': 'azure',
    'mode': 'chat',
    'supports_function_calling': true
  },
  'azure/gpt-35-turbo-1106': {
    'max_tokens': 16384,
    'max_input_tokens': 16384,
    'max_output_tokens': 4096,
    'input_cost_per_token': 0.0000015,
    'output_cost_per_token': 0.000002,
    'litellm_provider': 'azure',
    'mode': 'chat',
    'supports_function_calling': true,
    'supports_parallel_function_calling': true
  },
  'azure/gpt-35-turbo-0125': {
    'max_tokens': 16384,
    'max_input_tokens': 16384,
    'max_output_tokens': 4096,
    'input_cost_per_token': 0.0000005,
    'output_cost_per_token': 0.0000015,
    'litellm_provider': 'azure',
    'mode': 'chat',
    'supports_function_calling': true,
    'supports_parallel_function_calling': true
  },
  'azure/gpt-35-turbo-16k': {
    'max_tokens': 16385,
    'max_input_tokens': 16385,
    'max_output_tokens': 4096,
    'input_cost_per_token': 0.000003,
    'output_cost_per_token': 0.000004,
    'litellm_provider': 'azure',
    'mode': 'chat'
  },
  'azure/gpt-35-turbo': {
    'max_tokens': 4097,
    'max_input_tokens': 4097,
    'max_output_tokens': 4096,
    'input_cost_per_token': 0.0000015,
    'output_cost_per_token': 0.000002,
    'litellm_provider': 'azure',
    'mode': 'chat',
    'supports_function_calling': true
  },
  'azure/gpt-3.5-turbo-instruct-0914': {
    'max_tokens': 4097,
    'input_cost_per_token': 0.0000015,
    'output_cost_per_token': 0.000002,
    'litellm_provider': 'text-completion-openai',
    'mode': 'completion'
  },
  'azure/gpt-35-turbo-instruct': {
    'max_tokens': 4097,
    'input_cost_per_token': 0.0000015,
    'output_cost_per_token': 0.000002,
    'litellm_provider': 'text-completion-openai',
    'mode': 'completion'
  },
  'azure/mistral-large-latest': {
    'max_tokens': 32000,
    'input_cost_per_token': 0.000008,
    'output_cost_per_token': 0.000024,
    'litellm_provider': 'azure',
    'mode': 'chat',
    'supports_function_calling': true
  },
  'azure/mistral-large-2402': {
    'max_tokens': 32000,
    'input_cost_per_token': 0.000008,
    'output_cost_per_token': 0.000024,
    'litellm_provider': 'azure',
    'mode': 'chat',
    'supports_function_calling': true
  },
  'azure/ada': {
    'max_tokens': 8191,
    'input_cost_per_token': 0.0000001,
    'output_cost_per_token': 0.000000,
    'litellm_provider': 'azure',
    'mode': 'embedding'
  },
  'azure/text-embedding-ada-002': {
    'max_tokens': 8191,
    'input_cost_per_token': 0.0000001,
    'output_cost_per_token': 0.000000,
    'litellm_provider': 'azure',
    'mode': 'embedding'
  },
  'azure/text-embedding-3-large': {
    'max_tokens': 8191,
    'input_cost_per_token': 0.00000013,
    'output_cost_per_token': 0.000000,
    'litellm_provider': 'azure',
    'mode': 'embedding'
  },
  'azure/text-embedding-3-small': {
    'max_tokens': 8191,
    'input_cost_per_token': 0.00000002,
    'output_cost_per_token': 0.000000,
    'litellm_provider': 'azure',
    'mode': 'embedding'
  },
  'azure/standard/1024-x-1024/dall-e-3': {
    'input_cost_per_pixel': 0.0000000381469,
    'output_cost_per_token': 0.0,
    'litellm_provider': 'azure',
    'mode': 'image_generation'
  },
  'azure/hd/1024-x-1024/dall-e-3': {
    'input_cost_per_pixel': 0.00000007629,
    'output_cost_per_token': 0.0,
    'litellm_provider': 'azure',
    'mode': 'image_generation'
  },
  'azure/standard/1024-x-1792/dall-e-3': {
    'input_cost_per_pixel': 0.00000004359,
    'output_cost_per_token': 0.0,
    'litellm_provider': 'azure',
    'mode': 'image_generation'
  },
  'azure/standard/1792-x-1024/dall-e-3': {
    'input_cost_per_pixel': 0.00000004359,
    'output_cost_per_token': 0.0,
    'litellm_provider': 'azure',
    'mode': 'image_generation'
  },
  'azure/hd/1024-x-1792/dall-e-3': {
    'input_cost_per_pixel': 0.00000006539,
    'output_cost_per_token': 0.0,
    'litellm_provider': 'azure',
    'mode': 'image_generation'
  },
  'azure/hd/1792-x-1024/dall-e-3': {
    'input_cost_per_pixel': 0.00000006539,
    'output_cost_per_token': 0.0,
    'litellm_provider': 'azure',
    'mode': 'image_generation'
  },
  'azure/standard/1024-x-1024/dall-e-2': {
    'input_cost_per_pixel': 0.0,
    'output_cost_per_token': 0.0,
    'litellm_provider': 'azure',
    'mode': 'image_generation'
  },
  'babbage-002': {
    'max_tokens': 16384,
    'max_input_tokens': 16384,
    'max_output_tokens': 4096,
    'input_cost_per_token': 0.0000004,
    'output_cost_per_token': 0.0000004,
    'litellm_provider': 'text-completion-openai',
    'mode': 'completion'
  },
  'davinci-002': {
    'max_tokens': 16384,
    'max_input_tokens': 16384,
    'max_output_tokens': 4096,
    'input_cost_per_token': 0.000002,
    'output_cost_per_token': 0.000002,
    'litellm_provider': 'text-completion-openai',
    'mode': 'completion'
  },
  'gpt-3.5-turbo-instruct': {
    'max_tokens': 8192,
    'max_input_tokens': 8192,
    'max_output_tokens': 4096,
    'input_cost_per_token': 0.0000015,
    'output_cost_per_token': 0.000002,
    'litellm_provider': 'text-completion-openai',
    'mode': 'completion'
  },
  'gpt-3.5-turbo-instruct-0914': {
    'max_tokens': 4097,
    'input_cost_per_token': 0.0000015,
    'output_cost_per_token': 0.000002,
    'litellm_provider': 'text-completion-openai',
    'mode': 'completion'
  },
  'claude-instant-1': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_token': 0.00000163,
    'output_cost_per_token': 0.00000551,
    'litellm_provider': 'anthropic',
    'mode': 'chat'
  },
  'mistral/mistral-tiny': {
    'max_tokens': 8192,
    'input_cost_per_token': 0.00000015,
    'output_cost_per_token': 0.00000046,
    'litellm_provider': 'mistral',
    'mode': 'chat'
  },
  'mistral/mistral-small': {
    'max_tokens': 8192,
    'input_cost_per_token': 0.00000066,
    'output_cost_per_token': 0.00000197,
    'litellm_provider': 'mistral',
    'mode': 'chat'
  },
  'mistral/mistral-medium': {
    'max_tokens': 8192,
    'input_cost_per_token': 0.00000273,
    'output_cost_per_token': 0.00000820,
    'litellm_provider': 'mistral',
    'mode': 'chat'
  },
  'mistral/mistral-large-latest': {
    'max_tokens': 32000,
    'input_cost_per_token': 0.000008,
    'output_cost_per_token': 0.000024,
    'litellm_provider': 'mistral',
    'mode': 'chat',
    'supports_function_calling': true
  },
  'mistral/mistral-embed': {
    'max_tokens': 8192,
    'input_cost_per_token': 0.000000111,
    'litellm_provider': 'mistral',
    'mode': 'embedding'
  },
  'groq/llama2-70b-4096': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.00000070,
    'output_cost_per_token': 0.00000080,
    'litellm_provider': 'groq',
    'mode': 'chat'
  },
  'groq/mixtral-8x7b-32768': {
    'max_tokens': 32768,
    'input_cost_per_token': 0.00000027,
    'output_cost_per_token': 0.00000027,
    'litellm_provider': 'groq',
    'mode': 'chat'
  },
  'claude-instant-1.2': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_token': 0.000000163,
    'output_cost_per_token': 0.000000551,
    'litellm_provider': 'anthropic',
    'mode': 'chat'
  },
  'claude-2': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_token': 0.000008,
    'output_cost_per_token': 0.000024,
    'litellm_provider': 'anthropic',
    'mode': 'chat'
  },
  'claude-2.1': {
    'max_tokens': 200000,
    'max_output_tokens': 8191,
    'input_cost_per_token': 0.000008,
    'output_cost_per_token': 0.000024,
    'litellm_provider': 'anthropic',
    'mode': 'chat'
  },
  'claude-3-opus-20240229': {
    'max_tokens': 200000,
    'max_output_tokens': 4096,
    'input_cost_per_token': 0.000015,
    'output_cost_per_token': 0.000075,
    'litellm_provider': 'anthropic',
    'mode': 'chat'
  },
  'claude-3-sonnet-20240229': {
    'max_tokens': 200000,
    'max_output_tokens': 4096,
    'input_cost_per_token': 0.000003,
    'output_cost_per_token': 0.000015,
    'litellm_provider': 'anthropic',
    'mode': 'chat'
  },
  'text-bison': {
    'max_tokens': 8192,
    'input_cost_per_token': 0.000000125,
    'output_cost_per_token': 0.000000125,
    'litellm_provider': 'vertex_ai-text-models',
    'mode': 'completion'
  },
  'text-bison@001': {
    'max_tokens': 8192,
    'input_cost_per_token': 0.000000125,
    'output_cost_per_token': 0.000000125,
    'litellm_provider': 'vertex_ai-text-models',
    'mode': 'completion'
  },
  'text-unicorn': {
    'max_tokens': 8192,
    'input_cost_per_token': 0.00001,
    'output_cost_per_token': 0.000028,
    'litellm_provider': 'vertex_ai-text-models',
    'mode': 'completion'
  },
  'text-unicorn@001': {
    'max_tokens': 8192,
    'input_cost_per_token': 0.00001,
    'output_cost_per_token': 0.000028,
    'litellm_provider': 'vertex_ai-text-models',
    'mode': 'completion'
  },
  'chat-bison': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.000000125,
    'output_cost_per_token': 0.000000125,
    'litellm_provider': 'vertex_ai-chat-models',
    'mode': 'chat'
  },
  'chat-bison@001': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.000000125,
    'output_cost_per_token': 0.000000125,
    'litellm_provider': 'vertex_ai-chat-models',
    'mode': 'chat'
  },
  'chat-bison@002': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.000000125,
    'output_cost_per_token': 0.000000125,
    'litellm_provider': 'vertex_ai-chat-models',
    'mode': 'chat'
  },
  'chat-bison-32k': {
    'max_tokens': 32000,
    'input_cost_per_token': 0.000000125,
    'output_cost_per_token': 0.000000125,
    'litellm_provider': 'vertex_ai-chat-models',
    'mode': 'chat'
  },
  'code-bison': {
    'max_tokens': 6144,
    'input_cost_per_token': 0.000000125,
    'output_cost_per_token': 0.000000125,
    'litellm_provider': 'vertex_ai-code-text-models',
    'mode': 'chat'
  },
  'code-bison@001': {
    'max_tokens': 6144,
    'input_cost_per_token': 0.000000125,
    'output_cost_per_token': 0.000000125,
    'litellm_provider': 'vertex_ai-code-text-models',
    'mode': 'completion'
  },
  'code-gecko@001': {
    'max_tokens': 2048,
    'input_cost_per_token': 0.000000125,
    'output_cost_per_token': 0.000000125,
    'litellm_provider': 'vertex_ai-code-text-models',
    'mode': 'completion'
  },
  'code-gecko@002': {
    'max_tokens': 2048,
    'input_cost_per_token': 0.000000125,
    'output_cost_per_token': 0.000000125,
    'litellm_provider': 'vertex_ai-code-text-models',
    'mode': 'completion'
  },
  'code-gecko': {
    'max_tokens': 2048,
    'input_cost_per_token': 0.000000125,
    'output_cost_per_token': 0.000000125,
    'litellm_provider': 'vertex_ai-code-text-models',
    'mode': 'completion'
  },
  'codechat-bison': {
    'max_tokens': 6144,
    'input_cost_per_token': 0.000000125,
    'output_cost_per_token': 0.000000125,
    'litellm_provider': 'vertex_ai-code-chat-models',
    'mode': 'chat'
  },
  'codechat-bison@001': {
    'max_tokens': 6144,
    'input_cost_per_token': 0.000000125,
    'output_cost_per_token': 0.000000125,
    'litellm_provider': 'vertex_ai-code-chat-models',
    'mode': 'chat'
  },
  'codechat-bison-32k': {
    'max_tokens': 32000,
    'input_cost_per_token': 0.000000125,
    'output_cost_per_token': 0.000000125,
    'litellm_provider': 'vertex_ai-code-chat-models',
    'mode': 'chat'
  },
  'gemini-pro': {
    'max_tokens': 32760,
    'max_output_tokens': 2048,
    'input_cost_per_token': 0.00000025,
    'output_cost_per_token': 0.0000005,
    'litellm_provider': 'vertex_ai-language-models',
    'mode': 'chat'
  },
  'gemini-1.0-pro': {
    'max_tokens': 32760,
    'max_output_tokens': 8192,
    'input_cost_per_token': 0.00000025,
    'output_cost_per_token': 0.0000005,
    'litellm_provider': 'vertex_ai-language-models',
    'mode': 'chat',
    'supports_function_calling': true
  },
  'gemini-1.5-pro': {
    'max_tokens': 8192,
    'max_input_tokens': 1000000,
    'max_output_tokens': 8192,
    'input_cost_per_token': 0,
    'output_cost_per_token': 0,
    'litellm_provider': 'vertex_ai-language-models',
    'mode': 'chat'
  },
  'gemini-1.5-pro-preview-0215': {
    'max_tokens': 8192,
    'max_input_tokens': 1000000,
    'max_output_tokens': 8192,
    'input_cost_per_token': 0,
    'output_cost_per_token': 0,
    'litellm_provider': 'vertex_ai-language-models',
    'mode': 'chat'
  },
  'gemini-pro-vision': {
    'max_tokens': 16384,
    'max_output_tokens': 2048,
    'input_cost_per_token': 0.00000025,
    'output_cost_per_token': 0.0000005,
    'litellm_provider': 'vertex_ai-vision-models',
    'mode': 'chat'
  },
  'gemini-1.0-pro-vision': {
    'max_tokens': 16384,
    'max_output_tokens': 2048,
    'max_images_per_prompt': 16,
    'max_videos_per_prompt': 1,
    'max_video_length': 2,
    'input_cost_per_token': 0.00000025,
    'output_cost_per_token': 0.0000005,
    'litellm_provider': 'vertex_ai-vision-models',
    'mode': 'chat'
  },
  'gemini-1.0-pro-vision-001': {
    'max_tokens': 16384,
    'max_output_tokens': 2048,
    'max_images_per_prompt': 16,
    'max_videos_per_prompt': 1,
    'max_video_length': 2,
    'input_cost_per_token': 0.00000025,
    'output_cost_per_token': 0.0000005,
    'litellm_provider': 'vertex_ai-vision-models',
    'mode': 'chat'
  },
  'gemini-1.5-pro-vision': {
    'max_tokens': 8192,
    'max_input_tokens': 1000000,
    'max_output_tokens': 8192,
    'max_images_per_prompt': 16,
    'max_videos_per_prompt': 1,
    'max_video_length': 2,
    'input_cost_per_token': 0,
    'output_cost_per_token': 0,
    'litellm_provider': 'vertex_ai-vision-models',
    'mode': 'chat'
  },
  'textembedding-gecko': {
    'max_tokens': 3072,
    'max_input_tokens': 3072,
    'output_vector_size': 768,
    'input_cost_per_token': 0.00000000625,
    'output_cost_per_token': 0,
    'litellm_provider': 'vertex_ai-embedding-models',
    'mode': 'embedding'
  },
  'textembedding-gecko-multilingual': {
    'max_tokens': 3072,
    'max_input_tokens': 3072,
    'output_vector_size': 768,
    'input_cost_per_token': 0.00000000625,
    'output_cost_per_token': 0,
    'litellm_provider': 'vertex_ai-embedding-models',
    'mode': 'embedding'
  },
  'textembedding-gecko-multilingual@001': {
    'max_tokens': 3072,
    'max_input_tokens': 3072,
    'output_vector_size': 768,
    'input_cost_per_token': 0.00000000625,
    'output_cost_per_token': 0,
    'litellm_provider': 'vertex_ai-embedding-models',
    'mode': 'embedding'
  },
  'textembedding-gecko@001': {
    'max_tokens': 3072,
    'max_input_tokens': 3072,
    'output_vector_size': 768,
    'input_cost_per_token': 0.00000000625,
    'output_cost_per_token': 0,
    'litellm_provider': 'vertex_ai-embedding-models',
    'mode': 'embedding'
  },
  'textembedding-gecko@003': {
    'max_tokens': 3072,
    'max_input_tokens': 3072,
    'output_vector_size': 768,
    'input_cost_per_token': 0.00000000625,
    'output_cost_per_token': 0,
    'litellm_provider': 'vertex_ai-embedding-models',
    'mode': 'embedding'
  },
  'palm/chat-bison': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.000000125,
    'output_cost_per_token': 0.000000125,
    'litellm_provider': 'palm',
    'mode': 'chat'
  },
  'palm/chat-bison-001': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.000000125,
    'output_cost_per_token': 0.000000125,
    'litellm_provider': 'palm',
    'mode': 'chat'
  },
  'palm/text-bison': {
    'max_tokens': 8196,
    'input_cost_per_token': 0.000000125,
    'output_cost_per_token': 0.000000125,
    'litellm_provider': 'palm',
    'mode': 'completion'
  },
  'palm/text-bison-001': {
    'max_tokens': 8196,
    'input_cost_per_token': 0.000000125,
    'output_cost_per_token': 0.000000125,
    'litellm_provider': 'palm',
    'mode': 'completion'
  },
  'palm/text-bison-safety-off': {
    'max_tokens': 8196,
    'input_cost_per_token': 0.000000125,
    'output_cost_per_token': 0.000000125,
    'litellm_provider': 'palm',
    'mode': 'completion'
  },
  'palm/text-bison-safety-recitation-off': {
    'max_tokens': 8196,
    'input_cost_per_token': 0.000000125,
    'output_cost_per_token': 0.000000125,
    'litellm_provider': 'palm',
    'mode': 'completion'
  },
  'gemini/gemini-pro': {
    'max_tokens': 30720,
    'max_output_tokens': 2048,
    'input_cost_per_token': 0.0,
    'output_cost_per_token': 0.0,
    'litellm_provider': 'gemini',
    'mode': 'chat'
  },
  'gemini/gemini-1.5-pro': {
    'max_tokens': 8192,
    'max_input_tokens': 1000000,
    'max_output_tokens': 8192,
    'input_cost_per_token': 0,
    'output_cost_per_token': 0,
    'litellm_provider': 'gemini',
    'mode': 'chat'
  },
  'gemini/gemini-pro-vision': {
    'max_tokens': 30720,
    'max_output_tokens': 2048,
    'input_cost_per_token': 0.0,
    'output_cost_per_token': 0.0,
    'litellm_provider': 'gemini',
    'mode': 'chat'
  },
  'gemini/gemini-1.5-pro-vision': {
    'max_tokens': 8192,
    'max_input_tokens': 1000000,
    'max_output_tokens': 8192,
    'input_cost_per_token': 0,
    'output_cost_per_token': 0,
    'litellm_provider': 'gemini',
    'mode': 'chat'
  },
  'command-nightly': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.000015,
    'output_cost_per_token': 0.000015,
    'litellm_provider': 'cohere',
    'mode': 'completion'
  },
  'command': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.000015,
    'output_cost_per_token': 0.000015,
    'litellm_provider': 'cohere',
    'mode': 'completion'
  },
  'command-light': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.000015,
    'output_cost_per_token': 0.000015,
    'litellm_provider': 'cohere',
    'mode': 'completion'
  },
  'command-medium-beta': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.000015,
    'output_cost_per_token': 0.000015,
    'litellm_provider': 'cohere',
    'mode': 'completion'
  },
  'command-xlarge-beta': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.000015,
    'output_cost_per_token': 0.000015,
    'litellm_provider': 'cohere',
    'mode': 'completion'
  },
  'replicate/llama-2-70b-chat:2c1608e18606fad2812020dc541930f2d0495ce32eee50074220b87300bc16e1': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.0000,
    'output_cost_per_token': 0.0000,
    'litellm_provider': 'replicate',
    'mode': 'chat'
  },
  'openrouter/openai/gpt-3.5-turbo': {
    'max_tokens': 4095,
    'input_cost_per_token': 0.0000015,
    'output_cost_per_token': 0.000002,
    'litellm_provider': 'openrouter',
    'mode': 'chat'
  },
  'openrouter/openai/gpt-3.5-turbo-16k': {
    'max_tokens': 16383,
    'input_cost_per_token': 0.000003,
    'output_cost_per_token': 0.000004,
    'litellm_provider': 'openrouter',
    'mode': 'chat'
  },
  'openrouter/openai/gpt-4': {
    'max_tokens': 8192,
    'input_cost_per_token': 0.00003,
    'output_cost_per_token': 0.00006,
    'litellm_provider': 'openrouter',
    'mode': 'chat'
  },
  'openrouter/anthropic/claude-instant-v1': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_token': 0.00000163,
    'output_cost_per_token': 0.00000551,
    'litellm_provider': 'openrouter',
    'mode': 'chat'
  },
  'openrouter/anthropic/claude-2': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_token': 0.00001102,
    'output_cost_per_token': 0.00003268,
    'litellm_provider': 'openrouter',
    'mode': 'chat'
  },
  'openrouter/google/palm-2-chat-bison': {
    'max_tokens': 8000,
    'input_cost_per_token': 0.0000005,
    'output_cost_per_token': 0.0000005,
    'litellm_provider': 'openrouter',
    'mode': 'chat'
  },
  'openrouter/google/palm-2-codechat-bison': {
    'max_tokens': 8000,
    'input_cost_per_token': 0.0000005,
    'output_cost_per_token': 0.0000005,
    'litellm_provider': 'openrouter',
    'mode': 'chat'
  },
  'openrouter/meta-llama/llama-2-13b-chat': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.0000002,
    'output_cost_per_token': 0.0000002,
    'litellm_provider': 'openrouter',
    'mode': 'chat'
  },
  'openrouter/meta-llama/llama-2-70b-chat': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.0000015,
    'output_cost_per_token': 0.0000015,
    'litellm_provider': 'openrouter',
    'mode': 'chat'
  },
  'openrouter/meta-llama/codellama-34b-instruct': {
    'max_tokens': 8096,
    'input_cost_per_token': 0.0000005,
    'output_cost_per_token': 0.0000005,
    'litellm_provider': 'openrouter',
    'mode': 'chat'
  },
  'openrouter/nousresearch/nous-hermes-llama2-13b': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.0000002,
    'output_cost_per_token': 0.0000002,
    'litellm_provider': 'openrouter',
    'mode': 'chat'
  },
  'openrouter/mancer/weaver': {
    'max_tokens': 8000,
    'input_cost_per_token': 0.000005625,
    'output_cost_per_token': 0.000005625,
    'litellm_provider': 'openrouter',
    'mode': 'chat'
  },
  'openrouter/gryphe/mythomax-l2-13b': {
    'max_tokens': 8192,
    'input_cost_per_token': 0.000001875,
    'output_cost_per_token': 0.000001875,
    'litellm_provider': 'openrouter',
    'mode': 'chat'
  },
  'openrouter/jondurbin/airoboros-l2-70b-2.1': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.000013875,
    'output_cost_per_token': 0.000013875,
    'litellm_provider': 'openrouter',
    'mode': 'chat'
  },
  'openrouter/undi95/remm-slerp-l2-13b': {
    'max_tokens': 6144,
    'input_cost_per_token': 0.000001875,
    'output_cost_per_token': 0.000001875,
    'litellm_provider': 'openrouter',
    'mode': 'chat'
  },
  'openrouter/pygmalionai/mythalion-13b': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.000001875,
    'output_cost_per_token': 0.000001875,
    'litellm_provider': 'openrouter',
    'mode': 'chat'
  },
  'openrouter/mistralai/mistral-7b-instruct': {
    'max_tokens': 8192,
    'input_cost_per_token': 0.00000013,
    'output_cost_per_token': 0.00000013,
    'litellm_provider': 'openrouter',
    'mode': 'chat'
  },
  'openrouter/mistralai/mistral-7b-instruct:free': {
    'max_tokens': 8192,
    'input_cost_per_token': 0.0,
    'output_cost_per_token': 0.0,
    'litellm_provider': 'openrouter',
    'mode': 'chat'
  },
  'j2-ultra': {
    'max_tokens': 8192,
    'input_cost_per_token': 0.000015,
    'output_cost_per_token': 0.000015,
    'litellm_provider': 'ai21',
    'mode': 'completion'
  },
  'j2-mid': {
    'max_tokens': 8192,
    'input_cost_per_token': 0.00001,
    'output_cost_per_token': 0.00001,
    'litellm_provider': 'ai21',
    'mode': 'completion'
  },
  'j2-light': {
    'max_tokens': 8192,
    'input_cost_per_token': 0.000003,
    'output_cost_per_token': 0.000003,
    'litellm_provider': 'ai21',
    'mode': 'completion'
  },
  'dolphin': {
    'max_tokens': 16384,
    'input_cost_per_token': 0.0000005,
    'output_cost_per_token': 0.0000005,
    'litellm_provider': 'nlp_cloud',
    'mode': 'completion'
  },
  'chatdolphin': {
    'max_tokens': 16384,
    'input_cost_per_token': 0.0000005,
    'output_cost_per_token': 0.0000005,
    'litellm_provider': 'nlp_cloud',
    'mode': 'chat'
  },
  'luminous-base': {
    'max_tokens': 2048,
    'input_cost_per_token': 0.00003,
    'output_cost_per_token': 0.000033,
    'litellm_provider': 'aleph_alpha',
    'mode': 'completion'
  },
  'luminous-base-control': {
    'max_tokens': 2048,
    'input_cost_per_token': 0.0000375,
    'output_cost_per_token': 0.00004125,
    'litellm_provider': 'aleph_alpha',
    'mode': 'chat'
  },
  'luminous-extended': {
    'max_tokens': 2048,
    'input_cost_per_token': 0.000045,
    'output_cost_per_token': 0.0000495,
    'litellm_provider': 'aleph_alpha',
    'mode': 'completion'
  },
  'luminous-extended-control': {
    'max_tokens': 2048,
    'input_cost_per_token': 0.00005625,
    'output_cost_per_token': 0.000061875,
    'litellm_provider': 'aleph_alpha',
    'mode': 'chat'
  },
  'luminous-supreme': {
    'max_tokens': 2048,
    'input_cost_per_token': 0.000175,
    'output_cost_per_token': 0.0001925,
    'litellm_provider': 'aleph_alpha',
    'mode': 'completion'
  },
  'luminous-supreme-control': {
    'max_tokens': 2048,
    'input_cost_per_token': 0.00021875,
    'output_cost_per_token': 0.000240625,
    'litellm_provider': 'aleph_alpha',
    'mode': 'chat'
  },
  'ai21.j2-mid-v1': {
    'max_tokens': 8191,
    'input_cost_per_token': 0.0000125,
    'output_cost_per_token': 0.0000125,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'ai21.j2-ultra-v1': {
    'max_tokens': 8191,
    'input_cost_per_token': 0.0000188,
    'output_cost_per_token': 0.0000188,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'amazon.titan-text-lite-v1': {
    'max_tokens': 8000,
    'input_cost_per_token': 0.0000003,
    'output_cost_per_token': 0.0000004,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'amazon.titan-text-express-v1': {
    'max_tokens': 8000,
    'input_cost_per_token': 0.0000013,
    'output_cost_per_token': 0.0000017,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'amazon.titan-embed-text-v1': {
    'max_tokens': 8192,
    'output_vector_size': 1536,
    'input_cost_per_token': 0.0000001,
    'output_cost_per_token': 0.0,
    'litellm_provider': 'bedrock',
    'mode': 'embedding'
  },
  'bedrock/us-west-2/mistral.mixtral-8x7b-instruct': {
    'max_tokens': 32000,
    'input_cost_per_token': 0.00000045,
    'output_cost_per_token': 0.0000007,
    'litellm_provider': 'bedrock',
    'mode': 'completion'
  },
  'bedrock/us-west-2/mistral.mistral-7b-instruct': {
    'max_tokens': 32000,
    'input_cost_per_token': 0.00000015,
    'output_cost_per_token': 0.0000002,
    'litellm_provider': 'bedrock',
    'mode': 'completion'
  },
  'anthropic.claude-3-sonnet-20240229-v1:0': {
    'max_tokens': 200000,
    'max_input_tokens': 200000,
    'max_output_tokens': 4096,
    'input_cost_per_token': 0.000003,
    'output_cost_per_token': 0.000015,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'anthropic.claude-v1': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_token': 0.000008,
    'output_cost_per_token': 0.000024,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'bedrock/us-east-1/anthropic.claude-v1': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_token': 0.000008,
    'output_cost_per_token': 0.000024,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'bedrock/us-west-2/anthropic.claude-v1': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_token': 0.000008,
    'output_cost_per_token': 0.000024,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'bedrock/ap-northeast-1/anthropic.claude-v1': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_token': 0.000008,
    'output_cost_per_token': 0.000024,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'bedrock/ap-northeast-1/1-month-commitment/anthropic.claude-v1': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_second': 0.0455,
    'output_cost_per_second': 0.0455,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'bedrock/ap-northeast-1/6-month-commitment/anthropic.claude-v1': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_second': 0.02527,
    'output_cost_per_second': 0.02527,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'bedrock/eu-central-1/anthropic.claude-v1': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_token': 0.000008,
    'output_cost_per_token': 0.000024,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'bedrock/eu-central-1/1-month-commitment/anthropic.claude-v1': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_second': 0.0415,
    'output_cost_per_second': 0.0415,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'bedrock/eu-central-1/6-month-commitment/anthropic.claude-v1': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_second': 0.02305,
    'output_cost_per_second': 0.02305,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'bedrock/us-east-1/1-month-commitment/anthropic.claude-v1': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_second': 0.0175,
    'output_cost_per_second': 0.0175,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'bedrock/us-east-1/6-month-commitment/anthropic.claude-v1': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_second': 0.00972,
    'output_cost_per_second': 0.00972,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'bedrock/us-west-2/1-month-commitment/anthropic.claude-v1': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_second': 0.0175,
    'output_cost_per_second': 0.0175,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'bedrock/us-west-2/6-month-commitment/anthropic.claude-v1': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_second': 0.00972,
    'output_cost_per_second': 0.00972,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'anthropic.claude-v2': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_token': 0.000008,
    'output_cost_per_token': 0.000024,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'bedrock/us-east-1/anthropic.claude-v2': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_token': 0.000008,
    'output_cost_per_token': 0.000024,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'bedrock/us-west-2/anthropic.claude-v2': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_token': 0.000008,
    'output_cost_per_token': 0.000024,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'bedrock/ap-northeast-1/anthropic.claude-v2': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_token': 0.000008,
    'output_cost_per_token': 0.000024,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'bedrock/ap-northeast-1/1-month-commitment/anthropic.claude-v2': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_second': 0.0455,
    'output_cost_per_second': 0.0455,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'bedrock/ap-northeast-1/6-month-commitment/anthropic.claude-v2': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_second': 0.02527,
    'output_cost_per_second': 0.02527,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'bedrock/eu-central-1/anthropic.claude-v2': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_token': 0.000008,
    'output_cost_per_token': 0.000024,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'bedrock/eu-central-1/1-month-commitment/anthropic.claude-v2': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_second': 0.0415,
    'output_cost_per_second': 0.0415,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'bedrock/eu-central-1/6-month-commitment/anthropic.claude-v2': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_second': 0.02305,
    'output_cost_per_second': 0.02305,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'bedrock/us-east-1/1-month-commitment/anthropic.claude-v2': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_second': 0.0175,
    'output_cost_per_second': 0.0175,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'bedrock/us-east-1/6-month-commitment/anthropic.claude-v2': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_second': 0.00972,
    'output_cost_per_second': 0.00972,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'bedrock/us-west-2/1-month-commitment/anthropic.claude-v2': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_second': 0.0175,
    'output_cost_per_second': 0.0175,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'bedrock/us-west-2/6-month-commitment/anthropic.claude-v2': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_second': 0.00972,
    'output_cost_per_second': 0.00972,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'anthropic.claude-v2:1': {
    'max_tokens': 200000,
    'max_output_tokens': 8191,
    'input_cost_per_token': 0.000008,
    'output_cost_per_token': 0.000024,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'bedrock/us-east-1/anthropic.claude-v2:1': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_token': 0.000008,
    'output_cost_per_token': 0.000024,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'bedrock/us-west-2/anthropic.claude-v2:1': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_token': 0.000008,
    'output_cost_per_token': 0.000024,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'bedrock/ap-northeast-1/anthropic.claude-v2:1': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_token': 0.000008,
    'output_cost_per_token': 0.000024,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'bedrock/ap-northeast-1/1-month-commitment/anthropic.claude-v2:1': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_second': 0.0455,
    'output_cost_per_second': 0.0455,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'bedrock/ap-northeast-1/6-month-commitment/anthropic.claude-v2:1': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_second': 0.02527,
    'output_cost_per_second': 0.02527,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'bedrock/eu-central-1/anthropic.claude-v2:1': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_token': 0.000008,
    'output_cost_per_token': 0.000024,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'bedrock/eu-central-1/1-month-commitment/anthropic.claude-v2:1': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_second': 0.0415,
    'output_cost_per_second': 0.0415,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'bedrock/eu-central-1/6-month-commitment/anthropic.claude-v2:1': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_second': 0.02305,
    'output_cost_per_second': 0.02305,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'bedrock/us-east-1/1-month-commitment/anthropic.claude-v2:1': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_second': 0.0175,
    'output_cost_per_second': 0.0175,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'bedrock/us-east-1/6-month-commitment/anthropic.claude-v2:1': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_second': 0.00972,
    'output_cost_per_second': 0.00972,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'bedrock/us-west-2/1-month-commitment/anthropic.claude-v2:1': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_second': 0.0175,
    'output_cost_per_second': 0.0175,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'bedrock/us-west-2/6-month-commitment/anthropic.claude-v2:1': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_second': 0.00972,
    'output_cost_per_second': 0.00972,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'anthropic.claude-instant-v1': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_token': 0.00000163,
    'output_cost_per_token': 0.00000551,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'bedrock/us-east-1/anthropic.claude-instant-v1': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_token': 0.0000008,
    'output_cost_per_token': 0.0000024,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'bedrock/us-east-1/1-month-commitment/anthropic.claude-instant-v1': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_second': 0.011,
    'output_cost_per_second': 0.011,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'bedrock/us-east-1/6-month-commitment/anthropic.claude-instant-v1': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_second': 0.00611,
    'output_cost_per_second': 0.00611,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'bedrock/us-west-2/1-month-commitment/anthropic.claude-instant-v1': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_second': 0.011,
    'output_cost_per_second': 0.011,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'bedrock/us-west-2/6-month-commitment/anthropic.claude-instant-v1': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_second': 0.00611,
    'output_cost_per_second': 0.00611,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'bedrock/us-west-2/anthropic.claude-instant-v1': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_token': 0.0000008,
    'output_cost_per_token': 0.0000024,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'bedrock/ap-northeast-1/anthropic.claude-instant-v1': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_token': 0.00000223,
    'output_cost_per_token': 0.00000755,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'bedrock/ap-northeast-1/1-month-commitment/anthropic.claude-instant-v1': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_second': 0.01475,
    'output_cost_per_second': 0.01475,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'bedrock/ap-northeast-1/6-month-commitment/anthropic.claude-instant-v1': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_second': 0.008194,
    'output_cost_per_second': 0.008194,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'bedrock/eu-central-1/anthropic.claude-instant-v1': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_token': 0.00000248,
    'output_cost_per_token': 0.00000838,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'bedrock/eu-central-1/1-month-commitment/anthropic.claude-instant-v1': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_second': 0.01635,
    'output_cost_per_second': 0.01635,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'bedrock/eu-central-1/6-month-commitment/anthropic.claude-instant-v1': {
    'max_tokens': 100000,
    'max_output_tokens': 8191,
    'input_cost_per_second': 0.009083,
    'output_cost_per_second': 0.009083,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'cohere.command-text-v14': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.0000015,
    'output_cost_per_token': 0.0000020,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'bedrock/*/1-month-commitment/cohere.command-text-v14': {
    'max_tokens': 4096,
    'input_cost_per_second': 0.011,
    'output_cost_per_second': 0.011,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'bedrock/*/6-month-commitment/cohere.command-text-v14': {
    'max_tokens': 4096,
    'input_cost_per_second': 0.0066027,
    'output_cost_per_second': 0.0066027,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'cohere.command-light-text-v14': {
    'max_tokens': 4000,
    'input_cost_per_token': 0.0000003,
    'output_cost_per_token': 0.0000006,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'bedrock/*/1-month-commitment/cohere.command-light-text-v14': {
    'max_tokens': 4096,
    'input_cost_per_second': 0.001902,
    'output_cost_per_second': 0.001902,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'bedrock/*/6-month-commitment/cohere.command-light-text-v14': {
    'max_tokens': 4096,
    'input_cost_per_second': 0.0011416,
    'output_cost_per_second': 0.0011416,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'cohere.embed-english-v3': {
    'max_tokens': 512,
    'input_cost_per_token': 0.0000001,
    'output_cost_per_token': 0.000000,
    'litellm_provider': 'bedrock',
    'mode': 'embedding'
  },
  'cohere.embed-multilingual-v3': {
    'max_tokens': 512,
    'input_cost_per_token': 0.0000001,
    'output_cost_per_token': 0.000000,
    'litellm_provider': 'bedrock',
    'mode': 'embedding'
  },
  'meta.llama2-13b-chat-v1': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.00000075,
    'output_cost_per_token': 0.000001,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  'meta.llama2-70b-chat-v1': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.00000195,
    'output_cost_per_token': 0.00000256,
    'litellm_provider': 'bedrock',
    'mode': 'chat'
  },
  '512-x-512/50-steps/stability.stable-diffusion-xl-v0': {
    'max_tokens': 77,
    'max_input_tokens': 77,
    'output_cost_per_image': 0.018,
    'litellm_provider': 'bedrock',
    'mode': 'image_generation'
  },
  '512-x-512/max-steps/stability.stable-diffusion-xl-v0': {
    'max_tokens': 77,
    'max_input_tokens': 77,
    'output_cost_per_image': 0.036,
    'litellm_provider': 'bedrock',
    'mode': 'image_generation'
  },
  'max-x-max/50-steps/stability.stable-diffusion-xl-v0': {
    'max_tokens': 77,
    'max_input_tokens': 77,
    'output_cost_per_image': 0.036,
    'litellm_provider': 'bedrock',
    'mode': 'image_generation'
  },
  'max-x-max/max-steps/stability.stable-diffusion-xl-v0': {
    'max_tokens': 77,
    'max_input_tokens': 77,
    'output_cost_per_image': 0.072,
    'litellm_provider': 'bedrock',
    'mode': 'image_generation'
  },
  '1024-x-1024/50-steps/stability.stable-diffusion-xl-v1': {
    'max_tokens': 77,
    'max_input_tokens': 77,
    'output_cost_per_image': 0.04,
    'litellm_provider': 'bedrock',
    'mode': 'image_generation'
  },
  '1024-x-1024/max-steps/stability.stable-diffusion-xl-v1': {
    'max_tokens': 77,
    'max_input_tokens': 77,
    'output_cost_per_image': 0.08,
    'litellm_provider': 'bedrock',
    'mode': 'image_generation'
  },
  'sagemaker/meta-textgeneration-llama-2-7b': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.000,
    'output_cost_per_token': 0.000,
    'litellm_provider': 'sagemaker',
    'mode': 'completion'
  },
  'sagemaker/meta-textgeneration-llama-2-7b-f': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.000,
    'output_cost_per_token': 0.000,
    'litellm_provider': 'sagemaker',
    'mode': 'chat'
  },
  'sagemaker/meta-textgeneration-llama-2-13b': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.000,
    'output_cost_per_token': 0.000,
    'litellm_provider': 'sagemaker',
    'mode': 'completion'
  },
  'sagemaker/meta-textgeneration-llama-2-13b-f': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.000,
    'output_cost_per_token': 0.000,
    'litellm_provider': 'sagemaker',
    'mode': 'chat'
  },
  'sagemaker/meta-textgeneration-llama-2-70b': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.000,
    'output_cost_per_token': 0.000,
    'litellm_provider': 'sagemaker',
    'mode': 'completion'
  },
  'sagemaker/meta-textgeneration-llama-2-70b-b-f': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.000,
    'output_cost_per_token': 0.000,
    'litellm_provider': 'sagemaker',
    'mode': 'chat'
  },
  'together-ai-up-to-3b': {
    'input_cost_per_token': 0.0000001,
    'output_cost_per_token': 0.0000001,
    'litellm_provider': 'together_ai'
  },
  'together-ai-3.1b-7b': {
    'input_cost_per_token': 0.0000002,
    'output_cost_per_token': 0.0000002,
    'litellm_provider': 'together_ai'
  },
  'together-ai-7.1b-20b': {
    'max_tokens': 1000,
    'input_cost_per_token': 0.0000004,
    'output_cost_per_token': 0.0000004,
    'litellm_provider': 'together_ai'
  },
  'together-ai-20.1b-40b': {
    'input_cost_per_token': 0.0000008,
    'output_cost_per_token': 0.0000008,
    'litellm_provider': 'together_ai'
  },
  'together-ai-40.1b-70b': {
    'input_cost_per_token': 0.0000009,
    'output_cost_per_token': 0.0000009,
    'litellm_provider': 'together_ai'
  },
  'together_ai/mistralai/Mixtral-8x7B-Instruct-v0.1': {
    'input_cost_per_token': 0.0000006,
    'output_cost_per_token': 0.0000006,
    'litellm_provider': 'together_ai',
    'supports_function_calling': true,
    'supports_parallel_function_calling': true
  },
  'together_ai/mistralai/Mistral-7B-Instruct-v0.1': {
    'litellm_provider': 'together_ai',
    'supports_function_calling': true,
    'supports_parallel_function_calling': true
  },
  'together_ai/togethercomputer/CodeLlama-34b-Instruct': {
    'litellm_provider': 'together_ai',
    'supports_function_calling': true,
    'supports_parallel_function_calling': true
  },
  'ollama/llama2': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.0,
    'output_cost_per_token': 0.0,
    'litellm_provider': 'ollama',
    'mode': 'completion'
  },
  'ollama/llama2:13b': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.0,
    'output_cost_per_token': 0.0,
    'litellm_provider': 'ollama',
    'mode': 'completion'
  },
  'ollama/llama2:70b': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.0,
    'output_cost_per_token': 0.0,
    'litellm_provider': 'ollama',
    'mode': 'completion'
  },
  'ollama/llama2-uncensored': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.0,
    'output_cost_per_token': 0.0,
    'litellm_provider': 'ollama',
    'mode': 'completion'
  },
  'ollama/mistral': {
    'max_tokens': 8192,
    'input_cost_per_token': 0.0,
    'output_cost_per_token': 0.0,
    'litellm_provider': 'ollama',
    'mode': 'completion'
  },
  'ollama/codellama': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.0,
    'output_cost_per_token': 0.0,
    'litellm_provider': 'ollama',
    'mode': 'completion'
  },
  'ollama/orca-mini': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.0,
    'output_cost_per_token': 0.0,
    'litellm_provider': 'ollama',
    'mode': 'completion'
  },
  'ollama/vicuna': {
    'max_tokens': 2048,
    'input_cost_per_token': 0.0,
    'output_cost_per_token': 0.0,
    'litellm_provider': 'ollama',
    'mode': 'completion'
  },
  'deepinfra/lizpreciatior/lzlv_70b_fp16_hf': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.00000070,
    'output_cost_per_token': 0.00000090,
    'litellm_provider': 'deepinfra',
    'mode': 'chat'
  },
  'deepinfra/Gryphe/MythoMax-L2-13b': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.00000022,
    'output_cost_per_token': 0.00000022,
    'litellm_provider': 'deepinfra',
    'mode': 'chat'
  },
  'deepinfra/mistralai/Mistral-7B-Instruct-v0.1': {
    'max_tokens': 32768,
    'input_cost_per_token': 0.00000013,
    'output_cost_per_token': 0.00000013,
    'litellm_provider': 'deepinfra',
    'mode': 'chat'
  },
  'deepinfra/meta-llama/Llama-2-70b-chat-hf': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.00000070,
    'output_cost_per_token': 0.00000090,
    'litellm_provider': 'deepinfra',
    'mode': 'chat'
  },
  'deepinfra/cognitivecomputations/dolphin-2.6-mixtral-8x7b': {
    'max_tokens': 32768,
    'input_cost_per_token': 0.00000027,
    'output_cost_per_token': 0.00000027,
    'litellm_provider': 'deepinfra',
    'mode': 'chat'
  },
  'deepinfra/codellama/CodeLlama-34b-Instruct-hf': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.00000060,
    'output_cost_per_token': 0.00000060,
    'litellm_provider': 'deepinfra',
    'mode': 'chat'
  },
  'deepinfra/deepinfra/mixtral': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.00000027,
    'output_cost_per_token': 0.00000027,
    'litellm_provider': 'deepinfra',
    'mode': 'completion'
  },
  'deepinfra/Phind/Phind-CodeLlama-34B-v2': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.00000060,
    'output_cost_per_token': 0.00000060,
    'litellm_provider': 'deepinfra',
    'mode': 'chat'
  },
  'deepinfra/mistralai/Mixtral-8x7B-Instruct-v0.1': {
    'max_tokens': 32768,
    'input_cost_per_token': 0.00000027,
    'output_cost_per_token': 0.00000027,
    'litellm_provider': 'deepinfra',
    'mode': 'chat'
  },
  'deepinfra/deepinfra/airoboros-70b': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.00000070,
    'output_cost_per_token': 0.00000090,
    'litellm_provider': 'deepinfra',
    'mode': 'chat'
  },
  'deepinfra/01-ai/Yi-34B-Chat': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.00000060,
    'output_cost_per_token': 0.00000060,
    'litellm_provider': 'deepinfra',
    'mode': 'chat'
  },
  'deepinfra/01-ai/Yi-6B-200K': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.00000013,
    'output_cost_per_token': 0.00000013,
    'litellm_provider': 'deepinfra',
    'mode': 'completion'
  },
  'deepinfra/jondurbin/airoboros-l2-70b-gpt4-1.4.1': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.00000070,
    'output_cost_per_token': 0.00000090,
    'litellm_provider': 'deepinfra',
    'mode': 'chat'
  },
  'deepinfra/meta-llama/Llama-2-13b-chat-hf': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.00000022,
    'output_cost_per_token': 0.00000022,
    'litellm_provider': 'deepinfra',
    'mode': 'chat'
  },
  'deepinfra/amazon/MistralLite': {
    'max_tokens': 32768,
    'input_cost_per_token': 0.00000020,
    'output_cost_per_token': 0.00000020,
    'litellm_provider': 'deepinfra',
    'mode': 'chat'
  },
  'deepinfra/meta-llama/Llama-2-7b-chat-hf': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.00000013,
    'output_cost_per_token': 0.00000013,
    'litellm_provider': 'deepinfra',
    'mode': 'chat'
  },
  'deepinfra/01-ai/Yi-34B-200K': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.00000060,
    'output_cost_per_token': 0.00000060,
    'litellm_provider': 'deepinfra',
    'mode': 'completion'
  },
  'deepinfra/openchat/openchat_3.5': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.00000013,
    'output_cost_per_token': 0.00000013,
    'litellm_provider': 'deepinfra',
    'mode': 'chat'
  },
  'perplexity/codellama-34b-instruct': {
    'max_tokens': 16384,
    'input_cost_per_token': 0.00000035,
    'output_cost_per_token': 0.00000140,
    'litellm_provider': 'perplexity',
    'mode': 'chat'
  },
  'perplexity/codellama-70b-instruct': {
    'max_tokens': 16384,
    'input_cost_per_token': 0.00000070,
    'output_cost_per_token': 0.00000280,
    'litellm_provider': 'perplexity',
    'mode': 'chat'
  },
  'perplexity/pplx-7b-chat': {
    'max_tokens': 8192,
    'input_cost_per_token': 0.00000007,
    'output_cost_per_token': 0.00000028,
    'litellm_provider': 'perplexity',
    'mode': 'chat'
  },
  'perplexity/pplx-70b-chat': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.00000070,
    'output_cost_per_token': 0.00000280,
    'litellm_provider': 'perplexity',
    'mode': 'chat'
  },
  'perplexity/pplx-7b-online': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.0000000,
    'output_cost_per_token': 0.00000028,
    'input_cost_per_request': 0.005,
    'litellm_provider': 'perplexity',
    'mode': 'chat'
  },
  'perplexity/pplx-70b-online': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.0000000,
    'output_cost_per_token': 0.00000280,
    'input_cost_per_request': 0.005,
    'litellm_provider': 'perplexity',
    'mode': 'chat'
  },
  'perplexity/llama-2-70b-chat': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.00000070,
    'output_cost_per_token': 0.00000280,
    'litellm_provider': 'perplexity',
    'mode': 'chat'
  },
  'perplexity/mistral-7b-instruct': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.00000007,
    'output_cost_per_token': 0.00000028,
    'litellm_provider': 'perplexity',
    'mode': 'chat'
  },
  'perplexity/mixtral-8x7b-instruct': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.00000007,
    'output_cost_per_token': 0.00000028,
    'litellm_provider': 'perplexity',
    'mode': 'chat'
  },
  'perplexity/sonar-small-chat': {
    'max_tokens': 16384,
    'input_cost_per_token': 0.00000007,
    'output_cost_per_token': 0.00000028,
    'litellm_provider': 'perplexity',
    'mode': 'chat'
  },
  'perplexity/sonar-small-online': {
    'max_tokens': 12000,
    'input_cost_per_token': 0,
    'output_cost_per_token': 0.00000028,
    'input_cost_per_request': 0.005,
    'litellm_provider': 'perplexity',
    'mode': 'chat'
  },
  'perplexity/sonar-medium-chat': {
    'max_tokens': 16384,
    'input_cost_per_token': 0.0000006,
    'output_cost_per_token': 0.0000018,
    'litellm_provider': 'perplexity',
    'mode': 'chat'
  },
  'perplexity/sonar-medium-online': {
    'max_tokens': 12000,
    'input_cost_per_token': 0,
    'output_cost_per_token': 0.0000018,
    'input_cost_per_request': 0.005,
    'litellm_provider': 'perplexity',
    'mode': 'chat'
  },
  'anyscale/mistralai/Mistral-7B-Instruct-v0.1': {
    'max_tokens': 16384,
    'input_cost_per_token': 0.00000015,
    'output_cost_per_token': 0.00000015,
    'litellm_provider': 'anyscale',
    'mode': 'chat',
    'supports_function_calling': true
  },
  'anyscale/Mixtral-8x7B-Instruct-v0.1': {
    'max_tokens': 16384,
    'input_cost_per_token': 0.00000015,
    'output_cost_per_token': 0.00000015,
    'litellm_provider': 'anyscale',
    'mode': 'chat',
    'supports_function_calling': true
  },
  'anyscale/HuggingFaceH4/zephyr-7b-beta': {
    'max_tokens': 16384,
    'input_cost_per_token': 0.00000015,
    'output_cost_per_token': 0.00000015,
    'litellm_provider': 'anyscale',
    'mode': 'chat'
  },
  'anyscale/meta-llama/Llama-2-7b-chat-hf': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.00000015,
    'output_cost_per_token': 0.00000015,
    'litellm_provider': 'anyscale',
    'mode': 'chat'
  },
  'anyscale/meta-llama/Llama-2-13b-chat-hf': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.00000025,
    'output_cost_per_token': 0.00000025,
    'litellm_provider': 'anyscale',
    'mode': 'chat'
  },
  'anyscale/meta-llama/Llama-2-70b-chat-hf': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.000001,
    'output_cost_per_token': 0.000001,
    'litellm_provider': 'anyscale',
    'mode': 'chat'
  },
  'anyscale/codellama/CodeLlama-34b-Instruct-hf': {
    'max_tokens': 16384,
    'input_cost_per_token': 0.000001,
    'output_cost_per_token': 0.000001,
    'litellm_provider': 'anyscale',
    'mode': 'chat'
  },
  'cloudflare/@cf/meta/llama-2-7b-chat-fp16': {
    'max_tokens': 3072,
    'input_cost_per_token': 0.000001923,
    'output_cost_per_token': 0.000001923,
    'litellm_provider': 'cloudflare',
    'mode': 'chat'
  },
  'cloudflare/@cf/meta/llama-2-7b-chat-int8': {
    'max_tokens': 2048,
    'input_cost_per_token': 0.000001923,
    'output_cost_per_token': 0.000001923,
    'litellm_provider': 'cloudflare',
    'mode': 'chat'
  },
  'cloudflare/@cf/mistral/mistral-7b-instruct-v0.1': {
    'max_tokens': 8192,
    'input_cost_per_token': 0.000001923,
    'output_cost_per_token': 0.000001923,
    'litellm_provider': 'cloudflare',
    'mode': 'chat'
  },
  'cloudflare/@hf/thebloke/codellama-7b-instruct-awq': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.000001923,
    'output_cost_per_token': 0.000001923,
    'litellm_provider': 'cloudflare',
    'mode': 'chat'
  },
  'voyage/voyage-01': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.0000001,
    'output_cost_per_token': 0.000000,
    'litellm_provider': 'voyage',
    'mode': 'embedding'
  },
  'voyage/voyage-lite-01': {
    'max_tokens': 4096,
    'input_cost_per_token': 0.0000001,
    'output_cost_per_token': 0.000000,
    'litellm_provider': 'voyage',
    'mode': 'embedding'
  }
};
