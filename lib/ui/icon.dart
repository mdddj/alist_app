part of 'part.dart';

class MyIcon extends StatelessWidget {
  final IconData iconData;
  final MtTapEvent? onTap;
  final String? toolTip;
  final bool noBorder;
  final Color? defaultIconColor;
  final Color? hoverIconColor;
  final Color? hoverBgColor;

  const MyIcon(
      {super.key,
      required this.iconData,
      this.onTap,
      this.toolTip,
      this.noBorder = false,
      this.defaultIconColor,
      this.hoverIconColor,
      this.hoverBgColor});

  @override
  Widget build(BuildContext context) {
    final iconColor = (defaultIconColor ?? context.primaryColor);
    final child = HoverWidget(
      hoverColor: hoverBgColor,
      builder: (color, isHover, controller) {
        return IconWrapper(
          color: color,
          child: Icon(
            iconData,
            color: isHover ? (hoverIconColor ?? iconColor) : iconColor,
          ),
        );
      },
      toolTip: toolTip,
      onTap: onTap,
    );
    if (noBorder) {
      return child;
    }
    return BorderWidget(
      borderColor: context.primaryColor,
      child: child,
    );
  }
}
