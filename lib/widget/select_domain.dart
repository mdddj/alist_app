part of 'part.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SelectDomainWidget(),
    );
  }
}

///选择网站
class SelectDomainWidget extends BasePlatformWidget {
  const SelectDomainWidget({super.key});

  @override
  Widget buildWithDesktop(BuildContext context) {
    return HookConsumer(builder: (context, ref, child) {
      return ref.watch(sitesStateProvider).when(
        data: (data) {
          return Container(
            decoration: BoxDecoration(color: context.backgroundColor),
            padding: EdgeInsets.symmetric(
                horizontal: 12, vertical: context.paddingTop + 23),
            child: CustomScrollView(
              slivers: [
                SliverPadding(
                  padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  sliver: SliverToBoxAdapter(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'AList站点列表',
                          style: context.textTheme.titleLarge,
                        ),
                        const SpaceRow(
                          space: 6,
                          children: [
                            _EditorModeButton(),
                            _AsyncButton(),
                            _ExportButton(),
                            _ImportButton(),
                            _CreateNew(),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SliverPadding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  sliver: SliverWaterfallFlow.count(
                    crossAxisCount: 6,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                    children: [...data.map((e) => _ItemWrapper(item: e))],
                  ),
                )
              ],
            ),
          );
        },
        error: (error, stackTrace) {
          return Text('$error').center;
        },
        loading: () {
          return const CircularProgressIndicator().center;
        },
      );
    });
  }

  @override
  Widget buildWithMobile(BuildContext context) {
    return HookConsumer(
      builder: (context, ref, child) {
        return ref.watch(sitesStateProvider).when(
          data: (data) {
            return CustomScrollView(
              slivers: [
                SliverAppBar(
                  pinned: true,
                  title: const Text('选择AList站点浏览'),
                  actions: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: HoverWidget(
                        builder: (color, isHove, controller) {
                          return const Icon(Icons.menu);
                        },
                        onTap: (context, pos) {
                          showMenu<String>(
                              context: context,
                              position: pos,
                              items: [
                                MyPopupButton(
                                  text: '添加站点',
                                  onTap: () {
                                    showDialog(
                                            context: context,
                                            builder: (context) =>
                                                const CreateNewDomainWidget())
                                        .then((value) {
                                      if (value == true) {
                                        ref.invalidate(sitesStateProvider);
                                      }
                                    });
                                  },
                                ),
                                const PopupMenuDivider(),
                                MyPopupButton(
                                  text: '从文件导入',
                                  onTap: () {
                                    _ImportButton.import(context, ref);
                                  },
                                ),
                                MyPopupButton(
                                  text: '导出站点列表',
                                  onTap: () {
                                    MyFileTool.instance.exportDomains();
                                  },
                                ),
                                MyPopupButton(
                                  text: '从远程服务器同步',
                                  onTap: () {
                                    _AsyncButton.show(context, ref);
                                  },
                                )
                              ]);
                        },
                      ),
                    )
                  ],
                ),
                if (data.isEmpty)
                  SliverFillRemaining(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text('没有站点可使用,请添加一个',
                            style: context.textTheme.titleMedium),
                      ),
                    ),
                  ),
                SliverPadding(
                  padding: EdgeInsets.only(bottom: context.paddingBottom),
                  sliver: SliverList.separated(
                    itemCount: data.length,
                    itemBuilder: (BuildContext context, int index) {
                      final e = data[index];
                      return KeyEventWidget(onEvent: (value) {
                        value.whenOrNull(
                          ok: () {
                            ref.switchApplication(e).then((value) {
                              const MyMobileIndexPage().go(context);
                            });
                          },
                        );
                      }, builder: (focusNode, hasFocus) {
                        return TVContainerWrapper(
                          hasFocus: hasFocus,
                          child: Slidable(
                            key: ValueKey(e.id),
                            endActionPane: ActionPane(
                              motion: const ScrollMotion(),
                              children: [
                                SlidableAction(
                                  onPressed: (context) {
                                    showDialog(
                                        context: context,
                                        builder: (context) =>
                                            CreateNewDomainWidget(
                                              updateDomain: e,
                                            )).then((value) {
                                      if (value == true) {
                                        ref.invalidate(sitesStateProvider);
                                      }
                                    });
                                  },
                                  backgroundColor: context.primaryColor,
                                  foregroundColor:
                                      context.colorScheme.inversePrimary,
                                  icon: LineIcons.edit,
                                ),
                                SlidableAction(
                                  onPressed: (context) {
                                    AccountManager.instance.delete(e).then(
                                        (value) =>
                                            ref.invalidate(sitesStateProvider));
                                  },
                                  backgroundColor: context.colorScheme.error,
                                  foregroundColor: Colors.white,
                                  icon: LineIcons.trash,
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListTile(
                                title: Text(e.name),
                                subtitle:
                                    e.note.isNotEmpty ? Text(e.note) : null,
                                leading: Container(
                                    padding: const EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                        color: context.colorScheme.secondary
                                            .withOpacity(.1),
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: _DomainLogo(item: e)),
                                trailing: _Ping(domain: e),
                                onTap: () async {
                                  ref.switchApplication(e).then((value) {
                                    const MyMobileIndexPage().go(context);
                                  });
                                },
                              ),
                            ),
                          ),
                        );
                      });
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return Container(
                        height: .1,
                        decoration:
                            BoxDecoration(color: context.theme.dividerColor),
                      );
                    },
                  ),
                ),
              ],
            );
          },
          error: (error, stackTrace) {
            return Text('$error').center;
          },
          loading: () {
            return const CircularProgressIndicator().center;
          },
        );
      },
    );
  }
}

