import 'dart:convert';

import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:dd_js_util/dd_js_util.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart' as pp;

import '../actions/part.dart';
import '../api/part.dart';
import '../exception/global.dart';
import '../router/router.dart';
import '../tool/part.dart';
import '../ui/part.dart';
import '../widget/part.dart';
import 'base_result.dart';
import 'my_file.dart';
import 'my_fs_copy_api_param.dart';
import 'my_fs_move_file_api_param.dart';

part 'fs_list.freezed.dart';
part 'fs_list.g.dart';

enum FileCategory { file, folder }

@freezed
class FsListParam with _$FsListParam {
  const FsListParam._();

  const factory FsListParam({
    @JsonKey(name: 'path') @Default('') String path,
    @JsonKey(name: 'password') @Default('') String password,
    @JsonKey(name: 'page') int? page,
    @JsonKey(name: 'per_page') int? perPage,
    @JsonKey(name: 'refresh') @Default(false) bool refresh,
  }) = _FsListParam;

  factory FsListParam.fromJson(Map<String, dynamic> json) =>
      _$FsListParamFromJson(json);
}

@freezed
class FsListResult with _$FsListResult {
  const FsListResult._();

  const factory FsListResult({
    @JsonKey(name: 'content') @Default(IListConst([])) IList<FsModel> content,
    @JsonKey(name: 'total') @Default(0) int total,
    @JsonKey(name: 'readme') @Default('') String readme,
    @JsonKey(name: 'write') @Default(false) bool write,
    @JsonKey(name: 'provider') @Default('') String provider,
  }) = _FsListResult;

  factory FsListResult.fromJson(Map<String, dynamic> json) =>
      _$FsListResultFromJson(json);
}

extension FsModelEx on FsModel {
  ///删除文件
  Future<void> delete() async {
    // todo 删除
    // final dir = provider.routerManager.model.getCurrentRouterPath;
    // delayFunction(() {
    //   final api = MyFsRemoveApi(MyFsRemoveApiParam(dir: dir, names: [name]));
    //   tryRequest(
    //     api.request,
    //     success: () => provider.removeFileItem(this),
    //   );
    // });
  }

  //复制文件
  Future<bool> copy(String copyToDirectoryPath) async {
    Logger().d('拷贝:$simplePathFolder');
    final api = MyFsCopyFileApi(MyFsCopyApiParam(
        srcDir: simplePathFolder, dstDir: copyToDirectoryPath, names: [name]));
    try {
      final response = await api.request(R(
          showDefaultLoading: true,
          loadingText: '正在拷贝文件到$copyToDirectoryPath'));
      final isSuccess = response.isSuccess;
      if(isSuccess){
        toast('复制成功');
      }
      return isSuccess;
    } on GlobalError catch (e) {
      ToastUtil.showWarning(e.getMessage());
      return false;
    }
  }

  //移动文件
  Future<bool> move(
      String copyToDirectoryPath) async {
    final api = MyFsMoveFileApi(MyFsMoveFileApiParam(
        srcDir: simplePathFolder,
        dstDir: copyToDirectoryPath,
        names: [name]));
    try {
      final response = await api.request(R(
          showDefaultLoading: true,
          loadingText: '正在移动文件到$copyToDirectoryPath'));
      final isSuccess = response.isSuccess;
      if(isSuccess){
        toast('移动成功');
      }
      return isSuccess;
    } on GlobalError catch (e) {
      ToastUtil.showWarning(e.getMessage());
      return false;
    }
  }

  ///重命名
  Future<bool> rename(String newName) async {
    try {
     await MyFsRenameFolderApi().request(R(
          showDefaultLoading: true,
          loadingText: '重命名.',
          data: {"name": newName, "path": simplePathUrl}));
     repo?.changeItem(this, copyWith(name: newName,simplePathUrl: "$simplePathFolder/$newName"));
      return true;
    } on GlobalError catch (e) {
      e.showErrorDialog();
      return false;
    }
  }

  String getRootPath() {
    return "/$name";
  }

