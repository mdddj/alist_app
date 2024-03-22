part of 'part.dart';

class FullLoading extends ConsumerWidget {
  final String text;

  const FullLoading({super.key, required this.text});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Center(
          child: Card(
            elevation: 0.1,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 22.0, vertical: 12),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const CircularProgressIndicator(),
                  if (text.isNotEmpty) Text(text).marginOnly(top: 12)
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