class _Ping extends ConsumerWidget {
  final DomainAccount domain;

  const _Ping({required this.domain});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final status = domain.status;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: switch (status) {
            DomainAccountStatus.none => Colors.blue,
            DomainAccountStatus.ping => Colors.green,
            DomainAccountStatus.error => Colors.orange.shade400,
          }),
      child: Text(
        switch (status) {
          DomainAccountStatus.none => '未知',
          DomainAccountStatus.ping => '正常',
          DomainAccountStatus.error => '错误',
        },
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}

class _ItemWrapper extends ConsumerWidget {
  final DomainAccount item;
  const _ItemWrapper({required this.item});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return _ItemLayout(item: item);
  }
}

///item布局
class _ItemLayout extends ConsumerWidget {
  final DomainAccount item;

  const _ItemLayout({required this.item});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isEditMode = ref.watch(
        domainEditModelStateProvider.select((value) => value.isEditorMode));

    return KeyEventWidget(builder: (context, hasFocus) {
      return FocusScope(
        parentNode: context,
        child: LayoutBuilder(builder: (context, size) {
          return HoverCard(
            shape: RoundedRectangleBorder(
                side: BorderSide(width: .1, color: context.colorScheme.outline),
                borderRadius: BorderRadius.circular(12)),
            onTap: () => ref.switchApplication(item),
            child: (isHover) => ConstrainedBox(
              constraints: BoxConstraints(
                  minWidth: size.maxWidth, minHeight: size.maxWidth),
              child: Stack(
                children: [
                  SizedBox(
                    height: size.maxWidth,
                    width: size.maxWidth,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            _DomainLogo(
                              item: item,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  item.name,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: context.textTheme.titleMedium,
                                ),
                                Text(
                                  item.note.isEmpty ? '-' : item.note,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: context.textTheme.bodySmall?.copyWith(
                                      color: context.colorScheme.secondary),
                                ),
                              ],
                            ),
                            SpaceRow(
                              space: 4,
                              children: [
                                _Ping(
                                  domain: item,
                                ),
                                if (item.importTime != null)
                                  MyIcon(
                                    iconData: LineIcons.globe,
                                    noBorder: true,
                                    toolTip: '${item.label}',
                                  )
                              ],
                            )
                          ]),
                    ),
                  ),
                  if (isEditMode)
                    Positioned(
                      top: 6,
                      right: 6,
                      child: RoundCheckBox(
                        size: 12,
                        checkedWidget: const Icon(LineIcons.check,
                            color: Colors.white, size: 8),
                        checkedColor: context.primaryColor,
                        isChecked: ref.watch(
                            domainEditModelStateProvider.select((value) =>
                                value.selectIdList.contains(item.id))),
                        onTap: (value) {
                          ref
                              .read(domainEditModelStateProvider.notifier)
                              .changeState(item);
                        },
                      ),
                    ),
                  if (isHover && !isEditMode)
                    Positioned(
                        top: 12,
                        right: 6,
                        child: HoverWidget(
                          builder: (color, isHove, controller) {
                            return Container(
                                decoration: BoxDecoration(
                                    color: color,
                                    borderRadius: BorderRadius.circular(4)),
                                child: const Icon(Icons.more_vert_outlined));
                          },
                          onTap: (ctx, pos) {
                            showMenu<String>(
                                context: context,
                                position: pos,
                                items: [
                                  MyPopupButton(
                                    text: '打开',
                                    leading: const Icon(Icons.open_in_new),
                                    onTap: () {
                                      ref.switchApplication(item);
                                    },
                                  ),
                                  MyPopupButton(
                                    text: '编辑',
                                    leading: const Icon(LineIcons.editAlt),
                                    onTap: () {
                                      showDialog(
                                          context: context,
                                          builder: (context) =>
                                              CreateNewDomainWidget(
                                                updateDomain: item,
                                              )).then((value) {
                                        if (value == true) {
                                          ref.invalidate(sitesStateProvider);
                                        }
                                      });
                                    },
                                  ),
                                  MyPopupButton(
                                    text: '复制链接',
                                    leading: const Icon(LineIcons.copy),
                                    onTap: () {
                                      item.domain.copy();
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          return StringDialog(
                                            title: '复制到剪贴板',
                                            message: '成功:${item.domain}',
                                          );
                                        },
                                      );
                                    },
                                  ),
                                  const PopupMenuDivider(),
                                  MyPopupButton(
                                    text: '删除',
                                    leading: Icon(
                                      LineIcons.trash,
                                      color: context.colorScheme.error,
                                    ),
                                    dangerous: true,
                                    onTap: () {
                                      AccountManager.instance.delete(item).then(
                                          (value) => ref
                                              .invalidate(sitesStateProvider));
                                    },
                                  ),
                                  if (item.error != null)
                                    const PopupMenuDivider(),
                                  if (item.error != null)
                                    MyPopupButton(text: '错误:${item.error}')
                                ]);
                          },
                        ))
                ],
              ),
            ),
          );
        }).animate().shake(),
      );
    });
  }
}

