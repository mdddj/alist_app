import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'fs_list.dart';

part 'fs_router_system_model.freezed.dart';
part 'fs_router_system_model.g.dart';

extension FsRouterSystemModelEx on FsRouterSystemModel {
  ///返回当前路由路径
  String get getCurrentRouterPath {
    if (router.isEmpty) {
      return "/";
    }
    var root = '';
    for (var element in router) {
      root += '/${element.name}';
    }
    return root;
  }
}

@freezed
class FsRouterSystemModel with _$FsRouterSystemModel {
  const FsRouterSystemModel._();

  const factory FsRouterSystemModel({
    ///当前文件路由
    @Default(IListConst([])) IList<FsModel> router,

  }) = _FsRouterSystemModel;

  factory FsRouterSystemModel.fromJson(Map<String, dynamic> json) =>
      _$FsRouterSystemModelFromJson(json);
}
