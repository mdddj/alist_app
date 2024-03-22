part of 'part.dart';

//
class ImageAction extends FileAction {
  @override
  FileHandleMenu get menu =>
      const FileHandleMenu(supports: [FileType.image], title: "图片浏览器");

  @override
  Widget render(FsModel file) {
    return _ImageWidget(file: file);
  }
}

class _ImageWidget extends PlatformWidget {
  final FsModel file;

  const _ImageWidget({required this.file});

  Widget get _render {
    return FetchRawData(
      file: file,
      builder: (FsDetailInfo detail, DartTypeModel data) {
        return ImageView(
            image: MyImage.network(
                url: detail.rawUrl,
                params: const ImageParams(
                    size: double.infinity, fit: BoxFit.cover)));
      },
    );
  }

  @override
  Widget buildWithDesktop(
      BuildContext context,WidgetRef ref, DomainAccount domain) {
    return _render;
  }

  @override
  Widget buildWithMobile(
      BuildContext context, WidgetRef ref, DomainAccount domain) {
    return Stack(
      children: [_render, const ActionBrowserToolbarWidget()],
    );
  }
}
