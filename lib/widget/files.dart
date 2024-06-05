part of 'part.dart';

class FilesRenderWidget extends PlatformWidget {
  final FsModel fsModel;

  const FilesRenderWidget({super.key, required this.fsModel});

  @override
  Widget buildWithDesktop(BuildContext context, WidgetRef ref, DomainAccount domain) {
    final currentFileOpen = domain.fileOpenModel;
    return pp.ChangeNotifierProvider(
      create: (context) => fsModel,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(UiTheme.cardRadius), bottomRight: Radius.circular(UiTheme.cardRadius)),
        child: Column(
          children: [
            const MainHeader(child: PublicPathWidget()),
            pp.Consumer<FsModel>(
              builder: (context, value, child) {
                final dirs = value.dirs;
                return Expanded(
                    child: currentFileOpen != null
                        ? FileOpenWidget(model: currentFileOpen)
                        : IndexedStack(
                            index: dirs.length - 1,
                            children: [...dirs],
                          ));
              },
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget buildWithMobile(BuildContext context, WidgetRef ref, DomainAccount domain) {
    // todo
    // final files = applicationProvider.files;
    // final route = applicationProvider.routerManager.model.router;
    final files = [];
    final openFileModel = domain.fileOpenModel;
    if (openFileModel != null) {
      return FileOpenWidget(model: openFileModel);
    }
    return CustomScrollView(
      slivers: [
        // todo
        if (false)
          const SliverPersistentHeader(
            delegate: _MobileRoutersHeader(),
            pinned: true,
            floating: true,
          ),
        DecoratedSliver(
          sliver: SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            sliver: SliverList.list(children: [
              ...files.map((e) {
                return FilesItemLayout(fsModel: e);
              })
            ]),
          ),
          decoration: BoxDecoration(color: context.cardColor),
        ),
        const SliverToBoxAdapter(child: FilesReadMeWidget())
      ],
    );
  }
}

class _MobileRoutersHeader extends SliverPersistentHeaderDelegate {
  const _MobileRoutersHeader();

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return HookConsumer(
      builder: (context, ref, child) {
        if (ref.activeDomain case var model when model != null) {
          model = ref.activeDomain;
          return Container(
              alignment: Alignment.centerLeft,
              color: context.cardColor,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    // todo
                    // IconButton(
                    //     onPressed: model.backDir,
                    //     icon: const Icon(Icons.chevron_left)),
                    // Text(model.routerManager.model.getCurrentRouterPath)
                  ],
                ),
              ));
        }
        return const Text('no active provider');
      },
    );
  }

  @override
  double get maxExtent => 48;

  @override
  double get minExtent => 48;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) => true;
}

class FilesItemLayout extends PlatformWidget {
  final FsModel fsModel;
  final ValueChanged<FsModel>? onTap;
  final ValueChanged<FsModel>? showMenu;

  const FilesItemLayout({super.key, required this.fsModel, this.onTap, this.showMenu});

  Widget getName() {
    return Text(
      fsModel.name,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }

  @override
  Widget buildWithDesktop(BuildContext context, WidgetRef ref, DomainAccount domain) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return MyButton(
          text: fsModel.name,
          end: SpaceRow(
            children: [
              IsCollectWidget(
                fsModel: fsModel,
                key: ValueKey(fsModel),
                builder: (isCollect, CollectModel? collectModel) {
                  if (isCollect) {
                    return const Icon(Icons.favorite, color: Colors.purple).click(() async {
                      /// todo 删除收藏
                    });
                  }
                  return const SizedBox.shrink();
                },
              ),
              ConstrainedBox(
                  constraints: const BoxConstraints(
                    minWidth: 120,
                  ),
                  child: Text(
                    formatFileSize(fsModel.size),
                    maxLines: 1,
                    textAlign: TextAlign.end,
                  )),
            ],
          ),
          leading: fsModel.getIcon(),
          isActivated: fsModel.active,
          onTap: () {
            fsModel.repo?.changeIsSelect(fsModel);
            onTap?.call(fsModel);
          },
          onSecondaryTapDown: (detail, action) {
            fsModel.repo?.changeIsSelect(fsModel);
            final offset = detail.globalPosition;
            final posit = RelativeRect.fromLTRB(offset.dx, offset.dy, offset.dx, offset.dy);
            showFsModalMenu(context, fsModel, posit,ref);
          },
        );
      },
    );
  }

  @override
  Widget buildWithMobile(BuildContext context, WidgetRef ref, DomainAccount domain) {
    return FsItemLayout(
      fsModel: fsModel,
      onClick: onTap,
    );
  }
}

///导航条
class PublicPathWidget extends PlatformWidget {
  const PublicPathWidget({super.key});

