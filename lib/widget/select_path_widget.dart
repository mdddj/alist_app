part of 'part.dart';

typedef SelectPathWidgetCallback = Future<bool> Function(
    String toPath, FsModel selectModel, String fileName);

final _fileNameState = StateProvider.autoDispose<String?>((ref) => null);

///选择文件路径小部件
class SelectPathWidget extends PlatformWidget {
  final FsModel? model;
  final SelectPathWidgetCallback? callback;

  const SelectPathWidget({super.key, this.model, required this.callback});

  Future<void> submit(WidgetRef ref, BuildContext context) async {
    SmartDialog.showLoading(msg: '正在处理中...');
    final nav = context.nav;
    final path =
        ref.read(selectFolderStateProvider.select((value) => value.path));
    final selectModel = ref
        .read(selectFolderStateProvider.select((value) => value.selectModel));
    final filename = ref.read(_fileNameState) ?? model?.name;
    if (path != null && selectModel != null) {
      final result = await callback?.call(path, selectModel, filename ?? '');
      if (result == true) {
        nav.pop();
      }else{
        nav.pop(false);
      }
    }
    SmartDialog.dismiss(status: SmartStatus.loading);
  }

  @override
  Widget buildWithDesktop(
      BuildContext context, _,DomainAccount domain) {
    final storages = domain.mainStorages.content;
    return BodyExpandedWidget(
      bottom: HookConsumer(
        builder: (context, ref, child) {
          final isEnable = ref.watch(selectFolderStateProvider).isEnable;
          final path = ref
              .watch(selectFolderStateProvider.select((value) => value.path));

          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: Group(
              elevation: 0.2,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(child: Text('${path ?? '请选择目标路径'}/${model?.name ?? ''}')),
                      const SizedBox(
                        width: 12,
                      ),
                      FilledButton(
                          onPressed: isEnable.not
                              ? null
                              : () {
                                  submit(ref, context);
                                },
                          child: const Text("确定"))
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
      child: CustomScrollView(
        slivers: [
          const LargeTitle(text: "选择目标路径")
              .marginOnly(left: 12, right: 12)
              .toSliverWidget,
          SliverPadding(
            padding: const EdgeInsets.all(12),
            sliver: DecoratedSliver(
              decoration: BoxDecoration(
                  color: context.colorScheme.surfaceVariant,
                  borderRadius: BorderRadius.circular(UiTheme.cardRadius)),
              sliver: SliverPadding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                sliver: SliverList.list(children: [
                  ...storages.map((element) {
                    return ConfigurableExpansionTile(
                      header:
                          (isExpanded, iconTurns, heightFactor, controller) {
                        final icon = isExpanded
                            ? const Icon(Icons.expand_more)
                            : const Icon(Icons.chevron_right);
                        return Expanded(child: HookConsumer(
                          builder: (context, ref, child) {
                            return MyButton(
                              text: element.name,
                              isActivated: element ==
                                  ref.watch(selectFolderStateProvider
                                      .select((value) => value.selectModel)),
                              onTap: () {
                                ref
                                    .read(selectFolderStateProvider.notifier)
                                    .change(element, path: '/${element.name}');
                              },
                              leading: HoverWidget(
                                builder: (color, isHove, _) {
                                  return icon
                                      .click(() {
                                        controller.handleTap();
                                      })
                                      .bg(color ?? Colors.transparent)
                                      .clipRadius(20);
                                },
                              ),
                            );
                          },
                        ));
                      },
                      childrenBody: _TreeSelect(
                        path: element.getRootPath(),
                      ),
                    );
                  })
                ]),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget buildWithMobile(
      BuildContext context,WidgetRef ref,  DomainAccount domain) {
    return buildWithDesktop(context,ref, domain);
  }
}

///树选择小部件
class _TreeSelect extends StatefulWidget {
  final String path;

  const _TreeSelect({required this.path});

  @override
  State<_TreeSelect> createState() => _TreeSelectState();
}

class _TreeSelectState extends State<_TreeSelect> {
  ///加载数据
  Future<FsListResult> _loadData() async {
    final response = await tryRequest(
        () => MyFsListApi().request(R(
            showDefaultLoading: false,
            data: FsListParam(path: widget.path).toJson())), error: (e) {
      throw e;
    });
    return response!;
  }

  @override
  Widget build(BuildContext context) {
    return Loader(
      loadingWidget: Container(
        alignment: Alignment.centerLeft,
        child: const CircularProgressIndicator(
          strokeWidth: 1,
        ).sizeBox(22, 22).paddingOnly(top: 4, bottom: 4),
      ),
      load: _loadData,
      errorBuilder: (error) {
        return RichText(
            text: TextSpan(
                text: '$error',
                style: context.textTheme.bodyMedium
                    ?.copyWith(color: context.colorScheme.error)));
      },
      builder: (context, value) {
        final files = value.content;
        final folders = files.where((element) => element.isDir);
        if (folders.isEmpty) {
          return const _EmptyText();
        }
        return Column(
          children: [
            ...folders.map((element) {
              return ConfigurableExpansionTile(
                  header: (bool isExpanded, Animation<double> iconTurns,
                      Animation<double> heightFactor, controller) {
                    final icon = isExpanded
                        ? const Icon(Icons.expand_more)
                        : const Icon(Icons.chevron_right);
                    return Expanded(child: HookConsumer(
                      builder: (context, myRef, child) {
                        return MyButton(
                          text: element.name,
                          leading: HoverWidget(
                            builder: (color, isHove, _) {
                              return icon
                                  .bg(color ?? Colors.transparent)
                                  .clipRadius(12)
                                  .click(() {
                                controller.handleTap();
                              });
                            },
                          ),
                          isActivated: element ==
                              myRef.watch(selectFolderStateProvider
                                  .select((value) => value.selectModel)),
                          onTap: () {
                            debugPrint("path:${widget.path}/${element.name}");
                            myRef
                                .read(selectFolderStateProvider.notifier)
                                .change(element,
                                    path: '${widget.path}/${element.name}');
                          },
                        );
                      },
                    ));
                  },
                  childrenBody: _TreeSelect(
                    path: '${widget.path}/${element.name}',
                  ));
            })
          ],
        );
      },
    ).paddingOnly(left: 20 + 12);
  }
}

class _EmptyText extends StatelessWidget {
  const _EmptyText();

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(top: 6, bottom: 6),
        child: Row(
          children: [
            const Icon(
              Icons.info_outline,
            ).marginOnly(right: 2),
            Text(
              '无可用文件夹',
              style: context.textTheme.labelMedium
                  ?.copyWith(color: context.colorScheme.secondary),
            ),
          ],
        ));
  }
}
