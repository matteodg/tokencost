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
  @JsonKey(name: 'input_cost_per_token')
  double? get inputCostPerToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'output_cost_per_token')
  double? get outputCostPerToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'litellm_provider')
  String? get litellmProvider => throw _privateConstructorUsedError;
  @JsonKey(name: 'mode')
  String? get mode => throw _privateConstructorUsedError;
  @JsonKey(name: 'supports_function_calling')
  bool? get supportsFunctionCalling => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'input_cost_per_token') double? inputCostPerToken,
      @JsonKey(name: 'output_cost_per_token') double? outputCostPerToken,
      @JsonKey(name: 'litellm_provider') String? litellmProvider,
      @JsonKey(name: 'mode') String? mode,
      @JsonKey(name: 'supports_function_calling')
      bool? supportsFunctionCalling});
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
    Object? inputCostPerToken = freezed,
    Object? outputCostPerToken = freezed,
    Object? litellmProvider = freezed,
    Object? mode = freezed,
    Object? supportsFunctionCalling = freezed,
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
      inputCostPerToken: freezed == inputCostPerToken
          ? _value.inputCostPerToken
          : inputCostPerToken // ignore: cast_nullable_to_non_nullable
              as double?,
      outputCostPerToken: freezed == outputCostPerToken
          ? _value.outputCostPerToken
          : outputCostPerToken // ignore: cast_nullable_to_non_nullable
              as double?,
      litellmProvider: freezed == litellmProvider
          ? _value.litellmProvider
          : litellmProvider // ignore: cast_nullable_to_non_nullable
              as String?,
      mode: freezed == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as String?,
      supportsFunctionCalling: freezed == supportsFunctionCalling
          ? _value.supportsFunctionCalling
          : supportsFunctionCalling // ignore: cast_nullable_to_non_nullable
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
      @JsonKey(name: 'input_cost_per_token') double? inputCostPerToken,
      @JsonKey(name: 'output_cost_per_token') double? outputCostPerToken,
      @JsonKey(name: 'litellm_provider') String? litellmProvider,
      @JsonKey(name: 'mode') String? mode,
      @JsonKey(name: 'supports_function_calling')
      bool? supportsFunctionCalling});
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
    Object? inputCostPerToken = freezed,
    Object? outputCostPerToken = freezed,
    Object? litellmProvider = freezed,
    Object? mode = freezed,
    Object? supportsFunctionCalling = freezed,
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
      inputCostPerToken: freezed == inputCostPerToken
          ? _value.inputCostPerToken
          : inputCostPerToken // ignore: cast_nullable_to_non_nullable
              as double?,
      outputCostPerToken: freezed == outputCostPerToken
          ? _value.outputCostPerToken
          : outputCostPerToken // ignore: cast_nullable_to_non_nullable
              as double?,
      litellmProvider: freezed == litellmProvider
          ? _value.litellmProvider
          : litellmProvider // ignore: cast_nullable_to_non_nullable
              as String?,
      mode: freezed == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as String?,
      supportsFunctionCalling: freezed == supportsFunctionCalling
          ? _value.supportsFunctionCalling
          : supportsFunctionCalling // ignore: cast_nullable_to_non_nullable
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
      @JsonKey(name: 'input_cost_per_token') this.inputCostPerToken,
      @JsonKey(name: 'output_cost_per_token') this.outputCostPerToken,
      @JsonKey(name: 'litellm_provider') this.litellmProvider,
      @JsonKey(name: 'mode') this.mode,
      @JsonKey(name: 'supports_function_calling')
      this.supportsFunctionCalling});

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
  @JsonKey(name: 'input_cost_per_token')
  final double? inputCostPerToken;
  @override
  @JsonKey(name: 'output_cost_per_token')
  final double? outputCostPerToken;
  @override
  @JsonKey(name: 'litellm_provider')
  final String? litellmProvider;
  @override
  @JsonKey(name: 'mode')
  final String? mode;
  @override
  @JsonKey(name: 'supports_function_calling')
  final bool? supportsFunctionCalling;

  @override
  String toString() {
    return 'ModelPricesAndContextWindow(maxTokens: $maxTokens, maxInputTokens: $maxInputTokens, maxOutputTokens: $maxOutputTokens, inputCostPerToken: $inputCostPerToken, outputCostPerToken: $outputCostPerToken, litellmProvider: $litellmProvider, mode: $mode, supportsFunctionCalling: $supportsFunctionCalling)';
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
            (identical(other.inputCostPerToken, inputCostPerToken) ||
                other.inputCostPerToken == inputCostPerToken) &&
            (identical(other.outputCostPerToken, outputCostPerToken) ||
                other.outputCostPerToken == outputCostPerToken) &&
            (identical(other.litellmProvider, litellmProvider) ||
                other.litellmProvider == litellmProvider) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(
                    other.supportsFunctionCalling, supportsFunctionCalling) ||
                other.supportsFunctionCalling == supportsFunctionCalling));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      maxTokens,
      maxInputTokens,
      maxOutputTokens,
      inputCostPerToken,
      outputCostPerToken,
      litellmProvider,
      mode,
      supportsFunctionCalling);

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
      @JsonKey(name: 'input_cost_per_token') final double? inputCostPerToken,
      @JsonKey(name: 'output_cost_per_token') final double? outputCostPerToken,
      @JsonKey(name: 'litellm_provider') final String? litellmProvider,
      @JsonKey(name: 'mode') final String? mode,
      @JsonKey(name: 'supports_function_calling')
      final bool? supportsFunctionCalling}) = _$ModelPricesAndContextWindowImpl;

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
  @JsonKey(name: 'input_cost_per_token')
  double? get inputCostPerToken;
  @override
  @JsonKey(name: 'output_cost_per_token')
  double? get outputCostPerToken;
  @override
  @JsonKey(name: 'litellm_provider')
  String? get litellmProvider;
  @override
  @JsonKey(name: 'mode')
  String? get mode;
  @override
  @JsonKey(name: 'supports_function_calling')
  bool? get supportsFunctionCalling;
  @override
  @JsonKey(ignore: true)
  _$$ModelPricesAndContextWindowImplCopyWith<_$ModelPricesAndContextWindowImpl>
      get copyWith => throw _privateConstructorUsedError;
}
