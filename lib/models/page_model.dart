import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'fs_list.dart';

part 'page_model.freezed.dart';

enum PageType { def, action, setting, upload,other }

extension PageModelEx on PageModel {
  String getTitle(BuildContext context) {
    return map(
        main: (value) => "首页",
        favorite: (value) => "收藏",
        upload: (value) => "上传",
        fsModel: (ApplicationFsModelPage value) {
          return "文件";
        },
        custom: (ApplicationCustomPage value) {
          return value.title;
        });
  }

  IconData getIconData(BuildContext context) {
    return map(
      main: (value) => Icons.home_filled,
      favorite: (value) => Icons.favorite,
      upload: (value) => Icons.upload,
      fsModel: (ApplicationFsModelPage value) {
        return Icons.file_present_rounded;
      },
      custom: (ApplicationCustomPage value) {
        return value.icon;
      },
    );
  }

  bool isEq(PageModel model) => getId == model.getId;

  String get getId {
    return map(
        main: (value) => value.id,
        favorite: (value) => value.id,
        upload: (value) => value.id,
        fsModel: (value) => value.model.name,
        custom: (ApplicationCustomPage value) {
          return value.id;
        });
  }

  Widget? get child => whenOrNull(
      main: (active, id, child, type, render) => child,
      upload: (active, child, id, type, render) => child,
      custom: (title, icon, pageType, child, active, id, ending) => child,
      favorite: (active, id, pageType, child) => child);
}

typedef BuilderEndingWidget = Widget Function(
    BuildContext context, WidgetRef ref);

typedef BuildMenuIcon = Widget Function(Widget menuIcon);

@freezed
class PageModel with _$PageModel {
  const PageModel._();

  ///主页面
  factory PageModel.main(
      {@Default(true) bool active,
      @Default('main') String id,
      Widget? child,
      @Default(PageType.def) PageType pageType,
      @igFreezedJson BuildMenuIcon? render}) = ApplicationMainPage;

  ///收藏页面
  factory PageModel.favorite(
      {@Default(false) bool active,
      @Default('favorite') String id,
      @Default(PageType.def) PageType pageType,
      @igFreezedJson Widget? child}) = ApplicationFavoritePage;

  ///上传页面
  factory PageModel.upload(
      {@Default(false) bool active,
      Widget? child,
      @Default('upload') String id,
      @Default(PageType.def) PageType pageType,
      @igFreezedJson BuildMenuIcon? render}) = ApplicationUploadPage;

  ///文件类型的页面
  factory PageModel.fsModel(
      {required FsModel model,
      @Default(false) bool active,
      @Default(PageType.action) PageType pageType}) = ApplicationFsModelPage;

  ///自定义类型的页面
  factory PageModel.custom(
      {required String title,
      required IconData icon,
      required PageType pageType,
      required Widget child,
      @Default(false) bool active,
      @Default('custom') String id,
      BuilderEndingWidget? ending}) = ApplicationCustomPage;
}
