part of 'part.dart';

double _defaultIconSize = 16.0;

class FileIcon extends ConsumerWidget {
  final FileType fileType;
  final double? iconSize;
  final String? thumbnail;

  const FileIcon(
      {super.key, required this.fileType, this.iconSize, this.thumbnail});

  static const String folder = 'folder';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Widget child;
    var fileIconSize = iconSize ?? _defaultIconSize;
    final ext = fileType.ext;
    final layout = ref.activeDomain!.layoutStyle;
    fileIconSize = switch (layout) {
      FilesLayoutStyle.list => fileIconSize,
      _ => double.maxFinite
    };
    if (thumbnail != null && thumbnail!.isNotEmpty) {
      child = ImageView(
          image: MyImage.network(
              url: thumbnail!,
              params: ImageParams(
                  size: fileIconSize,
                  fit: BoxFit.cover,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(6))));
    }
    final color = ColorFilter.mode(context.primaryColor, BlendMode.srcIn);
    child = switch (fileType) {
      FileType.folder => SvgPicture.asset(
          'assets/svg/icons/folder.svg',
          width: fileIconSize,
          height: fileIconSize,
          colorFilter: color,
          fit: BoxFit.cover,
        ),
      FileType.unknown => SvgPicture.asset(
          'assets/svg/icons/unknown.svg',
          width: fileIconSize,
          height: fileIconSize,
          fit: BoxFit.cover,
          colorFilter: color,
        ),
      _ => SvgPicture.asset(
          'assets/svg/$ext.svg',
          width: fileIconSize,
          height: fileIconSize,
          fit: BoxFit.cover,
          colorFilter: color,
        ),
    };
    return Container(
        width: fileIconSize,
        height: fileIconSize,
        alignment: Alignment.center,
        child: child);
  }
}
