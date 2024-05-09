// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'model_prices_and_context_window.freezed.dart';

part 'model_prices_and_context_window.g.dart';

@freezed
class ModelPricesAndContextWindow with _$ModelPricesAndContextWindow {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ModelPricesAndContextWindow({
    int? maxTokens,
    int? maxInputTokens,
    int? maxOutputTokens,
    int? maxImagesPerPrompt,
    int? maxVideoLength,
    int? maxVideosPerPrompt,
    double? inputCostPerToken,
    double? outputCostPerToken,
    double? inputCostPerPixel,
    double? outputCostPerPixel,
    double? inputCostPerSecond,
    double? outputCostPerSecond,
    double? inputCostPerRequest,
    double? outputCostPerImage,
    int? outputVectorSize,
    String? litellmProvider,
    String? mode,
    String? source,
    bool? supportsFunctionCalling,
    bool? supportsParallelFunctionCalling,
    bool? supportsToolChoice,
    bool? supportsVision,
    int? toolUseSystemPromptTokens,
  }) = _ModelPricesAndContextWindow;

  factory ModelPricesAndContextWindow.fromJson(Map<String, dynamic> json) =>
      _$ModelPricesAndContextWindowFromJson(json);
}
