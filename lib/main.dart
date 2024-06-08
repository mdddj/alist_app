import 'dart:io';

import 'package:dd_js_util/dd_js_util.dart';
import 'package:dd_js_util/theme/model.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'models/app_setting.dart';
import 'router/router.dart';
import 'tool/part.dart';
import 'ui/part.dart';
import 'widget/part.dart';

const appName = "BlistHub";

/// https://pan.itbug.shop
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  InstanceTool.init();
  await AppThemeUtil().registerAdapterAndOpenBox();
  await IsarTool.instance.init();
  HttpOverrides.global = MyHttpOverrides();
  instanceInit();
  runApp(const ProviderScope(child: MyApp()));
}

///
class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fontFamily = ref.appSetting.font;
    return ThemeBuildWidget(
      themeBuild: (theme) {
        var find =
            CustomAppThemeData.values.toIList().get(theme.themeIndex);
        UiTheme().builderWithDark(
            MyAppTheme.getDarkTheme(scheme: find.flexScheme), context,
            fontFamily: myPlatform.whenOrNull(
              macos: () => '.SF Pro Text',
            ) ??
                fontFamily);
        return MaterialApp.router(
          title: appName,
          theme: ThemeData.light(),
          routerConfig: routers,
          darkTheme: ThemeData.dark(),
          themeMode: ThemeMode.system,
          debugShowCheckedModeBanner: false,
          builder: ToastWrapper.init(
              toastBuilder: DefaultToast.new,
              builder: (ctx, widget) {
                return MediaQuery(
                    data: MediaQuery.of(ctx).copyWith(
                        boldText: false,
                        textScaler: TextScaler.linear(myPlatform.whenOrNull(
                              macos: () => ref.appSetting.fontZoom,
                              ios: () => ref.appSetting.fontZoom,
                            ) ??
                            1)),
                    child: widget ?? const SizedBox.shrink());
              },
              loadingBuilder: (msg) => FullLoading(text: msg),
              notifyStyle: const FlutterSmartNotifyStyle(
                  warningBuilder: DefaultWarningBuilder.new,
                  successBuilder: DefaultSuccessBuilder.new)),
        );
      },
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void instanceInit() {
  GetIt.instance.registerSingleton(MyFileTool());
  Hive.registerAdapter(AppSettingAdapter());
}
