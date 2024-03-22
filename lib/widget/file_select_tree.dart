part of 'part.dart';

///文件选择器(树)
class FileSelectTree extends ConsumerWidget {
  const FileSelectTree({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final roots = ref.activeRootModels;
    return CustomScrollView(
      slivers: [
        ...roots.map((FsModel element) {
          return SliverMainAxisGroup(slivers: [
            SliverToBoxAdapter(
                child: MyButton(
                    text: element.name,
                    onTap: () {
                      ref.activeDomainFun.changeRootFolder(
                          element.eq,
                          (value) => value.copyWith(
                              folderSelectIsActive:
                                  value.folderSelectIsActive.not));
                    },
                    isActivated: element.folderSelectIsActive)),
            if (element.folderSelectIsActive)
              FilesWidget(
                  model: element.copyWith(
                      setting: FsModelSetting(
                customUiWrapper: (repo, list, child) {
                  return child;
                },
                customBuilder: (model, context, ref) {
                  return _FolderTree(fsModel: model);
                },
              )))
          ]);
        })
      ],
    );
  }
}

///文件夹选择树
class _FolderTree extends ConsumerWidget {
  final FsModel fsModel;

  const _FolderTree({required this.fsModel});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final FsModel(:repo, :folderSelectIsActive) = fsModel;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(fsModel.name,style: context.textTheme.titleMedium),
                Text(fsModel.simplePathUrl,style: context.textTheme.bodySmall),
              ],
            ),
          ),
          const SizedBox(width: 12),
          IconButton(
              onPressed: () {
                if (repo != null) {
                  var FilesRepo(:array) = repo;
                  array = array
                      .updateAllWhere((e) => e.folderSelectIsActive == true,
                          (value) => value.copyWith(folderSelectIsActive: false))
                      .updateItemFirstWhere(fsModel.eq, (old) {
                    return old.copyWith(folderSelectIsActive: !old.folderSelectIsActive);
                  });
                  repo.array = array;
                  repo.setState();
                  debugPrint("更新选中状态.");
                }
              },
              icon: Icon(folderSelectIsActive
                  ? Icons.check_box
                  : Icons.check_box_outline_blank))
        ],
      ),
    );

  }
}
