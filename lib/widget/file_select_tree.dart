part of 'part.dart';

class _SelectPath extends ChangeNotifier {
  String path;

  _SelectPath(this.path);

  void changePath(String v) {
    path = v;
    notifyListeners();
  }
}

typedef SelectWidgetBuilder = Widget Function(String path);

///文件选择器(树)
class FileSelectTree extends ConsumerStatefulWidget {
  final SelectWidgetBuilder onSelect;
  const FileSelectTree({super.key,required this.onSelect});

  @override
  ConsumerState<FileSelectTree> createState() => _FileSelectTreeState();
}

class _FileSelectTreeState extends ConsumerState<FileSelectTree> {
  final _selectPath = _SelectPath("");

  @override
  Widget build(BuildContext context) {
    final roots = ref.activeRootModels;
    return pp.ChangeNotifierProvider<_SelectPath>(
        create: (BuildContext context) {
          return _selectPath;
        }, child: pp.Consumer<_SelectPath>(
      builder: (context, selectPath, child) {
        return SizedBox(
          height: double.infinity,
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ...roots.map((FsModel element) {
                        return pp.ChangeNotifierProvider(
                          create: (BuildContext context) {
                            return element;
                          },
                          child: pp.Consumer<FsModel>(
                            builder: (context, value, child) {
                              return ConfigurableExpansionTile(
                                header:
                                    (isExpanded, iconTurns, heightFactor, controller) {
                                  return Expanded(
                                      child: MyButton(
                                        isActivated:
                                        element.simplePathUrl == selectPath.path,
                                        text: element.name,
                                        onTap: () {
                                          selectPath.changePath(element.simplePathUrl);
                                        },
                                        leading: GestureDetector(
                                            onTap: () {
                                              controller.handleTap();
                                            },
                                            child: Icon(isExpanded
                                                ? Icons.expand_more
                                                : Icons.keyboard_arrow_right)),
                                      ));
                                },
                                childrenBody: _FolderTree(fsModel: value),
                              );
                            },
                          ),
                        );
                      })
                    ],
                  ),
                ),
              ),
              widget.onSelect.call(selectPath.path)
            ],
          ),
        );
      },
    ));
  }
}

///文件夹选择树
class _FolderTree extends ConsumerWidget {
  final FsModel fsModel;

  const _FolderTree({required this.fsModel});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.all(5.0),
      padding: const EdgeInsets.all(5),
      constraints: const BoxConstraints(
        maxHeight: 200
      ),
      decoration: BoxDecoration(
        border: Border.all(width: .5,color: Colors.grey.shade200),borderRadius: BorderRadius.circular(12)
      ),
      child: FilesWidget(
          model: fsModel.copyWith(
              setting: FsModelSetting(
        customUiWrapper: (repo, list, child) {
          return LoadingMoreCustomScrollView(
            slivers: [child],
          );
        },
        filter: (files) => files.where((element) => element.isDir).toIList(),
                customBuilder: (model, context, ref) {
                  return _itemBuilder(model);
                },
      ))),
    );
  }

  Widget _itemBuilder(FsModel item) {
    return pp.Consumer<_SelectPath>(
      builder: (context, selectPath, child) {
        return ConfigurableExpansionTile(
            header: (isExpanded, iconTurns, heightFactor, controller) {
              return Expanded(
                  child: MyButton(
                text: item.name,
                isActivated: item.simplePathUrl == selectPath.path,
                onTap: () {
                  selectPath.changePath(item.simplePathUrl);
                },
                leading: GestureDetector(
                    onTap: () {
                      controller.handleTap();
                    },
                    child: Icon(isExpanded
                        ? Icons.expand_more
                        : Icons.keyboard_arrow_right)),
              ));
            },
            childrenBody: _FolderTree(fsModel: item));
      },
    );
  }
}
