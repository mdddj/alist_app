import 'dart:convert';

import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:dd_js_util/dd_js_util.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:logger/logger.dart';

import '../account/part.dart';
import '../api/part.dart';
import '../exception/global.dart';
import '../pages/part.dart';
import '../provider/app_manager.dart';
import '../provider/sites_provider.dart';
import '../tool/part.dart';
import 'auth_login.dart';
import 'file_open_model.dart';
import 'fs_list.dart';
import 'page_model.dart';
import 'site_setting.dart';
import 'upload_task_model.dart';

part 'domain_account.g.dart';

enum FilesLayoutStyle {
  list('列表', 1),
  grid('网格', 2);

  const FilesLayoutStyle(this.title, this.gridLen);

  final int gridLen;
  final String title;
}

enum FilesSortType { def, name, time, fileTypeGroup, fileTimeGroup }

final _defaultMainLayoutUI = IListConst([
  PageModel.main(child: const MainPage()),
  // todo 收藏功能暂时隐藏
  // PageModel.favorite(child: const FavoriteIndexPage()),
  PageModel.upload(
      child: const UploadMainPage(), render: UploadBadgeBuilder.new),
  PageModel.custom(
    title: '设置',
    icon: Icons.settings,
    pageType: PageType.setting,
    child: const SettingPage(),
  )
]);

final _uploadLayoutUI = IListConst([
  PageModel.custom(
      title: '上传',
      icon: Icons.upload,
      pageType: PageType.upload,
      active: true,
      id: 'upload_task',
      ending: (context, ref) => const UploadingCountBuilder(),
      child: const UploadTaskUploadingWidget()),
  PageModel.custom(
      title: '下载',
      icon: Icons.download,
      id: "download_task",
      pageType: PageType.upload,
      child: const UploadTaskDownloadWidget()),
  PageModel.custom(
      title: "历史纪录",
      id: 'task_history',
      icon: Icons.history,
      pageType: PageType.upload,
      child: const UploadTaskHistoryWidget())
]);

extension DomainAccountEx on DomainAccount {
  ///验证函数
  bool get valid {
    if (domain.isEmpty || name.isEmpty) {
      return false;
    }
    return true;
  }

  String get host =>
      domain.endsWith('/') ? domain.substring(0, domain.length - 1) : domain;

  bool isEq(DomainAccount? domainAccount) => id == domainAccount?.id;
}

enum DomainAccountStatus { none, ping, error }

final myActiveDomainProvider =
    StateNotifierProvider<DomainAccountState, DomainAccount>((ref) {
  final find = ref.activeDomain;
  if (find == null) {
    throw GlobalError.biz('未选择站点');
  }
  return DomainAccountState(find, ref);
});

///状态管理
class DomainAccountState extends StateNotifier<DomainAccount> {
  final DomainAccount account;
  final Ref ref;

  DomainAccountState(this.account, this.ref) : super(account);

  ///异步更新网站设置
  void asyncUpdateSitSetting() {
    tryRequest<SiteSetting>(() => MyPublicGetSettingApi().request());
  }

  ///登录
  Future<void> login(String username, String password) async {
    try {
      final response = await MyLoginApi(
              AuthLoginParam(username: username, password: password))
          .request(const R(showDefaultLoading: true, loadingText: '登录中'));
      await AccountManager.instance.loginSuccess(response.token);
      ToastUtil.showSuccess('欢迎回来,您已成功登录!');
    } on GlobalError catch (e) {
      ToastUtil.showWarning('登录失败:${e.getMessage()}');
    }
  }

  ///更新
  void changeRootFolder(
      bool Function(FsModel model) where, ValueCopyWith<FsModel> doUpdate) {
    final domain = ref.activeDomain;
    if (domain != null) {
      Logger().t('更新:$domain');
      ref.read(sitesStateProvider.notifier).change(
          domain!.isEq,
          (value) => value.copyWith(
              mainStorages: value.mainStorages.copyWith(
                  content: value.mainStorages.content
                      .updateItemFirstWhere(where, doUpdate))));
    }
  }

  ///上传文件
  void uploadFile(String path,
      {ValueChanged<IListConst<TaskModel>>? onSelect}) {
    // todo
    // ref.read(uploadTaskProvider.notifier).uploadFile(path, onSelect: onSelect);
  }

  void uploadFolder(String path, {ValueChanged<IList<TaskModel>>? onSelect}) {
    // todo
    // ref
    //     .read(uploadTaskProvider.notifier)
    //     .uploadFolder(path, onSelect: onSelect);
  }

  ///修改布局
  void changeLayout(FilesLayoutStyle newStyle) {
    state = state.copyWith(layoutStyle: newStyle);
  }

  ///修改排序方式
  void changeSortType(FilesSortType newType) {
    state = state.copyWith(sortType: newType);
  }

  void refreshStoragesList() {
    account._fetchStoragesList();
  }
}

@CopyWith()
@collection
@JsonSerializable()
class DomainAccount extends ChangeNotifier {
  String domain;
  String note;
  String name;

  bool active;

  ///鉴权 token
  String authToken;

  // @igFreezedJson
  Id id = Isar.autoIncrement;

  ///导入时间
  @igFreezedJson
  DateTime? importTime;

  ///标签
  @igFreezedJson
  String? label;

  DomainAccount(
      {this.domain = '',
      this.note = '',
      this.name = '',
      this.active = false,
      this.authToken = '',
      this.importTime,
      this.label,
      this.storageError,
      this.mainStorages = const FsListResult(),
      this.layoutStyle = FilesLayoutStyle.list,
      this.fileOpenModel,
      this.error,
      this.setting = const SiteSetting(),
      this.sortType = FilesSortType.def,
      this.id = Isar.autoIncrement,
      this.status = DomainAccountStatus.none,
      this.navigators = const IListConst([]),
      this.uploadTaskPages = const IListConst([])}) {
    navigators = _defaultMainLayoutUI;
    uploadTaskPages = _uploadLayoutUI;
  }

