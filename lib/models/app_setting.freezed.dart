// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_setting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppSetting _$AppSettingFromJson(Map<String, dynamic> json) {
  return _AppSetting.fromJson(json);
}

/// @nodoc
mixin _$AppSetting {
  @HiveField(0)
  @JsonKey(name: 'font')
  String get font => throw _privateConstructorUsedError;
  @HiveField(1, defaultValue: '')
  @JsonKey(name: 'defaultDownloadPath')
  String get defaultDownloadPath => throw _privateConstructorUsedError;
  @HiveField(2, defaultValue: false)
  @JsonKey(name: 'isUseDefaultDownloadPath')
  bool get isUseDefaultDownloadPath => throw _privateConstructorUsedError;
  @HiveField(3, defaultValue: 0.88)
  @JsonKey(name: 'fontZoom')
  double get fontZoom => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppSettingCopyWith<AppSetting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSettingCopyWith<$Res> {
  factory $AppSettingCopyWith(
          AppSetting value, $Res Function(AppSetting) then) =
      _$AppSettingCopyWithImpl<$Res, AppSetting>;
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'font') String font,
      @HiveField(1, defaultValue: '')
      @JsonKey(name: 'defaultDownloadPath')
      String defaultDownloadPath,
      @HiveField(2, defaultValue: false)
      @JsonKey(name: 'isUseDefaultDownloadPath')
      bool isUseDefaultDownloadPath,
      @HiveField(3, defaultValue: 0.88)
      @JsonKey(name: 'fontZoom')
      double fontZoom});
}

/// @nodoc
class _$AppSettingCopyWithImpl<$Res, $Val extends AppSetting>
    implements $AppSettingCopyWith<$Res> {
  _$AppSettingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? font = null,
    Object? defaultDownloadPath = null,
    Object? isUseDefaultDownloadPath = null,
    Object? fontZoom = null,
  }) {
    return _then(_value.copyWith(
      font: null == font
          ? _value.font
          : font // ignore: cast_nullable_to_non_nullable
              as String,
      defaultDownloadPath: null == defaultDownloadPath
          ? _value.defaultDownloadPath
          : defaultDownloadPath // ignore: cast_nullable_to_non_nullable
              as String,
      isUseDefaultDownloadPath: null == isUseDefaultDownloadPath
          ? _value.isUseDefaultDownloadPath
          : isUseDefaultDownloadPath // ignore: cast_nullable_to_non_nullable
              as bool,
      fontZoom: null == fontZoom
          ? _value.fontZoom
          : fontZoom // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppSettingImplCopyWith<$Res>
    implements $AppSettingCopyWith<$Res> {
  factory _$$AppSettingImplCopyWith(
          _$AppSettingImpl value, $Res Function(_$AppSettingImpl) then) =
      __$$AppSettingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'font') String font,
      @HiveField(1, defaultValue: '')
      @JsonKey(name: 'defaultDownloadPath')
      String defaultDownloadPath,
      @HiveField(2, defaultValue: false)
      @JsonKey(name: 'isUseDefaultDownloadPath')
      bool isUseDefaultDownloadPath,
      @HiveField(3, defaultValue: 0.88)
      @JsonKey(name: 'fontZoom')
      double fontZoom});
}

