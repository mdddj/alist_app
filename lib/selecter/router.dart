part of './part.dart';

final selectRouter = GoRouter(
  initialLocation: '/selecter',
  routes: [
    ShellRoute(
        builder: (context, state, child) {
          return SelecterPage(child: child);
        },
        routes: [
          GoRoute(
            path: "/selecter",
            builder: (context, state) {
              return const SelecterFilesRoot();
            },
            routes: [
              GoRoute(path: "files",builder: (context, state) {
                return FilesSinglePage(fsModel: state.extra as FsModel);
              },)
            ]
          ),
        ])
  ],
);
