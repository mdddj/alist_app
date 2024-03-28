import 'package:dd_js_util/dd_js_util.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../account/part.dart';
import '../api/part.dart';
import '../models/domain_account.dart';

part 'sites_provider.g.dart';

///站点列表
@Riverpod(keepAlive: true)
class SitesState extends _$SitesState {
  @override
  Future<IList<DomainAccount>> build() async {
    final list = await AccountManager.instance.getDomains();
    return list.lock;
  }

  ///更换站点
  void switchDomain(DomainAccount account) {
    DioInstance.instance.reset();
    var list = state.value ?? const IListConst([]);
    if (list.isNotEmpty) {
      list = list
          .updateAll((value) => value.copyWith(active: false))
          .updateItemFirstWhere((element) => element.isEq(account),
              (value) => value.copyWith(active: true));
    }
    state = AsyncData(list);
  }

  void reset() {
    DioInstance.instance.reset();
    var list = (state.value ?? const IListConst([]))
        .updateAll((value) => value.copyWith(active: false));
    state = AsyncData(list);
  }


  void change(bool Function(DomainAccount) where,ValueCopyWith<DomainAccount> doChange){
    final domains = state.value;
    if(domains!=null && domains.isNotEmpty){
      state = AsyncData(domains.updateAllWhere(where, doChange));
    }
  }
}