/// @nodoc
class __$$AppSettingImplCopyWithImpl<$Res>
    extends _$AppSettingCopyWithImpl<$Res, _$AppSettingImpl>
    implements _$$AppSettingImplCopyWith<$Res> {
  __$$AppSettingImplCopyWithImpl(
      _$AppSettingImpl _value, $Res Function(_$AppSettingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? font = null,
    Object? defaultDownloadPath = null,
    Object? isUseDefaultDownloadPath = null,
    Object? fontZoom = null,
  }) {
    return _then(_$AppSettingImpl(
      font: null == font
          ? _value.font
          : font // ignore: cast_nullable_to_non_nullable
              as String,
      defaultDownloadPath: null == defaultDownloadPath
          ? _value.defaultDownloadPath
          : defaultDownloadPath // ignore: cast_nullable_to_non_nullable
              as String,
      isUseDefaultDownloadPath: null == isUseDefaultDownloadPath
          ? _value.isUseDefaultDownloadPath
          : isUseDefaultDownloadPath // ignore: cast_nullable_to_non_nullable
              as bool,
      fontZoom: null == fontZoom
          ? _value.fontZoom
          : fontZoom // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppSettingImpl extends _AppSetting {
  const _$AppSettingImpl(
      {@HiveField(0) @JsonKey(name: 'font') this.font = '',
      @HiveField(1, defaultValue: '')
      @JsonKey(name: 'defaultDownloadPath')
      this.defaultDownloadPath = '',
      @HiveField(2, defaultValue: false)
      @JsonKey(name: 'isUseDefaultDownloadPath')
      this.isUseDefaultDownloadPath = false,
      @HiveField(3, defaultValue: 0.88)
      @JsonKey(name: 'fontZoom')
      this.fontZoom = 0.88})
      : super._();

  factory _$AppSettingImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppSettingImplFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'font')
  final String font;
  @override
  @HiveField(1, defaultValue: '')
  @JsonKey(name: 'defaultDownloadPath')
  final String defaultDownloadPath;
  @override
  @HiveField(2, defaultValue: false)
  @JsonKey(name: 'isUseDefaultDownloadPath')
  final bool isUseDefaultDownloadPath;
  @override
  @HiveField(3, defaultValue: 0.88)
  @JsonKey(name: 'fontZoom')
  final double fontZoom;

  @override
  String toString() {
    return 'AppSetting(font: $font, defaultDownloadPath: $defaultDownloadPath, isUseDefaultDownloadPath: $isUseDefaultDownloadPath, fontZoom: $fontZoom)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppSettingImpl &&
            (identical(other.font, font) || other.font == font) &&
            (identical(other.defaultDownloadPath, defaultDownloadPath) ||
                other.defaultDownloadPath == defaultDownloadPath) &&
            (identical(
                    other.isUseDefaultDownloadPath, isUseDefaultDownloadPath) ||
                other.isUseDefaultDownloadPath == isUseDefaultDownloadPath) &&
            (identical(other.fontZoom, fontZoom) ||
                other.fontZoom == fontZoom));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, font, defaultDownloadPath,
      isUseDefaultDownloadPath, fontZoom);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppSettingImplCopyWith<_$AppSettingImpl> get copyWith =>
      __$$AppSettingImplCopyWithImpl<_$AppSettingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppSettingImplToJson(
      this,
    );
  }
}

abstract class _AppSetting extends AppSetting {
  const factory _AppSetting(
      {@HiveField(0) @JsonKey(name: 'font') final String font,
      @HiveField(1, defaultValue: '')
      @JsonKey(name: 'defaultDownloadPath')
      final String defaultDownloadPath,
      @HiveField(2, defaultValue: false)
      @JsonKey(name: 'isUseDefaultDownloadPath')
      final bool isUseDefaultDownloadPath,
      @HiveField(3, defaultValue: 0.88)
      @JsonKey(name: 'fontZoom')
      final double fontZoom}) = _$AppSettingImpl;
  const _AppSetting._() : super._();

  factory _AppSetting.fromJson(Map<String, dynamic> json) =
      _$AppSettingImpl.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'font')
  String get font;
  @override
  @HiveField(1, defaultValue: '')
  @JsonKey(name: 'defaultDownloadPath')
  String get defaultDownloadPath;
  @override
  @HiveField(2, defaultValue: false)
  @JsonKey(name: 'isUseDefaultDownloadPath')
  bool get isUseDefaultDownloadPath;
  @override
  @HiveField(3, defaultValue: 0.88)
  @JsonKey(name: 'fontZoom')
  double get fontZoom;
  @override
  @JsonKey(ignore: true)
  _$$AppSettingImplCopyWith<_$AppSettingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
