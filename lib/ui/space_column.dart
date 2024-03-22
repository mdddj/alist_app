part of 'part.dart';

class SpaceColumn extends StatelessWidget {
  final List<Widget> children;
  final double space;

  const SpaceColumn({super.key, required this.children, this.space = 12});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (int i = 0; i < children.length; i++)
          children.isLast(children[i])
              ? children[i]
              : Padding(
                  padding: EdgeInsets.only(bottom: space),
                  child: children[i],
                )
      ],
    );
  }
}
