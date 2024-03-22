part of 'part.dart';

class ActionMenuWidget extends StatelessWidget {
  final IList<FileAction> menus;

  const ActionMenuWidget({super.key, required this.menus});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...menus.map((element) {
            return CupertinoListTile(
              title: Text(element.menu.title),
              onTap: () {
                context.nav.pop(element);
              },
            );
          })
        ],
      ),
    );
  }

}
