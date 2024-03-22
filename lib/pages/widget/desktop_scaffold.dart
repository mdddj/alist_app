part of '../part.dart';

///桌面端主页的脚手架
class DesktopScaffold extends ConsumerWidget {
  final Widget firstChild;
  final Widget child;
  final bool showHeader;

  const DesktopScaffold(
      {super.key,
      required this.firstChild,
      required this.child,
      this.showHeader = true});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiSetting = ref.watch(appUiSettingStateProvider);
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          const MainToolBar(),
          Expanded(
            child: Card(
              margin: const EdgeInsets.only(top: 8, bottom: 8, right: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///左侧区域
                  DragSplitComponent(
                    child: Container(
                      width: uiSetting.leftMenuWidth,
                      height: context.screenHeight,
                      constraints: const BoxConstraints(minWidth: 200),
                      decoration: BoxDecoration(
                          color: context.cardColor,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(UiTheme.cardRadius),
                              bottomLeft: Radius.circular(UiTheme.cardRadius))),
                      child: Bg(
                        child: Column(
                          children: [
                            if (showHeader)
                              MainHeader(child: HookConsumer(
                                builder: (BuildContext context, WidgetRef ref,
                                    Widget? child) {
                                  final isExpand = ref.menuState.leftMenuExpand;
                                  if (isExpand) {
                                    return const SizedBox.shrink();
                                  }
                                  return const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [ActiveDomain(), FilesToolbar()],
                                  );
                                },
                              )),
                            Expanded(child: firstChild)
                          ],
                        ),
                      ),
                    ),
                    onChangeX: (value) => ref
                        .read(appUiSettingStateProvider.notifier)
                        .changeWidth(value),
                    onDraggingChange: (value) => ref
                        .read(appUiSettingStateProvider.notifier)
                        .changeIsDragging(value),
                  ),

                  ///右侧区域
                  Expanded(child: HookConsumer(builder: (context, ref, _) {
                    final isExpand = ref.menuState.leftMenuExpand;
                    return PhysicalModel(
                      color: context.cardColor,
                      elevation: 10,
                      shadowColor: context.cardColor,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(UiTheme.cardRadius),
                          bottomRight: Radius.circular(UiTheme.cardRadius),
                          topLeft: isExpand
                              ? Radius.circular(UiTheme.cardRadius)
                              : Radius.zero,
                          bottomLeft: isExpand
                              ? Radius.circular(UiTheme.cardRadius)
                              : Radius.zero),
                      child: Container(
                          height: context.screenHeight,
                          decoration: BoxDecoration(
                              color: context.cardColor,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(UiTheme.cardRadius),
                                  bottomRight:
                                      Radius.circular(UiTheme.cardRadius),
                                  topLeft: isExpand
                                      ? Radius.circular(UiTheme.cardRadius)
                                      : Radius.zero,
                                  bottomLeft: isExpand
                                      ? Radius.circular(UiTheme.cardRadius)
                                      : Radius.zero)),
                          child: child.animate().fade()),
                    );
                  }))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
