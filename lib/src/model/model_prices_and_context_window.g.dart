// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_prices_and_context_window.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModelPricesAndContextWindowImpl _$$ModelPricesAndContextWindowImplFromJson(
        Map<String, dynamic> json) =>
    _$ModelPricesAndContextWindowImpl(
      maxTokens: json['max_tokens'] as int?,
      maxInputTokens: json['max_input_tokens'] as int?,
      maxOutputTokens: json['max_output_tokens'] as int?,
      maxImagesPerPrompt: json['max_images_per_prompt'] as int?,
      maxVideoLength: json['max_video_length'] as int?,
      maxVideosPerPrompt: json['max_videos_per_prompt'] as int?,
      inputCostPerToken: (json['input_cost_per_token'] as num?)?.toDouble(),
      outputCostPerToken: (json['output_cost_per_token'] as num?)?.toDouble(),
      inputCostPerPixel: (json['input_cost_per_pixel'] as num?)?.toDouble(),
      outputCostPerPixel: (json['output_cost_per_pixel'] as num?)?.toDouble(),
      inputCostPerSecond: (json['input_cost_per_second'] as num?)?.toDouble(),
      outputCostPerSecond: (json['output_cost_per_second'] as num?)?.toDouble(),
      inputCostPerRequest: (json['input_cost_per_request'] as num?)?.toDouble(),
      outputCostPerImage: (json['output_cost_per_image'] as num?)?.toDouble(),
      outputVectorSize: json['output_vector_size'] as int?,
      litellmProvider: json['litellm_provider'] as String?,
      mode: json['mode'] as String?,
      source: json['source'] as String?,
      supportsFunctionCalling: json['supports_function_calling'] as bool?,
      supportsParallelFunctionCalling:
          json['supports_parallel_function_calling'] as bool?,
      supportsToolChoice: json['supports_tool_choice'] as bool?,
      supportsVision: json['supports_vision'] as bool?,
      toolUseSystemPromptTokens: json['tool_use_system_prompt_tokens'] as int?,
    );

Map<String, dynamic> _$$ModelPricesAndContextWindowImplToJson(
        _$ModelPricesAndContextWindowImpl instance) =>
    <String, dynamic>{
      'max_tokens': instance.maxTokens,
      'max_input_tokens': instance.maxInputTokens,
      'max_output_tokens': instance.maxOutputTokens,
      'max_images_per_prompt': instance.maxImagesPerPrompt,
      'max_video_length': instance.maxVideoLength,
      'max_videos_per_prompt': instance.maxVideosPerPrompt,
      'input_cost_per_token': instance.inputCostPerToken,
      'output_cost_per_token': instance.outputCostPerToken,
      'input_cost_per_pixel': instance.inputCostPerPixel,
      'output_cost_per_pixel': instance.outputCostPerPixel,
      'input_cost_per_second': instance.inputCostPerSecond,
      'output_cost_per_second': instance.outputCostPerSecond,
      'input_cost_per_request': instance.inputCostPerRequest,
      'output_cost_per_image': instance.outputCostPerImage,
      'output_vector_size': instance.outputVectorSize,
      'litellm_provider': instance.litellmProvider,
      'mode': instance.mode,
      'source': instance.source,
      'supports_function_calling': instance.supportsFunctionCalling,
      'supports_parallel_function_calling':
          instance.supportsParallelFunctionCalling,
      'supports_tool_choice': instance.supportsToolChoice,
      'supports_vision': instance.supportsVision,
      'tool_use_system_prompt_tokens': instance.toolUseSystemPromptTokens,
    };
