part of '../part.dart';

class FavoriteIndexPage extends ConsumerWidget {
  const FavoriteIndexPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final call = ref.read(collectFolderStoreProvider.notifier);
    return DesktopScaffold(
      showHeader: false,
      firstChild: CustomScrollView(
        slivers: [
          const SliverPadding(
              padding: EdgeInsets.all(12),
              sliver: SliverPersistentHeader(
                delegate: CollectFolderToolbar(),
                pinned: true,
              )),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            sliver: SliverList.list(children: [
              ...ref.collectFolders.map((e) {
                return HoverWidget(
                  builder: (Color? color, bool isHove,
                      MyAnimatedWidgetController controller) {
                    return MyButton(
                      text: e.folderName,
                      isActivated: e.isSelect,
                      // end: isHove ? const Icon(Icons.more_vert) : null,
                      onTap: () {
                        call.setNewList(ref.collectFolders.updateAll(
                            (value) => value.copyWith(isSelect: false)));
                        call.changeItemProperties(
                            e, (value) => value.copyWith(isSelect: true));
                      },
                    );
                  },
                );
              })
            ]),
          )
        ],
      ),
      child: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(12),
            sliver: ref.watch(collectListShowStoreProvider).when(
              data: (data) {
                if (data.isEmpty) {
                  return const SliverFillRemaining(
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('暂无收藏.'),
                      ),
                    ),
                  );
                }
                return SliverList.list(children: [
                  ...data.map((element) {
                    final CollectModel(:name, :fileFolderPath, :id) = element;
                    return MyButton(
                        text: name,
                        onTap: () {
                          // ref.activeProvider?.openCollect(element);
                        },
                        end: HoverWidget(
                          builder: (color, isHove, controller) =>
                              const Icon(Icons.more_horiz).hoverIcon(color),
                          onTap: (context, pos) {
                            showMenu(context: context, position: pos, items: [
                              MyPopupButton(
                                text: '删除',
                                onTap: () {
                                  IsarTool.instance.collectDao.deleteById(id!);
                                },
                              )
                            ]);
                          },
                        ),
                        subTitle: fileFolderPath != null
                            ? Text(fileFolderPath)
                            : null,
                        leading: FileIcon(
                            fileType: element.isFolder
                                ? FileType.folder
                                : createFileTypeFromPath(element.fullPath)));
                  })
                ]);
              },
              error: (error, stackTrace) {
                return SliverFillRemaining(
                  child: Center(
                    child: Text('$error'),
                  ),
                );
              },
              loading: () {
                return const SliverFillRemaining(
                    child: Center(child: CircularProgressIndicator()));
              },
            ),
          )
        ],
      ),
    );
  }
}

///操作区域
class CollectFolderToolbar extends SliverPersistentHeaderDelegate {
  final bool hideRemove;

  const CollectFolderToolbar({this.hideRemove = false});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return HookConsumer(
      builder: (context, ref, child) {
        return SpaceRow(
          space: 2,
          children: [
            HoverWidget(
              builder: (color, isHove, controller) {
                return const Icon(LineIcons.plus).hoverIcon(color);
              },
              onTap: (context, pos) async {
                final result = await showMenu<CollectFolder>(
                    context: context,
                    position: pos,
                    items: [
                      const MyPopupWrapper(
                          size: 100, child: _AddNewCollectFolderWidget())
                    ]);
                if (result != null) {
                  ref
                      .read(collectFolderStoreProvider.notifier)
                      .addANewItem(result);
                }
              },
            ),
            if (!hideRemove)
              HoverWidget(builder: (color, isHove, controller) {
                return const Icon(LineIcons.trash).hoverIcon(color);
              }, onTap: (context, pos) async {
                final selectItem =
                    ref.collectFolders.find((element) => element.isSelect);
                if (selectItem != null) {
                  final CollectFolder(
                    :id,
                    :folderName,
                    :isDefault,
                    :canDelete
                  ) = selectItem;
                  if (isDefault) {
                    ToastUtil.showWarning('默认收藏夹不能被删除');
                    return;
                  }
                  if (!canDelete) {
                    ToastUtil.showWarning('这个文件夹不能被删除.');
                    return;
                  }
                  final isOk = await context.askOk(AskOkDialogParams(
                      title: const Text('提示'),
                      contentText: '收藏夹内所有内容都会被永久删除,确定删除[$folderName]吗?',
                      okText: '确定',
                      cancelText: '取消'));
                  if (isOk && id != null) {
                    await IsarTool.instance.collectDao.deleteAllByFolderId(id);
                    await IsarTool.instance.collectFolderDao.deleteById(id);
                    ref
                        .read(collectFolderStoreProvider.notifier)
                        .removeById(id);
                    ToastUtil.showSuccess('删除成功');
                  }
                }
              })
          ],
        );
      },
    );
  }

  @override
  double get maxExtent => 20;

  @override
  double get minExtent => 20;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}

///新建收藏夹的弹窗
class _AddNewCollectFolderWidget extends ConsumerStatefulWidget {
  const _AddNewCollectFolderWidget();

  @override
  ConsumerState<_AddNewCollectFolderWidget> createState() =>
      _AddNewCollectFolderWidgetState();
}

class _AddNewCollectFolderWidgetState
    extends ConsumerState<_AddNewCollectFolderWidget> {
  final _nameCtrl = TextEditingController();
  final _noteCtrl = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    bool isOk = _formKey.currentState?.validate() == true;

    return Container(
      width: context.screenWidth * 0.5,
      padding: const EdgeInsets.all(12),
      child: Form(
        key: _formKey,
        child: SpaceColumn(
          children: [
            const IosTitle(title: '新建'),
            TextFormField(
              autofocus: true,
              validator: (value) =>
                  value == null || value.isEmpty ? '请输入名称' : null,
              onChanged: (value) {
                setState(() {});
              },
              onFieldSubmitted: (value) {
                _submit();
              },
              decoration: const InputDecoration(
                  isDense: true, labelText: '名称', hintText: '收藏夹名称'),
              controller: _nameCtrl,
            ),
            TextFormField(
              onChanged: (value) {
                setState(() {});
              },
              decoration: const InputDecoration(
                  isDense: true, labelText: '备注', hintText: '备注,非必须'),
              controller: _noteCtrl,
            ),
            FilledButton(
                    onPressed: isOk ? _submit : null,
                    child: const Text('创建收藏夹'))
                .maxWidthButton
          ],
        ),
      ),
    ).animate().flip();
  }

  ///提交.
  Future<void> _submit() async {
    final nav = context.nav;
    final name = _nameCtrl.text;
    final find = await IsarTool.instance.collectFolderDao
        .find(ref.activeDomain!.id, name);
    if (find != null) {
      ToastUtil.showWarning('文件夹已存在');
      return;
    }
    final create = await IsarTool.instance.collectFolderDao.newFolder(
        CollectFolder(
            folderName: name,
            siteId: ref.activeDomain!.id,
            isDefault: false,
            notes: _noteCtrl.text));
    ToastUtil.showSuccess('创建[$name]成功.');
    nav.pop(create);
  }

  @override
  void dispose() {
    _noteCtrl.dispose();
    _nameCtrl.dispose();
    super.dispose();
  }
}
