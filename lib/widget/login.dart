part of 'part.dart';

///登录弹窗
class LoginDialog extends ConsumerStatefulWidget {
  final Widget? extra;

  const LoginDialog({super.key, this.extra});

  static String tag = "LoginDialog";

  @override
  ConsumerState<LoginDialog> createState() => _LoginDialogState();
}

class _LoginDialogState extends ConsumerState<LoginDialog> {
  final usernameCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();

  Widget? get extra => widget.extra;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('登录'),
      content: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              autofocus: true,
              controller: usernameCtrl,
              decoration: const InputDecoration(labelText: "用户名"),
            ),
            const SizedBox(
              height: 12,
            ),
            TextField(
              controller: passwordCtrl,
              obscureText: true,
              decoration: const InputDecoration(labelText: '密码',),
              onSubmitted: (value) {
                submit();
              },
            ),
            if (extra != null) extra!
          ],
        ),
      ),
      actions: [
        TextButton(onPressed: () => SmartDialog.dismiss(tag: LoginDialog.tag), child: const Text('取消')),
        const SizedBox(
          width: 6,
        ),
        FilledButton(
            onPressed: submit,
            child: const Text("登录"))
      ],
    );
  }

  void submit(){
    SmartDialog.dismiss(tag: LoginDialog.tag);
    final username = usernameCtrl.text;
    final password = passwordCtrl.text;
    ref.activeDomainFun.login(username, password);

  }
}
