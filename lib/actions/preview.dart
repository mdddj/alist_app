part of 'part.dart';


class PreviewAction extends FileAction {
  @override
  bool get isSupportAll => true;

  @override
  FileHandleMenu get menu => const FileHandleMenu(supports: [], title: '查看');

  @override
  Widget render(FsModel file) {
    return PreviewActionWidget(file: file);
  }
}



///查看文件信息
class PreviewActionWidget extends ConsumerWidget {
  final FsModel file;
  const PreviewActionWidget({super.key, required this.file});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FetchRawData(file: file, builder: (FsDetailInfo detail, DartTypeModel data) {
      return const SingleChildScrollView(
        child: Column(
          children: [

          ],
        ),
      );
    },

    );
  }
}
