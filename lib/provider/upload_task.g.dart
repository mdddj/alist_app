// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_task.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tableFlexListHash() => r'3a5cd03cf9841d53d1e4f477ca3bd771e6ad9372';

/// See also [tableFlexList].
@ProviderFor(tableFlexList)
final tableFlexListProvider = AutoDisposeProvider<List<int>>.internal(
  tableFlexList,
  name: r'tableFlexListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$tableFlexListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef TableFlexListRef = AutoDisposeProviderRef<List<int>>;
String _$uploadTaskHash() => r'e06b9daff83baf0c1480c64f4cc78cda6c7d2c43';

///上传任务。
///
/// Copied from [UploadTask].
@ProviderFor(UploadTask)
final uploadTaskProvider =
    NotifierProvider<UploadTask, IList<TaskModel>>.internal(
  UploadTask.new,
  name: r'uploadTaskProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$uploadTaskHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$UploadTask = Notifier<IList<TaskModel>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
