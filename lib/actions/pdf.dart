part of 'part.dart';

class MyPdfAction extends FileAction {
  @override
  FileHandleMenu get menu =>
      const FileHandleMenu(title: '预览 PDF', supports: [FileType.pdf]);

  @override
  Widget render(FsModel file) => _PdfWidget(file: file);
}

class _PdfWidget extends StatelessWidget {
  final FsModel file;

  const _PdfWidget({required this.file});

  @override
  Widget build(BuildContext context) {
    return FetchRawData(
      file: file,
      builder: (detail, data) {
        return const SizedBox.shrink();
      },
    );
  }
}
