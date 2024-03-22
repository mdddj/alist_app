part of 'part.dart';

class MdRenderWidgetAction extends FileAction {
  @override
  Widget render(FsModel file) {
    return MdRenderWidget(file);
  }

  @override
  FileHandleMenu get menu =>
      const FileHandleMenu(supports: [FileType.md], title: "打开Markdown文件");
}

class MdRenderWidget extends ConsumerStatefulWidget {
  final FsModel myFile;
  final Widget Function(String md)? builder;
  final bool showToolbar;

  const MdRenderWidget(this.myFile,
      {super.key, this.builder, this.showToolbar = true});

  @override
  ConsumerState<MdRenderWidget> createState() => _MdRenderWidgetState();
}

class _MdRenderWidgetState extends ConsumerState<MdRenderWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FetchRawData(
          file: widget.myFile,
          builder: (detail, data) {
            return FetchRawDataByMd(
              url: detail.rawUrl,
              builder: widget.builder ??
                  (md) {
                    return Markdown(data: md);
                  },
            );
          },
        ),
        // if (widget.showToolbar) const ActionBrowserToolbarWidget()
      ],
    );
  }
}
