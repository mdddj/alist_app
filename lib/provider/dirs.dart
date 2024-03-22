part of 'part.dart';

final dirsProvider = StateProvider<IList<FsModel>>((ref) => IList(const []));

extension DirsProviderEx on WidgetRef {
  IList<FsModel> get dirs => watch(dirsProvider);

  FsModel? get rootDir => dirs.isNotEmpty ? dirs.first : null;

  void goDir(FsModel model, {bool isRoot = false}) {
    read(appProvider.notifier).closeFile();
    if (isRoot) {
      read(dirsProvider.notifier).state = read(dirsProvider).clear();
    }
    read(dirsProvider.notifier).state = read(dirsProvider).add(model);
  }

  void backDir() {
    read(appProvider.notifier).closeFile();
    if (read(dirsProvider).isNotEmpty) {
      read(dirsProvider.notifier).state = read(dirsProvider).removeLast();
    }
  }

  FsModel? get getCurrentDir =>
      watch(dirsProvider).isNotEmpty ? watch(dirsProvider).last : null;

  String get getCurrentDirPath {
    final dirs = watch(dirsProvider);
    if (dirs.isEmpty) {
      return "/";
    }
    var root = '';
    for (var element in dirs) {
      root += '/${element.name}';
    }
    return root;
  }

  ///获取当前路径的 URL
  ///eg: https://pan.itbug.shop/folder/test
  String getCurrentDomainFullUrl({String? split}) {
    final domain =
        watch(appProvider.select((value) => value.domainAccount?.domain));
    return domain == null
        ? ''
        : '$domain${split ?? ''}${getCurrentDirPath.replaceFirst('/', '')}';
  }
}

extension DirsProviderEx1 on Ref {
  String getPath() {
    final dirs = watch(dirsProvider);
    if (dirs.isEmpty) {
      return "/";
    }
    var root = '';
    for (var element in dirs) {
      root += '/${element.name}';
    }
    return root;
  }
}
