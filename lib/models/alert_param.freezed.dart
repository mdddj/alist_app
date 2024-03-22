// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alert_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AlertParam _$AlertParamFromJson(Map<String, dynamic> json) {
  return _AlertParam.fromJson(json);
}

/// @nodoc
mixin _$AlertParam {
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlertParamCopyWith<AlertParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlertParamCopyWith<$Res> {
  factory $AlertParamCopyWith(
          AlertParam value, $Res Function(AlertParam) then) =
      _$AlertParamCopyWithImpl<$Res, AlertParam>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'content') String content});
}

/// @nodoc
class _$AlertParamCopyWithImpl<$Res, $Val extends AlertParam>
    implements $AlertParamCopyWith<$Res> {
  _$AlertParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlertParamImplCopyWith<$Res>
    implements $AlertParamCopyWith<$Res> {
  factory _$$AlertParamImplCopyWith(
          _$AlertParamImpl value, $Res Function(_$AlertParamImpl) then) =
      __$$AlertParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'content') String content});
}

/// @nodoc
class __$$AlertParamImplCopyWithImpl<$Res>
    extends _$AlertParamCopyWithImpl<$Res, _$AlertParamImpl>
    implements _$$AlertParamImplCopyWith<$Res> {
  __$$AlertParamImplCopyWithImpl(
      _$AlertParamImpl _value, $Res Function(_$AlertParamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
  }) {
    return _then(_$AlertParamImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlertParamImpl extends _AlertParam {
  const _$AlertParamImpl(
      {@JsonKey(name: 'title') this.title = '提示',
      @JsonKey(name: 'content') this.content = ''})
      : super._();

  factory _$AlertParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlertParamImplFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'content')
  final String content;

  @override
  String toString() {
    return 'AlertParam(title: $title, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlertParamImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlertParamImplCopyWith<_$AlertParamImpl> get copyWith =>
      __$$AlertParamImplCopyWithImpl<_$AlertParamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlertParamImplToJson(
      this,
    );
  }
}

abstract class _AlertParam extends AlertParam {
  const factory _AlertParam(
      {@JsonKey(name: 'title') final String title,
      @JsonKey(name: 'content') final String content}) = _$AlertParamImpl;
  const _AlertParam._() : super._();

  factory _AlertParam.fromJson(Map<String, dynamic> json) =
      _$AlertParamImpl.fromJson;

  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'content')
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$AlertParamImplCopyWith<_$AlertParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
