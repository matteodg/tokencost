// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_prices_and_context_window.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ModelPricesAndContextWindow _$ModelPricesAndContextWindowFromJson(
    Map<String, dynamic> json) {
  return _ModelPricesAndContextWindow.fromJson(json);
}

/// @nodoc
mixin _$ModelPricesAndContextWindow {
  @JsonKey(name: 'max_tokens')
  int? get maxTokens => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_input_tokens')
  int? get maxInputTokens => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_output_tokens')
  int? get maxOutputTokens => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_images_per_prompt')
  int? get maxImagesPerPrompt => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_video_length')
  int? get maxVideoLength => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_videos_per_prompt')
  int? get maxVideosPerPrompt => throw _privateConstructorUsedError;
  @JsonKey(name: 'input_cost_per_token')
  double? get inputCostPerToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'output_cost_per_token')
  double? get outputCostPerToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'input_cost_per_pixel')
  double? get inputCostPerPixel => throw _privateConstructorUsedError;
  @JsonKey(name: 'output_cost_per_pixel')
  double? get outputCostPerPixel => throw _privateConstructorUsedError;
  @JsonKey(name: 'input_cost_per_second')
  double? get inputCostPerSecond => throw _privateConstructorUsedError;
  @JsonKey(name: 'output_cost_per_second')
  double? get outputCostPerSecond => throw _privateConstructorUsedError;
  @JsonKey(name: 'input_cost_per_request')
  double? get inputCostPerRequest => throw _privateConstructorUsedError;
  @JsonKey(name: 'output_cost_per_image')
  double? get outputCostPerImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'output_vector_size')
  int? get outputVectorSize => throw _privateConstructorUsedError;
  @JsonKey(name: 'litellm_provider')
  String? get litellmProvider => throw _privateConstructorUsedError;
  @JsonKey(name: 'mode')
  String? get mode => throw _privateConstructorUsedError;
  @JsonKey(name: 'source')
  String? get source => throw _privateConstructorUsedError;
  @JsonKey(name: 'supports_function_calling')
  bool? get supportsFunctionCalling => throw _privateConstructorUsedError;
  @JsonKey(name: 'supports_parallel_function_calling')
  bool? get supportsParallelFunctionCalling =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelPricesAndContextWindowCopyWith<ModelPricesAndContextWindow>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelPricesAndContextWindowCopyWith<$Res> {
  factory $ModelPricesAndContextWindowCopyWith(
          ModelPricesAndContextWindow value,
          $Res Function(ModelPricesAndContextWindow) then) =
      _$ModelPricesAndContextWindowCopyWithImpl<$Res,
          ModelPricesAndContextWindow>;
  @useResult
  $Res call(
      {@JsonKey(name: 'max_tokens') int? maxTokens,
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
      @JsonKey(name: 'source') String? source,
      @JsonKey(name: 'supports_function_calling') bool? supportsFunctionCalling,
      @JsonKey(name: 'supports_parallel_function_calling')
      bool? supportsParallelFunctionCalling});
}

