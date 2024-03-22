part of 'part.dart';

class Click extends StatelessWidget {
  final VoidCallback? onTap;
  final Widget child;
  final String? toolTip;
  const Click({super.key, this.onTap, required this.child, this.toolTip});

  @override
  Widget build(BuildContext context) {
    final w = MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        child: child ,
      ),
    );
    return toolTip != null ? Tooltip(message: toolTip,child: w,) : w;
  }
}
