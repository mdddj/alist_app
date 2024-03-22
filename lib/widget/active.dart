part of 'part.dart';

class ActiveTag extends StatelessWidget {
  const ActiveTag({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 5,
      height: 5,
      decoration: BoxDecoration(
          color: Colors.green, borderRadius: BorderRadius.circular(6)),
    );
  }
}

///当前显示的站点
class ActiveDomain extends ConsumerWidget {
  const ActiveDomain({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final domain = ref.activeDomain;
    return Expanded(
      child: ref.watch(sitesStateProvider).when(
            data: (data) {
              return PopupMenuButton<String>(
                  constraints: const BoxConstraints(minWidth: 240),
                  itemBuilder: (context) {
                    return [
                      const MyPopupTitle(title: '切换站点'),
                      const PopupMenuDivider(),
                      ...data.map((e) => MyPopupButton(
                            text: e.name,
                            isActive: e.id == domain?.id,
                            onTap: () {
                              ref.switchApplication(e);
                            },
                          )),
                      const PopupMenuDivider(),
                      MyPopupButton(
                        text: '回到主页面',
                        onTap: () {
                          ref
                              .read(sitesStateProvider.notifier)
                              .reset();
                        },
                      )
                    ];
                  },
                  child: SpaceRow(
                    children: [
                      ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 80),
                        child: Text(domain?.name ?? '-',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: context.textTheme.titleMedium
                                ?.copyWith(fontWeight: FontWeight.bold)),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: context.primaryColor,
                      )
                    ],
                  ));
            },
            error: (error, stackTrace) => const Text('error'),
            loading: CircularProgressIndicator.new,
          ),
    );
  }
}

class IconWrapper extends StatelessWidget {
  final Widget child;
  final Color? color;
  final EdgeInsets? padding;

  const IconWrapper({super.key, required this.child, this.color, this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.all(4),
      constraints: const BoxConstraints(maxWidth: 30, maxHeight: 30),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(6)),
      child: child,
    );
  }
}
