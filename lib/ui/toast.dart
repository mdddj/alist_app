part of 'part.dart';

class DefaultToast extends StatelessWidget {
  final String message;

  const DefaultToast(this.message,{super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(12 + context.paddingBottom),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.info),
            const SizedBox(
              width: 2,
            ),
            Text(message),
          ],
        ),
      ),
    );
  }
}

class DefaultWarningBuilder extends StatelessWidget {
  final String msg;

  const DefaultWarningBuilder(this.msg, {super.key});

  @override
  Widget build(BuildContext context) {
    return _BaseToast(
        message: msg,
        icon: const Icon(
          Icons.warning,
          color: Colors.orange,
        ));
  }
}

class DefaultSuccessBuilder extends StatelessWidget {
  final String msg;

  const DefaultSuccessBuilder(this.msg, {super.key});

  @override
  Widget build(BuildContext context) {
    return _BaseToast(
        message: msg,
        icon: const Icon(
          Icons.check_circle,
          color: Colors.green,
        ));
  }
}

class _BaseToast extends StatelessWidget {
  final String message;
  final Icon icon;

  const _BaseToast({required this.message, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(
        maxWidth:  context.screenWidth * 0.8
      ),
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
            side: BorderSide(
                color: context.theme.dividerTheme.color ?? Colors.grey.shade200,
                width: 1)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              icon,
              const SizedBox(
                width: 6,
              ),
              SingleChildScrollView(child: Text(message))
            ],
          ),
        ),
      ),
    );
  }
}
