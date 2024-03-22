// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_fs_copy_api_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MyFsCopyApiParam _$MyFsCopyApiParamFromJson(Map<String, dynamic> json) {
  return _MyFsCopyApiParam.fromJson(json);
}

/// @nodoc
mixin _$MyFsCopyApiParam {
  @JsonKey(name: 'src_dir')
  String get srcDir => throw _privateConstructorUsedError;
  @JsonKey(name: 'dst_dir')
  String get dstDir => throw _privateConstructorUsedError;
  @JsonKey(name: 'names')
  List<String> get names => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyFsCopyApiParamCopyWith<MyFsCopyApiParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyFsCopyApiParamCopyWith<$Res> {
  factory $MyFsCopyApiParamCopyWith(
          MyFsCopyApiParam value, $Res Function(MyFsCopyApiParam) then) =
      _$MyFsCopyApiParamCopyWithImpl<$Res, MyFsCopyApiParam>;
  @useResult
  $Res call(
      {@JsonKey(name: 'src_dir') String srcDir,
      @JsonKey(name: 'dst_dir') String dstDir,
      @JsonKey(name: 'names') List<String> names});
}

/// @nodoc
class _$MyFsCopyApiParamCopyWithImpl<$Res, $Val extends MyFsCopyApiParam>
    implements $MyFsCopyApiParamCopyWith<$Res> {
  _$MyFsCopyApiParamCopyWithImpl(this._value, this._then);

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
abstract class _$$MyFsCopyApiParamImplCopyWith<$Res>
    implements $MyFsCopyApiParamCopyWith<$Res> {
  factory _$$MyFsCopyApiParamImplCopyWith(_$MyFsCopyApiParamImpl value,
          $Res Function(_$MyFsCopyApiParamImpl) then) =
      __$$MyFsCopyApiParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'src_dir') String srcDir,
      @JsonKey(name: 'dst_dir') String dstDir,
      @JsonKey(name: 'names') List<String> names});
}

/// @nodoc
class __$$MyFsCopyApiParamImplCopyWithImpl<$Res>
    extends _$MyFsCopyApiParamCopyWithImpl<$Res, _$MyFsCopyApiParamImpl>
    implements _$$MyFsCopyApiParamImplCopyWith<$Res> {
  __$$MyFsCopyApiParamImplCopyWithImpl(_$MyFsCopyApiParamImpl _value,
      $Res Function(_$MyFsCopyApiParamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? srcDir = null,
    Object? dstDir = null,
    Object? names = null,
  }) {
    return _then(_$MyFsCopyApiParamImpl(
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
class _$MyFsCopyApiParamImpl extends _MyFsCopyApiParam {
  const _$MyFsCopyApiParamImpl(
      {@JsonKey(name: 'src_dir') required this.srcDir,
      @JsonKey(name: 'dst_dir') required this.dstDir,
      @JsonKey(name: 'names') required final List<String> names})
      : _names = names,
        super._();

  factory _$MyFsCopyApiParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyFsCopyApiParamImplFromJson(json);

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
    return 'MyFsCopyApiParam(srcDir: $srcDir, dstDir: $dstDir, names: $names)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyFsCopyApiParamImpl &&
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
  _$$MyFsCopyApiParamImplCopyWith<_$MyFsCopyApiParamImpl> get copyWith =>
      __$$MyFsCopyApiParamImplCopyWithImpl<_$MyFsCopyApiParamImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyFsCopyApiParamImplToJson(
      this,
    );
  }
}

abstract class _MyFsCopyApiParam extends MyFsCopyApiParam {
  const factory _MyFsCopyApiParam(
          {@JsonKey(name: 'src_dir') required final String srcDir,
          @JsonKey(name: 'dst_dir') required final String dstDir,
          @JsonKey(name: 'names') required final List<String> names}) =
      _$MyFsCopyApiParamImpl;
  const _MyFsCopyApiParam._() : super._();

  factory _MyFsCopyApiParam.fromJson(Map<String, dynamic> json) =
      _$MyFsCopyApiParamImpl.fromJson;

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
  _$$MyFsCopyApiParamImplCopyWith<_$MyFsCopyApiParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
