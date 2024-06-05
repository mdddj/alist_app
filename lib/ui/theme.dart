part of 'part.dart';

final _iconSize = myPlatform.whenOrNull(ios: () => 22, macos: () => 15, windows: () => 15)?.toDouble();

class UiTheme {
  static double cardRadius = 8;
  static Color cardColor = Colors.white;
  static double fileUiIconSize = myPlatformBuilder(() => 38, () => 25);

  ///默认 UI
  ThemeData builder(ThemeData themeData, BuildContext context, {String? fontFamily}) {
    const secondary = Colors.black54;
    return themeData.copyWith(
        splashColor: Colors.transparent,
        textTheme: _buildTextTheme(themeData, fontFamily),
        splashFactory: NoSplashFactory(),
        colorScheme: themeData.colorScheme.copyWith(secondary: secondary, surface: Colors.grey.shade100),
        hoverColor: Colors.black12,
        listTileTheme: _listTileTheme(tileColor: cardColor, subColor: Colors.grey),
        iconTheme: _iconTheme(secondary),
        scaffoldBackgroundColor: isMobile() ? Colors.white : Colors.transparent,
        appBarTheme: themeData.appBarTheme.copyWith(
            scrolledUnderElevation: 0,
            elevation: 0,
            shadowColor: Colors.white,
            surfaceTintColor: Colors.white,
            backgroundColor: myPlatform.whenOrNull(
                macos: () => Colors.transparent, ios: () => Colors.white, android: () => Colors.white)),
        filledButtonTheme: FilledButtonThemeData(style: (_buildButtonStyle())),
        textButtonTheme: TextButtonThemeData(style: themeData.textButtonTheme.style ?? _buildButtonStyle()),
        dividerTheme: _dividerTheme(Colors.grey.shade200),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
                padding: const WidgetStatePropertyAll(EdgeInsets.all(12)),
                elevation: WidgetStateProperty.resolveWith((states) {
                  if (states.contains(WidgetState.disabled)) {
                    return 0;
                  }
                  return 30;
                }),
                shadowColor: WidgetStatePropertyAll(Colors.grey.shade200),
                backgroundColor: WidgetStateProperty.resolveWith((states) {
                  if (states.contains(WidgetState.disabled)) {
                    return Colors.grey.shade300;
                  }
                  return Colors.white;
                }),
                surfaceTintColor: const WidgetStatePropertyAll(Colors.white))),
        outlinedButtonTheme: OutlinedButtonThemeData(
            style: themeData.outlinedButtonTheme.style ??
                _buildButtonStyle().copyWith(
                    foregroundColor: const WidgetStatePropertyAll(Colors.grey),
                    side: WidgetStatePropertyAll(BorderSide(color: Colors.grey.shade400, width: .7)))),
        cupertinoOverrideTheme: const NoDefaultCupertinoThemeData(),
        tooltipTheme: _tooltipTheme(Colors.white, Colors.black),
        cardTheme: _cardTheme(cardColor),
        popupMenuTheme: _buildPopupMenuTheme(Colors.white),
        bottomNavigationBarTheme: themeData.bottomNavigationBarTheme
            .copyWith(type: BottomNavigationBarType.fixed, backgroundColor: Colors.white, elevation: 6),
        dialogTheme: _dialogTheme(cardColor, titleColor: Colors.black),
        bottomSheetTheme: _bottomSheetThemeData(cardColor),
        inputDecorationTheme: _inputDecorationTheme(borderColor: Colors.black45),
        bottomAppBarTheme: BottomAppBarTheme(
            elevation: 16,
            color: Colors.grey.shade200,
            shadowColor: Colors.grey,
            height: 48,
            surfaceTintColor: Colors.grey.shade200),
        navigationBarTheme: NavigationBarThemeData(
            backgroundColor: Colors.grey.shade200,
            surfaceTintColor: Colors.grey.shade100,
            shadowColor: Colors.grey,
            elevation: 10,
            height: 48),
        navigationRailTheme: NavigationRailThemeData(
          backgroundColor: Colors.grey.shade200,
          elevation: 10,
        ));
  }

  ButtonStyle _buildButtonStyle() {
    return ButtonStyle(
        shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(cardRadius * 10))),
        textStyle: WidgetStateProperty.resolveWith((states) {
          if(states.contains(WidgetState.focused)){
            return const TextStyle(fontSize: 18);
          }
          return const TextStyle(fontSize: 14);
        },),
        padding: WidgetStateProperty.resolveWith(
          (states) {
            if (states.contains(WidgetState.focused)) {
              return const EdgeInsets.all(12);
            }
            return const EdgeInsets.all(6);
          },
        ));
  }

  ///默认 UI (暗夜)
  ThemeData builderWithDark(ThemeData themeData, BuildContext context, {String? fontFamily}) {
    return ThemeData.dark().copyWith(
        primaryColor: const Color(0xff000000),
        iconTheme: _iconTheme(const Color(0xff6b6882)),
        textTheme: _buildTextTheme(themeData, fontFamily),
        scaffoldBackgroundColor: Colors.transparent,
        splashColor: Colors.transparent,
        splashFactory: NoSplashFactory(),
        hoverColor: const Color(0xff3B3B3B),
        listTileTheme: _listTileTheme(tileColor: Colors.white30),
        appBarTheme: themeData.appBarTheme.copyWith(backgroundColor: Colors.transparent),
        cupertinoOverrideTheme: const NoDefaultCupertinoThemeData(),
        tooltipTheme: _tooltipTheme(Colors.white, Colors.brown),
        dialogTheme: _dialogTheme(const Color(0xff17181B), titleColor: Colors.white),
        cardTheme: _cardTheme(const Color(0xff17181B)),
        colorScheme: themeData.colorScheme.copyWith(tertiaryContainer: const Color(0xff273048)),
        bottomSheetTheme: _bottomSheetThemeData(const Color(0xff41555d)),
        inputDecorationTheme: _inputDecorationTheme(borderColor: Colors.grey, bgColor: Colors.transparent));
  }

  TextTheme _buildTextTheme(ThemeData data, String? fontFamily) {
    final textTheme = data.textTheme;
    return textTheme.copyWith(
        bodyMedium: textTheme.bodyMedium?.copyWith(fontFamily: fontFamily).useSystemChineseFont(),
        bodySmall: textTheme.bodySmall?.copyWith(fontFamily: fontFamily).useSystemChineseFont(),
        bodyLarge: textTheme.bodyLarge?.copyWith(fontFamily: fontFamily).useSystemChineseFont(),
        titleMedium: textTheme.titleMedium?.copyWith(fontFamily: fontFamily).useSystemChineseFont(),
        titleSmall: textTheme.titleSmall?.copyWith(fontFamily: fontFamily).useSystemChineseFont(),
        titleLarge: textTheme.titleLarge?.copyWith(fontFamily: fontFamily).useSystemChineseFont(),
        labelSmall: textTheme.labelSmall?.copyWith(fontFamily: fontFamily).useSystemChineseFont(),
        labelMedium: textTheme.labelMedium?.copyWith(fontFamily: fontFamily).useSystemChineseFont(),
        labelLarge: textTheme.labelLarge?.copyWith(fontFamily: fontFamily).useSystemChineseFont(),
        displayMedium: textTheme.displayMedium?.copyWith(fontFamily: fontFamily).useSystemChineseFont(),
        displayLarge: textTheme.displayLarge?.copyWith(fontFamily: fontFamily).useSystemChineseFont(),
        displaySmall: textTheme.displaySmall?.copyWith(fontFamily: fontFamily).useSystemChineseFont());
  }

  BottomSheetThemeData _bottomSheetThemeData(Color bg) {
    return BottomSheetThemeData(
        showDragHandle: myPlatform.whenOrNull(ios: () => true, android: () => true, windows: () => true),
        backgroundColor: bg,
        elevation: 30,
        modalElevation: 10,
        surfaceTintColor: bg,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(isMobile() ? 0 : cardRadius)));
  }

  InputDecorationTheme _inputDecorationTheme({required Color borderColor, Color? bgColor}) {
    final border = UnderlineInputBorder(borderRadius: BorderRadius.circular(3), borderSide: const BorderSide(width: 2));
    return InputDecorationTheme(
      filled: true,
      isDense: false,
      fillColor: bgColor ?? const Color(0xffF6F6F7),
      hintStyle: const TextStyle(color: Color(0xffABABAC)),
      focusedBorder: border,
      enabledBorder: border,
      border: border,
      contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
    );
  }

  DividerThemeData _dividerTheme(Color color) {
    return DividerThemeData(color: color, indent: 5, endIndent: 5);
  }

  ///图标主题
  IconThemeData _iconTheme(Color color) {
    return IconThemeData(size: _iconSize, color: color);
  }

  ///弹窗主题
  DialogTheme _dialogTheme(Color backgroundColor, {required Color titleColor}) {
    return DialogTheme(
        elevation: 10,
        titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: titleColor),
        backgroundColor: backgroundColor,
        surfaceTintColor: backgroundColor.withOpacity(.9));
  }

  ///提示主题
  TooltipThemeData _tooltipTheme(Color textColor, Color bgColor) {
    return TooltipThemeData(
      decoration: BoxDecoration(color: bgColor, borderRadius: BorderRadius.circular(cardRadius)),
      textStyle: TextStyle(color: textColor),
    );
  }

  ///卡片主题
  CardTheme _cardTheme(Color color) {
    return CardTheme(
        color: color,
        margin: const EdgeInsets.all(12),
        shadowColor: color,
        surfaceTintColor: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(cardRadius)));
  }

  ListTileThemeData _listTileTheme({required Color tileColor, Color? subColor}) {
    return ListTileThemeData(
        tileColor: tileColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(cardRadius)),
        subtitleTextStyle: TextStyle(color: subColor));
  }

  ///弹出菜单样式
  PopupMenuThemeData _buildPopupMenuTheme(Color bg) {
    return PopupMenuThemeData(
        color: bg,
        shadowColor: bg,
        surfaceTintColor: bg,
        elevation: 10,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(cardRadius), side: const BorderSide(width: .6, color: Colors.black26)));
  }
}