  ///复制链接
  Future<void> copyFullLink() async {
    if (isDir) {
      simplePathUrl.copy();
      showCopySuccessDialog(simplePathUrl);
      return;
    }
    try {
      final response = await GetIt.instance
          .get<MyFsDetailGetApi>()
          .request(R(loadingText: '获取文件信息', data: {'path': simplePathUrl}));
      response.rawUrl.copy();
      showCopySuccessDialog(response.rawUrl);
    } catch (_) {}
  }

  Widget getIcon({double? size, String? thumbnail}) {
    return IfWidget(
      expression: () => isDir,
      trueBuild: () => FileIcon(fileType: FileType.folder, iconSize: size),
      elseBuild: () =>
          FileIcon(fileType: fileType, thumbnail: thumbnail, iconSize: size),
    );
  }

  void showActions(BuildContext context) {
    final actions = fileType.findActions();
    if (actions.isNotEmpty) {
      Logger().t('可用操作：${actions.length}');
    }
  }

  ///文件类型
  FileCategory get fileCategory {
    if (isDir) {
      return FileCategory.folder;
    }
    return FileCategory.file;
  }

  FileType get fileType {
    if (isDir) {
      return FileType.folder;
    }
    return createFileTypeFromPath(name);
  }

  FsActionManager get manager {
    return FsActionManager(this);
  }

  bool eq(FsModel other) => other.name == name;
}

enum FsModelAction {
  //拷贝
  copy,
  //移动
  move,
  //没有
  none,
}

@CopyWith()
@JsonSerializable()
class FsModel extends ChangeNotifier {
  String name = "";
  int size = 0;
  @JsonKey(name: 'is_dir')
  bool isDir = false;
  String modified = '';
  String sign = '';
  String thumb = '';
  int type = 0;
  bool active = false;
  String simplePathUrl = '/';
  String simplePathFolder = "";

  @igFreezedJson
  BuildContext? context;

  @igFreezedJson
  bool folderSelectIsActive = false;

  FsModel(
      {this.name = '',
      this.size = 0,
      this.isDir = false,
      this.modified = '',
      this.sign = '',
      this.thumb = '',
      this.type = 0,
      this.active = false,
      this.simplePathUrl = '/',
      this.root,
      this.context,
      this.repo,
      this.action = FsModelAction.none,
      this.folderSelectIsActive = false,
      this.setting = const FsModelSetting(),
      this.dirs = const IListConst([]),
      this.simplePathFolder = ""});

  @igFreezedJson
  FilesRenderWidget get child {
    return FilesRenderWidget(fsModel: this);
  }

  @igFreezedJson
  FilesWidget get rootWidget {
    return FilesWidget(model: this);
  }

  @igFreezedJson
  FsModel? root;

  @igFreezedJson
  FilesRepo? repo;

  @igFreezedJson
  IList<FsModel> files = const IListConst([]);

  FsModelAction action = FsModelAction.none;

  ///UI设置
  @igFreezedJson
  FsModelSetting setting = const FsModelSetting();

  int get subFolderLen {
    return files.count((element) => element.isDir);
  }

  ///列表小部件
  @igFreezedJson
  FilesWidget? get filesWidget {
    if (isDir) {
      return FilesWidget(model: this);
    }
    return null;
  }

  @igFreezedJson
  IList<FilesWidget> dirs = IList<FilesWidget>(const []);

  void onFileTap(WidgetRef ref, BuildContext context) {
    if (root != null && filesWidget != null) {
      if(isMobile()){
        context.push(const MyMobileFilesPage().location,extra: this);
      }else{
        pp.Provider.of<FsModel>(context, listen: false).addDir(filesWidget!);
      }

    } else {
      debugPrint('--root为空');
    }
  }

  ///跳转指定的文件夹
  void toDir(FilesWidget widget) {
    final index = dirs.indexOf(widget);
    dirs = dirs.removeRange(index + 1, dirs.length);
    notifyListeners();
  }

  void addDir(FilesWidget newDir) {
    dirs = dirs.add(newDir);
    notifyListeners();
  }

  ///添加文件列表
  void addFiles(IList<FsModel> newFiles) {
    files = newFiles;
    notifyListeners();
  }

  factory FsModel.fromJson(Map<String, dynamic> json) =>
      _$FsModelFromJson(json);

  Map<String, dynamic> toJson() => _$FsModelToJson(this);

