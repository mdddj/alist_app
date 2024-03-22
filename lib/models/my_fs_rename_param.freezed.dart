// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_fs_rename_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MyFsRenameParam _$MyFsRenameParamFromJson(Map<String, dynamic> json) {
  return _MyFsRenameParam.fromJson(json);
}

/// @nodoc
mixin _$MyFsRenameParam {
  @JsonKey(name: 'src_dir')
  String get srcDir => throw _privateConstructorUsedError;
  @JsonKey(name: 'rename_objects')
  List<RenameObjects> get renameObjects => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyFsRenameParamCopyWith<MyFsRenameParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyFsRenameParamCopyWith<$Res> {
  factory $MyFsRenameParamCopyWith(
          MyFsRenameParam value, $Res Function(MyFsRenameParam) then) =
      _$MyFsRenameParamCopyWithImpl<$Res, MyFsRenameParam>;
  @useResult
  $Res call(
      {@JsonKey(name: 'src_dir') String srcDir,
      @JsonKey(name: 'rename_objects') List<RenameObjects> renameObjects});
}

/// @nodoc
class _$MyFsRenameParamCopyWithImpl<$Res, $Val extends MyFsRenameParam>
    implements $MyFsRenameParamCopyWith<$Res> {
  _$MyFsRenameParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? srcDir = null,
    Object? renameObjects = null,
  }) {
    return _then(_value.copyWith(
      srcDir: null == srcDir
          ? _value.srcDir
          : srcDir // ignore: cast_nullable_to_non_nullable
              as String,
      renameObjects: null == renameObjects
          ? _value.renameObjects
          : renameObjects // ignore: cast_nullable_to_non_nullable
              as List<RenameObjects>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyFsRenameParamImplCopyWith<$Res>
    implements $MyFsRenameParamCopyWith<$Res> {
  factory _$$MyFsRenameParamImplCopyWith(_$MyFsRenameParamImpl value,
          $Res Function(_$MyFsRenameParamImpl) then) =
      __$$MyFsRenameParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'src_dir') String srcDir,
      @JsonKey(name: 'rename_objects') List<RenameObjects> renameObjects});
}