/// @nodoc
class _$ModelPricesAndContextWindowCopyWithImpl<$Res,
        $Val extends ModelPricesAndContextWindow>
    implements $ModelPricesAndContextWindowCopyWith<$Res> {
  _$ModelPricesAndContextWindowCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxTokens = freezed,
    Object? maxInputTokens = freezed,
    Object? maxOutputTokens = freezed,
    Object? maxImagesPerPrompt = freezed,
    Object? maxVideoLength = freezed,
    Object? maxVideosPerPrompt = freezed,
    Object? inputCostPerToken = freezed,
    Object? outputCostPerToken = freezed,
    Object? inputCostPerPixel = freezed,
    Object? outputCostPerPixel = freezed,
    Object? inputCostPerSecond = freezed,
    Object? outputCostPerSecond = freezed,
    Object? inputCostPerRequest = freezed,
    Object? outputCostPerImage = freezed,
    Object? outputVectorSize = freezed,
    Object? litellmProvider = freezed,
    Object? mode = freezed,
    Object? source = freezed,
    Object? supportsFunctionCalling = freezed,
    Object? supportsParallelFunctionCalling = freezed,
  }) {
    return _then(_value.copyWith(
      maxTokens: freezed == maxTokens
          ? _value.maxTokens
          : maxTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      maxInputTokens: freezed == maxInputTokens
          ? _value.maxInputTokens
          : maxInputTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      maxOutputTokens: freezed == maxOutputTokens
          ? _value.maxOutputTokens
          : maxOutputTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      maxImagesPerPrompt: freezed == maxImagesPerPrompt
          ? _value.maxImagesPerPrompt
          : maxImagesPerPrompt // ignore: cast_nullable_to_non_nullable
              as int?,
      maxVideoLength: freezed == maxVideoLength
          ? _value.maxVideoLength
          : maxVideoLength // ignore: cast_nullable_to_non_nullable
              as int?,
      maxVideosPerPrompt: freezed == maxVideosPerPrompt
          ? _value.maxVideosPerPrompt
          : maxVideosPerPrompt // ignore: cast_nullable_to_non_nullable
              as int?,
      inputCostPerToken: freezed == inputCostPerToken
          ? _value.inputCostPerToken
          : inputCostPerToken // ignore: cast_nullable_to_non_nullable
              as double?,
      outputCostPerToken: freezed == outputCostPerToken
          ? _value.outputCostPerToken
          : outputCostPerToken // ignore: cast_nullable_to_non_nullable
              as double?,
      inputCostPerPixel: freezed == inputCostPerPixel
          ? _value.inputCostPerPixel
          : inputCostPerPixel // ignore: cast_nullable_to_non_nullable
              as double?,
      outputCostPerPixel: freezed == outputCostPerPixel
          ? _value.outputCostPerPixel
          : outputCostPerPixel // ignore: cast_nullable_to_non_nullable
              as double?,
      inputCostPerSecond: freezed == inputCostPerSecond
          ? _value.inputCostPerSecond
          : inputCostPerSecond // ignore: cast_nullable_to_non_nullable
              as double?,
      outputCostPerSecond: freezed == outputCostPerSecond
          ? _value.outputCostPerSecond
          : outputCostPerSecond // ignore: cast_nullable_to_non_nullable
              as double?,
      inputCostPerRequest: freezed == inputCostPerRequest
          ? _value.inputCostPerRequest
          : inputCostPerRequest // ignore: cast_nullable_to_non_nullable
              as double?,
      outputCostPerImage: freezed == outputCostPerImage
          ? _value.outputCostPerImage
          : outputCostPerImage // ignore: cast_nullable_to_non_nullable
              as double?,
      outputVectorSize: freezed == outputVectorSize
          ? _value.outputVectorSize
          : outputVectorSize // ignore: cast_nullable_to_non_nullable
              as int?,
      litellmProvider: freezed == litellmProvider
          ? _value.litellmProvider
          : litellmProvider // ignore: cast_nullable_to_non_nullable
              as String?,
      mode: freezed == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      supportsFunctionCalling: freezed == supportsFunctionCalling
          ? _value.supportsFunctionCalling
          : supportsFunctionCalling // ignore: cast_nullable_to_non_nullable
              as bool?,
      supportsParallelFunctionCalling: freezed ==
              supportsParallelFunctionCalling
          ? _value.supportsParallelFunctionCalling
          : supportsParallelFunctionCalling // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModelPricesAndContextWindowImplCopyWith<$Res>
    implements $ModelPricesAndContextWindowCopyWith<$Res> {
  factory _$$ModelPricesAndContextWindowImplCopyWith(
          _$ModelPricesAndContextWindowImpl value,
          $Res Function(_$ModelPricesAndContextWindowImpl) then) =
      __$$ModelPricesAndContextWindowImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'max_tokens') int? maxTokens,
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
      @JsonKey(name: 'source') String? source,
      @JsonKey(name: 'supports_function_calling') bool? supportsFunctionCalling,
      @JsonKey(name: 'supports_parallel_function_calling')
      bool? supportsParallelFunctionCalling});
}