  ///更新显示操作
  void changeAction(FsModelAction newAction) {
    if (repo != null) {
      repo?.changeItemAction(this, newAction);
      Logger().d('更换操作');
    } else {
      Logger().w('repo 不存在');
    }
  }

  void changeIsSelect(bool v) {
    folderSelectIsActive = v;
    notifyListeners();
  }

  @override
  String toString() {
    return jsonEncode(
        toJson()..addAll({"dirs": dirs.length, "root": root?.name}));
  }

}

///ui设置
class FsModelSetting {
  ///自定义UI
  final Widget Function(FsModel model, BuildContext context, WidgetRef ref)?
      customBuilder;
  final Widget Function(FilesRepo repo, IList<FsModel> list, Widget child)?
      customUiWrapper;
  final IList<FsModel> Function(IList<FsModel> files)? filter;

  const FsModelSetting({this.customBuilder, this.customUiWrapper, this.filter});
}

///复制文件到路径
class FsModelCopyWidget extends ConsumerWidget {
  final VoidCallback close;
  final FsModel fsModel;

  const FsModelCopyWidget(this.close, this.fsModel, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LayoutBuilder(builder: (context, size) {
      return SizedBox(
        width: size.maxWidth,
        height: size.maxHeight,
        child: FileSelectTree(
          onSelect: (String path) {
            return ElevatedButton(
                onPressed: path.isEmpty
                    ? null
                    : () async {
                        final result = await fsModel.copy(path);
                        if (result) {
                          close();
                        }
                      },
                child: Column(
                  children: [
                    Text('复制到目录', style: context.textTheme.titleMedium),
                    Text(path.isEmpty ? '请选择复制路径' : path,
                        style: context.textTheme.labelSmall
                            ?.copyWith(color: context.colorScheme.secondary))
                  ],
                )).maxWidthButton;
          },
        ),
      );
    });
  }
}


///复制文件到路径
class FsModelMoveWidget extends ConsumerWidget {
  final VoidCallback close;
  final FsModel fsModel;

  const FsModelMoveWidget(this.close, this.fsModel, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LayoutBuilder(builder: (context, size) {
      return SizedBox(
        width: size.maxWidth,
        height: size.maxHeight,
        child: FileSelectTree(
          onSelect: (String path) {
            return ElevatedButton(
                onPressed: path.isEmpty
                    ? null
                    : () async {
                  final result = await fsModel.move(path);
                  if (result) {
                    fsModel.repo?.removeItem(fsModel);
                    close();
                  }
                },
                child: Column(
                  children: [
                    Text('移动到目录', style: context.textTheme.titleMedium),
                    Text(path.isEmpty ? '请选择移动路径' : path,
                        style: context.textTheme.labelSmall
                            ?.copyWith(color: context.colorScheme.secondary))
                  ],
                )).maxWidthButton;
          },
        ),
      );
    });
  }
}


///文件树
class FilesTree extends StatelessWidget {
  final FsModel element;

  const FilesTree({super.key, required this.element});

  @override
  Widget build(BuildContext context) {
    return pp.ChangeNotifierProvider(
      create: (context) => element,
      builder: (context, child) {
        return pp.Consumer<FsModel>(
          builder: (context, FsModel value, child) {
            final FsModel(:dirs) = value;
            final current = dirs.last;
            return Container(
              margin: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(12)),
              width: 300,
              height: 300,
              child: Column(
                children: [
                  PopupMenuButton<FilesWidget>(
                    initialValue: current,
                    onSelected: (s) {
                      value.toDir(s);
                    },
                    itemBuilder: (context) {
                      return [
                        ...dirs.map((e) => MyPopupButton(
                              text: e.model.name,
                              isActive: current == e,
                              onTap: () => value.toDir(e),
                            ))
                      ];
                    },
                    child: Container(
                        margin: const EdgeInsets.only(top: 2, bottom: 4),
                        decoration: const BoxDecoration(
                            border: Border(bottom: BorderSide(width: .3))),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(current.model.name),
                            const SizedBox(
                              width: 2,
                            ),
                            const Icon(Icons.expand_more)
                          ],
                        )),
                  ),
                  Expanded(
                    child: IndexedStack(
                      index: dirs.isEmpty ? 0 : dirs.length,
                      children: [FilesWidget(model: value), ...dirs],
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
