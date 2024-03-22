// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $myInitStart,
    ];

RouteBase get $myInitStart => GoRouteData.$route(
      path: '/',
      factory: $MyInitStartExtension._fromState,
      routes: [
        StatefulShellRouteData.$route(
          factory: $MyMainPageExtension._fromState,
          branches: [
            StatefulShellBranchData.$branch(
              routes: [
                GoRouteData.$route(
                  path: 'index',
                  name: 'index',
                  factory: $MyMobileIndexPageExtension._fromState,
                  routes: [
                    GoRouteData.$route(
                      path: 'files',
                      name: 'files',
                      factory: $MyMobileFilesPageExtension._fromState,
                    ),
                  ],
                ),
              ],
            ),
            StatefulShellBranchData.$branch(
              routes: [
                GoRouteData.$route(
                  path: 'wishlist',
                  name: 'wishlist',
                  factory: $MyMobileTagPageExtension._fromState,
                ),
              ],
            ),
            StatefulShellBranchData.$branch(
              routes: [
                GoRouteData.$route(
                  path: 'upload',
                  name: 'upload',
                  factory: $MyMobileUploadPageExtension._fromState,
                ),
              ],
            ),
          ],
        ),
        GoRouteData.$route(
          path: 'preview',
          name: 'preview',
          factory: $MyPreviewFilePageExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'setting',
          name: 'setting',
          factory: $MySettingPageExtension._fromState,
        ),
      ],
    );

extension $MyInitStartExtension on MyInitStart {
  static MyInitStart _fromState(GoRouterState state) => const MyInitStart();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $MyMainPageExtension on MyMainPage {
  static MyMainPage _fromState(GoRouterState state) => const MyMainPage();
}

extension $MyMobileIndexPageExtension on MyMobileIndexPage {
  static MyMobileIndexPage _fromState(GoRouterState state) =>
      const MyMobileIndexPage();

  String get location => GoRouteData.$location(
        '/index',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $MyMobileFilesPageExtension on MyMobileFilesPage {
  static MyMobileFilesPage _fromState(GoRouterState state) =>
      const MyMobileFilesPage();

  String get location => GoRouteData.$location(
        '/index/files',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $MyMobileTagPageExtension on MyMobileTagPage {
  static MyMobileTagPage _fromState(GoRouterState state) =>
      const MyMobileTagPage();

  String get location => GoRouteData.$location(
        '/wishlist',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $MyMobileUploadPageExtension on MyMobileUploadPage {
  static MyMobileUploadPage _fromState(GoRouterState state) =>
      const MyMobileUploadPage();

  String get location => GoRouteData.$location(
        '/upload',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $MyPreviewFilePageExtension on MyPreviewFilePage {
  static MyPreviewFilePage _fromState(GoRouterState state) =>
      MyPreviewFilePage();

  String get location => GoRouteData.$location(
        '/preview',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $MySettingPageExtension on MySettingPage {
  static MySettingPage _fromState(GoRouterState state) => const MySettingPage();

  String get location => GoRouteData.$location(
        '/setting',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
