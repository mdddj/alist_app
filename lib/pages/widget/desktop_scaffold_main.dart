part of '../part.dart';

class DesktopScaffoldMain extends StatelessWidget {
  final Widget child;

  const DesktopScaffoldMain({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          const MainToolBar(),
          Expanded(
            child: Card(
              margin: const EdgeInsets.only(top: 8, bottom: 8, right: 8),
              child: child.animate().fade(),
            ),
          ),
        ],
      ),
    );
  }
}
