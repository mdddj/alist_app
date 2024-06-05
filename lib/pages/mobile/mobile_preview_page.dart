part of '../part.dart';

class MobilePreviewPage extends ConsumerStatefulWidget {
  final PreviewParam param;
  const MobilePreviewPage({super.key, required this.param});

  @override
  ConsumerState<MobilePreviewPage> createState() => _MobilePreviewPageState();
}

class _MobilePreviewPageState extends ConsumerState<MobilePreviewPage> {
  late  PreviewParam param = widget.param;

  IList<FileAction> get previewWidget => param.fsModel.fileType.findActions();



  @override
  Widget build(BuildContext context) {
    final defaultWidget = previewWidget.isNotEmpty ? previewWidget.first.render(param.fsModel) : const Center(
      child: Text('暂不支持预览这种文件'),
    );
    return Scaffold(
      body: defaultWidget
    );
  }

  @override
  void initState() {
    Logger().t(previewWidget);
    super.initState();
  }
}
