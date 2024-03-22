part of 'part.dart';

class FilesToolbar extends PlatformWidget {
  const FilesToolbar({super.key});

  @override
  Widget buildWithDesktop(
      BuildContext context,WidgetRef ref, DomainAccount domain) {
    return SpaceRow(
      children: [
        HoverWidget(
          onTap: (_, ___) {
            ref.activeDomainFun.refreshStoragesList();
          },
          builder: (color, _, controller) {
            return Icon(
              Icons.refresh,
              color: color ?? Colors.grey,
            );
          },
          toolTip: '刷新',
          hoverColor: context.primaryColor,
        ),
        // HookConsumer(
        //   builder: (context, ref, child) {
        //     return HoverWidget(
        //       onTap: (_, ___) {
        //         ref
        //             .read(appUiSettingStateProvider.notifier)
        //             .changeUi((value) => value.copyWith(hideLeftMenu: true));
        //       },
        //       builder: (color, _, controller) {
        //         return Icon(
        //           Icons.menu_open,
        //           color: color ?? Colors.grey,
        //         );
        //       },
        //       toolTip: '收起菜单',
        //       hoverColor: context.primaryColor,
        //     );
        //   },
        // )
      ],
    );
  }

  @override
  Widget buildWithMobile(
      BuildContext context,WidgetRef ref, DomainAccount domain) {
    return const SizedBox.shrink();
  }
}
