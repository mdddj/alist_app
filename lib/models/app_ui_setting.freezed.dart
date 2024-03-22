// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_ui_setting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppUiSetting _$AppUiSettingFromJson(Map<String, dynamic> json) {
  return _AppUiSetting.fromJson(json);
}

/// @nodoc
mixin _$AppUiSetting {
//左侧菜单的宽度
  @JsonKey(name: 'leftMenuWidth')
  double get leftMenuWidth => throw _privateConstructorUsedError; //是否在拖拽中
  bool get isDragging => throw _privateConstructorUsedError; //是否隐藏左侧抽屉
  bool get hideLeftMenu => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppUiSettingCopyWith<AppUiSetting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUiSettingCopyWith<$Res> {
  factory $AppUiSettingCopyWith(
          AppUiSetting value, $Res Function(AppUiSetting) then) =
      _$AppUiSettingCopyWithImpl<$Res, AppUiSetting>;
  @useResult
  $Res call(
      {@JsonKey(name: 'leftMenuWidth') double leftMenuWidth,
      bool isDragging,
      bool hideLeftMenu});
}

/// @nodoc
class _$AppUiSettingCopyWithImpl<$Res, $Val extends AppUiSetting>
    implements $AppUiSettingCopyWith<$Res> {
  _$AppUiSettingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leftMenuWidth = null,
    Object? isDragging = null,
    Object? hideLeftMenu = null,
  }) {
    return _then(_value.copyWith(
      leftMenuWidth: null == leftMenuWidth
          ? _value.leftMenuWidth
          : leftMenuWidth // ignore: cast_nullable_to_non_nullable
              as double,
      isDragging: null == isDragging
          ? _value.isDragging
          : isDragging // ignore: cast_nullable_to_non_nullable
              as bool,
      hideLeftMenu: null == hideLeftMenu
          ? _value.hideLeftMenu
          : hideLeftMenu // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppUiSettingImplCopyWith<$Res>
    implements $AppUiSettingCopyWith<$Res> {
  factory _$$AppUiSettingImplCopyWith(
          _$AppUiSettingImpl value, $Res Function(_$AppUiSettingImpl) then) =
      __$$AppUiSettingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'leftMenuWidth') double leftMenuWidth,
      bool isDragging,
      bool hideLeftMenu});
}

/// @nodoc
class __$$AppUiSettingImplCopyWithImpl<$Res>
    extends _$AppUiSettingCopyWithImpl<$Res, _$AppUiSettingImpl>
    implements _$$AppUiSettingImplCopyWith<$Res> {
  __$$AppUiSettingImplCopyWithImpl(
      _$AppUiSettingImpl _value, $Res Function(_$AppUiSettingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leftMenuWidth = null,
    Object? isDragging = null,
    Object? hideLeftMenu = null,
  }) {
    return _then(_$AppUiSettingImpl(
      leftMenuWidth: null == leftMenuWidth
          ? _value.leftMenuWidth
          : leftMenuWidth // ignore: cast_nullable_to_non_nullable
              as double,
      isDragging: null == isDragging
          ? _value.isDragging
          : isDragging // ignore: cast_nullable_to_non_nullable
              as bool,
      hideLeftMenu: null == hideLeftMenu
          ? _value.hideLeftMenu
          : hideLeftMenu // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppUiSettingImpl extends _AppUiSetting {
  const _$AppUiSettingImpl(
      {@JsonKey(name: 'leftMenuWidth') this.leftMenuWidth = 200,
      this.isDragging = false,
      this.hideLeftMenu = false})
      : super._();

  factory _$AppUiSettingImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppUiSettingImplFromJson(json);

//左侧菜单的宽度
  @override
  @JsonKey(name: 'leftMenuWidth')
  final double leftMenuWidth;
//是否在拖拽中
  @override
  @JsonKey()
  final bool isDragging;
//是否隐藏左侧抽屉
  @override
  @JsonKey()
  final bool hideLeftMenu;

  @override
  String toString() {
    return 'AppUiSetting(leftMenuWidth: $leftMenuWidth, isDragging: $isDragging, hideLeftMenu: $hideLeftMenu)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppUiSettingImpl &&
            (identical(other.leftMenuWidth, leftMenuWidth) ||
                other.leftMenuWidth == leftMenuWidth) &&
            (identical(other.isDragging, isDragging) ||
                other.isDragging == isDragging) &&
            (identical(other.hideLeftMenu, hideLeftMenu) ||
                other.hideLeftMenu == hideLeftMenu));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, leftMenuWidth, isDragging, hideLeftMenu);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppUiSettingImplCopyWith<_$AppUiSettingImpl> get copyWith =>
      __$$AppUiSettingImplCopyWithImpl<_$AppUiSettingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppUiSettingImplToJson(
      this,
    );
  }
}

abstract class _AppUiSetting extends AppUiSetting {
  const factory _AppUiSetting(
      {@JsonKey(name: 'leftMenuWidth') final double leftMenuWidth,
      final bool isDragging,
      final bool hideLeftMenu}) = _$AppUiSettingImpl;
  const _AppUiSetting._() : super._();

  factory _AppUiSetting.fromJson(Map<String, dynamic> json) =
      _$AppUiSettingImpl.fromJson;

  @override //左侧菜单的宽度
  @JsonKey(name: 'leftMenuWidth')
  double get leftMenuWidth;
  @override //是否在拖拽中
  bool get isDragging;
  @override //是否隐藏左侧抽屉
  bool get hideLeftMenu;
  @override
  @JsonKey(ignore: true)
  _$$AppUiSettingImplCopyWith<_$AppUiSettingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
