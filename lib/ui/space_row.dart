part of 'part.dart';

class SpaceRow extends StatelessWidget {
  final List<Widget> children;
  final double space;

  const SpaceRow({super.key, required this.children, this.space = 12});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (int i = 0; i < children.length; i++)
          children.isLast(children[i])
              ? children[i]
              : Padding(
                  padding: EdgeInsets.only(right: space),
                  child: children[i],
                )
      ],
    );
  }
}
