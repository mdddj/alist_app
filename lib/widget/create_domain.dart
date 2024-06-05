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
  final _focusNode4 = FocusNode();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('添加AList站点'),
      content: SingleChildScrollView(
        child: Column(
          children: [
            Focus(
              onKeyEvent: (node, event) {
                final tvEvent = TvKey.create(event);
                print('->${tvEvent}');
                tvEvent.whenOrNull(
                  down: () {
                    _focusNode.requestFocus();
                  },
                );
                return KeyEventResult.handled;
              },
              child: TextField(
                focusNode: _focusNode,
                controller: _nameCtrl,
                decoration: const InputDecoration(hintText: '名称', labelText: '名称'),
                onChanged: (value) {
                  _account = _account.copyWith(name: value);
                },
                onEditingComplete: _focusNode2.requestFocus,
                textInputAction: TextInputAction.next,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Focus(
              onKeyEvent: (node, event) {
                final tvEvent = TvKey.create(event);
                print('->2${tvEvent}');
                tvEvent.whenOrNull(down: () {
                  FocusManager.instance.primaryFocus?.focusInDirection(TraversalDirection.down);
                },);
                return KeyEventResult.ignored;
              },
              child: TextField(
                focusNode: _focusNode2,
                controller: _domainCtrl,
                decoration: const InputDecoration(hintText: '例子:https://pan.itbug.shop', labelText: '域名/IP'),
                onChanged: (value) {
                  _account = _account.copyWith(domain: value);
                },
                textInputAction: TextInputAction.next,
                onSubmitted: (value) {
                  FocusManager.instance.primaryFocus?.focusInDirection(TraversalDirection.down);
                },
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            TextField(
              controller: _noteCtrl,
              maxLines: 5,
              minLines: 3,
              maxLength: 100,
              autofocus: true,
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(hintText: '备注', labelText: '备注'),
              onChanged: (value) => _account = _account.copyWith(note: value),
              onEditingComplete: _focusNode4.requestFocus,
              onSubmitted: (value) {
                _focusNode4.requestFocus();
              },
            ),
            const SizedBox(
              height: 12,
            ),
            FilledButton(onPressed: _create,
                focusNode: _focusNode4,
                child: Text(widget.updateDomain == null ? ' 新建' : '保存编辑'))
                .maxWidthButton,
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
    super.dispose();
  }
}
