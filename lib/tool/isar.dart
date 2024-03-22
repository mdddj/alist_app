part of 'part.dart';

const collectionOnFreezed = Collection(ignore: {'copyWith'});
mixin IsarMixin {
  Isar get isar => IsarTool.instance.isar;
}

class IsarTool {
  static IsarTool get instance => GetIt.instance.get<IsarTool>();
  late Isar isar;
  late final taskModelDao = TaskModelDao(isar);
  late final collectFolderDao = CollectFolderDao(isar: isar);
  late final collectDao = CollectModelDao(isar: isar);

  ///初始化
  Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open(
      [
        MyLogSchema,
        PathHistorySchema,
        DomainAccountSchema,
        TaskModelSchema,
        CollectFolderSchema,
        CollectModelSchema
      ],
      directory: dir.path,
    );
    await performMigrationIfNeeded(isar);
  }

  ///添加一个日志记录
  void addLog(String message, [bool success = true]) {
    isar.writeTxn(() async {
      await isar.myLogs.put(MyLog()
        ..log = message
        ..success = success);
    });
  }

  ///添加一个历史路径
  void addPathHistory(String path) {
    isar.writeTxn(() async {
      await isar.pathHistorys.put(PathHistory()..path = path);
    });
  }

  ///适配版本
  Future<void> performMigrationIfNeeded(Isar isar) async {
    final prefs = await SharedPreferences.getInstance();
    final currentVersion = prefs.getInt('account_domain') ?? 1;
    switch (currentVersion) {
      case 1:
        await migrateV1ToV2(isar);
        break;
      case 2:
        // 如果版本未设置（新建的时候）或已经是版本 2，我们就不做处理
        return;
      default:
        break;
    }

    // 更新版本
    await prefs.setInt('account_domain', 2);
  }

  Future<void> migrateV1ToV2(Isar isar) async {
    debugPrint('====升级适配版本2=====');
    final userCount = await isar.domainAccounts.count();
    for (var i = 0; i < userCount; i += 50) {
      final accounts =
          await isar.domainAccounts.where().offset(i).limit(50).findAll();
      await isar.writeTxn(() async {
        await isar.domainAccounts.putAll(accounts);
      });
    }
  }
}

class TaskModelDao {
  final Isar isar;

  TaskModelDao(this.isar);

  ///插入一个任务模型
  Future<Id> insertTaskModel(TaskModel model) async {
    return await isar.writeTxn(() async {
      return await isar.taskModels.put(model);
    });
  }

  ///加载历史纪录
  Future<List<TaskModel>> getAll(String domain) async {
    return await isar.writeTxn(() async {
      return isar.taskModels
          .filter()
          .domainUrlEqualTo(domain)
          .sortByEndTimeDesc()
          .findAll();
    });
  }
}

///收藏文件夹管理
class CollectFolderDao {
  final Isar isar;

  CollectFolderDao({required this.isar});

  ///添加收藏夹目录
  Future<CollectFolder> newFolder(CollectFolder newFolder) async {
    final id = await isar.writeTxn(() => isar.collectFolders.put(newFolder));
    return newFolder.copyWith(id: id);
  }

  Future<IList<CollectFolder>> getFoldersBySiteId(int siteId) async {
    final list = await isar.writeTxn(
        () => isar.collectFolders.filter().siteIdEqualTo(siteId).findAll());
    return list.toIList();
  }

  Future<int> getFolderSizeBySiteId(int siteId) async {
    return await isar.writeTxn(
        () => isar.collectFolders.filter().siteIdEqualTo(siteId).count());
  }

  ///查询
  Future<CollectFolder?> find(int siteId, String name) async {
    return await isar.writeTxn(() => isar.collectFolders
        .filter()
        .siteIdEqualTo(siteId)
        .folderNameEqualTo(name)
        .findFirst());
  }

  ///删除ID
  Future<void> deleteById(int id) async {
    await isar.writeTxn(() => isar.collectFolders.delete(id));
  }

  ///添加一个列表
  Future<void> addAll(List<CollectFolder> list) async {
    await isar.writeTxn(() => isar.collectFolders.putAll(list));

  }
}

///收藏文件管理
class CollectModelDao {
  final Isar isar;

  CollectModelDao({required this.isar});

  ///根据文件夹获取所有列表,没有分页.如果内容过多导致性能问题,考虑开多个文件夹.
  Future<IList<CollectModel>> findListByFolder(CollectFolder folder) async {
    final list = await isar.writeTxn(() => isar.collectModels
        .filter()
        .siteIdEqualTo(folder.siteId)
        .folderIdEqualTo(folder.id ?? 0)
        .findAll());
    return list.lock;
  }

  ///添加一个收藏,返回一个携带主键的对象
  Future<CollectModel> add(CollectModel model) async {
    ///检测.
    final id = await isar.writeTxn(() => isar.collectModels.put(model));
    return model.copyWith(id: id);
  }

  ///删除一个对象.
  Future<void> deleteById(int id) async {
    await isar.writeTxn(() => isar.collectModels.delete(id));
  }

  ///查询一个文件是否被收藏
  Future<CollectModel?> isCollect(
      int siteId, String fullPath, bool isDir) async {
    final find = await isar.writeTxn(() => isar.collectModels
        .filter()
        .siteIdEqualTo(siteId)
        .fullPathEqualTo(fullPath)
        .isFolderEqualTo(isDir)
        .findFirst());
    return find;
  }

  ///查询一个文件是否被收藏
  Future<CollectModel?> isCollectByFolder(
      int siteId, String fullPath, bool isDir, int folderId) async {
    final find = await isar.writeTxn(() => isar.collectModels
        .filter()
        .siteIdEqualTo(siteId)
        .fullPathEqualTo(fullPath)
        .isFolderEqualTo(isDir)
        .folderIdEqualTo(folderId)
        .findFirst());
    return find;
  }

  ///查询收藏列表.
  Future<IList<CollectModel>> findListByFolderId(int folderId) async {
    final list = await isar.writeTxn(
        () => isar.collectModels.filter().folderIdEqualTo(folderId).findAll());
    return list.toIList();
  }

  ///删除文件夹内所有的收藏
  Future<void> deleteAllByFolderId(int folderId) async {
    final find = await isar.writeTxn(
        () => isar.collectModels.filter().folderIdEqualTo(folderId).findAll());
    if (find.isNotEmpty) {
      await isar.writeTxn(
          () => isar.collectModels.deleteAll(find.map((e) => e.id!).toList()));
    }
  }
}
