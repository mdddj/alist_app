part of 'part.dart';

class FsListRender extends PlatformWidget {
  final IList<FsModel> fsModelList;
  final ValueChanged<FsModel>? onClick;
  final bool hideSortToolBar;

  const FsListRender({super.key, required this.fsModelList, this.onClick, this.hideSortToolBar = false});

  @override
  Widget buildWithDesktop(BuildContext context, WidgetRef ref, DomainAccount domain) {
    final error = domain.storageError;
    return CustomScrollView(
      slivers: [
        if (!hideSortToolBar) const HomeMobileToolbar().toSliverWidget,
        if (error != null) SliverFillRemaining(child: Center(child: Text(error.toString()))),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          sliver: SliverList.list(children: [
            ...fsModelList.map((element) => FsItemLayout(
                  fsModel: element,
                  onClick: onClick,
                ))
          ]),
        )
      ],
    );
  }
}

class FsItemLayout extends PlatformWidget {
  final FsModel fsModel;
  final ValueChanged<FsModel>? onClick;

  const FsItemLayout({super.key, required this.fsModel, this.onClick});

  @override
  Widget buildWithDesktop(BuildContext context, WidgetRef ref, DomainAccount domain) {
    return KeyEventWidget(onEvent: (value) {
      value.whenOrNull(
        ok: () {
          onClick?.call(fsModel);
        },
      );
    }, builder: (focusNode, hasFocus) {
      return switch (domain.layoutStyle) {
        FilesLayoutStyle.list => _DefaultFsModelLayout(
            fsModel: fsModel,
            onClick: onClick,
          ),
        FilesLayoutStyle.grid => GridFsModelLayout(fsModel: fsModel, onClick: onClick),
      };
    });
  }

  @override
  Widget buildWithMobile(BuildContext context, WidgetRef ref, DomainAccount domain) {
    return LayoutBuilder(builder: (c, size) {
      return MyButton(
          leading: fsModel.getIcon(),
          text: fsModel.name,
          subTitle: Text(fsModel.formatDateString),
          end: IconButton(
              onPressed: () {
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
              },
              icon: const Icon(Icons.more_horiz_outlined)),
          onTap: () => onClick?.call(fsModel)).animate().scaleY();
    });
  }
}

class GridFsModelLayout extends PlatformWidget {
  final FsModel fsModel;
  final ValueChanged<FsModel>? onClick;

  const GridFsModelLayout({super.key, required this.fsModel, this.onClick});

  @override
  Widget buildWithDesktop(BuildContext context, WidgetRef ref, DomainAccount domain) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SizedBox(
          width: constraints.maxWidth,
          height: constraints.maxWidth * 0.6,
          child: GestureDetector(
            onTap: () => onClick?.call(fsModel),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: LayoutBuilder(
                    builder: (context, constraints) {
                      return fsModel.getIcon(size: (constraints.maxHeight * 0.8), thumbnail: fsModel.thumb);
                    },
                  )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            fsModel.name,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: context.textTheme.titleMedium,
                          ),
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        const Icon(Icons.more_horiz).click(() {
                          showModalBottomSheet(
                              context: context,
                              // isScrollControlled: true,
                              builder: (context) {
                                return ScrollWrapper(
                                  child: (ctrl) => SingleChildScrollView(
                                    controller: ctrl,
                                    child: Column(
                                      children: [...getFsModelMenus(fsModel, ref,context)],
                                    ),
                                  ),
                                );
                              });
                        })
                      ],
                    ),
                  )
                ],
              ),
            ),
          ).animate().flipH(),
        );
      },
    );
  }
}

///默认列表布局
class _DefaultFsModelLayout extends ConsumerWidget {
  final FsModel fsModel;
  final ValueChanged<FsModel>? onClick;

  const _DefaultFsModelLayout({required this.fsModel, this.onClick});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MyButton(
      hideText: false,
      text: fsModel.name,
      isActivated: fsModel.active,
      onTap: () => onClick?.call(fsModel),
      leading: fsModel.isDir
          ? FileIcon(
              fileType: FileType.folder,
              iconSize: UiTheme.fileUiIconSize,
            )
          : FileIcon(fileType: fsModel.fileType, iconSize: UiTheme.fileUiIconSize, thumbnail: fsModel.thumb),
      end: GestureDetector(
        onTap: () {
          showMenuSheet(fsModel,ref, context);
        },
        child: Icon(
          Icons.more_horiz,
          color: context.colorScheme.secondary,
        ),
      ),
    );
  }
}
