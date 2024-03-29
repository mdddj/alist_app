library action;

import 'dart:async';
import 'dart:convert';

import 'package:async/async.dart';
import 'package:dd_js_util/dd_js_util.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:video_player/video_player.dart';

import '../api/part.dart';
import '../models/application.dart';
import '../models/collect_model.dart';
import '../models/domain_account.dart';
import '../models/file_open_model.dart';
import '../models/fs_detail_info.dart';
import '../models/fs_list.dart';
import '../models/my_file.dart';
import '../models/preview_param.dart';
import '../provider/app_manager.dart';
import '../provider/collect_folder_provider.dart';
import '../router/router.dart';
import '../tool/part.dart';
import '../widget/part.dart';

part 'action_menu.dart';
part 'image.dart';
part 'json.dart';
part 'md.dart';
part 'pdf.dart';
part 'preview.dart';
part 'txt.dart';
part 'video.dart';
part 'widget/toolbar.dart';

class ActionManager {}

final defineActions = [
  TxtFileAction(),
  MdRenderWidgetAction(),
  ImageAction(),
  VideoAction(),
  JsonAction(),
  MyPdfAction(),
  PreviewAction()
];


///文件处理事件
abstract class FileAction extends ChangeNotifier {
  ///可以处理哪些处理哪种类型的文件
  FileHandleMenu get menu;

  ///操作执行事件
  Widget render(FsModel file);

  ///是否支持全部类型
  bool isSupportAll = false;
}

class FsActionManager with ChangeNotifier {
  final FsModel fsModel;
  CollectModel? collectModel;
  StreamSubscription<CollectModel?>? _stream;
  late ChangeNotifierProvider<FsActionManager> provider =
      ChangeNotifierProvider((ref) {
    final i = this;
    ref.onDispose(cleanAll);
    ref.listenSelf((previous, next) {
      if (next.collectModel?.id case final int _) {
        i.addListen();
      }
    });
    return i;
  });

  FsActionManager(this.fsModel);


  ///添加收藏.
  Future<CollectModel> addToCollect(
      ApplicationContext applicationContext, FsModel fsModel) async {
    final ApplicationContext(:ref) = applicationContext;
    final provider = ref.activeDomainFun;
    // todo 获取完整的路径
    // final fullPath = provider.getFullPath(fsModel);
    final fullPath = '';
    final isDir = fsModel.isDir;
    final name = fsModel.name;
    final folderId = ref.collectFolders
        .firstWhere((element) => element.isSelectByAddDialog)
        .id!;
    final siteId = ref.activeDomain!.id;
    final model = CollectModel(
        name: name,
        isFolder: isDir,
        fullPath: fullPath,
        folderId: folderId,
        // todo 获取文件夹路径
        //fileFolderPath: provider.folderPath,
        fileFolderPath: '',
        siteId: siteId);
    final newModel = await IsarTool.instance.collectDao.add(model);
    collectModel = newModel;
    notifyListeners();
    return newModel;
  }

  ///移除收藏
  Future<void> deleteCollect() async {
    if (collectModel?.id case int id) {
      await IsarTool.instance.collectDao.deleteById(id);
      collectModel = null;
      notifyListeners();
    }
  }

  void initCollectState(WidgetRef ref, FsModel model) {
    // todo 获取完整的文件夹路径
    // final p = ref.activeProvider?.getFullPath(model);
    final p = null;
    IsarTool.instance.collectDao
        .isCollect(ref.activeDomain?.id ?? 0,
            p ?? '', model.isDir)
        .then((value) {
      collectModel = value;
      notifyListeners();
    });
  }

  ///显示菜单
  Future<void> showMenuByMobile(BuildContext context, String path) async {
    getFsModel(path).then((model) {
      if (model.rawUrl.isNotEmpty) {
        context.push(MyPreviewFilePage().location,extra: PreviewParam(fsModel: fsModel,fileRawUrl: model.rawUrl));
      }
    });
  }

  ///弹出操作菜单
  Future<void> showMenu(
      BuildContext context) async {
    final findAction = fsModel.fileType.findActions();

    ///如果只有一个操作的实现,直接打开
    if (findAction.length == 1) {
      openAction(findAction.first);
      return;
    }
    if (findAction.isNotEmpty) {
      final selectAction = await showModalBottomSheet<FileAction>(
        context: context,
        builder: (context) {
          return ActionMenuWidget(menus: findAction);
        },
      );
      if (selectAction != null) {
        openAction(selectAction);
      }
    } else {
      toast('不支持的操作');
    }
  }

  ///处理文件的操作
  void openAction(FileAction action) {
    final openModel = FileOptionModel(action: action, fsModel: fsModel);
    // todo
    // provider.openFileAction(openModel);
  }

  void addListen() {
    if (collectModel?.id case final int id) {
      _stream =
          IsarTool.instance.isar.collectModels.watchObject(id).listen((event) {
        collectModel = event;
        notifyListeners();
      });
    }
  }

  @override
  void notifyListeners() {
    super.notifyListeners();
  }

  void cleanAll() {
    _stream?.cancel();
    _stream = null;
    collectModel = null;
  }
}
