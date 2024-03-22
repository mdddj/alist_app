part of '../part.dart';

class MainPage extends PlatformWidget {
  const MainPage({super.key});

  @override
  Widget buildWithDesktop(
      BuildContext context, WidgetRef ref, DomainAccount domain) {
    final fsList = domain.mainStorages.content;
    final widgets = fsList.map((element) => element.child).toIList();
    final select = fsList.find((element) => element.active);
    return DesktopScaffold(
        //左侧面板
        firstChild: const _MainStoragesWidget(),
        //右侧面板
        child: fsList.isEmpty
            ? const SizedBox.shrink()
            : LazyIndexedStack(
                index: select != null ? fsList.indexOf(select) : 0,
                children: widgets.unlock,
              ));
  }

  @override
  Widget buildWithMobile(
      BuildContext context, WidgetRef ref, DomainAccount domain) {
    return const _MainStoragesWidget();
  }
}

///存储桶
class _MainStoragesWidget extends PlatformWidget {
  const _MainStoragesWidget();

  @override
  Widget buildWithDesktop(
      BuildContext context, WidgetRef ref, DomainAccount domain) {
    final storages = domain.mainStorages.content;
    return FsListRender(
      hideSortToolBar: true,
      fsModelList: storages,
      onClick: (value) {
        domain.switchMainStorage(value);
      },
    );
  }

  @override
  Widget buildWithMobile(
      BuildContext context, WidgetRef ref, DomainAccount domain) {
    return const SizedBox.shrink();
  }
}
