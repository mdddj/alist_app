// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_ui_setting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppUiSettingImpl _$$AppUiSettingImplFromJson(Map<String, dynamic> json) =>
    _$AppUiSettingImpl(
      leftMenuWidth: (json['leftMenuWidth'] as num?)?.toDouble() ?? 200,
      isDragging: json['isDragging'] as bool? ?? false,
      hideLeftMenu: json['hideLeftMenu'] as bool? ?? false,
    );

Map<String, dynamic> _$$AppUiSettingImplToJson(_$AppUiSettingImpl instance) =>
    <String, dynamic>{
      'leftMenuWidth': instance.leftMenuWidth,
      'isDragging': instance.isDragging,
      'hideLeftMenu': instance.hideLeftMenu,
    };
