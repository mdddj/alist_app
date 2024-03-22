import 'package:dd_js_util/dd_js_util.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';

import '../api/part.dart';
import '../exception/global.dart';
import '../models/collect_model.dart';
import '../models/fs_list.dart';
import '../models/my_file.dart';
import '../tool/part.dart';

class PathManagerProvider extends ChangeNotifier {
  final String initPath;

  PathManagerProvider({required this.initPath});
  late IMap<String, FsFilesManager> managers =
      IMap({initPath: DefaultFilesManager(path: initPath)});
  late ChangeNotifierProvider<PathManagerProvider> provider =
      ChangeNotifierProvider((ref) => this);
  late String activePath = initPath;
  int activeIndex = 0;

  //前往文件夹
  void gotoDirector(String path) {
    final newPath = "$activePath/$path";
    if (managers.containsKey(newPath)) {
      activePath = newPath;
      notifyListeners();
      return;
    }
    managers = managers.add(newPath, DefaultFilesManager(path: newPath));
    activePath = newPath;
    _changeActiveIndex();
    notifyListeners();
  }

  ///获取选中下标
  void _changeActiveIndex() {
    activeIndex = managers.keys.toIList().indexOf(activePath);
  }

  ///改变列表
  void changeTab(String name) {
    Logger().f(name);
    Logger().i(managers.keys.toList());
    activePath = name;
    _changeActiveIndex();
    notifyListeners();
  }

  ///打开文件
  void openFile(String path) {
    final newPath = "$activePath/$path";
    if (managers.containsKey(newPath)) {
      activePath = newPath;
      notifyListeners();
      return;
    }
    managers = managers.add(newPath, OpenFileFsManager(path: newPath));
    activePath = newPath;
    _changeActiveIndex();
    notifyListeners();
  }

  ///关闭
  void remove(String path) {
    final index = managers.keys.toList().indexOf(path);
    if (index == 0) {
      ToastUtil.showWarning('根目录不能被删除.');
      return;
    }
    activePath = managers.keys.toList().get(index - 1);
    managers = managers.remove(path);
    _changeActiveIndex();
    notifyListeners();
  }
}

///收藏文件的
abstract class FsFilesManager extends ChangeNotifier {
  final String path;
  FsFilesManager({required this.path});

  IList<FsModel> files = const IListConst([]);

  bool loading = false;
  GlobalError? error;

  //状态管理
  late ChangeNotifierProvider<FsFilesManager> provider =
      ChangeNotifierProvider((ref) => this..loadFiles());

  ///加载文件列表
  Future<void> loadFiles() async {
    try {
      loading = true;
      error = null;
      notifyListeners();
      final params = FsListParam(path: path, page: 1).toJson();
      Logger().t(params);
      final response = await MyFsListApi()
          .request(R(data: params, showDefaultLoading: false));
      files = files.addAll(response.content);
      loading = false;
      error = null;
      notifyListeners();
    } on GlobalError catch (e) {
      error = e;
      loading = false;
      notifyListeners();
    }
  }
}

///基本文件的状态管理.
class FsModelFilesManager extends FsFilesManager {
  final FsModel fsModel;
  FsModelFilesManager({required this.fsModel}) : super(path: fsModel.name);
}

///收藏文件的状态管理
class CollectModelFilesManager extends FsFilesManager {
  final CollectModel model;
  CollectModelFilesManager(this.model) : super(path: model.fullPath);
}

///默认实现
class DefaultFilesManager extends FsFilesManager {
  DefaultFilesManager({required super.path});
}

///文件预览类型
class OpenFileFsManager extends FsFilesManager {
  OpenFileFsManager({required super.path});

  FileType get myFile => createFileTypeFromPath(path);
}
