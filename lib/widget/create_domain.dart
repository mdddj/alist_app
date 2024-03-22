part of 'part.dart';

///创建新的配置弹窗
class CreateNewDomainWidget extends StatefulWidget {
  final DomainAccount? updateDomain;

  const CreateNewDomainWidget({super.key, this.updateDomain});

  @override
  State<CreateNewDomainWidget> createState() => _CreateNewDomainWidgetState();
}

class _CreateNewDomainWidgetState extends State<CreateNewDomainWidget> {
  late DomainAccount _account = widget.updateDomain ?? DomainAccount();

  late final _nameCtrl = TextEditingController(text: widget.updateDomain?.name);
  late final _domainCtrl = TextEditingController(text: widget.updateDomain?.domain);
  late final _noteCtrl = TextEditingController(text: widget.updateDomain?.note);

  late int? id = widget.updateDomain?.id;

  final _focusNode = FocusNode();
  final _focusNode2 = FocusNode();
  final _focusNode3 = FocusNode();
  final _focusNode4 = FocusNode();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('添加AList站点'),
      content: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              focusNode: _focusNode,
              controller: _nameCtrl,
              decoration: const InputDecoration(hintText: '名称', labelText: '名称'),
              onChanged: (value) {
                _account = _account.copyWith(name: value);
              },
              onEditingComplete: _focusNode2.requestFocus,
            ),
            const SizedBox(
              height: 6,
            ),
            TextField(
              focusNode: _focusNode2,
              controller: _domainCtrl,
              decoration: const InputDecoration(hintText: '域名/IP', labelText: '域名/IP'),
              onChanged: (value) {
                _account = _account.copyWith(domain: value);
              },
              onEditingComplete: _focusNode3.requestFocus,
            ),
            const SizedBox(
              height: 6,
            ),
            TextField(
              controller: _noteCtrl,
              maxLines: 5,
              focusNode: _focusNode3,
              minLines: 3,
              maxLength: 100,
              decoration: const InputDecoration(hintText: '备注', labelText: '备注'),
              onChanged: (value) {
                _account = _account.copyWith(note: value);
              },
              onEditingComplete: _focusNode4.requestFocus,
            ),
            const SizedBox(
              height: 12,
            ),
            KeyEventWidget(
              focusNode: _focusNode4,
              onEvent: (value) {
                value.whenOrNull(ok: _create);
              },
              builder: (focusNode, hasFocus) {
                return TVContainerWrapper(hasFocus: hasFocus, child: FilledButton( onPressed: _create, child: Text(widget.updateDomain == null ? ' 新建' : '保存编辑')).maxWidthButton);
              },
            ),
            const SizedBox(
              height: 12,
            ),
            TextButton(onPressed: context.pop, child: const Text('取消')).maxWidthButton
          ],
        ),
      ),
    );
  }

  Future<void> _create() async {
    Logger().d('create...');
    final ctx = context.nav;

    if (_account.valid.not) {
      toast('配置验证失败');
      return;
    }
    if (widget.updateDomain != null) {
      //编辑模式
      await GetIt.instance.get<AccountManager>().update(
        widget.updateDomain!.id,
        (value) {
          if (value != null) {
            value.domain = _account.domain;
            value.name = _account.name;
            value.note = _account.note;
          }
        },
      );
    } else {
      await GetIt.instance.get<AccountManager>().createNew(_account);
    }
    ctx.pop(true);
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _focusNode2.dispose();
    _focusNode3.dispose();
    super.dispose();
  }
}