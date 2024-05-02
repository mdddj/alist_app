part of '../part.dart';

///文件列表
class FilesSinglePage extends ConsumerStatefulWidget {
  final FsModel fsModel;

  const FilesSinglePage({super.key,required this.fsModel});

  @override
  ConsumerState<FilesSinglePage> createState() => _FilesSinglePageState();
}

class _FilesSinglePageState extends ConsumerState<FilesSinglePage> with AutomaticKeepAliveClientMixin {
  FsModel get fsModel => widget.fsModel;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final provider = ref.activeDomain!;
    final layout = provider.layoutStyle;
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 5,
        title: Text(fsModel.name),
        centerTitle: false,
      ),
      body: MyLoadingMoreCustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: HomeMobileToolbar()),
          FilesWidget(model: fsModel.copyWith(setting: FsModelSetting(
            customUiWrapper: (repo, list, child) => child,
          )))
        ],
      ),
    );
    return const Text('no active provider');
  }

  SliverGridDelegateWithFixedCrossAxisCount _getAxisCount(
      {int crossAxisCount = 2,
      double childAspectRatio = 1.6,
      double gap = 12}) {
    return SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: gap,
        crossAxisSpacing: gap,
        childAspectRatio: childAspectRatio);
  }

  @override
  bool get wantKeepAlive => true;

  // Widget _itemBuilder(BuildContext context, FsModel item, int index) {
  //   final requestPath = '${widget.path}/${item.name}';
  //   return FilesItemLayout(
  //       fsModel: item.copyWith(simplePathUrl: requestPath),
  //       onTap: (value) {
  //         if (value.isDir) {
  //           MyMobileFilesPage(requestPath, value.name).push(context);
  //         } else {
  //           item.manager.showMenuByMobile(context, requestPath);
  //         }
  //       });
  // }
}

