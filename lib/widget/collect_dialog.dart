part of 'part.dart';

//true已存在
final _collectDialogCheckIsExistProvider =
    FutureProvider.family.autoDispose<bool?, FsModel>((ref, param) async {
  final select = ref.watch(collectFolderStoreProvider.select(
      (value) => value.value?.find((element) => element.isSelectByAddDialog)));
  if (select == null) {
    return null;
  }
  final check = await IsarTool.instance.collectDao.isCollectByFolder(
      ref.activeDomain!.id,
      // ref.activeProvider!.getFullPath(param),
      // todo 获取完整路径
      '',
      param.isDir,
      select.id ?? 0);
  return check != null;
});

///添加到收藏的弹出.
class CollectDialog extends ConsumerWidget {
  final FsModel fsModel;

  const CollectDialog(this.fsModel, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final call = ref.read(collectFolderStoreProvider.notifier);
    final hasSelect =
        ref.collectFolders.any((element) => element.isSelectByAddDialog);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverPadding(
            padding: EdgeInsets.all(12),
            sliver: SliverPersistentHeader(
                delegate: CollectFolderToolbar(hideRemove: true), pinned: true),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            sliver: SliverList.list(children: [
              ...ref.collectFolders.map((element) {
                return MyButton(
                    text: element.folderName,
                    isActivated: element.isSelectByAddDialog,
                    onTap: () {
                      call.setNewList(ref.collectFolders.updateAllWhere(
                              (element) => element.isSelectByAddDialog,
                              (value) =>
                              value.copyWith(isSelectByAddDialog: false)));
                      call.changeItemProperties(
                          element,
                              (value) => value.copyWith(
                              isSelectByAddDialog: !value.isSelectByAddDialog));
                    });
              })
            ]),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        height: 35,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
        child: ref.watch(_collectDialogCheckIsExistProvider(fsModel)).when(
          data: (data) {
            return TextButton(
              onPressed: hasSelect && data != true
                  ? () async {
                // todo
                // final nav = context.nav;
                // nav.pop();
                // fsModel.actionManager.addToCollect(
                //     ApplicationContext(context: context, ref: ref),
                //     fsModel);
              }
                  : null,
              // child: Text(data == true
              //     ? '已存在于这个收藏夹'
              //     : (hasSelect ? '添加到收藏夹' : '请选择收藏夹'))
              child: const Text('添加收藏夹功能暂时禁用'),
            );
          },
          error: (error, stackTrace) {
            return Text('$error');
          },
          loading: () {
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
