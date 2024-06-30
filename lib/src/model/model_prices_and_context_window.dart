// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'model_prices_and_context_window.freezed.dart';

part 'model_prices_and_context_window.g.dart';

@freezed
class ModelPricesAndContextWindow with _$ModelPricesAndContextWindow {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ModelPricesAndContextWindow({
    String? litellmProvider,
    String? mode,
    String? source,
    bool? supportsFunctionCalling,
    bool? supportsParallelFunctionCalling,
    bool? supportsResponseSchema,
    bool? supportsSystemMessages,
    bool? supportsToolChoice,
    bool? supportsVision,
    double? costPerImage,
    double? inputCostPerAudioPerSecond,
    double? inputCostPerCharacter,
    double? inputCostPerCharacterAbove128kTokens,
    double? inputCostPerImage,
    double? inputCostPerPixel,
    double? inputCostPerRequest,
    double? inputCostPerSecond,
    double? inputCostPerToken,
    double? inputCostPerTokenAbove128kTokens,
    double? inputCostPerVideoPerSecond,
    double? maxAudioLengthHours,
    double? outputCostPerAudioPerSecond,
    double? outputCostPerCharacter,
    double? outputCostPerCharacterAbove128kTokens,
    double? outputCostPerImage,
    double? outputCostPerPixel,
    double? outputCostPerSecond,
    double? outputCostPerToken,
    double? outputCostPerTokenAbove128kTokens,
    double? outputCostPerVideoPerSecond,
    int? maxAudioPerPrompt,
    int? maxImagesPerPrompt,
    int? maxInputTokens,
    int? maxOutputTokens,
    int? maxPdfSizeMb,
    int? maxTokens,
    int? maxVideoLength,
    int? maxVideosPerPrompt,
    int? outputVectorSize,
    int? toolUseSystemPromptTokens,
  }) = _ModelPricesAndContextWindow;

  factory ModelPricesAndContextWindow.fromJson(Map<String, dynamic> json) =>
      _$ModelPricesAndContextWindowFromJson(json);
}
