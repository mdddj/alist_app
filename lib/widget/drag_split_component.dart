part of 'part.dart';

enum DragStatus { start, update, end, none }

///支持推动的小部件
class DragSplitComponent extends StatefulWidget {
  final Widget child;
  final ValueChanged<double>? onChangeX;
  final ValueChanged<bool>? onDraggingChange;

  const DragSplitComponent({super.key, required this.child, this.onChangeX, this.onDraggingChange});

  @override
  State<DragSplitComponent> createState() => _DragSplitComponentState();
}

class _DragSplitComponentState extends State<DragSplitComponent> {
  double _width = 200.0; // 初始宽度
  double _startX = 0.0; // 拖动起始位置
  bool _dragging = false;

  void _change(DragUpdateDetails details) {
    if (_dragging) {
      double newWidth = _width + (details.globalPosition.dx - _startX);
      setState(() {
        _width = newWidth.clamp(50.0, MediaQuery.of(context).size.width - 50.0); // 限制最小和最大宽度
        _startX = details.globalPosition.dx;
      });
      widget.onChangeX?.call(_width);
    }
  }

  void _changeIsDragging(bool value) {
    _dragging = value;
    widget.onDraggingChange?.call(value);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        widget.child,
        Positioned(
          top: 0,
          bottom: 0,
          right: 0,
          child: GestureDetector(
            onHorizontalDragStart: (details) {
              _startX = details.globalPosition.dx;
              _changeIsDragging(true);
            },
            onHorizontalDragUpdate: _change,
            onHorizontalDragEnd: (details) {
              _changeIsDragging(false);
            },
            child: HoverWidget(
              hoverColor: context.primaryColor,
              cursor: SystemMouseCursors.resizeColumn,
              builder: (Color? color, bool isHove, MyAnimatedWidgetController controller) {
                return HookConsumer(
                  builder: (context, ref, child) {
                    final isDragging = ref.watch(appUiSettingStateProvider.select((value) => value.isDragging));
                    return Container(
                      width: 3,
                      decoration: BoxDecoration(color: isDragging ? context.primaryColor : color),
                    );
                  },
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
