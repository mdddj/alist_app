part of '../part.dart';

///手机端的导航
class MobileAppbar extends ConsumerWidget implements PreferredSizeWidget {
  const MobileAppbar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final border = UnderlineInputBorder(
        borderSide: BorderSide.none, borderRadius: BorderRadius.circular(12));
    return SliverAppBar(
      pinned: true,
      automaticallyImplyLeading: false,
      title: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: PhysicalModel(
              color: context.cardColor,
              elevation: 2,
              shadowColor: context.cardColor,
              borderRadius: BorderRadius.circular(12),
              child: TextField(
                decoration: InputDecoration(
                    hintText: '输入关键字搜索文件',
                    contentPadding: const EdgeInsets.all(12),
                    prefixIcon: const Icon(Icons.menu).click(() {
                      ref.read(menuProvider.notifier).showAppbarMenu();
                    }),
                    fillColor: context.cardColor,
                    suffixIcon: Container(
                      padding: const EdgeInsets.all(8.0),
                      constraints:
                          const BoxConstraints(maxHeight: 22, maxWidth: 22),
                      alignment: Alignment.centerRight,
                      child: SvgPicture.asset(
                        'assets/svg/alist.svg',
                      ),
                    ),
                    isDense: true,
                    enabledBorder: border,
                    focusedBorder: border,
                    border: border),
              )),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 12);
}

///手机端的显示操作条
class HomeMobileToolbar extends PlatformWidget {
  const HomeMobileToolbar({super.key});

  @override
  Widget buildWithMobile(
      BuildContext context, WidgetRef ref, DomainAccount domain) {
    final style = domain.layoutStyle;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                '名称',
                style: TextStyle(color: context.colorScheme.secondary),
              ),
              const Icon(Icons.upgrade)
            ],
          ),
          GestureDetector(
            onTap: () => _changeLayout(context, domain),
            child: switch (style) {
              FilesLayoutStyle.list => const Icon(
                  LineIcons.thLarge,
                ),
              FilesLayoutStyle.grid => const Icon(
                  LineIcons.list,
                )
            },
          )
        ],
      ),
    );
  }

  @override
  Widget buildWithDesktop(
      BuildContext context, WidgetRef ref, DomainAccount domain) {
    return const SizedBox.shrink();
  }

  Future<void> _changeLayout(
      BuildContext context, DomainAccount domain) async {
    final ref =  ProviderScope.containerOf(context);
    final result = await showModalBottomSheet<FilesLayoutStyle>(
      context: context,
      builder: (context) {
        return SingleChildScrollView(
          child: Column(
            children: [
              ...FilesLayoutStyle.values.map((e) {
                final isSelect = domain.layoutStyle == e;
                return CupertinoListTile(
                  trailing: isSelect
                      ? const Icon(LineIcons.check)
                      : const SizedBox.shrink(),
                  title: Text(e.title),
                  onTap: () => context.nav.pop(e),
                );
              })
            ],
          ),
        );
      },
    );
    if (result != null) {
     ref.read(myActiveDomainProvider.notifier).changeLayout(result);
    }
  }
}

