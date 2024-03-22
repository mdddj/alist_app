// ignore_for_file: deprecated_member_use
import 'dart:convert';
import 'dart:io';

import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:dd_js_util/dd_js_util.dart';
import 'package:dio/dio.dart';
import 'package:file_selector/file_selector.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:path/path.dart' as path_util;

import '../api/part.dart';
import '../exception/global.dart';
import 'domain_account.dart';
import 'download_param.dart';

part 'upload_task_model.g.dart';

@JsonEnum(valueField: 'status')
enum UploadTaskStatus {
  @JsonValue('none')
  none,
  @JsonValue('uploading')
  uploading,
  @JsonValue('success')
  success,
  @JsonValue('error')
  error,
  @JsonValue('cancel')
  cancel,
  @JsonValue('downloading')
  downloading,
}

@JsonEnum(valueField: 'taskType')
enum TaskType {
  @JsonValue('upload')
  upload,
  @JsonValue('download')
  download
}

extension UploadTaskStatusEx on UploadTaskStatus {
  String get statusText => switch (this) {
        UploadTaskStatus.none => '-',
        UploadTaskStatus.uploading => '上传中',
        UploadTaskStatus.success => '已完成',
        UploadTaskStatus.error => '失败',
        UploadTaskStatus.cancel => '已取消',
    UploadTaskStatus.downloading => '下载中',
      };
}

extension UploadTaskModelEx on TaskModel {
  double get progress {
    if (current == 0 && total == 0) {
      return 1;
    }
    if (current == 0) {
      return 0;
    }
    return current / total;
  }

  ///上传进度百分比
  String get bfb {
    return (num.parse(progress.toStringAsFixed(2)) * 100).toStringAsFixed(0);
  }

  ///获取大小
  String get getSize {
    return '${ByteModel.create(current).format(2)} / ${ByteModel.create(total).format(2)}';
  }

  num get speed {
    if (current <= 0 || total <= 0) {
      return 0;
    }
    final diff = DateTime.now().difference(startTime);
    if (diff.inSeconds <= 0) {
      return 0;
    }
    return current != 0 ? current / diff.inSeconds : 0;
  }

  String? get directoryName =>
      (directory?.path ?? directoryPath)?.urlManager.filename;

  File getFile() {
    if (file != null) {
      return file!;
    }
    assert(filePath != null, "文件路径不能为null");
    return File(filePath ?? "");
  }

  ///获取请求接口
  MyBaseResultApi getApi() {
    return switch (taskType) {
      TaskType.upload => MyFsPutFileApi(),
      TaskType.download => g.get<MyDownloadApi>()
    };
  }

  ///获取请求参数
  Future<RequestParams> getRequestParam(
      {ValueChanged<(int, int)>? onTotalChanged}) async {
    RequestParams? uploadParam;
    if(taskType == TaskType.upload){
      final path = getFile().path;
      final xfile = XFile(path);
      final filename = path.urlManager.filenameAll;
      final filepath =
      '$serverPath${isDirection ? '/$directoryName/${path_util.relative(getFile().path, from: directory!.path)}' : '/$filename'}'
          .replaceAll(' ', '');
      final len = await getFile().length();
      final fileStream = xfile.openRead();
      uploadParam = RequestParams(
        cancelToken: cancelToken,
        headers: {
          "File-Path": Uri.encodeFull(filepath),
          "Content-Length": len,
          Headers.contentTypeHeader: Headers.multipartFormDataContentType
        },
        showDefaultLoading: false,
        data: fileStream,
        contentType: Headers.multipartFormDataContentType,
        onSendCallback: (count, total) {
          onTotalChanged?.call((count, total));
        },
      );
    }
    return switch (taskType) {
      TaskType.upload => uploadParam ?? const RequestParams(),
      TaskType.download => RequestParams(
          downloadUrl: downloadUrl,
          cancelToken: cancelToken,
          onReceiveProgress: (count, total) {
            onTotalChanged?.call((count, total));
          },
          savePath: getFile()),
    };
  }
}

///自定义的工具条
typedef ToolbarBuilder = Widget Function(TaskModel model);

///上传任务
@collection
@CopyWith()
@JsonSerializable()
class TaskModel {
  @enumerated
  UploadTaskStatus status;
  @igFreezedJson
  @ignore
  @Deprecated("请使用 getFile() 函数调用")
  final File? file;
  @igFreezedJson
  @ignore
  final Directory? directory;
  bool isDirection;
  String serverPath;
  @igFreezedJson
  @ignore
  GlobalError? uploadFailError;

  double current;
  double total;
  DateTime startTime;
  DateTime? endTime;
  @enumerated
  TaskType taskType = TaskType.upload; //任务类型

  late String? filePath = file?.path;
  late String? directoryPath = directory?.path;
  late String? domainUrl = domain?.domain;
  late String? domainName = domain?.name;

  @igFreezedJson
  @ignore
  CancelToken? cancelToken;

  String id;
  Id sqlId = Isar.autoIncrement;
  final String groupId;

  @ignore
  DomainAccount? domain = DomainAccount();

  late String domainJsonString = jsonEncode(domain);

  @Doc(message: '自定义的工具栏')
  @ignore
  @igFreezedJson
  ToolbarBuilder? customToolBarBuilder;

  String? downloadUrl;

  TaskModel(
      {this.status = UploadTaskStatus.none,
      this.file,
      this.directory,
      this.isDirection = false,
      this.serverPath = '',
      this.uploadFailError,
      this.current = 0,
      this.total = 0,
      required this.startTime,
      this.endTime,
      this.cancelToken,
      this.id = '',
      this.groupId = '',
      this.domain,
      this.taskType = TaskType.upload,
      this.downloadUrl});

  factory TaskModel.fromJson(Map<String, dynamic> json) =>
      _$TaskModelFromJson(json);

  factory TaskModel.makeTaskByDownload(DownloadParam param) {
    return TaskModel(
        startTime: DateTime.now(),
        directory: param.directory,
        taskType: TaskType.download);
  }

  Map<String, dynamic> toJson() => _$TaskModelToJson(this);

  @override
  String toString() {
    return jsonEncode(toJson());
  }
}
