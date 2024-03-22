part of '../part.dart';

///收藏
class MobileTagPage extends StatelessWidget {
  const MobileTagPage({super.key});


  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          title: Text('收藏'),
        )
      ],
    );
  }
}
