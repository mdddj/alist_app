part of 'part.dart';

class LargeTitle extends StatelessWidget {
  final String text;

  const LargeTitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    );
  }
}
