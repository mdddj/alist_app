import 'dart:async';

import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../models/fs_list.dart';
import '../models/preview_param.dart';
import '../pages/part.dart';
import '../provider/sites_provider.dart';
import '../tool/part.dart';
import '../widget/part.dart';

part 'router.g.dart';

final routers = GoRouter(routes: $appRoutes, initialLocation: Routers.init);

class Routers {
  static const init = '/';
  static const home = 'index';
  static const wishlist = 'wishlist';
  static const upload = 'upload';

  static const files = 'files';
  static const preview = 'preview';
  static const setting = 'setting';
}

@TypedGoRoute<MyInitStart>(path: Routers.init, routes: [
  TypedStatefulShellRoute<MyMainPage>(
      branches: <TypedStatefulShellBranch<StatefulShellBranchData>>[
        TypedStatefulShellBranch(routes: [
          TypedGoRoute<MyMobileIndexPage>(
            path: Routers.home,
            name: Routers.home,
            routes: [
              TypedGoRoute<MyMobileFilesPage>(
                  path: Routers.files, name: Routers.files),
            ],
          ),
        ]),
        TypedStatefulShellBranch(routes: [
          TypedGoRoute<MyMobileTagPage>(
              path: Routers.wishlist, name: Routers.wishlist),
        ]),
        TypedStatefulShellBranch(routes: [
          TypedGoRoute<MyMobileUploadPage>(
              path: Routers.upload, name: Routers.upload),
        ])
      ]),
  TypedGoRoute<MyPreviewFilePage>(path: Routers.preview, name: Routers.preview),
  TypedGoRoute<MySettingPage>(path: Routers.setting, name: Routers.setting)
])
class MyInitStart extends GoRouteData {
  const MyInitStart();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    if (isMobile()) {
      return const StartPage();
    }
    return const IndexPage();
  }
}

class MyMainPage extends StatefulShellRouteData {
  const MyMainPage();

  @override
  Page<void> pageBuilder(BuildContext context, GoRouterState state,
      StatefulNavigationShell navigationShell) {
    if (isMobile()) {
      return NoTransitionPage(child: MobileHomePage(child: navigationShell));

    }
    return const NoTransitionPage(child: IndexPage());
  }
}

//主页
class MyMobileIndexPage extends GoRouteData {
  const MyMobileIndexPage();

  @override
  FutureOr<String?> redirect(BuildContext context, GoRouterState state) {
    final activeApp = ProviderScope.containerOf(context).read(sitesStateProvider
        .select((value) => value.value?.find((element) => element.active)));
    if (activeApp == null) {
      return "/index/select-domain";
    }
    return super.redirect(context, state);
  }

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const MobileIndexPage();
  }
}

//收藏
class MyMobileTagPage extends GoRouteData {
  const MyMobileTagPage();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const MobileTagPage();
  }
}

//上传
class MyMobileUploadPage extends GoRouteData {
  const MyMobileUploadPage();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const NoTransitionPage(child: MobileUploadPage());
  }
}

//文件列表
class MyMobileFilesPage extends GoRouteData {
  const MyMobileFilesPage();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    final fsModel = state.extra as FsModel;
    return FilesSinglePage(fsModel: fsModel);
  }
}

class MySettingPage extends GoRouteData {
  const MySettingPage();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const MobileSettingPage();
  }
}

//选择站点
class MySelectDomainPage extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const NoTransitionPage(child: SelectDomainWidget());
  }
}

//手机端预览
class MyPreviewFilePage extends GoRouteData {
  MyPreviewFilePage();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    final param = state.extra as PreviewParam;
    return MobilePreviewPage(
      param: param,
    );
  }
}
