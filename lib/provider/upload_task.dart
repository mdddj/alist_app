import 'dart:io';

import 'package:collection/collection.dart';
import 'package:dd_js_util/dd_js_util.dart';
import 'package:dio/dio.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:file_selector/file_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

import '../exception/global.dart';
import '../models/upload_task_model.dart';
import '../tool/part.dart';
import 'app_manager.dart';

part 'upload_task.g.dart';

@riverpod
List<int> tableFlexList(TableFlexListRef ref) {
  return [8, 3, 4, 4];
}

extension UploadTaskEx on WidgetRef {
  ///是否有正在上传的任务
  bool get hasUploadingTask {
    return watch(uploadTaskProvider)
        .any((element) => element.status == UploadTaskStatus.uploading);
  }

  ///对上传任务分组
  Map<String, List<TaskModel>> get uploadTasksByGroup {
    final map =
        watch(uploadTaskProvider).groupListsBy((element) => element.groupId);
    return map;
  }

  ///上传中的数量
  int get uploadingCount => watch(uploadTaskProvider)
      .where((element) => element.status == UploadTaskStatus.uploading)
      .length;
}

///上传任务。
@Riverpod(keepAlive: true)
class UploadTask extends _$UploadTask with UploadTaskMixin {
  @override
  IList<TaskModel> build() {
    return IList(const []);
  }

  ///设置任务列表
  void addTasks(IList<TaskModel> files) {
    state = state.addAll(files);
  }

  ///开始上传
  Future<void> start() async {
    await Future.wait(state
        .where((element) => element.status == UploadTaskStatus.none)
        .map(_upload));

    ///判断是否存在任务
    if (state
        .where((element) => element.status == UploadTaskStatus.none)
        .isNotEmpty) {
      ///继续上传
      await start();
    }
  }

  ///移除某个任务
  void removeFile(TaskModel model) {
    if (model.status == UploadTaskStatus.uploading) {
      ToastUtil.showWarning('不能移除正在上传中的任务');
      return;
    }
    state = state.remove(model);
  }

  ///上传文件
  Future<void> _upload(TaskModel model) async {
    try {
      state = state.updateItemEx(
          model,
          (old) => old.copyWith(
              status: model.taskType == TaskType.upload
                  ? UploadTaskStatus.uploading
                  : UploadTaskStatus.downloading,
              startTime: DateTime.now(),
              uploadFailError: null,
              cancelToken: CancelToken()));

      final api = model.getApi();
      final param = await model.getRequestParam(
        onTotalChanged: (v) {
          _updateItem(
              model,
              (value) => value.copyWith(
                  current: v.$1.toDouble(), total: v.$2.toDouble()));
        },
      );
      switch (model.taskType) {
        case TaskType.upload:
          await api.request(param);
        case TaskType.download:
          await api.download(param);
      }
      final newModel = _updateItem(
          model,
          (value) => value.copyWith(
              status: UploadTaskStatus.success, endTime: DateTime.now()));
      IsarTool.instance.taskModelDao.insertTaskModel(newModel);
      ToastUtil.showSuccess(
          model.taskType == TaskType.upload ? "上传成功" : "下载成功");
    } on GlobalError catch (e) {
      e.maybeWhen(orElse: () {
        _updateItem(
            model,
            (value) => value.copyWith(
                status: UploadTaskStatus.error, uploadFailError: e));
      }, cancel: () {
        _updateItem(
            model,
            (value) => value.copyWith(
                status: UploadTaskStatus.cancel,
                uploadFailError: null,
                current: 0));
      });
    } catch (e) {
      debugPrint('错误：$e');
      _updateItem(
          model,
          (value) => value.copyWith(
              status: UploadTaskStatus.error,
              uploadFailError: GlobalError.biz('$e'),
              current: 0));
    } finally {}
  }

  ///取消上传
  void cancel(TaskModel model) {
    model.cancelToken?.cancel();
  }

  ///上传文件
  Future<void> uploadFile(String toFolderPath,
      {ValueChanged<IListConst<TaskModel>>? onSelect}) async {
    final fileTask = await _openFile(toFolderPath);
    if (fileTask != null) {
      final list = IListConst([fileTask]);
      onSelect?.call(list);
      addTasks(list);
      await start();
    }
  }

  ///打开文件
  Future<TaskModel?> _openFile(String toFolderPath) async {
    final result = await openFile();
    if (result != null) {
      return _createTaskByFilepath(result.path, toFolderPath);
    } else {
      Logger().w('未选择文件');
    }
    return null;
  }

