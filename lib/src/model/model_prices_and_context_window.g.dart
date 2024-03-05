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
      inputCostPerToken: (json['input_cost_per_token'] as num?)?.toDouble(),
      outputCostPerToken: (json['output_cost_per_token'] as num?)?.toDouble(),
      litellmProvider: json['litellm_provider'] as String?,
      mode: json['mode'] as String?,
      supportsFunctionCalling: json['supports_function_calling'] as bool?,
    );

Map<String, dynamic> _$$ModelPricesAndContextWindowImplToJson(
        _$ModelPricesAndContextWindowImpl instance) =>
    <String, dynamic>{
      'max_tokens': instance.maxTokens,
      'max_input_tokens': instance.maxInputTokens,
      'max_output_tokens': instance.maxOutputTokens,
      'input_cost_per_token': instance.inputCostPerToken,
      'output_cost_per_token': instance.outputCostPerToken,
      'litellm_provider': instance.litellmProvider,
      'mode': instance.mode,
      'supports_function_calling': instance.supportsFunctionCalling,
    };
