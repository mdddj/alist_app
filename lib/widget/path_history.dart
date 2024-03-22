part of 'part.dart';

///历史路径的弹窗
class PathHistoryDialog extends StatefulWidget {
  const PathHistoryDialog({super.key});

  static void show(BuildContext context, __) {
    SmartDialog.showAttach(
        targetContext: context,
        builder: (context) {
          return const PathHistoryDialog();
        },
        targetBuilder: (targetOffset, targetSize) =>
            Offset(targetOffset.dx, targetOffset.dy + 12),
        animationType: SmartAnimationType.fade,
        maskColor: Colors.transparent);
  }

  @override
  State<PathHistoryDialog> createState() => _PathHistoryDialogState();
}

class _PathHistoryDialogState extends State<PathHistoryDialog> {
  @override
  Widget build(BuildContext context) {
    final color = context.cardColor;
    const width = 220.0;
    const height = width * 1.8;
    final get = AsyncMemoizer<List<PathHistory>>().runOnce(() => IsarTool
        .instance.isar.pathHistorys
        .filter()
        .pathIsNotEmpty()
        .findAll());
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: context.theme.dividerColor)),
      child: FutureBuilder<List<PathHistory>>(
        future: get,
        builder: (context, snapshot) {
          final list = (snapshot.data ?? []).reversed;
          return Column(
            children: [
              Expanded(
                child: CustomScrollView(
                  slivers: [
                    SliverPersistentHeader(
                      delegate: SliverStickyWidget(
                          child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 6),
                              alignment: Alignment.centerLeft,
                              decoration: BoxDecoration(
                                  color: color,
                                  borderRadius: BorderRadius.circular(6)),
                              child: Text('历史记录',
                                  style: context.textTheme.bodyMedium?.copyWith(
                                      color: context.colorScheme.secondary))),
                          min: 20,
                          max: 20),
                      pinned: true,
                      floating: true,
                    ),

                    if(list.isEmpty)
                      const SliverFillRemaining(
                        child: Center(child: Text('暂无记录'),),
                      ),
                    if(list.isNotEmpty)
                    SliverPadding(
                      padding: const EdgeInsets.all(6),
                      sliver: SliverList.list(children: [
                        ...list.map((e) {
                          return MyButton(
                            text: '${e.path} ${e.id}',
                            margin: EdgeInsets.zero,
                          );
                        })
                      ]),
                    )
                  ],
                ),
              ),
              HoverWidget(
                builder: (color, isHove, controller) {
                  return Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(top: 6),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                        color: color,
                        border: Border(
                            top:
                                BorderSide(color: context.theme.dividerColor))),
                    child: const Text(
                      '查看更多',
                      style: TextStyle(color: Colors.grey),
                    ),
                  );
                },
              )
            ],
          ).animate().fade();
        },
      ),
    );
  }
}
