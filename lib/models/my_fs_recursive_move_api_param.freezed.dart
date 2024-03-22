// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_fs_recursive_move_api_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MyFsRecursiveMoveApiParam _$MyFsRecursiveMoveApiParamFromJson(
    Map<String, dynamic> json) {
  return _MyFsRecursiveMoveApiParam.fromJson(json);
}

/// @nodoc
mixin _$MyFsRecursiveMoveApiParam {
  @JsonKey(name: 'src_dir')
  String get srcDir => throw _privateConstructorUsedError;
  @JsonKey(name: 'dst_dir')
  String get dstDir => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyFsRecursiveMoveApiParamCopyWith<MyFsRecursiveMoveApiParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyFsRecursiveMoveApiParamCopyWith<$Res> {
  factory $MyFsRecursiveMoveApiParamCopyWith(MyFsRecursiveMoveApiParam value,
          $Res Function(MyFsRecursiveMoveApiParam) then) =
      _$MyFsRecursiveMoveApiParamCopyWithImpl<$Res, MyFsRecursiveMoveApiParam>;
  @useResult
  $Res call(
      {@JsonKey(name: 'src_dir') String srcDir,
      @JsonKey(name: 'dst_dir') String dstDir});
}

/// @nodoc
class _$MyFsRecursiveMoveApiParamCopyWithImpl<$Res,
        $Val extends MyFsRecursiveMoveApiParam>
    implements $MyFsRecursiveMoveApiParamCopyWith<$Res> {
  _$MyFsRecursiveMoveApiParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? srcDir = null,
    Object? dstDir = null,
  }) {
    return _then(_value.copyWith(
      srcDir: null == srcDir
          ? _value.srcDir
          : srcDir // ignore: cast_nullable_to_non_nullable
              as String,
      dstDir: null == dstDir
          ? _value.dstDir
          : dstDir // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyFsRecursiveMoveApiParamImplCopyWith<$Res>
    implements $MyFsRecursiveMoveApiParamCopyWith<$Res> {
  factory _$$MyFsRecursiveMoveApiParamImplCopyWith(
          _$MyFsRecursiveMoveApiParamImpl value,
          $Res Function(_$MyFsRecursiveMoveApiParamImpl) then) =
      __$$MyFsRecursiveMoveApiParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'src_dir') String srcDir,
      @JsonKey(name: 'dst_dir') String dstDir});
}

/// @nodoc
class __$$MyFsRecursiveMoveApiParamImplCopyWithImpl<$Res>
    extends _$MyFsRecursiveMoveApiParamCopyWithImpl<$Res,
        _$MyFsRecursiveMoveApiParamImpl>
    implements _$$MyFsRecursiveMoveApiParamImplCopyWith<$Res> {
  __$$MyFsRecursiveMoveApiParamImplCopyWithImpl(
      _$MyFsRecursiveMoveApiParamImpl _value,
      $Res Function(_$MyFsRecursiveMoveApiParamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? srcDir = null,
    Object? dstDir = null,
  }) {
    return _then(_$MyFsRecursiveMoveApiParamImpl(
      srcDir: null == srcDir
          ? _value.srcDir
          : srcDir // ignore: cast_nullable_to_non_nullable
              as String,
      dstDir: null == dstDir
          ? _value.dstDir
          : dstDir // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyFsRecursiveMoveApiParamImpl extends _MyFsRecursiveMoveApiParam {
  const _$MyFsRecursiveMoveApiParamImpl(
      {@JsonKey(name: 'src_dir') required this.srcDir,
      @JsonKey(name: 'dst_dir') required this.dstDir})
      : super._();

  factory _$MyFsRecursiveMoveApiParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyFsRecursiveMoveApiParamImplFromJson(json);

  @override
  @JsonKey(name: 'src_dir')
  final String srcDir;
  @override
  @JsonKey(name: 'dst_dir')
  final String dstDir;

  @override
  String toString() {
    return 'MyFsRecursiveMoveApiParam(srcDir: $srcDir, dstDir: $dstDir)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyFsRecursiveMoveApiParamImpl &&
            (identical(other.srcDir, srcDir) || other.srcDir == srcDir) &&
            (identical(other.dstDir, dstDir) || other.dstDir == dstDir));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, srcDir, dstDir);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyFsRecursiveMoveApiParamImplCopyWith<_$MyFsRecursiveMoveApiParamImpl>
      get copyWith => __$$MyFsRecursiveMoveApiParamImplCopyWithImpl<
          _$MyFsRecursiveMoveApiParamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyFsRecursiveMoveApiParamImplToJson(
      this,
    );
  }
}

abstract class _MyFsRecursiveMoveApiParam extends MyFsRecursiveMoveApiParam {
  const factory _MyFsRecursiveMoveApiParam(
          {@JsonKey(name: 'src_dir') required final String srcDir,
          @JsonKey(name: 'dst_dir') required final String dstDir}) =
      _$MyFsRecursiveMoveApiParamImpl;
  const _MyFsRecursiveMoveApiParam._() : super._();

  factory _MyFsRecursiveMoveApiParam.fromJson(Map<String, dynamic> json) =
      _$MyFsRecursiveMoveApiParamImpl.fromJson;

  @override
  @JsonKey(name: 'src_dir')
  String get srcDir;
  @override
  @JsonKey(name: 'dst_dir')
  String get dstDir;
  @override
  @JsonKey(ignore: true)
  _$$MyFsRecursiveMoveApiParamImplCopyWith<_$MyFsRecursiveMoveApiParamImpl>
      get copyWith => throw _privateConstructorUsedError;
}
