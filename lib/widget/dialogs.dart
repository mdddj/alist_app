part of 'part.dart';

class StringDialog extends StatelessWidget {
  final String message;
  final String? title;
  const StringDialog({super.key, required this.message, this.title});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title ?? '提示'),
      content: Text(message),
      actions: [FilledButton(onPressed: context.pop, child: const Text('关闭'))],
    );
  }
}
