part of '../part.dart';

///手机端上传页面
class MobileUploadPage extends StatelessWidget {
  const MobileUploadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          title: Text('上传'),
        )
      ],
    );
  }
}
