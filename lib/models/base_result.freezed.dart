// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResult _$BaseResultFromJson(Map<String, dynamic> json) {
  return _BaseResult.fromJson(json);
}

/// @nodoc
mixin _$BaseResult {
  @JsonKey(name: 'code')
  int get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data", fromJson: toDartModel)
  DartTypeModel get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BaseResultCopyWith<BaseResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResultCopyWith<$Res> {
  factory $BaseResultCopyWith(
          BaseResult value, $Res Function(BaseResult) then) =
      _$BaseResultCopyWithImpl<$Res, BaseResult>;
  @useResult
  $Res call(
      {@JsonKey(name: 'code') int code,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: "data", fromJson: toDartModel) DartTypeModel data});

  $DartTypeModelCopyWith<$Res> get data;
}

/// @nodoc
class _$BaseResultCopyWithImpl<$Res, $Val extends BaseResult>
    implements $BaseResultCopyWith<$Res> {
  _$BaseResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DartTypeModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DartTypeModelCopyWith<$Res> get data {
    return $DartTypeModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BaseResultImplCopyWith<$Res>
    implements $BaseResultCopyWith<$Res> {
  factory _$$BaseResultImplCopyWith(
          _$BaseResultImpl value, $Res Function(_$BaseResultImpl) then) =
      __$$BaseResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'code') int code,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: "data", fromJson: toDartModel) DartTypeModel data});

  @override
  $DartTypeModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$BaseResultImplCopyWithImpl<$Res>
    extends _$BaseResultCopyWithImpl<$Res, _$BaseResultImpl>
    implements _$$BaseResultImplCopyWith<$Res> {
  __$$BaseResultImplCopyWithImpl(
      _$BaseResultImpl _value, $Res Function(_$BaseResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$BaseResultImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DartTypeModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BaseResultImpl extends _BaseResult {
  const _$BaseResultImpl(
      {@JsonKey(name: 'code') this.code = 0,
      @JsonKey(name: 'message') this.message = '',
      @JsonKey(name: "data", fromJson: toDartModel)
      this.data = const DartTypeModel.nil()})
      : super._();

  factory _$BaseResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseResultImplFromJson(json);

  @override
  @JsonKey(name: 'code')
  final int code;
  @override
  @JsonKey(name: 'message')
  final String message;
  @override
  @JsonKey(name: "data", fromJson: toDartModel)
  final DartTypeModel data;

  @override
  String toString() {
    return 'BaseResult(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResultImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResultImplCopyWith<_$BaseResultImpl> get copyWith =>
      __$$BaseResultImplCopyWithImpl<_$BaseResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResultImplToJson(
      this,
    );
  }
}

abstract class _BaseResult extends BaseResult {
  const factory _BaseResult(
      {@JsonKey(name: 'code') final int code,
      @JsonKey(name: 'message') final String message,
      @JsonKey(name: "data", fromJson: toDartModel)
      final DartTypeModel data}) = _$BaseResultImpl;
  const _BaseResult._() : super._();

  factory _BaseResult.fromJson(Map<String, dynamic> json) =
      _$BaseResultImpl.fromJson;

  @override
  @JsonKey(name: 'code')
  int get code;
  @override
  @JsonKey(name: 'message')
  String get message;
  @override
  @JsonKey(name: "data", fromJson: toDartModel)
  DartTypeModel get data;
  @override
  @JsonKey(ignore: true)
  _$$BaseResultImplCopyWith<_$BaseResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
