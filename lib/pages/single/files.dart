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
  }


  @override
  bool get wantKeepAlive => true;

}

