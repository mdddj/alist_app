import 'package:collection/collection.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/upload_task_model.dart';
import '../tool/part.dart';
import 'app_manager.dart';

part 'task_history_provider.g.dart';

extension TaskHistoryStateEx on WidgetRef {
  ///历史记录分组
  Map<String, List<TaskModel>> get taskHistoryByGroup {
    final list = watch(taskHistoryStateProvider).value ?? IList(const []);
    final map = list.groupListsBy((element) => element.groupId);
    return map;
  }
}

///历史记录状态管理
@Riverpod(keepAlive: true)
class TaskHistoryState extends _$TaskHistoryState {


  @override
  Future<IList<TaskModel>> build() async {
    final listen = IsarTool.instance.isar.taskModels.watchLazy();
    listen.listen((event) {
      ref.invalidateSelf();
    });
    final active = ref.activeDomain;
    if (active == null) {
      return IList(const []);
    }
    final list = await IsarTool.instance.taskModelDao
        .getAll(active.domain);
    return list.toIList();
  }
}
