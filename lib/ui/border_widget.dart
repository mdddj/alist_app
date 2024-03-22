part of 'part.dart';

class BorderWidget extends StatelessWidget {
  final Widget child;
  final Color? borderColor;

  const BorderWidget({super.key, required this.child, this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
              color: borderColor ?? context.theme.dividerColor, width: .4),
          borderRadius: BorderRadius.circular(6)),
      child: child,
    );
  }
}
