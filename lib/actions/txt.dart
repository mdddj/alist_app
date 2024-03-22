part of 'part.dart';

/// txt 文件操作
///
class TxtFileAction extends FileAction {
  @override
  Widget render(FsModel file) {
    return TxtView(file: file);
  }

  @override
  FileHandleMenu get menu =>
      const FileHandleMenu(supports: [FileType.txt], title: "打开为文本文件");
}

/// txt 预览
class TxtView extends ConsumerStatefulWidget {
  final FsModel file;

  const TxtView({super.key, required this.file});

  @override
  ConsumerState<TxtView> createState() => _TxtViewState();
}

class _TxtViewState extends ConsumerState<TxtView> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        LayoutBuilder(
          builder: (context, constraints) {
            return FetchRawData(
              file: widget.file,
              builder: (detail, data) {
                return ConstrainedBox(
                  constraints: BoxConstraints(maxHeight: constraints.maxHeight),
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 12)),
                    maxLines: 100,
                  ),
                );
              },
              dataLoaded: (value) {
                value.whenOrNull(
                  string: (text) {
                    _controller.text = text;
                  },
                );
              },
            );
          },
        ),
        // const ActionBrowserToolbarWidget()
      ],
    );
  }
}
