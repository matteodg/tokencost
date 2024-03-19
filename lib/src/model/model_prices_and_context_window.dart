// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'model_prices_and_context_window.freezed.dart';

part 'model_prices_and_context_window.g.dart';

@freezed
class ModelPricesAndContextWindow with _$ModelPricesAndContextWindow {
  const factory ModelPricesAndContextWindow({
    @JsonKey(name: 'max_tokens') int? maxTokens,
    @JsonKey(name: 'max_input_tokens') int? maxInputTokens,
    @JsonKey(name: 'max_output_tokens') int? maxOutputTokens,
    @JsonKey(name: 'max_images_per_prompt') int? maxImagesPerPrompt,
    @JsonKey(name: 'max_video_length') int? maxVideoLength,
    @JsonKey(name: 'max_videos_per_prompt') int? maxVideosPerPrompt,
    @JsonKey(name: 'input_cost_per_token') double? inputCostPerToken,
    @JsonKey(name: 'output_cost_per_token') double? outputCostPerToken,
    @JsonKey(name: 'input_cost_per_pixel') double? inputCostPerPixel,
    @JsonKey(name: 'output_cost_per_pixel') double? outputCostPerPixel,
    @JsonKey(name: 'input_cost_per_second') double? inputCostPerSecond,
    @JsonKey(name: 'output_cost_per_second') double? outputCostPerSecond,
    @JsonKey(name: 'input_cost_per_request') double? inputCostPerRequest,
    @JsonKey(name: 'output_cost_per_image') double? outputCostPerImage,
    @JsonKey(name: 'output_vector_size') int? outputVectorSize,
    @JsonKey(name: 'litellm_provider') String? litellmProvider,
    @JsonKey(name: 'mode') String? mode,
    @JsonKey(name: 'supports_function_calling') bool? supportsFunctionCalling,
    @JsonKey(name: 'supports_parallel_function_calling') bool? supportsParallelFunctionCalling,
  }) = _ModelPricesAndContextWindow;

  factory ModelPricesAndContextWindow.fromJson(Map<String, dynamic> json) =>
      _$ModelPricesAndContextWindowFromJson(json);
}
