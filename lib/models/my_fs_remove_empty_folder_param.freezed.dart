// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_fs_remove_empty_folder_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MyFsRemoveEmptyFolderParam _$MyFsRemoveEmptyFolderParamFromJson(
    Map<String, dynamic> json) {
  return _MyFsRemoveEmptyFolderParam.fromJson(json);
}

/// @nodoc
mixin _$MyFsRemoveEmptyFolderParam {
  @JsonKey(name: 'src_dir')
  String get srcDir => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyFsRemoveEmptyFolderParamCopyWith<MyFsRemoveEmptyFolderParam>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyFsRemoveEmptyFolderParamCopyWith<$Res> {
  factory $MyFsRemoveEmptyFolderParamCopyWith(MyFsRemoveEmptyFolderParam value,
          $Res Function(MyFsRemoveEmptyFolderParam) then) =
      _$MyFsRemoveEmptyFolderParamCopyWithImpl<$Res,
          MyFsRemoveEmptyFolderParam>;
  @useResult
  $Res call({@JsonKey(name: 'src_dir') String srcDir});
}

/// @nodoc
class _$MyFsRemoveEmptyFolderParamCopyWithImpl<$Res,
        $Val extends MyFsRemoveEmptyFolderParam>
    implements $MyFsRemoveEmptyFolderParamCopyWith<$Res> {
  _$MyFsRemoveEmptyFolderParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? srcDir = null,
  }) {
    return _then(_value.copyWith(
      srcDir: null == srcDir
          ? _value.srcDir
          : srcDir // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyFsRemoveEmptyFolderParamImplCopyWith<$Res>
    implements $MyFsRemoveEmptyFolderParamCopyWith<$Res> {
  factory _$$MyFsRemoveEmptyFolderParamImplCopyWith(
          _$MyFsRemoveEmptyFolderParamImpl value,
          $Res Function(_$MyFsRemoveEmptyFolderParamImpl) then) =
      __$$MyFsRemoveEmptyFolderParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'src_dir') String srcDir});
}

/// @nodoc
class __$$MyFsRemoveEmptyFolderParamImplCopyWithImpl<$Res>
    extends _$MyFsRemoveEmptyFolderParamCopyWithImpl<$Res,
        _$MyFsRemoveEmptyFolderParamImpl>
    implements _$$MyFsRemoveEmptyFolderParamImplCopyWith<$Res> {
  __$$MyFsRemoveEmptyFolderParamImplCopyWithImpl(
      _$MyFsRemoveEmptyFolderParamImpl _value,
      $Res Function(_$MyFsRemoveEmptyFolderParamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? srcDir = null,
  }) {
    return _then(_$MyFsRemoveEmptyFolderParamImpl(
      srcDir: null == srcDir
          ? _value.srcDir
          : srcDir // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyFsRemoveEmptyFolderParamImpl extends _MyFsRemoveEmptyFolderParam {
  const _$MyFsRemoveEmptyFolderParamImpl(
      {@JsonKey(name: 'src_dir') required this.srcDir})
      : super._();

  factory _$MyFsRemoveEmptyFolderParamImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MyFsRemoveEmptyFolderParamImplFromJson(json);

  @override
  @JsonKey(name: 'src_dir')
  final String srcDir;

  @override
  String toString() {
    return 'MyFsRemoveEmptyFolderParam(srcDir: $srcDir)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyFsRemoveEmptyFolderParamImpl &&
            (identical(other.srcDir, srcDir) || other.srcDir == srcDir));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, srcDir);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyFsRemoveEmptyFolderParamImplCopyWith<_$MyFsRemoveEmptyFolderParamImpl>
      get copyWith => __$$MyFsRemoveEmptyFolderParamImplCopyWithImpl<
          _$MyFsRemoveEmptyFolderParamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyFsRemoveEmptyFolderParamImplToJson(
      this,
    );
  }
}

abstract class _MyFsRemoveEmptyFolderParam extends MyFsRemoveEmptyFolderParam {
  const factory _MyFsRemoveEmptyFolderParam(
          {@JsonKey(name: 'src_dir') required final String srcDir}) =
      _$MyFsRemoveEmptyFolderParamImpl;
  const _MyFsRemoveEmptyFolderParam._() : super._();

  factory _MyFsRemoveEmptyFolderParam.fromJson(Map<String, dynamic> json) =
      _$MyFsRemoveEmptyFolderParamImpl.fromJson;

  @override
  @JsonKey(name: 'src_dir')
  String get srcDir;
  @override
  @JsonKey(ignore: true)
  _$$MyFsRemoveEmptyFolderParamImplCopyWith<_$MyFsRemoveEmptyFolderParamImpl>
      get copyWith => throw _privateConstructorUsedError;
}
