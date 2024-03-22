part of 'part.dart';

class MainHeader extends StatelessWidget {
  final Widget child;

  const MainHeader({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
          border: Border(
              bottom:
                  BorderSide(color: context.theme.dividerColor, width: .3))),
      child: child,
    );
  }
}

double _maxExtent = kToolbarHeight;
double _minExtent = kToolbarHeight;

class SliverStickyWidget extends SliverPersistentHeaderDelegate {
  final Widget child;
  final double? max;
  final double? min;

  SliverStickyWidget({required this.child, this.max, this.min});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  double get maxExtent => max ?? _maxExtent;

  @override
  double get minExtent => min ?? _minExtent;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
