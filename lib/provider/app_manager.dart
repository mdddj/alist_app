import 'package:collection/collection.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider/provider.dart';

import '../account/part.dart';
import '../models/domain_account.dart';
import '../models/fs_list.dart';
import 'sites_provider.dart';

///
extension ApplicationManagerExByRef on Ref {
  ///切换站点
  Future<void> switchApplication(DomainAccount domain) async {
    await AccountManager.instance.changeCurrentDomain(domain);
    read(sitesStateProvider.notifier).switchDomain(domain);
  }
}

extension ActiveDomainByContextEx on BuildContext {
  DomainAccount? get activeDomain {
    return watch<DomainAccount>();
  }
}

///
extension ApplicationManagerEx on WidgetRef {
  ///切换站点
  Future<void> switchApplication(DomainAccount domain) async {
    await AccountManager.instance.changeCurrentDomain(domain); //更新缓存
    read(sitesStateProvider.notifier).switchDomain(domain);
  }

  ///当前选中的账号
  DomainAccount get activeDomain => watch(sitesStateProvider.select(
        (value) => value.value?.firstWhereOrNull(
          (element) => element.active,
        ),
      )) ?? DomainAccount(empty: true);

  DomainAccount get activeDomainRead => read(sitesStateProvider.select(
        (value) => value.value?.firstWhereOrNull(
          (element) => element.active,
    ),
  )) ?? DomainAccount(empty: true);


  IList<FsModel> get activeRootModels => activeDomain.mainStorages.content;
}

extension ApplicationManagerEx2 on Ref {
  ///切换站点
  Future<void> switchApplication(DomainAccount domain) async {
    await AccountManager.instance.changeCurrentDomain(domain); //更新缓存
    read(sitesStateProvider.notifier).switchDomain(domain);
  }

  ///当前选中的账号
  DomainAccount? get activeDomain => watch(sitesStateProvider.select((value) => value.value))?.firstWhereOrNull((element) => element.active);

  IList<FsModel> get activeRootModels => activeDomain?.mainStorages.content ?? const IListConst([]);
}
