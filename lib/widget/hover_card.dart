part of 'part.dart';

class HoverCard extends StatelessWidget {
  final Widget Function(bool isHover) child;
  final VoidCallback? onTap;
  final ShapeBorder? shape;
  const HoverCard({super.key, required this.child, this.onTap, this.shape});

  @override
  Widget build(BuildContext context) {
    return HoverWidget(
      builder: (color, isHove, controller) {
        return Card(
          margin: EdgeInsets.zero,
          elevation: isHove ? 10 : 0.4,
          color: context.cardColor,
          shadowColor: context.cardColor,
          surfaceTintColor: context.cardColor,
          shape: shape,
          child: child.call(isHove),
        );
      },
    );
  }
}