  void startGetState() {
    debugPrint('start get data $domain');
    _checkPing();
    _getSetting();
    _fetchStoragesList();
  }

  factory DomainAccount.fromJson(dynamic json) => _$DomainAccountFromJson(json);

  Map<String, dynamic> toJson() => _$DomainAccountToJson(this);

  @Ignore()
  @igFreezedJson
  DomainAccountStatus status = DomainAccountStatus.none;

  @Ignore()
  @igFreezedJson
  Object? error;

  @Ignore()
  @igFreezedJson
  SiteSetting setting = const SiteSetting();

  ///-----
  @Ignore()
  @igFreezedJson
  FsListResult mainStorages = const FsListResult();

  ///列表布局
  @enumerated
  FilesLayoutStyle layoutStyle = FilesLayoutStyle.list;

  ///排序
  @enumerated
  FilesSortType sortType = FilesSortType.def;

  ///当前打开的文件
  @Ignore()
  @igFreezedJson
  FileOptionModel? fileOpenModel;

  ///加载中
  @Ignore()
  @igFreezedJson
  bool loading = false;

  ///加载错误
  @Ignore()
  @igFreezedJson
  GlobalError? storageError;

  ///页面导航列表
  @Ignore()
  @igFreezedJson
  IList<PageModel> navigators = _defaultMainLayoutUI;

  ///上传下载页面列表
  @Ignore()
  @igFreezedJson
  IList<PageModel> uploadTaskPages = _uploadLayoutUI;

  ///获取显示主页面
  @Ignore()
  @igFreezedJson
  PageModel get activePage =>
      navigators.find((element) => element.active) ?? navigators.first;

  ///获取显示的上传下载页面
  @Ignore()
  @igFreezedJson
  PageModel get activePageByUpload =>
      uploadTaskPages.firstWhere((element) => element.active);

  ///检测在线状态
  Future<void> _checkPing() async {
    try {
      error = null;
      notifyListeners();
      final api = MyPublicPingApi();
      final response = await api
          .request(R(fullUrl: '$host${api.url}', showDefaultLoading: false));
      status = switch (response.toString()) {
        "pong" => DomainAccountStatus.ping,
        _ => DomainAccountStatus.error
      };
      if (status == DomainAccountStatus.error) {
        error = response;
      }
      notifyListeners();
    } catch (e) {
      error = e;
      status = DomainAccountStatus.error;
      notifyListeners();
    }
  }

  ///获取网站设置.
  Future<void> _getSetting() async {
    try {
      final api = MyPublicGetSettingApi();
      final response = await api.request(R(
          urlParseFormat: (uri, queryParameters) => '$host${api.url}',
          showDefaultLoading: false));
      setting = response;
      notifyListeners();
    } catch (_) {}
  }

  ///获取存储桶
  Future<void> _fetchStoragesList() async {
    try {
      if (storageError != null) {
        storageError = null;
        notifyListeners();
      }
      mainStorages = const FsListResult();
      var result = await MyFsListApi().request(R(
          showDefaultLoading: false,
          data: const FsListParam(path: '/').toJson()));
      if (result.content.isNotEmpty) {
        result = result.copyWith(
            content: result.content.updateAll((value) {
          final n = value.copyWith(simplePathUrl: '/${value.name}');
          return n.copyWith(dirs: IListConst([n.rootWidget]));
        }).updateFirst((old) => old.copyWith(active: true)));
      }

      mainStorages = result;
      debugPrint("storages loaded!");
      notifyListeners();
    } on GlobalError catch (e) {
      storageError = e;
      notifyListeners();
    }
  }

  ///更换存储桶
  void changeMainStore(FsModel model, bool Function(FsModel ele) find) {
    mainStorages = mainStorages.copyWith(
        content:
            mainStorages.content.updateItemFirstWhere(find, (old) => model));
    notifyListeners();
  }

  ///切换存储桶
  void switchMainStorage(FsModel model) {
    mainStorages = mainStorages.copyWith(
        content: mainStorages.content
            .updateAll((value) => value.copyWith(active: false))
            .updateItemFirstWhere(
                model.eq, (old) => old.copyWith(active: true)));
    notifyListeners();
  }

  ///更改大导航
  void changeNavigator(PageModel pageModel) {
    navigators = navigators
        .updateAll((value) => value.copyWith(active: false))
        .updateItemFirstWhere((element) => element.isEq(pageModel),
            (old) => old.copyWith(active: true));
    notifyListeners();
  }

  ///更改上传下载导航
  void changeNavigatorByUpload(PageModel pageModel) {
    uploadTaskPages = uploadTaskPages
        .updateAll((value) => value.copyWith(active: false))
        .updateItemFirstWhere((element) => element.isEq(pageModel),
            (old) => old.copyWith(active: true));
    notifyListeners();
  }

  ///显示下载页面
  void showDownloadPage() {
    changeNavigator(
        navigators.firstWhere((element) => element.getId == 'upload'));
    changeNavigatorByUpload(uploadTaskPages[1]);
  }

  @override
  String toString() {
    return jsonEncode(toJson());
  }
}

///导入
IList<DomainAccount> importFromDynamicList(List<dynamic> list,
    {String? label}) {
  final result = List<DomainAccount>.from(list.map(DomainAccount.fromJson))
      .toIList()
      .updateAll((value) =>
          value.copyWith(importTime: DateTime.now(), label: label ?? '从文件导入'));
  return result;
}
