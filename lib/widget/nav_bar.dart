part of 'part.dart';

///导航条
class NavBar extends PlatformWidget {
  const NavBar({super.key});

  @override
  Widget buildWithDesktop(
      BuildContext context, WidgetRef ref, DomainAccount domain) {
    final hasOther =
        domain.navigators.any((element) => element.pageType == PageType.other);
    return Container(
      margin: EdgeInsets.only(top: MainToolBar.height + 8 + 6, bottom: 8 + 6),
      width: 52,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const AppAvatar(),

          //间隔
          const SizedBox(
            height: 22,
          ),

          ///动态的导航
          const _RenderMenus(PageType.def),

          if (hasOther)
            Divider(
              indent: 12,
              endIndent: 12,
              color: Colors.grey.shade200,
            ),
          if (hasOther) const _RenderMenus(PageType.other),

          ///其他导航
          const Spacer(),
          const _RenderMenus(PageType.setting)
        ],
      ),
    );
  }

  @override
  Widget buildWithMobile(
      BuildContext context, WidgetRef ref, DomainAccount domain) {
    final pages = domain.navigators;
    return BottomNavigationBar(
        items: [
          ...pages.map((element) => BottomNavigationBarItem(
              icon: Icon(element.getIconData(context)),
              label: element.getTitle(context)))
        ],
        onTap: (value) {
          // 更新UI
          // ref.activeDomainFun
          //     .changeNavigator(domain.navigators.get(value));
        },
        currentIndex: domain.navigators.indexOf(domain.activePage));
  }
}

///头像
class AppAvatar extends StatelessWidget {
  const AppAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return ApiCreater<SiteSetting, MyPublicGetSettingApi>(
      builder: (data, context, state) {
        return Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(6)),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SvgPicture.asset(
                'assets/svg/alist.svg',
                width: constraints.maxWidth * 0.5,
                height: constraints.maxWidth * 0.5,
              );
            },
          ),
        );
      },
    );
  }
}

class _RenderMenus extends PlatformWidget {
  final PageType pageType;

  const _RenderMenus(this.pageType);

  @override
  Widget buildWithDesktop(
      BuildContext context, WidgetRef ref, DomainAccount domain) {
    return HoverWidget(
      builder: (color, isHove, controller) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...domain.navigators
                .where((element) => element.pageType == pageType)
                .map((element) {
              final menuIcon = MenuIcon(
                  icon: element.getIconData(context),
                  isActive: element.active,
                  onTap: () {
                    domain.changeNavigator(element);
                  },
                  text: element.getTitle(context));
              final render = element.whenOrNull(
                main: (active, id, child, pageType, render) => render,
                upload: (active, child, id, pageType, render) => render,
              );
              return Stack(
                clipBehavior: Clip.none,
                children: [
                  (render?.call(menuIcon) ?? menuIcon).marginOnly(bottom: 12),
                  if (isHove && pageType == PageType.other)
                    Positioned(
                      right: -2,
                      top: -2,
                      child: GestureDetector(
                        onTap: () {
                          // todo
                          // ref.activeDomainFun.removePageById(element.getId);
                        },
                        child: Container(
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(12)),
                            child: const Icon(Icons.close,
                                color: Colors.red, size: 10)),
                      ),
                    )
                ],
              );
            })
          ],
        );
      },
    );
  }

  @override
  Widget buildWithMobile(
      BuildContext context, WidgetRef ref, DomainAccount domain) {
    return const SizedBox.shrink();
  }
}