/// @nodoc
class __$$MyFsRenameParamImplCopyWithImpl<$Res>
    extends _$MyFsRenameParamCopyWithImpl<$Res, _$MyFsRenameParamImpl>
    implements _$$MyFsRenameParamImplCopyWith<$Res> {
  __$$MyFsRenameParamImplCopyWithImpl(
      _$MyFsRenameParamImpl _value, $Res Function(_$MyFsRenameParamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? srcDir = null,
    Object? renameObjects = null,
  }) {
    return _then(_$MyFsRenameParamImpl(
      srcDir: null == srcDir
          ? _value.srcDir
          : srcDir // ignore: cast_nullable_to_non_nullable
              as String,
      renameObjects: null == renameObjects
          ? _value._renameObjects
          : renameObjects // ignore: cast_nullable_to_non_nullable
              as List<RenameObjects>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyFsRenameParamImpl extends _MyFsRenameParam {
  const _$MyFsRenameParamImpl(
      {@JsonKey(name: 'src_dir') required this.srcDir,
      @JsonKey(name: 'rename_objects')
      required final List<RenameObjects> renameObjects})
      : _renameObjects = renameObjects,
        super._();

  factory _$MyFsRenameParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyFsRenameParamImplFromJson(json);

  @override
  @JsonKey(name: 'src_dir')
  final String srcDir;
  final List<RenameObjects> _renameObjects;
  @override
  @JsonKey(name: 'rename_objects')
  List<RenameObjects> get renameObjects {
    if (_renameObjects is EqualUnmodifiableListView) return _renameObjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_renameObjects);
  }

  @override
  String toString() {
    return 'MyFsRenameParam(srcDir: $srcDir, renameObjects: $renameObjects)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyFsRenameParamImpl &&
            (identical(other.srcDir, srcDir) || other.srcDir == srcDir) &&
            const DeepCollectionEquality()
                .equals(other._renameObjects, _renameObjects));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, srcDir, const DeepCollectionEquality().hash(_renameObjects));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyFsRenameParamImplCopyWith<_$MyFsRenameParamImpl> get copyWith =>
      __$$MyFsRenameParamImplCopyWithImpl<_$MyFsRenameParamImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyFsRenameParamImplToJson(
      this,
    );
  }
}

abstract class _MyFsRenameParam extends MyFsRenameParam {
  const factory _MyFsRenameParam(
          {@JsonKey(name: 'src_dir') required final String srcDir,
          @JsonKey(name: 'rename_objects')
          required final List<RenameObjects> renameObjects}) =
      _$MyFsRenameParamImpl;
  const _MyFsRenameParam._() : super._();

  factory _MyFsRenameParam.fromJson(Map<String, dynamic> json) =
      _$MyFsRenameParamImpl.fromJson;

  @override
  @JsonKey(name: 'src_dir')
  String get srcDir;
  @override
  @JsonKey(name: 'rename_objects')
  List<RenameObjects> get renameObjects;
  @override
  @JsonKey(ignore: true)
  _$$MyFsRenameParamImplCopyWith<_$MyFsRenameParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RenameObjects _$RenameObjectsFromJson(Map<String, dynamic> json) {
  return _RenameObjects.fromJson(json);
}

/// @nodoc
mixin _$RenameObjects {
  @JsonKey(name: 'src_name')
  String get srcName => throw _privateConstructorUsedError;
  @JsonKey(name: 'new_name')
  String get newName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RenameObjectsCopyWith<RenameObjects> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RenameObjectsCopyWith<$Res> {
  factory $RenameObjectsCopyWith(
          RenameObjects value, $Res Function(RenameObjects) then) =
      _$RenameObjectsCopyWithImpl<$Res, RenameObjects>;
  @useResult
  $Res call(
      {@JsonKey(name: 'src_name') String srcName,
      @JsonKey(name: 'new_name') String newName});
}

/// @nodoc
class _$RenameObjectsCopyWithImpl<$Res, $Val extends RenameObjects>
    implements $RenameObjectsCopyWith<$Res> {
  _$RenameObjectsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? srcName = null,
    Object? newName = null,
  }) {
    return _then(_value.copyWith(
      srcName: null == srcName
          ? _value.srcName
          : srcName // ignore: cast_nullable_to_non_nullable
              as String,
      newName: null == newName
          ? _value.newName
          : newName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RenameObjectsImplCopyWith<$Res>
    implements $RenameObjectsCopyWith<$Res> {
  factory _$$RenameObjectsImplCopyWith(
          _$RenameObjectsImpl value, $Res Function(_$RenameObjectsImpl) then) =
      __$$RenameObjectsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'src_name') String srcName,
      @JsonKey(name: 'new_name') String newName});
}

/// @nodoc
class __$$RenameObjectsImplCopyWithImpl<$Res>
    extends _$RenameObjectsCopyWithImpl<$Res, _$RenameObjectsImpl>
    implements _$$RenameObjectsImplCopyWith<$Res> {
  __$$RenameObjectsImplCopyWithImpl(
      _$RenameObjectsImpl _value, $Res Function(_$RenameObjectsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? srcName = null,
    Object? newName = null,
  }) {
    return _then(_$RenameObjectsImpl(
      srcName: null == srcName
          ? _value.srcName
          : srcName // ignore: cast_nullable_to_non_nullable
              as String,
      newName: null == newName
          ? _value.newName
          : newName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RenameObjectsImpl extends _RenameObjects {
  const _$RenameObjectsImpl(
      {@JsonKey(name: 'src_name') this.srcName = '',
      @JsonKey(name: 'new_name') this.newName = ''})
      : super._();

  factory _$RenameObjectsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RenameObjectsImplFromJson(json);

  @override
  @JsonKey(name: 'src_name')
  final String srcName;
  @override
  @JsonKey(name: 'new_name')
  final String newName;

  @override
  String toString() {
    return 'RenameObjects(srcName: $srcName, newName: $newName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RenameObjectsImpl &&
            (identical(other.srcName, srcName) || other.srcName == srcName) &&
            (identical(other.newName, newName) || other.newName == newName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, srcName, newName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RenameObjectsImplCopyWith<_$RenameObjectsImpl> get copyWith =>
      __$$RenameObjectsImplCopyWithImpl<_$RenameObjectsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RenameObjectsImplToJson(
      this,
    );
  }
}

abstract class _RenameObjects extends RenameObjects {
  const factory _RenameObjects(
      {@JsonKey(name: 'src_name') final String srcName,
      @JsonKey(name: 'new_name') final String newName}) = _$RenameObjectsImpl;
  const _RenameObjects._() : super._();

  factory _RenameObjects.fromJson(Map<String, dynamic> json) =
      _$RenameObjectsImpl.fromJson;

  @override
  @JsonKey(name: 'src_name')
  String get srcName;
  @override
  @JsonKey(name: 'new_name')
  String get newName;
  @override
  @JsonKey(ignore: true)
  _$$RenameObjectsImplCopyWith<_$RenameObjectsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
