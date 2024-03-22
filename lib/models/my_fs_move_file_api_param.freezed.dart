// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_fs_move_file_api_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MyFsMoveFileApiParam _$MyFsMoveFileApiParamFromJson(Map<String, dynamic> json) {
  return _MyFsMoveFileApiParam.fromJson(json);
}

/// @nodoc
mixin _$MyFsMoveFileApiParam {
  @JsonKey(name: 'src_dir')
  String get srcDir => throw _privateConstructorUsedError;
  @JsonKey(name: 'dst_dir')
  String get dstDir => throw _privateConstructorUsedError;
  @JsonKey(name: 'names')
  List<String> get names => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyFsMoveFileApiParamCopyWith<MyFsMoveFileApiParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyFsMoveFileApiParamCopyWith<$Res> {
  factory $MyFsMoveFileApiParamCopyWith(MyFsMoveFileApiParam value,
          $Res Function(MyFsMoveFileApiParam) then) =
      _$MyFsMoveFileApiParamCopyWithImpl<$Res, MyFsMoveFileApiParam>;
  @useResult
  $Res call(
      {@JsonKey(name: 'src_dir') String srcDir,
      @JsonKey(name: 'dst_dir') String dstDir,
      @JsonKey(name: 'names') List<String> names});
}

/// @nodoc
class _$MyFsMoveFileApiParamCopyWithImpl<$Res,
        $Val extends MyFsMoveFileApiParam>
    implements $MyFsMoveFileApiParamCopyWith<$Res> {
  _$MyFsMoveFileApiParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? srcDir = null,
    Object? dstDir = null,
    Object? names = null,
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
      names: null == names
          ? _value.names
          : names // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyFsMoveFileApiParamImplCopyWith<$Res>
    implements $MyFsMoveFileApiParamCopyWith<$Res> {
  factory _$$MyFsMoveFileApiParamImplCopyWith(_$MyFsMoveFileApiParamImpl value,
          $Res Function(_$MyFsMoveFileApiParamImpl) then) =
      __$$MyFsMoveFileApiParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'src_dir') String srcDir,
      @JsonKey(name: 'dst_dir') String dstDir,
      @JsonKey(name: 'names') List<String> names});
}

/// @nodoc
class __$$MyFsMoveFileApiParamImplCopyWithImpl<$Res>
    extends _$MyFsMoveFileApiParamCopyWithImpl<$Res, _$MyFsMoveFileApiParamImpl>
    implements _$$MyFsMoveFileApiParamImplCopyWith<$Res> {
  __$$MyFsMoveFileApiParamImplCopyWithImpl(_$MyFsMoveFileApiParamImpl _value,
      $Res Function(_$MyFsMoveFileApiParamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? srcDir = null,
    Object? dstDir = null,
    Object? names = null,
  }) {
    return _then(_$MyFsMoveFileApiParamImpl(
      srcDir: null == srcDir
          ? _value.srcDir
          : srcDir // ignore: cast_nullable_to_non_nullable
              as String,
      dstDir: null == dstDir
          ? _value.dstDir
          : dstDir // ignore: cast_nullable_to_non_nullable
              as String,
      names: null == names
          ? _value._names
          : names // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyFsMoveFileApiParamImpl extends _MyFsMoveFileApiParam {
  const _$MyFsMoveFileApiParamImpl(
      {@JsonKey(name: 'src_dir') required this.srcDir,
      @JsonKey(name: 'dst_dir') required this.dstDir,
      @JsonKey(name: 'names') required final List<String> names})
      : _names = names,
        super._();

  factory _$MyFsMoveFileApiParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyFsMoveFileApiParamImplFromJson(json);

  @override
  @JsonKey(name: 'src_dir')
  final String srcDir;
  @override
  @JsonKey(name: 'dst_dir')
  final String dstDir;
  final List<String> _names;
  @override
  @JsonKey(name: 'names')
  List<String> get names {
    if (_names is EqualUnmodifiableListView) return _names;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_names);
  }

  @override
  String toString() {
    return 'MyFsMoveFileApiParam(srcDir: $srcDir, dstDir: $dstDir, names: $names)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyFsMoveFileApiParamImpl &&
            (identical(other.srcDir, srcDir) || other.srcDir == srcDir) &&
            (identical(other.dstDir, dstDir) || other.dstDir == dstDir) &&
            const DeepCollectionEquality().equals(other._names, _names));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, srcDir, dstDir, const DeepCollectionEquality().hash(_names));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyFsMoveFileApiParamImplCopyWith<_$MyFsMoveFileApiParamImpl>
      get copyWith =>
          __$$MyFsMoveFileApiParamImplCopyWithImpl<_$MyFsMoveFileApiParamImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyFsMoveFileApiParamImplToJson(
      this,
    );
  }
}

abstract class _MyFsMoveFileApiParam extends MyFsMoveFileApiParam {
  const factory _MyFsMoveFileApiParam(
          {@JsonKey(name: 'src_dir') required final String srcDir,
          @JsonKey(name: 'dst_dir') required final String dstDir,
          @JsonKey(name: 'names') required final List<String> names}) =
      _$MyFsMoveFileApiParamImpl;
  const _MyFsMoveFileApiParam._() : super._();

  factory _MyFsMoveFileApiParam.fromJson(Map<String, dynamic> json) =
      _$MyFsMoveFileApiParamImpl.fromJson;

  @override
  @JsonKey(name: 'src_dir')
  String get srcDir;
  @override
  @JsonKey(name: 'dst_dir')
  String get dstDir;
  @override
  @JsonKey(name: 'names')
  List<String> get names;
  @override
  @JsonKey(ignore: true)
  _$$MyFsMoveFileApiParamImplCopyWith<_$MyFsMoveFileApiParamImpl>
      get copyWith => throw _privateConstructorUsedError;
}
