part of 'part.dart';

///文件tab
class FsFilesShowWidgetTab extends ConsumerWidget {
  final PathManagerProvider pathManager;
  const FsFilesShowWidgetTab(this.pathManager, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final PathManagerProvider(:managers, :activeIndex, :activePath) =
        ref.watch(pathManager.provider);
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          SizedBox(
            height: 38,
            width: context.screenWidth,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                ...managers.keys.map((element) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 2),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                    decoration: BoxDecoration(
                        color: activePath == element
                            ? context.primaryColor
                            : Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(2)),
                    child: GestureDetector(
                        onTap: () => pathManager.changeTab(element),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              element,
                              style: TextStyle(
                                  color: activePath == element
                                      ? context.colorScheme.inversePrimary
                                      : Colors.black),
                            ),
                            const Icon(Icons.close).click(() {
                              pathManager.remove(element);
                            })
                          ],
                        )),
                  );
                })
              ]),
            ),
          ),
          Expanded(
              child: IndexedStack(
            index: activeIndex,
            children: [
              ...managers.values.map((e) {
                return switch (e) {
                  DefaultFilesManager _ => CustomScrollView(slivers: [
                      SliverFsFiles(filesManager: e, manager: pathManager)
                    ]),
                  OpenFileFsManager f => MobilePreviewPage(param: PreviewParam(fileRawUrl: f.path,fsModel: FsModel(name: e.path))),
                  FsFilesManager() =>
                    const SizedBox.shrink(child: Center(child: Text('暂未实现'))),
                };
              })
            ],
          ))
        ],
      ),
    );
  }
}

///文件显示组件. sliver 才能用.
class SliverFsFiles extends ConsumerWidget {
  final FsFilesManager filesManager;
  final PathManagerProvider manager;
  const SliverFsFiles(
      {super.key, required this.filesManager, required this.manager});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final FsFilesManager(:files, :loading, :error) =
        ref.watch(filesManager.provider);
    if (loading) {
      return const SliverFillRemaining(
          child: Center(child: CircularProgressIndicator()));
    }
    if (error != null) {
      return SliverFillRemaining(
          child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Center(child: Text(error.getMessage())),
      ));
    }
    return SliverList.list(children: [
      ...files.map((item) {
        return MyButton(
          text: item.name,
          leading: FileIcon(fileType: item.fileType),
          onTap: () {
            if (item.isDir) {
              manager.gotoDirector(item.name);
            } else {
              manager.openFile(item.name);
            }
          },
        );
      })
    ]);
  }
}
