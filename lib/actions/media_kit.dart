part of 'part.dart';

enum VideoSettingType { rate }

const _videoRateValues = [0.5, 0.8, 1, 1.5, 2, 2.5, 3, 3,5, 4];

class MediaKitPlayer extends ConsumerStatefulWidget {
  final String url;
  final FsModel model;

  const MediaKitPlayer({super.key, required this.url, required this.model});

  @override
  ConsumerState<MediaKitPlayer> createState() => _MediaKitPlayerState();
}

class _MediaKitPlayerState extends ConsumerState<MediaKitPlayer> {
  late final player = Player()..open(Media(widget.url));
  late final controller = VideoController(player);

  @override
  Widget build(BuildContext context) {
    return MaterialVideoControlsTheme(
        normal: MaterialVideoControlsThemeData(
            seekBarThumbColor: context.primaryColor,
            seekBarPositionColor: context.primaryColor,
            padding: EdgeInsets.only(
              bottom: context.paddingBottom,
            ),
            bottomButtonBar: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const MaterialPositionIndicator(),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        MaterialCustomButton(onPressed: _showSettingMenu),
                        const MaterialPlayOrPauseButton(),
                        const MaterialFullscreenButton(),
                      ],
                    )
                  ],
                ),
              )
            ]),
        fullscreen: const MaterialVideoControlsThemeData(),
        child: Video(controller: controller));
  }

  @override
  void dispose() {
    super.dispose();
    player.dispose();
  }

  Future<void> _showSettingMenu() async {
    final nav=  context.nav;
    final type = await showMaterialModalBottomSheet<VideoSettingType>(
      context: context,
      builder: (context) {
        return SingleChildScrollView(
          padding: EdgeInsets.only(bottom: context.paddingBottom),
          controller: ModalScrollController.of(context),
          child: Column(
            children: [
              ListTile(
                title: const Text("播放倍速"),
                leading: const Icon(Icons.play_arrow_outlined),
                onTap: () => nav.pop(VideoSettingType.rate),
              )
            ],
          ),
        );
      },
    );
    switch (type) {
      case null:{}
      case VideoSettingType.rate:
        {
         final v = await showModalBottomSheet<double>(context: context, builder: (context) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  ..._videoRateValues.map((e) => ListTile(
                    title: Text('$e'),
                    onTap: () => nav.pop(e),
                  ),)
                ],
              ),
            );
          },);
         if(v!=null){
           player.setRate(v);
         }
        }
    }
  }
}
