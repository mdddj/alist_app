// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preview_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PreviewParam {
  @JsonKey(name: 'fileRawUrl')
  String get fileRawUrl => throw _privateConstructorUsedError;
  @igFreezedJson
  FsModel get fsModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PreviewParamCopyWith<PreviewParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreviewParamCopyWith<$Res> {
  factory $PreviewParamCopyWith(
          PreviewParam value, $Res Function(PreviewParam) then) =
      _$PreviewParamCopyWithImpl<$Res, PreviewParam>;
  @useResult
  $Res call(
      {@JsonKey(name: 'fileRawUrl') String fileRawUrl,
      @igFreezedJson FsModel fsModel});
}

/// @nodoc
class _$PreviewParamCopyWithImpl<$Res, $Val extends PreviewParam>
    implements $PreviewParamCopyWith<$Res> {
  _$PreviewParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileRawUrl = null,
    Object? fsModel = null,
  }) {
    return _then(_value.copyWith(
      fileRawUrl: null == fileRawUrl
          ? _value.fileRawUrl
          : fileRawUrl // ignore: cast_nullable_to_non_nullable
              as String,
      fsModel: null == fsModel
          ? _value.fsModel
          : fsModel // ignore: cast_nullable_to_non_nullable
              as FsModel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PreviewParamImplCopyWith<$Res>
    implements $PreviewParamCopyWith<$Res> {
  factory _$$PreviewParamImplCopyWith(
          _$PreviewParamImpl value, $Res Function(_$PreviewParamImpl) then) =
      __$$PreviewParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'fileRawUrl') String fileRawUrl,
      @igFreezedJson FsModel fsModel});
}

/// @nodoc
class __$$PreviewParamImplCopyWithImpl<$Res>
    extends _$PreviewParamCopyWithImpl<$Res, _$PreviewParamImpl>
    implements _$$PreviewParamImplCopyWith<$Res> {
  __$$PreviewParamImplCopyWithImpl(
      _$PreviewParamImpl _value, $Res Function(_$PreviewParamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileRawUrl = null,
    Object? fsModel = null,
  }) {
    return _then(_$PreviewParamImpl(
      fileRawUrl: null == fileRawUrl
          ? _value.fileRawUrl
          : fileRawUrl // ignore: cast_nullable_to_non_nullable
              as String,
      fsModel: null == fsModel
          ? _value.fsModel
          : fsModel // ignore: cast_nullable_to_non_nullable
              as FsModel,
    ));
  }
}

/// @nodoc

class _$PreviewParamImpl extends _PreviewParam {
  const _$PreviewParamImpl(
      {@JsonKey(name: 'fileRawUrl') this.fileRawUrl = '',
      @igFreezedJson required this.fsModel})
      : super._();

  @override
  @JsonKey(name: 'fileRawUrl')
  final String fileRawUrl;
  @override
  @igFreezedJson
  final FsModel fsModel;

  @override
  String toString() {
    return 'PreviewParam(fileRawUrl: $fileRawUrl, fsModel: $fsModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreviewParamImpl &&
            (identical(other.fileRawUrl, fileRawUrl) ||
                other.fileRawUrl == fileRawUrl) &&
            (identical(other.fsModel, fsModel) || other.fsModel == fsModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fileRawUrl, fsModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreviewParamImplCopyWith<_$PreviewParamImpl> get copyWith =>
      __$$PreviewParamImplCopyWithImpl<_$PreviewParamImpl>(this, _$identity);
}

abstract class _PreviewParam extends PreviewParam {
  const factory _PreviewParam(
      {@JsonKey(name: 'fileRawUrl') final String fileRawUrl,
      @igFreezedJson required final FsModel fsModel}) = _$PreviewParamImpl;
  const _PreviewParam._() : super._();

  @override
  @JsonKey(name: 'fileRawUrl')
  String get fileRawUrl;
  @override
  @igFreezedJson
  FsModel get fsModel;
  @override
  @JsonKey(ignore: true)
  _$$PreviewParamImplCopyWith<_$PreviewParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
