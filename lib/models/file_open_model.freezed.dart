// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file_open_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FileOptionModel {
  FileAction get action => throw _privateConstructorUsedError;
  FsModel get fsModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FileOptionModelCopyWith<FileOptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileOptionModelCopyWith<$Res> {
  factory $FileOptionModelCopyWith(
          FileOptionModel value, $Res Function(FileOptionModel) then) =
      _$FileOptionModelCopyWithImpl<$Res, FileOptionModel>;
  @useResult
  $Res call({FileAction action, FsModel fsModel});
}

/// @nodoc
class _$FileOptionModelCopyWithImpl<$Res, $Val extends FileOptionModel>
    implements $FileOptionModelCopyWith<$Res> {
  _$FileOptionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? fsModel = null,
  }) {
    return _then(_value.copyWith(
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as FileAction,
      fsModel: null == fsModel
          ? _value.fsModel
          : fsModel // ignore: cast_nullable_to_non_nullable
              as FsModel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FileOptionModelImplCopyWith<$Res>
    implements $FileOptionModelCopyWith<$Res> {
  factory _$$FileOptionModelImplCopyWith(_$FileOptionModelImpl value,
          $Res Function(_$FileOptionModelImpl) then) =
      __$$FileOptionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FileAction action, FsModel fsModel});
}

/// @nodoc
class __$$FileOptionModelImplCopyWithImpl<$Res>
    extends _$FileOptionModelCopyWithImpl<$Res, _$FileOptionModelImpl>
    implements _$$FileOptionModelImplCopyWith<$Res> {
  __$$FileOptionModelImplCopyWithImpl(
      _$FileOptionModelImpl _value, $Res Function(_$FileOptionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? fsModel = null,
  }) {
    return _then(_$FileOptionModelImpl(
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as FileAction,
      fsModel: null == fsModel
          ? _value.fsModel
          : fsModel // ignore: cast_nullable_to_non_nullable
              as FsModel,
    ));
  }
}

/// @nodoc

class _$FileOptionModelImpl implements _FileOptionModel {
  const _$FileOptionModelImpl({required this.action, required this.fsModel});

  @override
  final FileAction action;
  @override
  final FsModel fsModel;

  @override
  String toString() {
    return 'FileOptionModel(action: $action, fsModel: $fsModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileOptionModelImpl &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.fsModel, fsModel) || other.fsModel == fsModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, action, fsModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FileOptionModelImplCopyWith<_$FileOptionModelImpl> get copyWith =>
      __$$FileOptionModelImplCopyWithImpl<_$FileOptionModelImpl>(
          this, _$identity);
}

abstract class _FileOptionModel implements FileOptionModel {
  const factory _FileOptionModel(
      {required final FileAction action,
      required final FsModel fsModel}) = _$FileOptionModelImpl;

  @override
  FileAction get action;
  @override
  FsModel get fsModel;
  @override
  @JsonKey(ignore: true)
  _$$FileOptionModelImplCopyWith<_$FileOptionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
