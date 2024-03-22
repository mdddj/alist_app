


part of 'part.dart';

class ScrollWrapper extends StatefulWidget {
  final Widget Function(ScrollController controller) child;
  const ScrollWrapper({super.key, required this.child});

  @override
  State<ScrollWrapper> createState() => _ScrollWrapperState();
}

class _ScrollWrapperState extends State<ScrollWrapper> {
  final _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return CupertinoScrollbar(
        controller: _scrollController,
        child: widget.child.call(_scrollController));
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }
}
