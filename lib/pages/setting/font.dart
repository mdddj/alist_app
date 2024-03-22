part of '../part.dart';

class FontSetting extends ConsumerWidget {
  const FontSetting({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Wrap(
      runSpacing: 12,
      spacing: 12,
      children: [
        ...MyFont.values.map((e) {
          return GestureDetector(
            onTap: () => e.onChange(ref),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Checkbox(
                  value: ref.appSetting.font == e.font,
                  onChanged: (value) => e.onChange(ref),
                  shape: const CircleBorder(),
                ),
                Text(e.title)
              ],
            ),
          );
        })
      ],
    );
  }
}

class FontSizeSetting extends ConsumerStatefulWidget {
  const FontSizeSetting({super.key});

  @override
  ConsumerState<FontSizeSetting> createState() => _FontSizeSettingState();
}

class _FontSizeSettingState extends ConsumerState<FontSizeSetting> {
  late final controller = TextEditingController(text: ref.appSettingRead.fontZoom.toString());
  @override
  Widget build(BuildContext context) {
    return  SpaceRow(
      children: [
        SizedBox(
          width: 170,
          child: TextField(
            controller: controller,
            textInputAction: TextInputAction.go,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              hintText: '修改字体缩放大小',
              labelText: '字体缩放',
              isDense: true,
              helperText: '接受0.5-2.0之间的值'
            )
          ),
        ),
        FilledButton(onPressed: (){
          if(double.tryParse(controller.text) case double size when size >= 0.5 && size <= 2){
            ref.changeAppSetting((value) => value.copyWith(fontZoom: size));
          }else{
            ToastUtil.showWarning('只接受0.5-2.0之间的数值');
          }
        }, child: const Text('保存')),
        OutlinedButton(onPressed: (){
          controller.text = '0.88';
          ref.changeAppSetting((value) => value.copyWith(fontZoom: 0.88));
        }, child: const Text('重置'))
      ],
    );
  }
}
