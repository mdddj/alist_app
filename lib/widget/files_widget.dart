part of 'part.dart';

typedef OnFileTap = void Function(FsModel model, WidgetRef ref);

///文件列表小部件
class FilesWidget extends ConsumerStatefulWidget {
  final FsModel model;

  const FilesWidget({super.key, required this.model});

  @override
  ConsumerState<FilesWidget> createState() => _FilesWidgetState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return model.toString();
  }
}

class _FilesWidgetState extends ConsumerState<FilesWidget>
    with AutomaticKeepAliveClientMixin {
  late FilesRepo repository =
      FilesRepo(widget.model.copyWith(context: context));

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return repository.watchThis<FilesRepo>(builder: (model, list) {
      return widget.model.setting.customUiWrapper?.call(model, list, child) ??
          Stack(
            children: [
              MyLoadingMoreCustomScrollView(
                slivers: [child],
              ),
              LayoutBuilder(
                builder: (context, constraints) {
                  return RightPanel(
                    config: model.showRightAction,
                    close: () => model.changeShowRightPanel(null),
                  );
                },
              )
            ],
          );
    });
  }

  Widget get child {
    return LoadingMoreSliverList(SliverListConfig<FsModel>(
        itemBuilder: _itemBuilder,
        sourceList: repository,
        lock: false,
        indicatorBuilder: LoadingMoreStatusBuilder.sliver));
  }

  Widget _itemBuilder(BuildContext context, FsModel item, int index) {
    return item.setting.customBuilder?.call(item, context, ref) ??
        FilesItemLayout(
            fsModel: item, onTap: (value) => item.onFileTap.call(ref, context));
  }

  @override
  bool get wantKeepAlive => true;
}

///文件列表仓库
class FilesRepo extends MyLoadingModel<FsModel> {
  final FsModel fsModel;

  FilesRepo(this.fsModel);

  int _page = 1;
  bool _hasMore = true;

  //显示右侧面板
  RightPanelConfig? showRightAction;

  @override
  Future<bool> loadData([bool isLoadMoreAction = false]) async {
    final FsModel(:setting) = fsModel;
    final FsModelSetting(:filter) = setting;
    final result = await MyFsListApi().request(R(
        showDefaultLoading: false,
        data: FsListParam(path: fsModel.simplePathUrl, page: _page)));
    var files = result.content.updateAll((value) => value.copyWith(
        simplePathUrl: '${fsModel.simplePathUrl}/${value.name}',
        simplePathFolder: fsModel.simplePathUrl,
        root: fsModel,
        setting: fsModel.setting,
        repo: this));
    if (filter != null) {
      files = filter(files);
    }
    addAll(files);
    fsModel.addFiles(files);
    _hasMore = false;
    _page++;
    return true;
  }

  @override
  bool get hasMore => _hasMore;

  ///更新操作.
  void changeItemAction(FsModel model, FsModelAction action) {
    array = array
        .updateAll((value) => value.copyWith(
            action: FsModelAction.none, context: fsModel.context))
        .updateItemFirstWhere((element) => element.eq(model),
            (old) => old.copyWith(action: action));
    setState();
  }

  ///重置
  void resetActions() {
    array =
        array.updateAll((value) => value.copyWith(action: FsModelAction.none));
    setState();
  }

  ///显示或者弹出右侧面板
  void changeShowRightPanel(RightPanelConfig? config) {
    if (isMobile().not) {
      showRightAction = config;
      setState();
    } else {
      final FsModel(:context) = fsModel;
      if (context != null) {}
    }
  }

  void changeIsSelect(FsModel selectItem) {
    array = array
        .updateAll((value) => value.copyWith(active: false))
        .updateItemFirstWhere(
            selectItem.eq, (old) => old.copyWith(active: true));
    notifyListeners();
  }


  void changeItem(FsModel model,FsModel updateModel){
    array = array.updateItemFirstWhere(model.eq, (_) => updateModel);
    notifyListeners();
  }

  @override
  void completed(IList<FsModel> list, bool isFirst) {}

  ///移除项目
  void removeItem(FsModel item){
    array = array.removeWhere(item.eq);
    notifyListeners();
  }

  @override
  void dispose() {}
}

class RightPanel extends StatelessWidget {
  final RightPanelConfig? config;
  final VoidCallback close;

  const RightPanel({super.key, this.config, required this.close});

  @override
  Widget build(BuildContext context) {
    double size = config?.width ?? 200;
    final child = config?.child(close) ?? const SizedBox.shrink();
    return Stack(
      children: [
        if (config != null)
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(color: Colors.grey.withOpacity(.12)),
          ).click(close.call),
        AnimatedPositioned(
            duration: const Duration(milliseconds: 224),
            top: 0,
            bottom: 0,
            right: config != null ? 0 : -size,
            child: SizedBox(
              width: size,
              height: double.infinity,
              child: PhysicalModel(
                  color: context.cardColor,
                  shadowColor: context.primaryColor,
                  borderRadius: BorderRadius.circular(UiTheme.cardRadius),
                  elevation: 30,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: child,
                  )),
            )),
      ],
    );
  }
}

class RightPanelConfig {
  final String title;
  final Widget Function(VoidCallback close) child;
  final double? width;

  RightPanelConfig(
      {required this.title, required this.child, this.width = 120});
}