/// @nodoc
class __$$ModelPricesAndContextWindowImplCopyWithImpl<$Res>
    extends _$ModelPricesAndContextWindowCopyWithImpl<$Res,
        _$ModelPricesAndContextWindowImpl>
    implements _$$ModelPricesAndContextWindowImplCopyWith<$Res> {
  __$$ModelPricesAndContextWindowImplCopyWithImpl(
      _$ModelPricesAndContextWindowImpl _value,
      $Res Function(_$ModelPricesAndContextWindowImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxTokens = freezed,
    Object? maxInputTokens = freezed,
    Object? maxOutputTokens = freezed,
    Object? maxImagesPerPrompt = freezed,
    Object? maxVideoLength = freezed,
    Object? maxVideosPerPrompt = freezed,
    Object? inputCostPerToken = freezed,
    Object? outputCostPerToken = freezed,
    Object? inputCostPerPixel = freezed,
    Object? outputCostPerPixel = freezed,
    Object? inputCostPerSecond = freezed,
    Object? outputCostPerSecond = freezed,
    Object? inputCostPerRequest = freezed,
    Object? outputCostPerImage = freezed,
    Object? outputVectorSize = freezed,
    Object? litellmProvider = freezed,
    Object? mode = freezed,
    Object? source = freezed,
    Object? supportsFunctionCalling = freezed,
    Object? supportsParallelFunctionCalling = freezed,
  }) {
    return _then(_$ModelPricesAndContextWindowImpl(
      maxTokens: freezed == maxTokens
          ? _value.maxTokens
          : maxTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      maxInputTokens: freezed == maxInputTokens
          ? _value.maxInputTokens
          : maxInputTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      maxOutputTokens: freezed == maxOutputTokens
          ? _value.maxOutputTokens
          : maxOutputTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      maxImagesPerPrompt: freezed == maxImagesPerPrompt
          ? _value.maxImagesPerPrompt
          : maxImagesPerPrompt // ignore: cast_nullable_to_non_nullable
              as int?,
      maxVideoLength: freezed == maxVideoLength
          ? _value.maxVideoLength
          : maxVideoLength // ignore: cast_nullable_to_non_nullable
              as int?,
      maxVideosPerPrompt: freezed == maxVideosPerPrompt
          ? _value.maxVideosPerPrompt
          : maxVideosPerPrompt // ignore: cast_nullable_to_non_nullable
              as int?,
      inputCostPerToken: freezed == inputCostPerToken
          ? _value.inputCostPerToken
          : inputCostPerToken // ignore: cast_nullable_to_non_nullable
              as double?,
      outputCostPerToken: freezed == outputCostPerToken
          ? _value.outputCostPerToken
          : outputCostPerToken // ignore: cast_nullable_to_non_nullable
              as double?,
      inputCostPerPixel: freezed == inputCostPerPixel
          ? _value.inputCostPerPixel
          : inputCostPerPixel // ignore: cast_nullable_to_non_nullable
              as double?,
      outputCostPerPixel: freezed == outputCostPerPixel
          ? _value.outputCostPerPixel
          : outputCostPerPixel // ignore: cast_nullable_to_non_nullable
              as double?,
      inputCostPerSecond: freezed == inputCostPerSecond
          ? _value.inputCostPerSecond
          : inputCostPerSecond // ignore: cast_nullable_to_non_nullable
              as double?,
      outputCostPerSecond: freezed == outputCostPerSecond
          ? _value.outputCostPerSecond
          : outputCostPerSecond // ignore: cast_nullable_to_non_nullable
              as double?,
      inputCostPerRequest: freezed == inputCostPerRequest
          ? _value.inputCostPerRequest
          : inputCostPerRequest // ignore: cast_nullable_to_non_nullable
              as double?,
      outputCostPerImage: freezed == outputCostPerImage
          ? _value.outputCostPerImage
          : outputCostPerImage // ignore: cast_nullable_to_non_nullable
              as double?,
      outputVectorSize: freezed == outputVectorSize
          ? _value.outputVectorSize
          : outputVectorSize // ignore: cast_nullable_to_non_nullable
              as int?,
      litellmProvider: freezed == litellmProvider
          ? _value.litellmProvider
          : litellmProvider // ignore: cast_nullable_to_non_nullable
              as String?,
      mode: freezed == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      supportsFunctionCalling: freezed == supportsFunctionCalling
          ? _value.supportsFunctionCalling
          : supportsFunctionCalling // ignore: cast_nullable_to_non_nullable
              as bool?,
      supportsParallelFunctionCalling: freezed ==
              supportsParallelFunctionCalling
          ? _value.supportsParallelFunctionCalling
          : supportsParallelFunctionCalling // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModelPricesAndContextWindowImpl
    implements _ModelPricesAndContextWindow {
  const _$ModelPricesAndContextWindowImpl(
      {@JsonKey(name: 'max_tokens') this.maxTokens,
      @JsonKey(name: 'max_input_tokens') this.maxInputTokens,
      @JsonKey(name: 'max_output_tokens') this.maxOutputTokens,
      @JsonKey(name: 'max_images_per_prompt') this.maxImagesPerPrompt,
      @JsonKey(name: 'max_video_length') this.maxVideoLength,
      @JsonKey(name: 'max_videos_per_prompt') this.maxVideosPerPrompt,
      @JsonKey(name: 'input_cost_per_token') this.inputCostPerToken,
      @JsonKey(name: 'output_cost_per_token') this.outputCostPerToken,
      @JsonKey(name: 'input_cost_per_pixel') this.inputCostPerPixel,
      @JsonKey(name: 'output_cost_per_pixel') this.outputCostPerPixel,
      @JsonKey(name: 'input_cost_per_second') this.inputCostPerSecond,
      @JsonKey(name: 'output_cost_per_second') this.outputCostPerSecond,
      @JsonKey(name: 'input_cost_per_request') this.inputCostPerRequest,
      @JsonKey(name: 'output_cost_per_image') this.outputCostPerImage,
      @JsonKey(name: 'output_vector_size') this.outputVectorSize,
      @JsonKey(name: 'litellm_provider') this.litellmProvider,
      @JsonKey(name: 'mode') this.mode,
      @JsonKey(name: 'source') this.source,
      @JsonKey(name: 'supports_function_calling') this.supportsFunctionCalling,
      @JsonKey(name: 'supports_parallel_function_calling')
      this.supportsParallelFunctionCalling});

  factory _$ModelPricesAndContextWindowImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ModelPricesAndContextWindowImplFromJson(json);

  @override
  @JsonKey(name: 'max_tokens')
  final int? maxTokens;
  @override
  @JsonKey(name: 'max_input_tokens')
  final int? maxInputTokens;
  @override
  @JsonKey(name: 'max_output_tokens')
  final int? maxOutputTokens;
  @override
  @JsonKey(name: 'max_images_per_prompt')
  final int? maxImagesPerPrompt;
  @override
  @JsonKey(name: 'max_video_length')
  final int? maxVideoLength;
  @override
  @JsonKey(name: 'max_videos_per_prompt')
  final int? maxVideosPerPrompt;
  @override
  @JsonKey(name: 'input_cost_per_token')
  final double? inputCostPerToken;
  @override
  @JsonKey(name: 'output_cost_per_token')
  final double? outputCostPerToken;
  @override
  @JsonKey(name: 'input_cost_per_pixel')
  final double? inputCostPerPixel;
  @override
  @JsonKey(name: 'output_cost_per_pixel')
  final double? outputCostPerPixel;
  @override
  @JsonKey(name: 'input_cost_per_second')
  final double? inputCostPerSecond;
  @override
  @JsonKey(name: 'output_cost_per_second')
  final double? outputCostPerSecond;
  @override
  @JsonKey(name: 'input_cost_per_request')
  final double? inputCostPerRequest;
  @override
  @JsonKey(name: 'output_cost_per_image')
  final double? outputCostPerImage;
  @override
  @JsonKey(name: 'output_vector_size')
  final int? outputVectorSize;
  @override
  @JsonKey(name: 'litellm_provider')
  final String? litellmProvider;
  @override
  @JsonKey(name: 'mode')
  final String? mode;
  @override
  @JsonKey(name: 'source')
  final String? source;
  @override
  @JsonKey(name: 'supports_function_calling')
  final bool? supportsFunctionCalling;
  @override
  @JsonKey(name: 'supports_parallel_function_calling')
  final bool? supportsParallelFunctionCalling;

  @override
  String toString() {
    return 'ModelPricesAndContextWindow(maxTokens: $maxTokens, maxInputTokens: $maxInputTokens, maxOutputTokens: $maxOutputTokens, maxImagesPerPrompt: $maxImagesPerPrompt, maxVideoLength: $maxVideoLength, maxVideosPerPrompt: $maxVideosPerPrompt, inputCostPerToken: $inputCostPerToken, outputCostPerToken: $outputCostPerToken, inputCostPerPixel: $inputCostPerPixel, outputCostPerPixel: $outputCostPerPixel, inputCostPerSecond: $inputCostPerSecond, outputCostPerSecond: $outputCostPerSecond, inputCostPerRequest: $inputCostPerRequest, outputCostPerImage: $outputCostPerImage, outputVectorSize: $outputVectorSize, litellmProvider: $litellmProvider, mode: $mode, source: $source, supportsFunctionCalling: $supportsFunctionCalling, supportsParallelFunctionCalling: $supportsParallelFunctionCalling)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelPricesAndContextWindowImpl &&
            (identical(other.maxTokens, maxTokens) ||
                other.maxTokens == maxTokens) &&
            (identical(other.maxInputTokens, maxInputTokens) ||
                other.maxInputTokens == maxInputTokens) &&
            (identical(other.maxOutputTokens, maxOutputTokens) ||
                other.maxOutputTokens == maxOutputTokens) &&
            (identical(other.maxImagesPerPrompt, maxImagesPerPrompt) ||
                other.maxImagesPerPrompt == maxImagesPerPrompt) &&
            (identical(other.maxVideoLength, maxVideoLength) ||
                other.maxVideoLength == maxVideoLength) &&
            (identical(other.maxVideosPerPrompt, maxVideosPerPrompt) ||
                other.maxVideosPerPrompt == maxVideosPerPrompt) &&
            (identical(other.inputCostPerToken, inputCostPerToken) ||
                other.inputCostPerToken == inputCostPerToken) &&
            (identical(other.outputCostPerToken, outputCostPerToken) ||
                other.outputCostPerToken == outputCostPerToken) &&
            (identical(other.inputCostPerPixel, inputCostPerPixel) ||
                other.inputCostPerPixel == inputCostPerPixel) &&
            (identical(other.outputCostPerPixel, outputCostPerPixel) ||
                other.outputCostPerPixel == outputCostPerPixel) &&
            (identical(other.inputCostPerSecond, inputCostPerSecond) ||
                other.inputCostPerSecond == inputCostPerSecond) &&
            (identical(other.outputCostPerSecond, outputCostPerSecond) ||
                other.outputCostPerSecond == outputCostPerSecond) &&
            (identical(other.inputCostPerRequest, inputCostPerRequest) ||
                other.inputCostPerRequest == inputCostPerRequest) &&
            (identical(other.outputCostPerImage, outputCostPerImage) ||
                other.outputCostPerImage == outputCostPerImage) &&
            (identical(other.outputVectorSize, outputVectorSize) ||
                other.outputVectorSize == outputVectorSize) &&
            (identical(other.litellmProvider, litellmProvider) ||
                other.litellmProvider == litellmProvider) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(
                    other.supportsFunctionCalling, supportsFunctionCalling) ||
                other.supportsFunctionCalling == supportsFunctionCalling) &&
            (identical(other.supportsParallelFunctionCalling,
                    supportsParallelFunctionCalling) ||
                other.supportsParallelFunctionCalling ==
                    supportsParallelFunctionCalling));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        maxTokens,
        maxInputTokens,
        maxOutputTokens,
        maxImagesPerPrompt,
        maxVideoLength,
        maxVideosPerPrompt,
        inputCostPerToken,
        outputCostPerToken,
        inputCostPerPixel,
        outputCostPerPixel,
        inputCostPerSecond,
        outputCostPerSecond,
        inputCostPerRequest,
        outputCostPerImage,
        outputVectorSize,
        litellmProvider,
        mode,
        source,
        supportsFunctionCalling,
        supportsParallelFunctionCalling
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ModelPricesAndContextWindowImplCopyWith<_$ModelPricesAndContextWindowImpl>
      get copyWith => __$$ModelPricesAndContextWindowImplCopyWithImpl<
          _$ModelPricesAndContextWindowImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModelPricesAndContextWindowImplToJson(
      this,
    );
  }
}

abstract class _ModelPricesAndContextWindow
    implements ModelPricesAndContextWindow {
  const factory _ModelPricesAndContextWindow(
      {@JsonKey(name: 'max_tokens') final int? maxTokens,
      @JsonKey(name: 'max_input_tokens') final int? maxInputTokens,
      @JsonKey(name: 'max_output_tokens') final int? maxOutputTokens,
      @JsonKey(name: 'max_images_per_prompt') final int? maxImagesPerPrompt,
      @JsonKey(name: 'max_video_length') final int? maxVideoLength,
      @JsonKey(name: 'max_videos_per_prompt') final int? maxVideosPerPrompt,
      @JsonKey(name: 'input_cost_per_token') final double? inputCostPerToken,
      @JsonKey(name: 'output_cost_per_token') final double? outputCostPerToken,
      @JsonKey(name: 'input_cost_per_pixel') final double? inputCostPerPixel,
      @JsonKey(name: 'output_cost_per_pixel') final double? outputCostPerPixel,
      @JsonKey(name: 'input_cost_per_second') final double? inputCostPerSecond,
      @JsonKey(name: 'output_cost_per_second')
      final double? outputCostPerSecond,
      @JsonKey(name: 'input_cost_per_request')
      final double? inputCostPerRequest,
      @JsonKey(name: 'output_cost_per_image') final double? outputCostPerImage,
      @JsonKey(name: 'output_vector_size') final int? outputVectorSize,
      @JsonKey(name: 'litellm_provider') final String? litellmProvider,
      @JsonKey(name: 'mode') final String? mode,
      @JsonKey(name: 'source') final String? source,
      @JsonKey(name: 'supports_function_calling')
      final bool? supportsFunctionCalling,
      @JsonKey(name: 'supports_parallel_function_calling')
      final bool?
          supportsParallelFunctionCalling}) = _$ModelPricesAndContextWindowImpl;

  factory _ModelPricesAndContextWindow.fromJson(Map<String, dynamic> json) =
      _$ModelPricesAndContextWindowImpl.fromJson;

  @override
  @JsonKey(name: 'max_tokens')
  int? get maxTokens;
  @override
  @JsonKey(name: 'max_input_tokens')
  int? get maxInputTokens;
  @override
  @JsonKey(name: 'max_output_tokens')
  int? get maxOutputTokens;
  @override
  @JsonKey(name: 'max_images_per_prompt')
  int? get maxImagesPerPrompt;
  @override
  @JsonKey(name: 'max_video_length')
  int? get maxVideoLength;
  @override
  @JsonKey(name: 'max_videos_per_prompt')
  int? get maxVideosPerPrompt;
  @override
  @JsonKey(name: 'input_cost_per_token')
  double? get inputCostPerToken;
  @override
  @JsonKey(name: 'output_cost_per_token')
  double? get outputCostPerToken;
  @override
  @JsonKey(name: 'input_cost_per_pixel')
  double? get inputCostPerPixel;
  @override
  @JsonKey(name: 'output_cost_per_pixel')
  double? get outputCostPerPixel;
  @override
  @JsonKey(name: 'input_cost_per_second')
  double? get inputCostPerSecond;
  @override
  @JsonKey(name: 'output_cost_per_second')
  double? get outputCostPerSecond;
  @override
  @JsonKey(name: 'input_cost_per_request')
  double? get inputCostPerRequest;
  @override
  @JsonKey(name: 'output_cost_per_image')
  double? get outputCostPerImage;
  @override
  @JsonKey(name: 'output_vector_size')
  int? get outputVectorSize;
  @override
  @JsonKey(name: 'litellm_provider')
  String? get litellmProvider;
  @override
  @JsonKey(name: 'mode')
  String? get mode;
  @override
  @JsonKey(name: 'source')
  String? get source;
  @override
  @JsonKey(name: 'supports_function_calling')
  bool? get supportsFunctionCalling;
  @override
  @JsonKey(name: 'supports_parallel_function_calling')
  bool? get supportsParallelFunctionCalling;
  @override
  @JsonKey(ignore: true)
  _$$ModelPricesAndContextWindowImplCopyWith<_$ModelPricesAndContextWindowImpl>
      get copyWith => throw _privateConstructorUsedError;
}
