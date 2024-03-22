part of 'part.dart';

void showNoResourceDialog(AlertParam param) {
  SmartDialog.show(
      builder: (context) {
        return _Alert(param: param);
      },
      tag: _Alert.tag,
      animationType: SmartAnimationType.fade,
      animationTime: const Duration(milliseconds: 124),
      maskColor: Colors.transparent);
}

void showCopySuccessDialog(String url) {
  showNoResourceDialog(AlertParam(title: '拷贝成功', content: url));
}

///全局弹窗
class _Alert extends StatelessWidget {
  final AlertParam param;

  const _Alert({required this.param});

  static const tag = "__full__dialog__tag__";

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(param.title),
      content: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: 60, maxWidth: context.screenWidth / 2),
        child: SingleChildScrollView(child: SelectableText(param.content)),
      ),
      actions: [
        FilledButton(
                onPressed: () {
                  SmartDialog.dismiss(tag: tag);
                },
                child: const Text("关闭"))
            .maxWidthButton
      ],
    );
  }
}

class ToastUtil {
  static void showSuccess(String msg) {
    BroadcastTool.fireMessage(msg);
  }

  static void showWarning(String msg) {
    BroadcastTool.fireMessage(msg);
  }
}
