part of '../part.dart';

///站点的核心入口
///
/// 理论上可以生成多个站点同时在线
class ApplicationWidget extends PlatformWidget {
  const ApplicationWidget({super.key});

  /// 桌面端使用横向布局
  @override
  Widget buildWithDesktop(BuildContext context, _, DomainAccount domain) {
    return const Scaffold(
      body: Row(
        children: [NavBar(), ApplicationMainWidget()],
      ),
    );
  }

  /// 手机端布局
  @override
  Widget buildWithMobile(
      BuildContext context, WidgetRef ref, DomainAccount domain) {
    final storages = domain.mainStorages.content;
    final layout = domain.layoutStyle;
    return Scaffold(
      // todo --
      // key: applicationProvider.ref.watch(menuProvider.select((value) => value.indexScrollAppbarKey)),
      drawer: const MobileLeftDrawerWidget(),
      body: CustomScrollView(
        slivers: [
          const MobileAppbar(),
          const HomeMobileToolbar().toSliverWidget,
          const _MobileIndexStateWidget(),
          switch (layout) {
            FilesLayoutStyle.list => SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                sliver: SliverList.list(children: [
                  ...storages.map((element) => FsItemLayout(
                        fsModel: element,
                        onClick: (v) => onClick(v, context),
                      ))
                ]),
              ),
            FilesLayoutStyle.grid =>
              _GridRenderLayout(storages: storages, onClick: onClick),
          }
        ],
      ).editPage,
    );
  }

  void onClick(FsModel value, BuildContext context) {
    context.push(const MyMobileFilesPage().location,extra: value);
  }
}

class ApplicationMainWidget extends PlatformWidget {
  const ApplicationMainWidget({super.key});

  @override
  Widget buildWithDesktop(
      BuildContext context, WidgetRef ref, DomainAccount domain) {
    return Expanded(
      child: IndexedStack(
        index: domain.navigators.indexOf(domain.activePage),
        children: [
          ...domain.navigators
              .map((element) => element.child ?? const SizedBox.shrink())
        ],
      ),
    );
  }

  @override
  Widget buildWithMobile(
      BuildContext context, WidgetRef ref, DomainAccount domain) {
    return const SizedBox.shrink();
  }
}

class _GridRenderLayout extends ConsumerWidget {
  final IList<FsModel> storages;
  final void Function(FsModel model, BuildContext cotnext) onClick;

  const _GridRenderLayout({required this.storages, required this.onClick});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      sliver: SliverWaterfallFlow.count(
        crossAxisCount: 2,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        children: [
          ...storages.map((element) => FsItemLayout(
                fsModel: element,
                onClick: (v) => onClick(v, context),
              ))
        ],
      ),
    );
  }
}

///状态显示
class _MobileIndexStateWidget extends ConsumerWidget {
  const _MobileIndexStateWidget();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final DomainAccount(:storageError) = ref.activeDomain!;
    if (storageError != null) {
      return SliverFillRemaining(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(storageError.getMessage(),
                      style: context.textTheme.titleMedium,
                      textAlign: TextAlign.center),
                ),
              ),
              const SizedBox(height: 12),
              switch (storageError) {
                TokenExpireError() || NoPermissionError() => const FilledButton(
                    onPressed: showLoginDialog, child: Text('登录')),
                _ => OutlinedButton(
                    onPressed: () => ref.activeDomainFun.refreshStoragesList(),
                    child: const Text('刷新'))
              }
            ],
          ),
        ),
      );
    }
    return const SliverToBoxAdapter();
  }
}
