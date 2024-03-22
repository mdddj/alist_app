part of 'part.dart';

final appProvider = StateNotifierProvider<AppState, AppModel>(AppState.new);

///app全局状态管理
class AppState extends StateNotifier<AppModel> {
  final Ref ref;

  AppState(this.ref) : super(const AppModel());

  ///更新站点
  Future<void> changeDomain(DomainAccount account) async {
    state = state.copyWith(domainAccount: account);
    AccountManager.instance.changeCurrentDomain(account);
  }

  ///打开文件到主界面
  void changeFileOpen(FileOptionModel model) {
    state = state.copyWith(fileOpen: model);
  }

  void closeFile() {
    state = state.copyWith(fileOpen: null);
  }

  void changeState(ValueCopyWith<AppModel> change) =>
      state = change.call(state);
}

//扩展
extension AppStateEx on WidgetRef {
  AppModel get appModel => watch(appProvider);

  DomainAccount? get currentDomain => appModel.domainAccount;

  User? get currentLoginUser =>
      watch(appProvider.select((value) => value.user));

  bool get isLogin => currentLoginUser != null;
}
