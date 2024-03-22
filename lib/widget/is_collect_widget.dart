part of 'part.dart';

///判断一个文件是否被收藏
class IsCollectWidget extends ConsumerWidget {
  final FsModel fsModel;
  final Widget Function(bool isCollect, CollectModel? model) builder;

  const IsCollectWidget(
      {super.key, required this.fsModel, required this.builder});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final watch = ref.watch(fsModel.manager.provider);
    final collect = watch.collectModel;
    return InitBuilder(
        onInit: () =>
            ref.read(fsModel.manager.provider.notifier).initCollectState(ref, fsModel),
        child: builder(collect != null, collect));
  }
}
