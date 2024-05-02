part of '../part.dart';

class MobileLeftDrawerWidget extends ConsumerWidget {
  const MobileLeftDrawerWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final domains = ref.watch(sitesStateProvider);
    return domains.when(
      data: (data) {
        return Drawer(
          elevation: 0,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          surfaceTintColor: context.cardColor,
          shadowColor: context.cardColor,
          backgroundColor: context.cardColor,
          child: Column(
            children: [
              Expanded(
                child: CustomScrollView(
                  slivers: [
                    SliverPadding(
                      padding: EdgeInsets.only(
                          top: context.paddingTop,
                          bottom: context.paddingBottom,
                          left: 10,
                          right: 10),
                      sliver: SliverList.list(children: [
                        Text(appName, style: context.textTheme.titleLarge),
                        const Divider(),
                        Text('切换站点', style: context.textTheme.labelSmall),
                        ...data.map((e) {
                          return ListTile(
                              leading: DomainLogo(item: e)
                                  .constraintBox((size, child) => SizedBox(
                                        width: 18,
                                        height: 18,
                                        child: child,
                                      )),
                              title: Text(e.name),
                              onTap: () {
                                context.hideKeyBoard();
                                context.nav.pop();
                                Future.microtask(() => ref.switchApplication(e));
                              },
                              trailing: e.isEq(ref.activeDomain)
                                  ? const Icon(LineIcons.check)
                                  : null);
                        }),
                        const Divider(),
                        ListTile(
                          onTap: () {
                            context.nav
                              ..pop()
                              ..pop();
                          },
                          title: const Text('回到主界面'),
                        )
                      ]),
                    )
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('设置'),
                onTap: () {
                  final nav = context.nav;
                  nav.pop();
                  const MySettingPage().push(context);
                },
                trailing: const CupertinoListTileChevron(),
              )
            ],
          ),
        );
      },
      error: (error, stackTrace) {
        return Center(
          child: Text('$error'),
        );
      },
      loading: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
