part of 'part.dart';

///表格行
class MyTaskTableRow extends ConsumerWidget {
  final List<Widget> columns;
  final bool enableHoverColor;
  final Alignment? Function(int index)? alignmentBuilder;
  final VoidCallback? onTap;

  const MyTaskTableRow(
      {super.key,
      required this.columns,
      this.enableHoverColor = true,
      this.alignmentBuilder,
      this.onTap});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: double.infinity,
      child: _HoverWidget(
        onTap: onTap,
        builder: (bool isHover) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              for (int i = 0; i < columns.length; i++)
                Flexible(
                    flex: ref.watch(tableFlexListProvider)[i],
                    fit: FlexFit.tight,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 224),
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      alignment:
                          alignmentBuilder?.call(i) ?? Alignment.centerLeft,
                      constraints: const BoxConstraints(
                          minHeight: 30, minWidth: 200, maxWidth: 250),
                      child: i == 1 && !isHover ? const SizedBox.shrink() : columns[i],
                    ))
            ],
          );
        },
        enableHoverColor: enableHoverColor,
      ),
    );
  }
}

class _HoverWidget extends StatelessWidget {
  final bool enableHoverColor;
  final Widget Function(bool isHover) builder;
  final VoidCallback? onTap;

  const _HoverWidget(
      {this.enableHoverColor = true, required this.builder, this.onTap});

  @override
  Widget build(BuildContext context) {
    return HoverWidget(
      onTap: (value, __) => onTap?.call(),
      builder: (color, isHove, controller) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 124),
          alignment: Alignment.centerLeft,
          margin: const EdgeInsets.symmetric(horizontal: 12),
          padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 2),
          decoration: BoxDecoration(
              color: enableHoverColor ? color : null,
              border: Border(
                  top: BorderSide(
                      color: context.theme.dividerColor, width: .3))),
          child: builder.call(isHove),
        );
      },
    );
  }
}
