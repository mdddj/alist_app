part of "./part.dart";

class MyFileSelecter extends StatelessWidget {
  const MyFileSelecter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        routerConfig: selectRouter,
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false);
  }
}

class SelecterPage extends ConsumerWidget {
  final Widget child;

  const SelecterPage({super.key, required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: child,
    );
  }
}

class SelecterFilesRoot extends ConsumerWidget {
  const SelecterFilesRoot({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomScrollView(
      slivers: [
        SliverList.list(children: [
          ...ref.activeRootModels.map(
            (element) {
              return ListTile(
                title: Text(element.name),
                onTap: () {
                  context.push("/selecter/files", extra: element);
                },
              );
            },
          )
        ])
      ],
    );
  }
}
