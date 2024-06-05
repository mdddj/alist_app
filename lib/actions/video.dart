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
  late FsModel fileModel = widget.file;

  @override
  void initState() {
    Logger().i('load video $fileModel');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ApiCreater.def<FsDetailInfo, MyFsDetailGetApi>(
      builder: (data, context, state) {
        return VideoWidget(
          playUrl: data.rawUrl,
          model: fileModel,
        );
      },
      params: (state) => RequestParams(
          data: {"path": fileModel.simplePathUrl}, showDefaultLoading: false),
      error: (exception, api, state) {
        debugPrint("${ref.activeDomain}");
        return Center(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(exception.getMessage(),
                    style: context.textTheme.displayMedium),
                const SizedBox(
                  height: 12,
                ),
                Text('提示:如果无法访问资源,请资源站点管理员处理,站点:${ref.activeDomain?.domain}',
                    style: context.textTheme.labelSmall),
                const SizedBox(height: 12),
                OutlinedButton(
                    onPressed: () {
                      state.refresh();
                    },
                    child: const Text('刷新重试')),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}

class VideoWidget extends StatefulWidget {
  final String playUrl;
  final FsModel model;

  const VideoWidget({super.key, required this.playUrl, required this.model});

  @override
  State<VideoWidget> createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  late VideoPlayerController _controller;
  PlatformException? _error;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(widget.playUrl),
        videoPlayerOptions: VideoPlayerOptions())
      ..initialize().onError((error, stackTrace) {
        switch (error) {
          case PlatformException err:
            {
              setState(() {
                _error = err;
              });
            }
        }
      }).then((value) {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    if (_error != null) {
      return Center(
        child: Text("${_error!.code}:${_error!.message}"),
      );
    }
    final asp = _controller.value.aspectRatio;
    return Center(
      child: _controller.value.isInitialized
          ? Container(
              width: context.screenWidth,
              height: context.screenHeight,
              decoration: const BoxDecoration(color: Colors.black),
              child: Stack(
                children: [
                  Center(
                    child: AspectRatio(
                        aspectRatio: asp, child: VideoPlayer(_controller)),
                  ),
                  _PlayController(controller: _controller, model: widget.model)
                ],
              ),
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

class _PlayController extends StatefulWidget {
  final VideoPlayerController controller;
  final FsModel model;

  const _PlayController({required this.controller, required this.model});

  @override
  State<_PlayController> createState() => _PlayControllerState();
}

class _PlayControllerState extends State<_PlayController> {
  late VideoPlayerController player = widget.controller;
  late FsModel fileModel = widget.model;
  bool isPlaying = false;
  bool showControllerBar = true;
  bool showMenuList = false;
  final scrollController = ScrollController();

  bool get _isFullScreen =>
      MediaQuery.of(context).orientation == Orientation.landscape;

  @override
  void initState() {
    player.addListener(addListener);
    super.initState();
  }

  void addListener() {
    isPlaying = player.value.isPlaying;
    setState(() {});
  }

  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  @override
  Widget build(BuildContext context) {
    final value = player.value;
    final currentDirFiles = fileModel.currentDirAllFiles
        .where((element) => element.isDir.not)
        .sorted(
          (a, b) => a.name.compareTo(b.name),
        );
    return Stack(
      children: [
        Positioned.fill(
            child: GestureDetector(
          onTap: () {
            if (showMenuList) {
              setState(() {
                showMenuList = !showMenuList;
              });
              return;
            }
            setState(() {
              showControllerBar = !showControllerBar;
            });
          },
          child: Container(
            color: Colors.transparent,
          ),
        )),
        AnimatedPositioned(
          bottom: showControllerBar ? 0 : -(60 + (myPlatform.isAndroid ? 0 : 12).toDouble()),
          left: 0,
          right: 0,
          duration: const Duration(milliseconds: 324),
          child: Theme(
            data: context.theme.copyWith(
                iconButtonTheme: const IconButtonThemeData(
                    style: ButtonStyle(
                        iconColor: WidgetStatePropertyAll(Colors.white))),
                colorScheme: context.colorScheme.copyWith(
                  primary: Colors.blue,
                )),
            child: Container(
              padding: EdgeInsets.only(
                  left: 12, right: 12, bottom: context.paddingBottom - (myPlatform.isAndroid ? 0 : 12)),
              decoration: const BoxDecoration(color: Colors.black26),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {
                        if (isPlaying) {
                          player.pause();
                        } else {
                          player.play();
                        }
                      },
                      icon: isPlaying
                          ? const Icon(Icons.pause)
                          : const Icon(Icons.play_circle)),
                  Expanded(
                    child: ProgressBar(
                      baseBarColor: Colors.white,
                      thumbColor: Colors.white,
                      thumbGlowColor: Colors.white,
                      progress: value.position,
                      timeLabelLocation: TimeLabelLocation.none,
                      buffered: value.buffered.isNotEmpty
                          ? value.buffered.last.end
                          : Duration.zero,
                      total: value.duration,
                      onSeek: (duration) {
                        player.seekTo(duration);
                      },
                      timeLabelTextStyle: context.textTheme.labelMedium
                          ?.copyWith(color: Colors.white),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        if (_isFullScreen) {
                          SystemChrome.setPreferredOrientations([
                            DeviceOrientation.portraitUp,
                          ]);
                        } else {
                          SystemChrome.setPreferredOrientations([
                            DeviceOrientation.landscapeLeft, //全屏时旋转方向，左边
                          ]);
                        }
                      },
                      icon: const Icon(Icons.screen_rotation)),
                  if (currentDirFiles.isNotEmpty)
                    IconButton(
                        onPressed: () {
                          setState(() {
                            showMenuList = !showMenuList;
                          });
                        },
                        icon: const Icon(Icons.format_list_bulleted)),
                  const SizedBox(width: 12)
                ],
              ),
            ),
          ),
        ),
        AnimatedPositioned(
          duration: const Duration(milliseconds: 333),
          top: 0,
          bottom: 0,
          right: showMenuList ? 0 : -(context.screenWidth * 0.5),
          child: SizedBox(
            width: context.screenWidth * 0.5,
            height: double.infinity,
            child: Column(
              children: [
                Expanded(
                  child: Scrollbar(
                    controller: scrollController,
                    child: CustomScrollView(
                      controller: scrollController,
                      slivers: [
                        SliverList.list(children: [
                          ...currentDirFiles.map((e) {
                            final isCurr = e.name == fileModel.name;
                            return GestureDetector(
                              onTap: () {
                                if (!isCurr) {}
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 5),
                                margin: const EdgeInsets.only(bottom: 2),
                                decoration: const BoxDecoration(
                                    color: Colors.black54),
                                child: Text(
                                  e.name,
                                  style: TextStyle(
                                      color:
                                          isCurr ? context.primaryColor : Colors.white),
                                ),
                              ),
                            );
                          })
                        ])
                      ],
                    ),
                  ),
                ),
                TextButton(
                        onPressed: () {
                          setState(() {
                            showMenuList = showMenuList.not;
                          });
                        },
                        child: const Text('取消'))
                    .maxWidthButton
              ],
            ),
          ),
        )
      ],
    );
  }

  //隐藏操作条
  void hideControllerBar() {
    if (showControllerBar) {
      setState(() {
        showControllerBar = false;
      });
    }
  }

  @override
  void dispose() {
    player.removeListener(addListener);
    scrollController.dispose();
    super.dispose();
  }
}
