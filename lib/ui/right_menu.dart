part of 'part.dart';

final _createNewFolderState = StateProvider.autoDispose<String>((ref) => '');

///创建新文件夹
class CreateNewFolder extends PlatformWidget {
  final BuildContext targetContext;

  const CreateNewFolder(this.targetContext, {super.key});

  @override
  Widget buildWithDesktop(BuildContext context, WidgetRef ref, DomainAccount domain) {
    return MyButton(
        text: '创建新文件夹',
        onTap: () {
          CreateNewFolderModal.show(targetContext).then((value) {
            if (value != null) {
              // todo 创建新文件夹
              // applicationProvider.createNewFolderSuccess(value);
            }
          });
        },
        leading: const Icon(Icons.folder_open_sharp));
  }
}

class CreateNewFolderModal extends PlatformWidget {
  final BuildContext targetContext;

  const CreateNewFolderModal(this.targetContext, {super.key});

  static Future<String?> show(BuildContext context) async {
    return await showModalBottomSheet<String>(
      context: context,
      builder: (context) {
        return CreateNewFolderModal(context);
      },
    );
  }

  @override
  Widget buildWithDesktop(BuildContext context, WidgetRef ref, DomainAccount domain) {
    // final path = applicationProvider.routerManager.model.getCurrentRouterPath;// todo 获取path
    final path = '';
    return SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const LargeTitle(text: '创建新的文件夹'),
            Group(
              elevation: 0.2,
              padding: const EdgeInsets.all(12),
              children: [
                Row(
                  children: [
                    // Text(path),
                    // const Text('/'),
                    // const SizedBox(
                    //   width: 2,
                    // ),
                    Expanded(
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(minWidth: 250),
                        child: TextField(
                          autofocus: true,
                          decoration: const InputDecoration(hintText: '输入文件夹名字'),
                          onChanged: (value) {
                            ref.read(_createNewFolderState.notifier).state = value;
                          },
                          onSubmitted: (value) {
                            _submit(path, value);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                HookConsumer(
                  builder: (context, ref, child) {
                    final text = ref.watch(_createNewFolderState);
                    return FilledButton(
                            onPressed: text.isNotEmpty
                                ? () {
                                    _submit(path, text);
                                  }
                                : null,
                            child: const Text('新建文件夹'))
                        .maxWidthButton;
                  },
                )
              ],
            ),
          ],
        ));
  }

  Future<void> _submit(String path, String text) async {
    targetContext.hideKeyBoard();
    tryRequest(
      () => MyFsCreateNewFolderApi()
          .request(R(data: {"path": "$path/$text"}, showDefaultLoading: true, loadingText: '正在创建文件夹')),
      success: () {
        targetContext.nav.pop(text);
      },
      error: (value) {
        targetContext.nav.pop();
        ToastUtil.showWarning(value.toString());
      },
    );
  }
}

///弹出操作菜单
void showFsModalMenu(BuildContext context, FsModel fsModel, RelativeRect position,WidgetRef ref) {
  // todo 弹出菜单
  // provider.activeFsModel(fsModel);
  showMenu<String>(context: context, position: position, items: [...getFsModelMenus(fsModel,ref, context)]);
}

void showMenuSheet(FsModel fsModel,WidgetRef ref, BuildContext context) {
  showModalBottomSheet(
      context: context,
      // isScrollControlled: true,
      builder: (context) {
        return ScrollWrapper(
          child: (ctrl) => SingleChildScrollView(
            controller: ctrl,
            child: Column(
              children: [...getFsModelMenus(fsModel,ref, context)],
            ),
          ),
        );
      });
}

List<PopupMenuEntry<String>> getFsModelMenus(FsModel fsModel,WidgetRef ref, BuildContext context) {
  return [
    if (!isMobile()) MyFsModelPopupDetail(fsModel: fsModel),
    if (!isMobile())
    const PopupMenuDivider(),
    if (!isMobile())
      MyPopupButton(
        text: '打开',
        leading: const Icon(Icons.open_in_browser),
        onTap: () {
          // fsModel.manager.showMenu(context, provider);
        },
      ),
    MyPopupButton(
      text: '复制',
      leading: const Icon(LineIcons.copy),
      ending: const LockingWidget(),
      onTap: () {
        fsModel.repo?.changeShowRightPanel(
            RightPanelConfig(title: '复制', child: (close) => FsModelCopyWidget(close, fsModel), width: 300));
      },
    ),
    MyPopupButton(
      text: '移动',
      leading: const Icon(Icons.move_up),
      ending: const LockingWidget(),
      onTap: () {
        fsModel.repo?.changeShowRightPanel(
            RightPanelConfig(title: '移动', child: (close) => FsModelMoveWidget(close, fsModel), width: 300));
      },
    ),
    MyPopupButton(
      text: '复制链接',
      leading: const Icon(Icons.link),
      onTap: () {
        fsModel.copyFullLink(ref);
      },
    ),
    MyPopupButton(
      text: '重命名',
      leading: const Icon(Icons.drive_file_rename_outline),
      onTap: () async {
        final newName = await GetReNameWidget.getText(context, fsModel);
        if (newName != null) {
          await fsModel.rename(newName);
        }
      },
      ending: const LockingWidget(),
    ),
    MyPopupButton(
      text: '收藏',
      leading: const Icon(LineIcons.heart),
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return CollectDialog(fsModel);
          },
        );
      },
    ),
    const PopupMenuDivider(),
    MyPopupButton(
      text: '下载',
      leading: const Icon(LineIcons.download),
      onTap: () async {
        if (fsModel.isDir) {
          ToastUtil.showWarning('暂不支持文件夹下载');
          return;
        }
        final response = await showDialog<(String, File)>(
          context: context,
          builder: (context) => DownloadSelectPathDialog(fsModel),
        );
        if (response case (final String url, final File file)) {
          // ref.read(uploadTaskProvider.notifier).startDownloadTask(url, file);
          // 更新UI
          // ref.read(myActiveDomainProvider.notifier).showDownloadPage();
        }
      },
    ),
    MyPopupButton(
      text: '删除',
      dangerous: true,
      leading: Icon(
        Icons.delete,
        color: context.colorScheme.error,
      ),
      onTap: () {
        // fsModel.delete(provider);
      },
    ),
  ];
}
