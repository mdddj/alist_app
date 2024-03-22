// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'select_folder.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SelectFolderModel {
  FsModel? get selectModel => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SelectFolderModelCopyWith<SelectFolderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectFolderModelCopyWith<$Res> {
  factory $SelectFolderModelCopyWith(
          SelectFolderModel value, $Res Function(SelectFolderModel) then) =
      _$SelectFolderModelCopyWithImpl<$Res, SelectFolderModel>;
  @useResult
  $Res call({FsModel? selectModel, String? path});
}

/// @nodoc
class _$SelectFolderModelCopyWithImpl<$Res, $Val extends SelectFolderModel>
    implements $SelectFolderModelCopyWith<$Res> {
  _$SelectFolderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectModel = freezed,
    Object? path = freezed,
  }) {
    return _then(_value.copyWith(
      selectModel: freezed == selectModel
          ? _value.selectModel
          : selectModel // ignore: cast_nullable_to_non_nullable
              as FsModel?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SelectFolderModelImplCopyWith<$Res>
    implements $SelectFolderModelCopyWith<$Res> {
  factory _$$SelectFolderModelImplCopyWith(_$SelectFolderModelImpl value,
          $Res Function(_$SelectFolderModelImpl) then) =
      __$$SelectFolderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FsModel? selectModel, String? path});
}

/// @nodoc
class __$$SelectFolderModelImplCopyWithImpl<$Res>
    extends _$SelectFolderModelCopyWithImpl<$Res, _$SelectFolderModelImpl>
    implements _$$SelectFolderModelImplCopyWith<$Res> {
  __$$SelectFolderModelImplCopyWithImpl(_$SelectFolderModelImpl _value,
      $Res Function(_$SelectFolderModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectModel = freezed,
    Object? path = freezed,
  }) {
    return _then(_$SelectFolderModelImpl(
      selectModel: freezed == selectModel
          ? _value.selectModel
          : selectModel // ignore: cast_nullable_to_non_nullable
              as FsModel?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SelectFolderModelImpl extends _SelectFolderModel {
  const _$SelectFolderModelImpl({this.selectModel, this.path}) : super._();

  @override
  final FsModel? selectModel;
  @override
  final String? path;

  @override
  String toString() {
    return 'SelectFolderModel(selectModel: $selectModel, path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectFolderModelImpl &&
            (identical(other.selectModel, selectModel) ||
                other.selectModel == selectModel) &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectModel, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectFolderModelImplCopyWith<_$SelectFolderModelImpl> get copyWith =>
      __$$SelectFolderModelImplCopyWithImpl<_$SelectFolderModelImpl>(
          this, _$identity);
}

abstract class _SelectFolderModel extends SelectFolderModel {
  const factory _SelectFolderModel(
      {final FsModel? selectModel,
      final String? path}) = _$SelectFolderModelImpl;
  const _SelectFolderModel._() : super._();

  @override
  FsModel? get selectModel;
  @override
  String? get path;
  @override
  @JsonKey(ignore: true)
  _$$SelectFolderModelImplCopyWith<_$SelectFolderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
