part of 'part.dart';

final _settingSelectTitle =
    StateProvider<String>((ref) => SettingModel.defaultSettings.first.title);

class MobileSettingPage extends StatelessWidget {
  const MobileSettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          context.isDarkModel ? Colors.black : Colors.grey.shade200,
      appBar: AppBar(
        title: Text('设置',style: context.textTheme.titleLarge),
        backgroundColor: Colors.transparent,
        centerTitle: false,
        automaticallyImplyLeading: false,
        leading: null,
      ),
      body: const SettingPage(),
    );
  }
}

///设置页面
class SettingPage extends PlatformWidget {
  const SettingPage({super.key});

  @override
  Widget buildWithDesktop(
      BuildContext context, WidgetRef ref, DomainAccount domain) {
    return HookConsumer(
      builder: (context, ref, child) {
        final settingMap = SettingModel.defaultSettings
            .groupListsBy((element) => element.title);
        final widgets = settingMap[ref.watch(_settingSelectTitle)] ?? [];
        return DesktopScaffold(
            showHeader: false,
            firstChild: SingleChildScrollView(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...settingMap.keys.map((e) => MyButton(
                        text: e,
                        onTap: () {
                          ref.read(_settingSelectTitle.notifier).state = e;
                        },
                        isActivated: ref.watch(_settingSelectTitle) == e,
                      ))
                ],
              ),
            ),
            child: SizedBox(
              width: double.infinity,
              child: CustomScrollView(
                slivers: [
                  SliverPadding(
                    padding: const EdgeInsets.all(12),
                    sliver: SliverList.list(children: [
                      ...widgets.map((e) {
                        final SettingModel(:subTitle, :child) = e;
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (subTitle != null)
                              Text(subTitle,
                                  style: context.textTheme.titleMedium
                                      ?.copyWith(fontWeight: FontWeight.bold)),
                            const SizedBox(height: 5),
                            child,
                            const SizedBox(
                              height: 12,
                            )
                          ],
                        );
                      })
                    ]),
                  )
                ],
              ),
            ));
      },
    );
  }

  @override
  Widget buildWithMobile(
      BuildContext context, WidgetRef ref, DomainAccount domain) {
    final group =
        SettingModel.defaultSettings.groupListsBy((element) => element.title);
    return CustomScrollView(
      slivers: [
        ...group.keys.map((e) {
          final subMenus = group[e] ?? [];
          return SliverPadding(
            padding: const EdgeInsets.all(12),
            sliver: SliverMainAxisGroup(slivers: [
              SliverPersistentHeader(
                delegate: _SettingMobileHeader(title: e),
                pinned: true,
              ),
              const SizedBox(height: 6).toSliverWidget,
              SliverList.list(children: [
                ...subMenus.map(
                  (e) => _RenderSettingItem(e, subMenus),
                )
              ])
            ]),
          );
        })
      ],
    );
  }
}

class _RenderSettingItem extends PlatformWidget {
  final SettingModel setting;
  final List<SettingModel> menus;

  const _RenderSettingItem(this.setting, this.menus);

  @override
  Widget buildWithDesktop(
      BuildContext context, WidgetRef ref, DomainAccount domain) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          setting.title,
          style: context.textTheme.titleMedium,
        ),
        const SizedBox(
          height: 6,
        ),
        setting.child
      ],
    );
  }

  @override
  Widget buildWithMobile(
      BuildContext context, WidgetRef ref, DomainAccount domain) {
    final isFirst = menus.length == 1 || menus.first == setting;
    final isLast = menus.length == 1 || menus.last == setting;
    final borderRadius = UiTheme.cardRadius * 2;
    final radius = BorderRadius.only(
      topLeft: isFirst ? Radius.circular(borderRadius) : Radius.zero,
      topRight: isFirst ? Radius.circular(borderRadius) : Radius.zero,
      bottomLeft: isLast ? Radius.circular(borderRadius) : Radius.zero,
      bottomRight: isLast ? Radius.circular(borderRadius) : Radius.zero,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration:
              BoxDecoration(color: context.cardColor, borderRadius: radius),
          child: ListTile(
            shape: RoundedRectangleBorder(borderRadius: radius),
            title: Text(setting.subTitle ?? ''),
            trailing: const CupertinoListTileChevron(),
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                    padding: EdgeInsets.only(
                        bottom: context.paddingBottom,
                        left: 12,
                        right: 12,
                        top: 12),
                    width: double.infinity,
                    child: SingleChildScrollView(
                      child: setting.child,
                    ),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}

class _SettingMobileHeader extends SliverPersistentHeaderDelegate {
  final String title;

  _SettingMobileHeader({required this.title});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        alignment: Alignment.centerLeft,
        child: Text(title,
            style: context.textTheme.titleMedium
                ?.copyWith(fontWeight: FontWeight.bold)));
  }

  @override
  double get maxExtent => 25;

  @override
  double get minExtent => 25;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
