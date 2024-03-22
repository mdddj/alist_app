part of '../part.dart';

class SettingWithTheme extends PlatformWidget {
  const SettingWithTheme({super.key});

  @override
  Widget buildWithDesktop(
      BuildContext context, WidgetRef ref, DomainAccount domain) {
    return Wrap(
      spacing: 6,
      runSpacing: 6,
      children: [...CustomAppThemeData.values.map(_RenderItem.new)],
    );
  }


}

class _RenderItem extends PlatformWidget {
  final CustomAppThemeData theme;

  const _RenderItem(this.theme);

  @override
  Widget buildWithDesktop(
      BuildContext context, WidgetRef ref, DomainAccount domain) {
    return ThemeBuildWidget(
      themeBuild: (themeState) {
        final select = CustomAppThemeData.values.get(themeState.themeIndex);
        return Theme(
            data: FlexThemeData.light(scheme: theme.flexScheme),
            child: Builder(
              builder: (ctx) {
                return Tooltip(
                  message: theme.title,
                  child: Stack(
                    children: [
                      CircleAvatar(
                        backgroundColor: ctx.primaryColor,
                      ).click(() => AppThemeUtil().changeThemeWithEnum(theme)),
                      if (select == theme)
                        const Positioned.fill(
                            child: Center(
                              child: Icon(Icons.check),
                            ))
                    ],
                  ),
                );
              },
            ));
      },
    );
  }


}
