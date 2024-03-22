part of '../part.dart';

class ThemeModelChangeWidget extends StatelessWidget {
  const ThemeModelChangeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ThemeBuildWidget(
      themeBuild: (theme) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _ThemeModeItem(
              isSelect: theme.getThemeMode == ThemeMode.system,
              onChange: (value) {
                AppThemeUtil().changeThemeMode(ThemeMode.system);
              },
              title: '跟随系统',
            ),
            _ThemeModeItem(
              isSelect: theme.getThemeMode == ThemeMode.light,
              onChange: (value) {
                AppThemeUtil().changeThemeMode(ThemeMode.light);
              },
              title: '亮色',
            ),
            _ThemeModeItem(
              isSelect: theme.getThemeMode == ThemeMode.dark,
              onChange: (value) {
                AppThemeUtil().changeThemeMode(ThemeMode.dark);
              },
              title: '暗夜',
            )
          ],
        );
      },
    );
  }
}

class _ThemeModeItem extends StatelessWidget {
  final bool isSelect;
  final ValueChanged<bool?> onChange;
  final String title;

  const _ThemeModeItem(
      {required this.isSelect,
      required this.onChange,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>onChange.call(null),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Checkbox(value: isSelect, onChanged: onChange,shape: const CircleBorder()),
          Text(title)
        ],
      ),
    );
  }
}
