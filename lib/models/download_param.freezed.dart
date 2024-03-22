// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'download_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DownloadParam _$DownloadParamFromJson(Map<String, dynamic> json) {
  return _DownloadParam.fromJson(json);
}

/// @nodoc
mixin _$DownloadParam {
  @JsonKey(name: 'path')
  String get path => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DownloadParamCopyWith<DownloadParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadParamCopyWith<$Res> {
  factory $DownloadParamCopyWith(
          DownloadParam value, $Res Function(DownloadParam) then) =
      _$DownloadParamCopyWithImpl<$Res, DownloadParam>;
  @useResult
  $Res call(
      {@JsonKey(name: 'path') String path, @JsonKey(name: 'url') String url});
}

/// @nodoc
class _$DownloadParamCopyWithImpl<$Res, $Val extends DownloadParam>
    implements $DownloadParamCopyWith<$Res> {
  _$DownloadParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DownloadParamImplCopyWith<$Res>
    implements $DownloadParamCopyWith<$Res> {
  factory _$$DownloadParamImplCopyWith(
          _$DownloadParamImpl value, $Res Function(_$DownloadParamImpl) then) =
      __$$DownloadParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'path') String path, @JsonKey(name: 'url') String url});
}

/// @nodoc
class __$$DownloadParamImplCopyWithImpl<$Res>
    extends _$DownloadParamCopyWithImpl<$Res, _$DownloadParamImpl>
    implements _$$DownloadParamImplCopyWith<$Res> {
  __$$DownloadParamImplCopyWithImpl(
      _$DownloadParamImpl _value, $Res Function(_$DownloadParamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? url = null,
  }) {
    return _then(_$DownloadParamImpl(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DownloadParamImpl extends _DownloadParam {
  const _$DownloadParamImpl(
      {@JsonKey(name: 'path') this.path = '',
      @JsonKey(name: 'url') this.url = ''})
      : super._();

  factory _$DownloadParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$DownloadParamImplFromJson(json);

  @override
  @JsonKey(name: 'path')
  final String path;
  @override
  @JsonKey(name: 'url')
  final String url;

  @override
  String toString() {
    return 'DownloadParam(path: $path, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadParamImpl &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, path, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadParamImplCopyWith<_$DownloadParamImpl> get copyWith =>
      __$$DownloadParamImplCopyWithImpl<_$DownloadParamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DownloadParamImplToJson(
      this,
    );
  }
}

abstract class _DownloadParam extends DownloadParam {
  const factory _DownloadParam(
      {@JsonKey(name: 'path') final String path,
      @JsonKey(name: 'url') final String url}) = _$DownloadParamImpl;
  const _DownloadParam._() : super._();

  factory _DownloadParam.fromJson(Map<String, dynamic> json) =
      _$DownloadParamImpl.fromJson;

  @override
  @JsonKey(name: 'path')
  String get path;
  @override
  @JsonKey(name: 'url')
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$DownloadParamImplCopyWith<_$DownloadParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
