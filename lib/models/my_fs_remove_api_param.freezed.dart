// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_fs_remove_api_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MyFsRemoveApiParam _$MyFsRemoveApiParamFromJson(Map<String, dynamic> json) {
  return _MyFsRemoveApiParam.fromJson(json);
}

/// @nodoc
mixin _$MyFsRemoveApiParam {
  @JsonKey(name: 'names')
  List<String> get names => throw _privateConstructorUsedError;
  @JsonKey(name: 'dir')
  String get dir => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyFsRemoveApiParamCopyWith<MyFsRemoveApiParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyFsRemoveApiParamCopyWith<$Res> {
  factory $MyFsRemoveApiParamCopyWith(
          MyFsRemoveApiParam value, $Res Function(MyFsRemoveApiParam) then) =
      _$MyFsRemoveApiParamCopyWithImpl<$Res, MyFsRemoveApiParam>;
  @useResult
  $Res call(
      {@JsonKey(name: 'names') List<String> names,
      @JsonKey(name: 'dir') String dir});
}

/// @nodoc
class _$MyFsRemoveApiParamCopyWithImpl<$Res, $Val extends MyFsRemoveApiParam>
    implements $MyFsRemoveApiParamCopyWith<$Res> {
  _$MyFsRemoveApiParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? names = null,
    Object? dir = null,
  }) {
    return _then(_value.copyWith(
      names: null == names
          ? _value.names
          : names // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dir: null == dir
          ? _value.dir
          : dir // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyFsRemoveApiParamImplCopyWith<$Res>
    implements $MyFsRemoveApiParamCopyWith<$Res> {
  factory _$$MyFsRemoveApiParamImplCopyWith(_$MyFsRemoveApiParamImpl value,
          $Res Function(_$MyFsRemoveApiParamImpl) then) =
      __$$MyFsRemoveApiParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'names') List<String> names,
      @JsonKey(name: 'dir') String dir});
}

/// @nodoc
class __$$MyFsRemoveApiParamImplCopyWithImpl<$Res>
    extends _$MyFsRemoveApiParamCopyWithImpl<$Res, _$MyFsRemoveApiParamImpl>
    implements _$$MyFsRemoveApiParamImplCopyWith<$Res> {
  __$$MyFsRemoveApiParamImplCopyWithImpl(_$MyFsRemoveApiParamImpl _value,
      $Res Function(_$MyFsRemoveApiParamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? names = null,
    Object? dir = null,
  }) {
    return _then(_$MyFsRemoveApiParamImpl(
      names: null == names
          ? _value._names
          : names // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dir: null == dir
          ? _value.dir
          : dir // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyFsRemoveApiParamImpl extends _MyFsRemoveApiParam {
  const _$MyFsRemoveApiParamImpl(
      {@JsonKey(name: 'names') final List<String> names = const [],
      @JsonKey(name: 'dir') this.dir = ''})
      : _names = names,
        super._();

  factory _$MyFsRemoveApiParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyFsRemoveApiParamImplFromJson(json);

  final List<String> _names;
  @override
  @JsonKey(name: 'names')
  List<String> get names {
    if (_names is EqualUnmodifiableListView) return _names;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_names);
  }

  @override
  @JsonKey(name: 'dir')
  final String dir;

  @override
  String toString() {
    return 'MyFsRemoveApiParam(names: $names, dir: $dir)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyFsRemoveApiParamImpl &&
            const DeepCollectionEquality().equals(other._names, _names) &&
            (identical(other.dir, dir) || other.dir == dir));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_names), dir);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyFsRemoveApiParamImplCopyWith<_$MyFsRemoveApiParamImpl> get copyWith =>
      __$$MyFsRemoveApiParamImplCopyWithImpl<_$MyFsRemoveApiParamImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyFsRemoveApiParamImplToJson(
      this,
    );
  }
}

abstract class _MyFsRemoveApiParam extends MyFsRemoveApiParam {
  const factory _MyFsRemoveApiParam(
      {@JsonKey(name: 'names') final List<String> names,
      @JsonKey(name: 'dir') final String dir}) = _$MyFsRemoveApiParamImpl;
  const _MyFsRemoveApiParam._() : super._();

  factory _MyFsRemoveApiParam.fromJson(Map<String, dynamic> json) =
      _$MyFsRemoveApiParamImpl.fromJson;

  @override
  @JsonKey(name: 'names')
  List<String> get names;
  @override
  @JsonKey(name: 'dir')
  String get dir;
  @override
  @JsonKey(ignore: true)
  _$$MyFsRemoveApiParamImplCopyWith<_$MyFsRemoveApiParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
