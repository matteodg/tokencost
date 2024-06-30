// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_prices_and_context_window.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModelPricesAndContextWindowImpl _$$ModelPricesAndContextWindowImplFromJson(
        Map<String, dynamic> json) =>
    _$ModelPricesAndContextWindowImpl(
      litellmProvider: json['litellm_provider'] as String?,
      mode: json['mode'] as String?,
      source: json['source'] as String?,
      supportsFunctionCalling: json['supports_function_calling'] as bool?,
      supportsParallelFunctionCalling:
          json['supports_parallel_function_calling'] as bool?,
      supportsResponseSchema: json['supports_response_schema'] as bool?,
      supportsSystemMessages: json['supports_system_messages'] as bool?,
      supportsToolChoice: json['supports_tool_choice'] as bool?,
      supportsVision: json['supports_vision'] as bool?,
      costPerImage: (json['cost_per_image'] as num?)?.toDouble(),
      inputCostPerAudioPerSecond:
          (json['input_cost_per_audio_per_second'] as num?)?.toDouble(),
      inputCostPerCharacter:
          (json['input_cost_per_character'] as num?)?.toDouble(),
      inputCostPerCharacterAbove128kTokens:
          (json['input_cost_per_character_above128k_tokens'] as num?)
              ?.toDouble(),
      inputCostPerImage: (json['input_cost_per_image'] as num?)?.toDouble(),
      inputCostPerPixel: (json['input_cost_per_pixel'] as num?)?.toDouble(),
      inputCostPerRequest: (json['input_cost_per_request'] as num?)?.toDouble(),
      inputCostPerSecond: (json['input_cost_per_second'] as num?)?.toDouble(),
      inputCostPerToken: (json['input_cost_per_token'] as num?)?.toDouble(),
      inputCostPerTokenAbove128kTokens:
          (json['input_cost_per_token_above128k_tokens'] as num?)?.toDouble(),
      inputCostPerVideoPerSecond:
          (json['input_cost_per_video_per_second'] as num?)?.toDouble(),
      maxAudioLengthHours: (json['max_audio_length_hours'] as num?)?.toDouble(),
      outputCostPerAudioPerSecond:
          (json['output_cost_per_audio_per_second'] as num?)?.toDouble(),
      outputCostPerCharacter:
          (json['output_cost_per_character'] as num?)?.toDouble(),
      outputCostPerCharacterAbove128kTokens:
          (json['output_cost_per_character_above128k_tokens'] as num?)
              ?.toDouble(),
      outputCostPerImage: (json['output_cost_per_image'] as num?)?.toDouble(),
      outputCostPerPixel: (json['output_cost_per_pixel'] as num?)?.toDouble(),
      outputCostPerSecond: (json['output_cost_per_second'] as num?)?.toDouble(),
      outputCostPerToken: (json['output_cost_per_token'] as num?)?.toDouble(),
      outputCostPerTokenAbove128kTokens:
          (json['output_cost_per_token_above128k_tokens'] as num?)?.toDouble(),
      outputCostPerVideoPerSecond:
          (json['output_cost_per_video_per_second'] as num?)?.toDouble(),
      maxAudioPerPrompt: (json['max_audio_per_prompt'] as num?)?.toInt(),
      maxImagesPerPrompt: (json['max_images_per_prompt'] as num?)?.toInt(),
      maxInputTokens: (json['max_input_tokens'] as num?)?.toInt(),
      maxOutputTokens: (json['max_output_tokens'] as num?)?.toInt(),
      maxPdfSizeMb: (json['max_pdf_size_mb'] as num?)?.toInt(),
      maxTokens: (json['max_tokens'] as num?)?.toInt(),
      maxVideoLength: (json['max_video_length'] as num?)?.toInt(),
      maxVideosPerPrompt: (json['max_videos_per_prompt'] as num?)?.toInt(),
      outputVectorSize: (json['output_vector_size'] as num?)?.toInt(),
      toolUseSystemPromptTokens:
          (json['tool_use_system_prompt_tokens'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ModelPricesAndContextWindowImplToJson(
        _$ModelPricesAndContextWindowImpl instance) =>
    <String, dynamic>{
      'litellm_provider': instance.litellmProvider,
      'mode': instance.mode,
      'source': instance.source,
      'supports_function_calling': instance.supportsFunctionCalling,
      'supports_parallel_function_calling':
          instance.supportsParallelFunctionCalling,
      'supports_response_schema': instance.supportsResponseSchema,
      'supports_system_messages': instance.supportsSystemMessages,
      'supports_tool_choice': instance.supportsToolChoice,
      'supports_vision': instance.supportsVision,
      'cost_per_image': instance.costPerImage,
      'input_cost_per_audio_per_second': instance.inputCostPerAudioPerSecond,
      'input_cost_per_character': instance.inputCostPerCharacter,
      'input_cost_per_character_above128k_tokens':
          instance.inputCostPerCharacterAbove128kTokens,
      'input_cost_per_image': instance.inputCostPerImage,
      'input_cost_per_pixel': instance.inputCostPerPixel,
      'input_cost_per_request': instance.inputCostPerRequest,
      'input_cost_per_second': instance.inputCostPerSecond,
      'input_cost_per_token': instance.inputCostPerToken,
      'input_cost_per_token_above128k_tokens':
          instance.inputCostPerTokenAbove128kTokens,
      'input_cost_per_video_per_second': instance.inputCostPerVideoPerSecond,
      'max_audio_length_hours': instance.maxAudioLengthHours,
      'output_cost_per_audio_per_second': instance.outputCostPerAudioPerSecond,
      'output_cost_per_character': instance.outputCostPerCharacter,
      'output_cost_per_character_above128k_tokens':
          instance.outputCostPerCharacterAbove128kTokens,
      'output_cost_per_image': instance.outputCostPerImage,
      'output_cost_per_pixel': instance.outputCostPerPixel,
      'output_cost_per_second': instance.outputCostPerSecond,
      'output_cost_per_token': instance.outputCostPerToken,
      'output_cost_per_token_above128k_tokens':
          instance.outputCostPerTokenAbove128kTokens,
      'output_cost_per_video_per_second': instance.outputCostPerVideoPerSecond,
      'max_audio_per_prompt': instance.maxAudioPerPrompt,
      'max_images_per_prompt': instance.maxImagesPerPrompt,
      'max_input_tokens': instance.maxInputTokens,
      'max_output_tokens': instance.maxOutputTokens,
      'max_pdf_size_mb': instance.maxPdfSizeMb,
      'max_tokens': instance.maxTokens,
      'max_video_length': instance.maxVideoLength,
      'max_videos_per_prompt': instance.maxVideosPerPrompt,
      'output_vector_size': instance.outputVectorSize,
      'tool_use_system_prompt_tokens': instance.toolUseSystemPromptTokens,
    };
