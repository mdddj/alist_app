// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'domains_edit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DomainEditModelImpl _$$DomainEditModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DomainEditModelImpl(
      isEditorMode: json['isEditorMode'] as bool? ?? false,
      selectIdList: json['selectIdList'] == null
          ? const IListConst([])
          : IList<int>.fromJson(json['selectIdList'], (value) => value as int),
    );

Map<String, dynamic> _$$DomainEditModelImplToJson(
        _$DomainEditModelImpl instance) =>
    <String, dynamic>{
      'isEditorMode': instance.isEditorMode,
      'selectIdList': instance.selectIdList.toJson(
        (value) => value,
      ),
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$domainEditModelStateHash() =>
    r'69f9c81fe6278f769fc64a8b60c13489ee2a3dd0';

/// See also [DomainEditModelState].
@ProviderFor(DomainEditModelState)
final domainEditModelStateProvider =
    AutoDisposeNotifierProvider<DomainEditModelState, DomainEditModel>.internal(
  DomainEditModelState.new,
  name: r'domainEditModelStateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$domainEditModelStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$DomainEditModelState = AutoDisposeNotifier<DomainEditModel>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