///创建新的
class _CreateNew extends ConsumerWidget {
  const _CreateNew();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FilledButton.icon(
        onPressed: () {
          showDialog(
                  context: context,
                  builder: (context) => const CreateNewDomainWidget())
              .then((value) {
            if (value == true) {
              ref.invalidate(sitesStateProvider);
            }
          });
        },
        icon: const Icon(LineIcons.plus),
        label: const Text('添加站点'));
  }
}


class DomainLogo extends StatelessWidget {
  final DomainAccount item;

  const DomainLogo({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return _DomainLogo(item: item);
  }
}

class _DomainLogo extends ConsumerWidget {
  final DomainAccount item;

  const _DomainLogo({required this.item});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = isMobile() ? 50.0 : 30.0;
    final setting = item.setting;
    final logo = setting.getLogo();
    final imageParam = ImageParams(
        size: size,
        printError: false,
        fit: BoxFit.cover,
        enableMemoryCache: true,
        clearMemoryCacheIfFailed: true,
        errorWidget: const _DefaultLogo(),
        borderRadius: BorderRadius.circular(size / 2),
        shape: BoxShape.circle);
    if (logo.contains("data:image/jpg;base64") ||
        logo.contains("data:image/png;base64")) {
      return ImageView(
          image: MyImage.base64(base64Code: logo, params: imageParam));
    }
    if (logo.urlManager.withoutExtension == 'svg') {
      return SvgPicture.network(
        logo,
        width: size,
        height: size,
      );
    } else {
      return ImageView(image: MyImage.network(url: logo, params: imageParam));
    }
  }
}

class _DefaultLogo extends StatelessWidget {
  const _DefaultLogo();

  @override
  Widget build(BuildContext context) {
    const size = 30.0;
    return SvgPicture.asset('assets/svg/alist.svg', width: size, height: size);
  }
}

