part of 'part.dart';

class VideoAction extends FileAction {
  @override
  FileHandleMenu get menu =>
      const FileHandleMenu(supports: [FileType.video], title: "播放视频");

  @override
  Widget render(FsModel file) {
    return VideoActionWidget(
      file: file,
    );
  }
}

///视频组件
class VideoActionWidget extends ConsumerStatefulWidget {
  final FsModel file;

  const VideoActionWidget({super.key, required this.file});

  @override
  ConsumerState<VideoActionWidget> createState() => _VideoActionWidgetState();
}

class _VideoActionWidgetState extends ConsumerState<VideoActionWidget> {

  @override
  Widget build(BuildContext context) {
    return ApiCreater.def<FsDetailInfo, MyFsDetailGetApi>(
      builder: (data, context, state) {
        return VideoWidget(playUrl: data.rawUrl,);
      },
      params: (state) => RequestParams(data: {
        "path":
        "/${widget.file.simplePathUrl}"//todo
      }, showDefaultLoading: false),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}


class VideoWidget extends StatefulWidget {
  final String playUrl;
  const VideoWidget({super.key, required this.playUrl});

  @override
  State<VideoWidget> createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  late VideoPlayerController _controller;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(
        widget.playUrl))
      ..initialize().then((_) {
        setState(() {});
      });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: _controller.value.isInitialized
          ? AspectRatio(
        aspectRatio: _controller.value.aspectRatio,
        child: VideoPlayer(_controller),
      )
          : Container(),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
