part of 'part.dart';

class Group extends StatelessWidget {
  final List<Widget> children;
  final double? elevation;
  final EdgeInsets? padding;

  const Group(
      {super.key, required this.children, this.elevation, this.padding});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      margin: EdgeInsets.zero,
      child: Padding(
        padding: padding ?? EdgeInsets.zero,
        child: Column(
          children: [...children],
        ),
      ),
    );
  }
}
