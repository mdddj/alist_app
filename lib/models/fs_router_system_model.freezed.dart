// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fs_router_system_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FsRouterSystemModel _$FsRouterSystemModelFromJson(Map<String, dynamic> json) {
  return _FsRouterSystemModel.fromJson(json);
}

/// @nodoc
mixin _$FsRouterSystemModel {
  ///当前文件路由
  IList<FsModel> get router => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FsRouterSystemModelCopyWith<FsRouterSystemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FsRouterSystemModelCopyWith<$Res> {
  factory $FsRouterSystemModelCopyWith(
          FsRouterSystemModel value, $Res Function(FsRouterSystemModel) then) =
      _$FsRouterSystemModelCopyWithImpl<$Res, FsRouterSystemModel>;
  @useResult
  $Res call({IList<FsModel> router});
}

/// @nodoc
class _$FsRouterSystemModelCopyWithImpl<$Res, $Val extends FsRouterSystemModel>
    implements $FsRouterSystemModelCopyWith<$Res> {
  _$FsRouterSystemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? router = null,
  }) {
    return _then(_value.copyWith(
      router: null == router
          ? _value.router
          : router // ignore: cast_nullable_to_non_nullable
              as IList<FsModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FsRouterSystemModelImplCopyWith<$Res>
    implements $FsRouterSystemModelCopyWith<$Res> {
  factory _$$FsRouterSystemModelImplCopyWith(_$FsRouterSystemModelImpl value,
          $Res Function(_$FsRouterSystemModelImpl) then) =
      __$$FsRouterSystemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({IList<FsModel> router});
}

/// @nodoc
class __$$FsRouterSystemModelImplCopyWithImpl<$Res>
    extends _$FsRouterSystemModelCopyWithImpl<$Res, _$FsRouterSystemModelImpl>
    implements _$$FsRouterSystemModelImplCopyWith<$Res> {
  __$$FsRouterSystemModelImplCopyWithImpl(_$FsRouterSystemModelImpl _value,
      $Res Function(_$FsRouterSystemModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? router = null,
  }) {
    return _then(_$FsRouterSystemModelImpl(
      router: null == router
          ? _value.router
          : router // ignore: cast_nullable_to_non_nullable
              as IList<FsModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FsRouterSystemModelImpl extends _FsRouterSystemModel {
  const _$FsRouterSystemModelImpl({this.router = const IListConst([])})
      : super._();

  factory _$FsRouterSystemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FsRouterSystemModelImplFromJson(json);

  ///当前文件路由
  @override
  @JsonKey()
  final IList<FsModel> router;

  @override
  String toString() {
    return 'FsRouterSystemModel(router: $router)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FsRouterSystemModelImpl &&
            const DeepCollectionEquality().equals(other.router, router));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(router));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FsRouterSystemModelImplCopyWith<_$FsRouterSystemModelImpl> get copyWith =>
      __$$FsRouterSystemModelImplCopyWithImpl<_$FsRouterSystemModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FsRouterSystemModelImplToJson(
      this,
    );
  }
}

abstract class _FsRouterSystemModel extends FsRouterSystemModel {
  const factory _FsRouterSystemModel({final IList<FsModel> router}) =
      _$FsRouterSystemModelImpl;
  const _FsRouterSystemModel._() : super._();

  factory _FsRouterSystemModel.fromJson(Map<String, dynamic> json) =
      _$FsRouterSystemModelImpl.fromJson;

  @override

  ///当前文件路由
  IList<FsModel> get router;
  @override
  @JsonKey(ignore: true)
  _$$FsRouterSystemModelImplCopyWith<_$FsRouterSystemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
