part of '../part.dart';

///手机端首页
class MobileHomePage extends ConsumerStatefulWidget {
  final StatefulNavigationShell child;

  const MobileHomePage({super.key, required this.child});

  @override
  ConsumerState<MobileHomePage> createState() => _MobileHomePageState();
}

class _MobileHomePageState extends ConsumerState<MobileHomePage>
{
  @override
  void initState() {
    super.initState();
    BroadcastTool.listenMessage(
      (value) {
        final s = ScaffoldMessenger.of(context);
        s.removeCurrentSnackBar();
        s.showSnackBar(SnackBar(content: Text(value)));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final domain = ref.activeDomain;
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: _Nav(nav: widget.child),
    );
  }

}

class _Nav extends StatelessWidget {
  final StatefulNavigationShell nav;

  const _Nav({required this.nav});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: nav.currentIndex,
        onTap: (index) {
          nav.goBranch(
            index,
            initialLocation: index == nav.currentIndex,
          );
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                LineIcons.home,
              ),
              label: '首页'),
          BottomNavigationBarItem(icon: Icon(LineIcons.tags), label: '标签'),
          BottomNavigationBarItem(icon: Icon(LineIcons.upload), label: '上传'),
        ]);
  }
}
