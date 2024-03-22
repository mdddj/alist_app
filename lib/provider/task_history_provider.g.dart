// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_history_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$taskHistoryStateHash() => r'b5c107d81e77ce3f474a89967c97ddc064218e24';

///历史记录状态管理
///
/// Copied from [TaskHistoryState].
@ProviderFor(TaskHistoryState)
final taskHistoryStateProvider =
    AsyncNotifierProvider<TaskHistoryState, IList<TaskModel>>.internal(
  TaskHistoryState.new,
  name: r'taskHistoryStateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$taskHistoryStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$TaskHistoryState = AsyncNotifier<IList<TaskModel>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
