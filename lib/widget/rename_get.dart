part of 'part.dart';

final _renameText = StateProvider.autoDispose<String?>((ref) => null);
final _textController = StateProvider.family
    .autoDispose<TextEditingController, String>(
        (ref, text) {
          final c = TextEditingController(text: text);
          ref.onDispose(c.dispose);
          return c;
        });

///重命名组建
class GetReNameWidget extends ConsumerWidget {
  final FsModel model;

  const GetReNameWidget({super.key, required this.model});

  static Future<String?> getText(BuildContext context, FsModel model) async {
    return await showModalBottomSheet<String?>(
        context: context, builder: (context) => GetReNameWidget(model: model));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final text = ref.watch(_renameText);
    return SingleChildScrollView(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          Text(
            '输入一个新名称',
            style: context.textTheme.titleLarge,
          ),
          const SizedBox(
            height: 12,
          ),
          TextField(
            autofocus: true,
            controller: ref.watch(_textController(model.name)),
            decoration: InputDecoration(hintText: model.name),
            onChanged: (value) {
              ref.read(_renameText.notifier).state =
                  value.isEmpty ? null : value;
            },
          ),
          const SizedBox(
            height: 12,
          ),
          FilledButton(
                  onPressed: text == null
                      ? null
                      : () {
                          context.nav.pop(text);
                        },
                  child: const Text('确定'))
              .maxWidthButton
        ],
      ),
    );
  }
}