  TextStyle? getTextStyle(BuildContext context, bool isLast) => context.kTextTheme.bodyMedium?.copyWith(
      fontWeight: isLast ? FontWeight.bold : null,
      fontSize: isLast ? (context.textTheme.bodyMedium?.fontSize ?? 12) * 1.12 : null,
      color: isLast ? (context.isDarkModel ? Colors.white : Colors.black) : context.colorScheme.secondary);

  Widget getNameWidget(String name, BuildContext context, bool isLast,
      {FsModel? fsModel, Widget? ending, VoidCallback? onTap}) {
    return HoverWidget(
      builder: (color, _, controller) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
          margin: const EdgeInsets.symmetric(horizontal: 3),
          decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(6)),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [Text(name, style: getTextStyle(context, isLast)), if (ending != null) ending],
          ),
        );
      },
      onTap: (_, ___) {
        onTap?.call();
      },
      hoverColor: Colors.grey.shade200,
    );
  }

  @override
  Widget buildWithDesktop(BuildContext context, WidgetRef ref, DomainAccount domain) {
    return pp.Consumer<FsModel>(
      builder: (context, value, child) {
        final model = value;
        final dirs = model.dirs;
        final fileOpen = domain.fileOpenModel;
        const iconSize = 16.0;
        return Row(
          children: [
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...dirs.map((element) {
                      final isLast = dirs.isLast(element);
                      return Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          getNameWidget(
                            element.model.name,
                            context,
                            isLast,
                            fsModel: element.model,
                            onTap: () {
                              pp.Provider.of<FsModel>(context, listen: false).toDir(element);
                            },
                          ),
                          if (!isLast)
                            const SvgIcon(
                              name: 'right',
                              size: 12,
                            ),
                        ],
                      );
                    }),
                    if (fileOpen != null)
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text('/'),
                          getNameWidget(
                            fileOpen.fsModel.name,
                            context,
                            false,
                            ending: const IconWrapper(
                              padding: EdgeInsets.all(2),
                              child: Icon(
                                Icons.close,
                                color: Colors.grey,
                                size: 11,
                              ),
                            ),
                            onTap: () {
                              // todo
                              // applicationProvider.closeFile();
                            },
                          ),
                        ],
                      )
                  ],
                ),
              ),
            ),
            Container(
              constraints: const BoxConstraints(maxHeight: 30),
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 2),
              decoration: BoxDecoration(
                  border: Border.all(color: context.theme.dividerColor, width: .2),
                  borderRadius: BorderRadius.circular(6)),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  HoverWidget(
                    builder: (color, isHove, controller) {
                      return IconWrapper(
                        color: color,
                        child: SvgPicture.asset(
                          'assets/svg/icons/create_folder.svg',
                          width: iconSize,
                          height: iconSize,
                        ),
                      );
                    },
                    toolTip: '创建文件夹',
                    onTap: (value, __) {
                      CreateNewFolderModal.show(context).then((value) {
                        if (value != null) {
                          // todo
                          // applicationProvider.createNewFolderSuccess(value);
                        }
                      });
                    },
                  ),
                  HoverWidget(
                    toolTip: '上传文件夹',
                    builder: (color, isHove, controller) {
                      return IconWrapper(
                        color: color,
                        child: SvgPicture.asset(
                          'assets/svg/icons/upload_folder.svg',
                          width: iconSize,
                          height: iconSize,
                        ),
                      );
                    },
                    onTap: (value, __) {
                      // todo 上传文件夹
                      // applicationProvider.uploadFolder(
                      //   onSelect: (value) {
                      //     applicationProvider.showUploadPage();
                      //   },
                      // );
                    },
                  ),
                  HoverWidget(
                    toolTip: "上传文件",
                    onTap: (value, __) {
                      /// todo 上传文件
                      // applicationProvider.uploadFile(
                      //   onSelect: (value) {
                      //     applicationProvider.showUploadPage();
                      //   },
                      // );
                    },
                    builder: (color, isHove, controller) {
                      return IconWrapper(
                        color: color,
                        child: SvgPicture.asset(
                          'assets/svg/icons/upload_file.svg',
                          width: iconSize,
                          height: iconSize,
                        ),
                      );
                    },
                  ),
                ],
              ),
            )
          ],
        );
      },
    );
  }

  @override
  Widget buildWithMobile(BuildContext context, WidgetRef ref, DomainAccount domain) {
    return buildWithDesktop(context, ref, domain);
  }
}

///格式化文件大小显示
String formatFileSize(int sizeInBytes) {
  final model = ByteModel.create(sizeInBytes.toDouble());
  return model.format(1);
}

class SvgIcon extends StatelessWidget {
  final String name;
  final double? size;
  final Color? color;

  const SvgIcon({super.key, required this.name, this.size, this.color});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/svg/icons/$name.svg',
      width: size,
      height: size,
      colorFilter: ColorFilter.mode(color ?? context.iconColor ?? Colors.grey, BlendMode.srcIn),
    );
  }
}