///导出按钮
class _ExportButton extends StatelessWidget {
  const _ExportButton();

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {
        MyFileTool.instance.exportDomains();
      },
      label: const Text('导出'),
      icon: const Icon(LineIcons.share),
    );
  }
}

class _ImportButton extends ConsumerWidget {
  const _ImportButton();

  static void import(BuildContext context, WidgetRef ref) {
    MyFileTool.instance.importDomains(
      onSuccess: (list) {
        context
            .askOk(AskOkDialogParams(
                contentText: '检测到${list.length}站点，是否继续导入？',
                okText: '导入',
                cancelText: '取消',
                title: const Text('提示')))
            .then((value) {
          if (value) {
            AccountManager.instance.insertList(list.unlock).then((value) {
              ToastUtil.showSuccess('导入成功');
              ref.invalidate(sitesStateProvider);
            });
          }
        });
      },
      onError: () {
        SmartDialog.showNotify(msg: '导入失败,格式错误', notifyType: NotifyType.error);
      },
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextButton.icon(
      onPressed: () => import(context, ref),
      icon: const Icon(LineIcons.fileImport),
      label: const Text('导入'),
    );
  }
}

///编辑模式
class _EditorModeButton extends ConsumerWidget {
  const _EditorModeButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(domainEditModelStateProvider);
    return SpaceRow(
      children: [
        if (model.isEditorMode && model.selectIdList.isNotEmpty)
          TextButton(
              onPressed: () async {
                final isOk = await context.askOk(
                  const AskOkDialogParams(
                      contentText: '确认删除吗?', okText: '删除', cancelText: '取消'),
                );
                if (isOk) {
                  AccountManager.instance
                      .deleteByIds(model.selectIdList.unlock)
                      .then((value) => ref.invalidate(sitesStateProvider));
                }
              },
              child: Text(
                '删除选中',
                style: TextStyle(color: context.colorScheme.error),
              )).animate().scale(),
        TextButton(
            onPressed: () {
              ref.read(domainEditModelStateProvider.notifier).changeMode();
            },
            child: Text(model.isEditorMode ? '退出编辑模式' : '编辑模式')),
      ],
    );
  }
}

///同步
class _AsyncButton extends ConsumerWidget {
  const _AsyncButton();

  static void show(BuildContext context, WidgetRef ref) {
    showModalBottomSheet<DartTypeModel>(
      context: context,
      builder: (context) {
        return const _ImportForCloud();
      },
    ).then((value) {
      if (value != null) {
        value.maybeWhen(orElse: () {
          showNoResourceDialog(
              const AlertParam(title: '无法解析', content: '格式不正确'));
        }, list: (value) {
          final domains = importFromDynamicList(value, label: '从远程导入');
          if (domains.isNotEmpty) {
            AccountManager.instance.insertList(domains.unlock).then((value) {
              ToastUtil.showSuccess('导入成功');
              ref.invalidate(sitesStateProvider);
            });
          }
        });
      }
    });
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextButton.icon(
      onPressed: () {
        show(context, ref);
      },
      label: const Text('远程'),
      icon: const Icon(LineIcons.cloud),
    );
  }
}

///从云端导入配置
class _ImportForCloud extends StatefulWidget {
  const _ImportForCloud();

  @override
  State<_ImportForCloud> createState() => _ImportForCloudState();
}

class _ImportForCloudState extends State<_ImportForCloud> {
  String text = '';

  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(12),
      child: SpaceColumn(
        space: 20,
        children: [
          TextField(
            onChanged: (value) {
              setState(() {
                text = value;
              });
            },
            decoration: const InputDecoration(
                hintText: '导入远程json',
                helperText: '提示:该url需要返回有效的站点列表json,参考导出格式'),
          ),
          FilledButton(
                  onPressed:
                      text.isNotEmpty && text.urlManager.isURL ? _submit : null,
                  child: const Text('确定'))
              .maxWidthButton
        ],
      ),
    );
  }

  ///提交
  Future<void> _submit() async {
    try {
      final nav = context.nav;
      final response = await FetchRawByUrl(text).request();
      nav.pop(response);
    } on BaseApiException catch (e) {
      toast('同步失败:${e.getMessage}');
    }
  }
}
