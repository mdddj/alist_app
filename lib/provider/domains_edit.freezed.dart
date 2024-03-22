// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'domains_edit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DomainEditModel _$DomainEditModelFromJson(Map<String, dynamic> json) {
  return _DomainEditModel.fromJson(json);
}

/// @nodoc
mixin _$DomainEditModel {
  @JsonKey(name: 'isEditorMode')
  bool get isEditorMode => throw _privateConstructorUsedError;
  IList<int> get selectIdList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DomainEditModelCopyWith<DomainEditModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DomainEditModelCopyWith<$Res> {
  factory $DomainEditModelCopyWith(
          DomainEditModel value, $Res Function(DomainEditModel) then) =
      _$DomainEditModelCopyWithImpl<$Res, DomainEditModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'isEditorMode') bool isEditorMode,
      IList<int> selectIdList});
}

/// @nodoc
class _$DomainEditModelCopyWithImpl<$Res, $Val extends DomainEditModel>
    implements $DomainEditModelCopyWith<$Res> {
  _$DomainEditModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEditorMode = null,
    Object? selectIdList = null,
  }) {
    return _then(_value.copyWith(
      isEditorMode: null == isEditorMode
          ? _value.isEditorMode
          : isEditorMode // ignore: cast_nullable_to_non_nullable
              as bool,
      selectIdList: null == selectIdList
          ? _value.selectIdList
          : selectIdList // ignore: cast_nullable_to_non_nullable
              as IList<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DomainEditModelImplCopyWith<$Res>
    implements $DomainEditModelCopyWith<$Res> {
  factory _$$DomainEditModelImplCopyWith(_$DomainEditModelImpl value,
          $Res Function(_$DomainEditModelImpl) then) =
      __$$DomainEditModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'isEditorMode') bool isEditorMode,
      IList<int> selectIdList});
}

/// @nodoc
class __$$DomainEditModelImplCopyWithImpl<$Res>
    extends _$DomainEditModelCopyWithImpl<$Res, _$DomainEditModelImpl>
    implements _$$DomainEditModelImplCopyWith<$Res> {
  __$$DomainEditModelImplCopyWithImpl(
      _$DomainEditModelImpl _value, $Res Function(_$DomainEditModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEditorMode = null,
    Object? selectIdList = null,
  }) {
    return _then(_$DomainEditModelImpl(
      isEditorMode: null == isEditorMode
          ? _value.isEditorMode
          : isEditorMode // ignore: cast_nullable_to_non_nullable
              as bool,
      selectIdList: null == selectIdList
          ? _value.selectIdList
          : selectIdList // ignore: cast_nullable_to_non_nullable
              as IList<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DomainEditModelImpl extends _DomainEditModel {
  const _$DomainEditModelImpl(
      {@JsonKey(name: 'isEditorMode') this.isEditorMode = false,
      this.selectIdList = const IListConst([])})
      : super._();

  factory _$DomainEditModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DomainEditModelImplFromJson(json);

  @override
  @JsonKey(name: 'isEditorMode')
  final bool isEditorMode;
  @override
  @JsonKey()
  final IList<int> selectIdList;

  @override
  String toString() {
    return 'DomainEditModel(isEditorMode: $isEditorMode, selectIdList: $selectIdList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DomainEditModelImpl &&
            (identical(other.isEditorMode, isEditorMode) ||
                other.isEditorMode == isEditorMode) &&
            const DeepCollectionEquality()
                .equals(other.selectIdList, selectIdList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isEditorMode,
      const DeepCollectionEquality().hash(selectIdList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DomainEditModelImplCopyWith<_$DomainEditModelImpl> get copyWith =>
      __$$DomainEditModelImplCopyWithImpl<_$DomainEditModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DomainEditModelImplToJson(
      this,
    );
  }
}

abstract class _DomainEditModel extends DomainEditModel {
  const factory _DomainEditModel(
      {@JsonKey(name: 'isEditorMode') final bool isEditorMode,
      final IList<int> selectIdList}) = _$DomainEditModelImpl;
  const _DomainEditModel._() : super._();

  factory _DomainEditModel.fromJson(Map<String, dynamic> json) =
      _$DomainEditModelImpl.fromJson;

  @override
  @JsonKey(name: 'isEditorMode')
  bool get isEditorMode;
  @override
  IList<int> get selectIdList;
  @override
  @JsonKey(ignore: true)
  _$$DomainEditModelImplCopyWith<_$DomainEditModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
