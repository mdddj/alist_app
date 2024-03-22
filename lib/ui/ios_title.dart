part of 'part.dart';


class IosTitle extends StatelessWidget {
  final String title;
  const IosTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title,style: context.textTheme.titleLarge?.copyWith(
        fontSize: 20,fontWeight: FontWeight.w700
    ));
  }
}
