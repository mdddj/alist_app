part of 'part.dart';

typedef KeyEventWidgetBuilder = Widget Function(FocusNode focusNode, bool hasFocus);

class KeyEventWidget extends ConsumerStatefulWidget {
  final KeyEventWidgetBuilder builder;
  final ValueChanged<TvKey>? onEvent;
  final FocusNode? focusNode;
  final ValueChanged<Offset>? onOffsetChange;

  const KeyEventWidget({super.key, required this.builder, this.onEvent, this.onOffsetChange, this.focusNode});

  @override
  ConsumerState<KeyEventWidget> createState() => _KeyEventWidgetState();
}

class _KeyEventWidgetState extends ConsumerState<KeyEventWidget> {
  late final _focusNode = widget.focusNode ?? FocusNode();
  bool _hasFocus = false;
  KeyEvent? event;

  @override
  void initState() {
    _focusNode.addListener(_listen);
    super.initState();
  }

  void _listen() {
    if (ModalRoute.of(context)?.isCurrent != true) {
      return;
    }
    _hasFocus = _focusNode.hasFocus;
    if (_hasFocus) {
      final RenderBox renderBox = context.findRenderObject() as RenderBox;
      final globalPosition = renderBox.localToGlobal(Offset.zero);
      widget.onOffsetChange?.call(globalPosition);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return KeyboardListener(focusNode: _focusNode, onKeyEvent: _onKeyEvent, child: widget.builder.call(_focusNode, _hasFocus));
  }

  @override
  void dispose() {
    _focusNode.removeListener(_listen);
    _focusNode.dispose();
    super.dispose();
  }

  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  void _onKeyEvent(KeyEvent value) {
    if (ModalRoute.of(context)?.isCurrent != true || value == event || event != null) {
      return;
    }
    event = value;
    final type = TvKey.create(value);
    widget.onEvent?.call(type);
    Future.delayed(const Duration(seconds: 1), () {
      event = null;
    });
  }
}

class TVApp extends StatefulWidget {
  final Widget child;

  const TVApp({super.key, required this.child});

  @override
  State<TVApp> createState() => _TVAppState();
}

class _TVAppState extends State<TVApp> {
  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}

class TVContainerWrapper extends StatelessWidget {
  final Widget child;
  final bool hasFocus;

  const TVContainerWrapper({super.key, required this.child, required this.hasFocus});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: hasFocus ? const EdgeInsets.symmetric(horizontal: 12) : EdgeInsets.zero,
      duration: const Duration(milliseconds: 50),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), border: Border.all(width: 2, color: hasFocus ? context.colorScheme.tertiary : Colors.transparent)),
      child: hasFocus ? child.animate().shakeY() : child,
    );
  }
}
