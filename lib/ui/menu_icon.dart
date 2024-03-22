part of 'part.dart';

class MenuIcon extends StatelessWidget {
  final IconData icon;
  final String? text;
  final VoidCallback? onTap;
  final bool isActive;
  final String? toolTip;

  const MenuIcon(
      {super.key,
      required this.icon,
      this.text,
      this.onTap,
      required this.isActive,
      this.toolTip});

  @override
  Widget build(BuildContext context) {
    final child = Click(
      onTap: onTap,
      toolTip: toolTip,
      child: Column(
        children: [
          HoverWidget(
            isActivated: isActive,
            onTap: (_, ___) => onTap?.call(),
            activeColor: Colors.white30,
            builder: (color, isHover, controller) {
              final ic = Icon(
                icon,
                color: Colors.white,
              );
              return IconWrapper(
                color: color,
                padding: const EdgeInsets.all(6),
                child: MyAnimatedWidget(
                  controller: controller,
                  scale: 1.5,
                  child: ic,
                ),
              );
            },
          ),
          if (text != null)
            Text(
              text!,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style:
                  context.textTheme.labelMedium?.copyWith(color: Colors.white),
            ).marginOnly(top: 1)
        ],
      ),
    );
    return child;
  }
}