  TaskModel _createTaskByFilepath(String path, String toFolderPath,
      {Directory? directory, String? groupId}) {
    return TaskModel(
        domain: ref.activeDomain!,
        file: File(path),
        isDirection: directory != null,
        status: UploadTaskStatus.none,
        serverPath: toFolderPath,
        directory: directory,
        startTime: DateTime.now(),
        id: const Uuid().v8(),
        groupId: groupId ?? const Uuid().v8());
  }

  ///上传目录
  Future<void> uploadFolder(String toFolderPath,
      {ValueChanged<IList<TaskModel>>? onSelect}) async {
    Directory? directory;
    final files =
        await _getFiles(directoryCallback: (value) => directory = value);
    if (files.isNotEmpty) {
      final groupId = const Uuid().v8();
      final tasks = files
          .map((element) => _createTaskByFilepath(element.path, toFolderPath,
              directory: directory, groupId: groupId))
          .toIList();
      onSelect?.call(tasks);
      addTasks(tasks);
      await start();
    }
  }

  ///获取文件列表
  Future<IList<File>> _getFiles(
      {ValueChanged<Directory>? directoryCallback}) async {
    final result = await getDirectoryPath(confirmButtonText: '选择文件夹');
    if (result != null) {
      directoryCallback?.call(Directory(result));
      return listFiles(result);
    }
    return const IListConst([]);
  }

  void cancelAll() {
    state
        .where((element) => element.status == UploadTaskStatus.uploading)
        .forEach((element) {
      element.cancelToken?.cancel("取消上传");
    });
  }

  TaskModel _updateItem(TaskModel model, ValueCopyWith<TaskModel> doUpdate) {
    state = state.updateItemFirstWhere(
        (element) => element.id == model.id, doUpdate);
    return state.firstWhere((element) => element.id == model.id);
  }

  ///关闭某个任务、
  void cancelByItem(TaskModel model) {
    debugPrint('关闭任务。');
    state
        .find((element) => element.id == model.id)
        ?.cancelToken
        ?.cancel('取消上传');
  }

  ///开始上传某个任务
  void startUploadByItem(TaskModel model) {
    if (model.status == UploadTaskStatus.success) {
      ToastUtil.showWarning('任务已完成');
      return;
    }
    if (model.status == UploadTaskStatus.uploading) {
      ToastUtil.showWarning('任务正在上传中');
      return;
    }
    _upload(model);
  }

  ///删除任务
  void removeByItem(TaskModel model) {
    if (model.status == UploadTaskStatus.uploading) {
      ToastUtil.showWarning('任务正在上传，不能删除');
      return;
    }
    state = state.remove(model);
  }

  ///开始一个下载任务
  void startDownloadTask(String url, File file) {
    final makeModel = TaskModel(
        startTime: DateTime.now(),
        file: file,
        downloadUrl: url,
        taskType: TaskType.download,
        groupId: const Uuid().v8(),
        id: const Uuid().v8(),
        cancelToken: CancelToken(),
        domain: ref.activeDomain);
    addTasks(IListConst([makeModel]));
    start(); //开始任务
  }
}

mixin UploadTaskMixin<T extends Notifier<IList<TaskModel>>>
    on Notifier<IList<TaskModel>> {
  ///删除全部任务(分组)
  void deleteAllByGroup(String groupId) {
    final hasUploadingItem = state.any((element) =>
        element.groupId == groupId &&
        element.status == UploadTaskStatus.uploading);
    if (hasUploadingItem) {
      ToastUtil.showWarning('有正在上传中的任务,不能删除');
      return;
    }
    state = state.removeWhere((element) => element.groupId == groupId);
  }

  ///取消上传全部任务
  void cancelAllByGroup(String groupId) {
    final len = state
        .where((element) =>
            element.groupId == groupId &&
            element.status == UploadTaskStatus.uploading)
        .length;
    if (len != 0) {
      ToastUtil.showSuccess('已取消正在上传中的$len任务');
      state = state.updateAllWhere(
          (element) =>
              element.groupId == groupId &&
              element.status == UploadTaskStatus.uploading, (value) {
        value.cancelToken?.cancel('取消上传');
        return value;
      });
    } else {
      ToastUtil.showWarning('没有可以取消的任务');
    }
  }

  ///开始上传
  void startAllByGroup(String groupId, ValueChanged<TaskModel> doAction) {
    final items = state.where((element) =>
        element.groupId == groupId &&
        element.status != UploadTaskStatus.uploading &&
        element.status != UploadTaskStatus.success);
    if (items.isNotEmpty) {
      items.forEach(doAction);
      ToastUtil.showSuccess('${items.length}任务执行上传中');
    } else {
      ToastUtil.showWarning('没有可以执行的任务');
    }
  }
}
