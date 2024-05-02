part of 'part.dart';

class MyButton extends BasePlatformWidget {
  final String text;
  final bool isActivated;
  final VoidCallback? onTap;
  final Widget? leading;
  final Widget? end;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final VoidCallback? onSecondaryTap; //右键单击
  final HoverWidgetOnSecondaryTapDown? onSecondaryTapDown;
  final bool? hideText;
  final Widget? subTitle; //手机专用
  final bool? dangerous;

  const MyButton(
      {super.key,
      required this.text,
      this.isActivated = false,
      this.onTap,
      this.leading,
      this.end,
      this.margin,
      this.padding,
      this.onSecondaryTap,
      this.onSecondaryTapDown,
      this.hideText,
      this.subTitle,
      this.dangerous});

  @override
  Widget buildWithDesktop(BuildContext context) {
    return HoverWidget(
      onSecondaryTap: onSecondaryTap,
      onSecondaryTapDown: onSecondaryTapDown,
      builder: (color, _, controller) {
        return Container(
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(4)),
          margin: margin ?? const EdgeInsets.symmetric(horizontal: 2),
          padding:
              padding ?? const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  if (leading != null) leading!,
                  if (hideText != true)
                    Expanded(
                      child: Text(
                        text,
                        maxLines: 1,
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.ellipsis,
                        style: context.textTheme.bodyMedium?.copyWith(
                            color: (!isActivated && dangerous == true)
                                ? context.colorScheme.error
                                : (isActivated ? Colors.white : null)),
                      ).marginOnly(left: leading != null ? 6 : 0),
                    ),
                  if (end != null) end!
                ],
              ),
              if (subTitle != null)
                DefaultTextStyle(
                    style: const TextStyle(color: Colors.grey, fontSize: 12),
                    child: subTitle!)
            ],
          ),
        );
      },
      onTap: (_, ___) => onTap?.call(),
      isActivated: isActivated,
    );
  }

  @override
  Widget buildWithMobile(BuildContext context) {
    return KeyEventWidget(
        onEvent: (v) => v.whenOrNull(ok: () => onTap?.call()),
        builder: (_, hasFocus) {
          return TVContainerWrapper(
            hasFocus: hasFocus,
            child: ListTile(
              leading: leading,
              title: Text(text, maxLines: 2, overflow: TextOverflow.ellipsis,style: context.textTheme.titleMedium),
              trailing: end,
              onTap: onTap,
              subtitle: subTitle,
            ),
          );
        });
  }
}
