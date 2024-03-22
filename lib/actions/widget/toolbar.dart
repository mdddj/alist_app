part of '../part.dart';

class ActionBrowserToolbar extends PlatformWidget {
  const ActionBrowserToolbar({super.key});

  @override
  Widget buildWithDesktop(
      BuildContext context, WidgetRef ref, DomainAccount domain) {
    return const SizedBox.shrink();
  }

  @override
  Widget buildWithMobile(
      BuildContext context, WidgetRef ref, DomainAccount domain) {
    return Center(
      child: Card(
        color: context.colorScheme.outline.withOpacity(.38),
        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 1,
          runSpacing: 1,
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.download)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.delete,
                  color: context.colorScheme.error,
                )),
            IconButton(onPressed: () {}, icon: const Icon(Icons.info)),
            IconButton(
                onPressed: () {
                  // todo
                  // applicationProvider.closeFile();
                },
                icon: const Icon(Icons.close)),
          ],
        ),
      ),
    );
  }
}

///操作区域
class ActionBrowserToolbarWidget extends StatelessWidget {
  const ActionBrowserToolbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      bottom: 12,
      left: 12,
      right: 12,
      child: ActionBrowserToolbar(),
    );
  }
}
