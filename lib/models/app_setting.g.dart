// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_setting.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AppSettingAdapter extends TypeAdapter<AppSetting> {
  @override
  final int typeId = 1;

  @override
  AppSetting read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AppSetting(
      font: fields[0] as String,
      defaultDownloadPath: fields[1] == null ? '' : fields[1] as String,
      isUseDefaultDownloadPath: fields[2] == null ? false : fields[2] as bool,
      fontZoom: fields[3] == null ? 0.88 : fields[3] as double,
    );
  }

  @override
  void write(BinaryWriter writer, AppSetting obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.font)
      ..writeByte(1)
      ..write(obj.defaultDownloadPath)
      ..writeByte(2)
      ..write(obj.isUseDefaultDownloadPath)
      ..writeByte(3)
      ..write(obj.fontZoom);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppSettingAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppSettingImpl _$$AppSettingImplFromJson(Map<String, dynamic> json) =>
    _$AppSettingImpl(
      font: json['font'] as String? ?? '',
      defaultDownloadPath: json['defaultDownloadPath'] as String? ?? '',
      isUseDefaultDownloadPath:
          json['isUseDefaultDownloadPath'] as bool? ?? false,
      fontZoom: (json['fontZoom'] as num?)?.toDouble() ?? 0.88,
    );

Map<String, dynamic> _$$AppSettingImplToJson(_$AppSettingImpl instance) =>
    <String, dynamic>{
      'font': instance.font,
      'defaultDownloadPath': instance.defaultDownloadPath,
      'isUseDefaultDownloadPath': instance.isUseDefaultDownloadPath,
      'fontZoom': instance.fontZoom,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$appSettingStateHash() => r'aedbaf3a6d6cec4aaf42049c127ed59e96ddcd3c';

/// See also [AppSettingState].
@ProviderFor(AppSettingState)
final appSettingStateProvider =
    AsyncNotifierProvider<AppSettingState, AppSetting>.internal(
  AppSettingState.new,
  name: r'appSettingStateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$appSettingStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AppSettingState = AsyncNotifier<AppSetting>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
