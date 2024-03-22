part of 'part.dart';

///记录指针的位置
///
class PointerRecordWidget extends ConsumerWidget {
  final Widget child;

  const PointerRecordWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDragging = ref.watch(appUiSettingStateProvider.select((value) => value.isDragging));
    return MouseRegion(
      cursor: isDragging ? SystemMouseCursors.resizeColumn : MouseCursor.defer,
      onHover: (event) {
        ref.menuController.changeState((value) => value.copyWith(pointOffset: event.position, context: context));
      },
      child: child,
    );
  }
}
