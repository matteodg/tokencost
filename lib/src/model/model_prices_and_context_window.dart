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
    @JsonKey(name: 'input_cost_per_token') double? inputCostPerToken,
    @JsonKey(name: 'output_cost_per_token') double? outputCostPerToken,
    @JsonKey(name: 'litellm_provider') String? litellmProvider,
    @JsonKey(name: 'mode') String? mode,
    @JsonKey(name: 'supports_function_calling') bool? supportsFunctionCalling,
  }) = _ModelPricesAndContextWindow;

  factory ModelPricesAndContextWindow.fromJson(Map<String, dynamic> json) =>
      _$ModelPricesAndContextWindowFromJson(json);
}
