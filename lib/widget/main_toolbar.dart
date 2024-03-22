part of 'part.dart';

final _searchInputBorder = UnderlineInputBorder(
    borderSide: BorderSide.none, borderRadius: BorderRadius.circular(12));

class MainToolBar extends StatelessWidget {
  static double height = 38;

  const MainToolBar({super.key});

  @override
  Widget build(BuildContext context) {
    final leftWidth = context.screenWidth * 0.3; //左侧宽度
    return Container(
      height: height,
      alignment: Alignment.bottomLeft,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          HookConsumer(
            builder: (context, ref, child) {
              final isExpand = ref.menuState.leftMenuExpand;
              return Opacity(
                opacity: isExpand ? 1 : 0,
                child: AnimatedSwitcher(
                  duration: const Duration(seconds: 1),
                  child: HoverWidget(
                    onTap: (value, __) {
                      ref.menuController.showLeftMenu();
                    },
                    builder: (color, _, controller) {
                      return IconWrapper(
                        color: color,
                        child: const Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                      );
                    },
                  ),
                ),
              );
            },
          ),
          Container(
            width: leftWidth,
            height: double.infinity,
            alignment: Alignment.bottomRight,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                HoverWidget(
                  builder: (color, _, controller) {
                    return IconWrapper(
                      color: color,
                      child: const Icon(
                        CupertinoIcons.arrow_left,
                        color: Colors.white,
                      ),
                    );
                  },
                  toolTip: '返回',
                ),
                const SizedBox(
                  width: 6,
                ),
                HoverWidget(
                  builder: (color, _, controller) {
                    return IconWrapper(
                      color: color,
                      child: const Icon(
                        CupertinoIcons.arrow_right,
                        color: Colors.white,
                      ),
                    );
                  },
                  toolTip: '前进',
                ),
                const SizedBox(
                  width: 6,
                ),
                HoverWidget(
                  builder: (color, _, controller) {
                    return IconWrapper(
                      color: color,
                      child: const Icon(
                        Icons.history,
                        color: Colors.white,
                      ),
                    );
                  },
                  toolTip: '浏览记录',
                  onTap: PathHistoryDialog.show,
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(child: LayoutBuilder(
            builder: (context, constraints) {
              return Row(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          color: context.cardColor,
                          borderRadius: BorderRadius.circular(12)),
                      width: constraints.maxWidth * 0.7,
                      child: TextField(
                        cursorHeight: 14,
                        style: TextStyle(color: context.colorScheme.primary),
                        decoration: InputDecoration(
                            border: _searchInputBorder,
                            enabledBorder: _searchInputBorder,
                            focusedBorder: _searchInputBorder,
                            hintText: '搜索文件/文件夹',
                            hoverColor: Colors.transparent,
                            filled: true,
                            fillColor: Colors.transparent,
                            constraints: const BoxConstraints(
                                maxHeight: 24, minHeight: 24),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 3, horizontal: 12),
                            isDense: true),
                      )),
                  const Spacer(),
                  HoverWidget(
                    builder: (color, _, controller) {
                      return IconWrapper(
                          color: color,
                          child: const Icon(
                            Icons.help,
                            color: Colors.white,
                          ));
                    },
                    toolTip: '帮助',
                  )
                ],
              );
            },
          )),
          const SizedBox(
            width: 8,
          ),
        ],
      ),
    );
  }
}
