part of 'part.dart';

class FullAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const FullAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      title: SizedBox(
          width: context.screenWidth,
          child: const TextField(
            decoration: InputDecoration(
              fillColor: Colors.white12,
              filled: true,
              isDense: true
            ),
          )),
    );
  }


  @override
  Size get preferredSize => const Size.fromHeight(48);
}
