part of 'part.dart';

typedef HoverWidgetBuilder = Widget Function(
    Color? color, bool isHove, MyAnimatedWidgetController controller);
typedef MtTapEvent = void Function(BuildContext context, RelativeRect pos);
typedef HoverWidgetOnSecondaryTapDown = void Function(
    TapDownDetails detail, HoverWidgetAction action);

class HoverWidgetAction {
  final HoverWidgetState state;
  final ValueChanged<Color?> changeColor;

  HoverWidgetAction(this.state, this.changeColor);
}

class HoverWidget extends ConsumerStatefulWidget {
  final bool isActivated;
  final HoverWidgetBuilder builder;
  final MtTapEvent? onTap;
  final Color? activeColor;
  final Color? hoverColor;
  final String? toolTip;
  final MouseCursor? cursor;
  final VoidCallback? onSecondaryTap; //右键单击
  final ValueChanged<DragUpdateDetails>? onHorizontalDragUpdate;
  final HoverWidgetOnSecondaryTapDown? onSecondaryTapDown;

  const HoverWidget(
      {super.key,
      this.isActivated = false,
      required this.builder,
      this.onTap,
      this.activeColor,
      this.onHorizontalDragUpdate,
      this.hoverColor,
      this.toolTip,
      this.cursor,
      this.onSecondaryTap,
      this.onSecondaryTapDown});

  @override
  ConsumerState<HoverWidget> createState() => HoverWidgetState();
}

class HoverWidgetState extends ConsumerState<HoverWidget> {
  Color get _activeColor =>
      (widget.activeColor ?? context.colorScheme.primaryContainer);

  Color? get _color => widget.isActivated ? _activeColor : null;
  Color? _hoverColor;
  bool _isHove = false;
  Offset? offset;

  final MyAnimatedWidgetController _animatedWidgetController =
      MyAnimatedWidgetController();

  void changeHoverColor(Color? color) {
    if (_hoverColor != color) {
      setState(() {
        _hoverColor = color;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final child = KeyEventWidget(onOffsetChange: (value) {
      offset = value;
    }, onEvent: (value) {
      value.whenOrNull(ok: () {
        if (offset case final Offset offset) {
          final pos = RelativeRect.fromLTRB(offset.dx, offset.dy, offset.dx, 0);
          widget.onTap?.call(context, pos);
        }
      });
    }, builder: (node, hasFocus) {
      return TVContainerWrapper(
        hasFocus: hasFocus,
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTapDown: (details) {
            setState(() {
              offset = details.globalPosition;
            });
          },
          onTap: () {
            changeHoverColor(null);
            if (offset case final Offset offset) {
              final pos =
                  RelativeRect.fromLTRB(offset.dx, offset.dy, offset.dx, 0);
              widget.onTap?.call(context, pos);
            }
          },
          onSecondaryTap: widget.onSecondaryTap,
          onSecondaryTapDown: (details) {
            ref.menuController.changeState((value) =>
                value.copyWith(buttonOffset: details.globalPosition));
            widget.onSecondaryTapDown
                ?.call(details, HoverWidgetAction(this, changeHoverColor));
          },
          onSecondaryTapUp: (details) {
            changeHoverColor(context.colorScheme.onSurfaceVariant);
          },
          onHorizontalDragUpdate: widget.onHorizontalDragUpdate,
          child: MouseRegion(
            cursor: widget.cursor ?? SystemMouseCursors.click,
            onEnter: (event) {
              if (!widget.isActivated) {
                changeHoverColor(
                    widget.hoverColor ?? context.colorScheme.surfaceContainerHighest);
              }
              if (_isHove != true) {
                setState(() {
                  _isHove = true;
                });
              }
              _animatedWidgetController.start();
            },
            onExit: (event) {
              changeHoverColor(null);
              if (_isHove != false) {
                setState(() {
                  _isHove = false;
                });
              }
              _animatedWidgetController.stop();
            },
            child: widget.builder.call(
                (_hoverColor ?? _color), _isHove, _animatedWidgetController),
          ),
        ),
      );
    });
    return widget.toolTip == null
        ? child
        : Tooltip(
            message: widget.toolTip,
            child: child,
          );
  }
}

extension HoverIconEx on Widget {
  Widget hoverIcon(Color? color) => HoverIcon(color: color, child: this);
}

class HoverIcon extends StatelessWidget {
  final Widget child;
  final Color? color;
  const HoverIcon({super.key, required this.child, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(2),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(4)),
      child: child,
    );
  }
}
