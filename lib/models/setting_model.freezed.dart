// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setting_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SettingModel _$SettingModelFromJson(Map<String, dynamic> json) {
  return _SettingModel.fromJson(json);
}

/// @nodoc
mixin _$SettingModel {
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @igFreezedJson
  Widget get child => throw _privateConstructorUsedError;
  String? get subTitle => throw _privateConstructorUsedError;
  int get sort => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingModelCopyWith<SettingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingModelCopyWith<$Res> {
  factory $SettingModelCopyWith(
          SettingModel value, $Res Function(SettingModel) then) =
      _$SettingModelCopyWithImpl<$Res, SettingModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @igFreezedJson Widget child,
      String? subTitle,
      int sort});
}

/// @nodoc
class _$SettingModelCopyWithImpl<$Res, $Val extends SettingModel>
    implements $SettingModelCopyWith<$Res> {
  _$SettingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? child = null,
    Object? subTitle = freezed,
    Object? sort = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      child: null == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as Widget,
      subTitle: freezed == subTitle
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingModelImplCopyWith<$Res>
    implements $SettingModelCopyWith<$Res> {
  factory _$$SettingModelImplCopyWith(
          _$SettingModelImpl value, $Res Function(_$SettingModelImpl) then) =
      __$$SettingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @igFreezedJson Widget child,
      String? subTitle,
      int sort});
}

/// @nodoc
class __$$SettingModelImplCopyWithImpl<$Res>
    extends _$SettingModelCopyWithImpl<$Res, _$SettingModelImpl>
    implements _$$SettingModelImplCopyWith<$Res> {
  __$$SettingModelImplCopyWithImpl(
      _$SettingModelImpl _value, $Res Function(_$SettingModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? child = null,
    Object? subTitle = freezed,
    Object? sort = null,
  }) {
    return _then(_$SettingModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      child: null == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as Widget,
      subTitle: freezed == subTitle
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SettingModelImpl extends _SettingModel {
  const _$SettingModelImpl(
      {@JsonKey(name: 'title') this.title = '',
      @igFreezedJson this.child = const SizedBox(),
      this.subTitle,
      this.sort = 0})
      : super._();

  factory _$SettingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SettingModelImplFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @igFreezedJson
  final Widget child;
  @override
  final String? subTitle;
  @override
  @JsonKey()
  final int sort;

  @override
  String toString() {
    return 'SettingModel(title: $title, child: $child, subTitle: $subTitle, sort: $sort)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.child, child) || other.child == child) &&
            (identical(other.subTitle, subTitle) ||
                other.subTitle == subTitle) &&
            (identical(other.sort, sort) || other.sort == sort));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, child, subTitle, sort);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingModelImplCopyWith<_$SettingModelImpl> get copyWith =>
      __$$SettingModelImplCopyWithImpl<_$SettingModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SettingModelImplToJson(
      this,
    );
  }
}

abstract class _SettingModel extends SettingModel {
  const factory _SettingModel(
      {@JsonKey(name: 'title') final String title,
      @igFreezedJson final Widget child,
      final String? subTitle,
      final int sort}) = _$SettingModelImpl;
  const _SettingModel._() : super._();

  factory _SettingModel.fromJson(Map<String, dynamic> json) =
      _$SettingModelImpl.fromJson;

  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @igFreezedJson
  Widget get child;
  @override
  String? get subTitle;
  @override
  int get sort;
  @override
  @JsonKey(ignore: true)
  _$$SettingModelImplCopyWith<_$SettingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
