part of 'part.dart';

class AccountManager with IsarMixin {
  static AccountManager get instance => GetIt.instance.get<AccountManager>();
  DomainAccount? current;

  Future<void> changeCurrentDomain(DomainAccount account) async {
    await updateAll((value) {
      return value.copyWith(active: false);
    });
    await isar.writeTxn(() async {
      final find = await isar.domainAccounts.get(account.id);
      if (find != null) {
        find.active = true;
        await isar.domainAccounts.put(find);
      } else {
        throw GlobalError.biz('切换失败.');
      }
    });
    DioInstance.instance.reset();
  }

  ///登录成功
  Future<void> loginSuccess(String token) async {
    final accountActive = await active;
    if (accountActive != null) {
      await update(accountActive.id, (value) {
        value?.authToken = token;
      });
    }
  }

  ///获取 token
  Future<String?> getAuthToken() async {
    final accountDomain = await active;
    return accountDomain?.authToken;
  }

  ///删除 token
  Future<void> cleanAuthToken() async {
    final accountDomain = await active;
    if (accountDomain != null) {
      await update(accountDomain.id, (value) {
        value?.authToken = '';
      });
    }
  }

  ///获取全部站点
  Future<List<DomainAccount>> getDomains() async {
    return isar.writeTxn(() async {
      return isar.domainAccounts.where().findAll();
    });
  }

  ///创建一个新的
  Future<void> createNew(DomainAccount account) async {
    await isar.writeTxn(() async {
      await isar.domainAccounts.put(account);
    });
  }

  ///编辑
  Future<void> update(int id, ValueChanged<DomainAccount?> doUpdate) async {
    await isar.writeTxn(() async {
      final find = await isar.domainAccounts.get(id);
      if (find != null) {
        doUpdate.call(find);
        await isar.domainAccounts.put(find);
      }
    });
  }

  ///删除
  Future<void> delete(DomainAccount account) async {
    await isar.writeTxn(() async {
      await isar.domainAccounts.delete(account.id);
    });
  }

  ///获取当前使用的
  Future<DomainAccount?> get active async {
    final r = await isar.writeTxn(() async {
      final r2 =
          await isar.domainAccounts.filter().activeEqualTo(true).findFirst();
      return r2;
    });
    return r;
  }

  ///批量修改全部数据
  Future<void> updateAll(ValueCopyWith<DomainAccount> doChange) async {
    final findAll = await getDomains();
    await isar.writeTxn(() async {
      await Future.forEach(findAll, (element) async {
        await isar.domainAccounts.put(doChange(element));
      });
    });
  }

  ///插入列表
  Future<void> insertList(List<DomainAccount> list) async {
    await isar.writeTxn(() async {
      await isar.domainAccounts.putAll(list);
    });
  }

  ///批量删除
  Future<void> deleteByIds(List<int> ids) async {
    await isar.writeTxn(() async {
      isar.domainAccounts.deleteAll(ids);
    });
  }
}
