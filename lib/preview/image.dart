part of 'part.dart';

class MyPreviewImageShow extends StatelessWidget {
  final String url;
  const MyPreviewImageShow({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return ImageView(
        image: MyImage.network(
            url: url, params: const ImageParams(fit: BoxFit.cover)));
  }
}
