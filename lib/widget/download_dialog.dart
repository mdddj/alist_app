part of 'part.dart';

class DownloadSelectPathDialog extends ConsumerStatefulWidget {
  final FsModel model;

  const DownloadSelectPathDialog(this.model, {super.key});

  @override
  ConsumerState<DownloadSelectPathDialog> createState() => _DownloadSelectPathDialogState();
}

class _DownloadSelectPathDialogState extends ConsumerState<DownloadSelectPathDialog> {
  FsModel get model => widget.model;
  final _pathEditCtrl = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      String initPath = ref.appSettingRead.defaultDownloadPath;
      if (initPath.isNotEmpty) {
        _pathEditCtrl.text = initPath;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 400,
              ),
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(30),
                child: FetchRawDetailData(
                  path: model.simplePathUrl,
                  file: model,
                  loadingText: '获取下载链接中...',
                  builder: (detail) {
                    return Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '下载${model.name}到',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: context.textTheme.titleLarge,
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Row(children: [
                            Expanded(
                              child: TextFormField(
                                  decoration: const InputDecoration(isDense: true, labelText: '选择下载目录'),
                                  controller: _pathEditCtrl,
                                  onChanged: (_) {
                                    _formKey.currentState?.validate();
                                    setState(() {});
                                  },
                                  validator: _changePath),
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            TextButton(
                                onPressed: () {
                                  MyFileTool().getADirectory().then((value) {
                                    if (value != null) {
                                      _pathEditCtrl.text = value.path;
                                      ref.changeAppSetting((old) => old.copyWith(defaultDownloadPath: value.path));
                                    }
                                  });
                                },
                                child: const Text('更改'))
                          ]),
                          const SizedBox(
                            height: 24,
                          ),
                          if (myPlatform.isDesktop) Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: _buildActionWidgets(detail)),
                          if (myPlatform.isMobile)
                            Column(
                              children: _buildActionWidgets(detail),
                            )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  List<Widget> _buildActionWidgets(FsDetailInfo detail) {
    final appSetting = ref.appSetting;
    return [
      Row(
        children: [
          Checkbox(
            value: appSetting.isUseDefaultDownloadPath,
            onChanged: (value) {
              ref.changeAppSetting((oldSetting) => oldSetting.copyWith(isUseDefaultDownloadPath: value ?? false));
            },
            side: const BorderSide(width: .7),
            shape: const CircleBorder(),
          ),
          GestureDetector(
              onTap: () {
                ref.changeAppSetting((oldSetting) => oldSetting.copyWith(isUseDefaultDownloadPath: appSetting.isUseDefaultDownloadPath.not));
              },
              child: const Text('设为默认路径')),
        ],
      ),
      const SizedBox(
        width: 50,
      ),
      SpaceRow(
        space: 8,
        children: [
          OutlinedButton(
              onPressed: () {
                context.pop();
              },
              child: const Text('取消')),
          FilledButton(
              onPressed: _formKey.currentState?.validate() == false
                  ? null
                  : () {
                      if (_formKey.currentState?.validate() == true) {
                        final downloadUrl = detail.rawUrl;
                        final savePath = File('${_pathEditCtrl.text}/${detail.name}');
                        context.nav.pop((downloadUrl, savePath));
                      } else {
                        ToastUtil.showWarning('路径验证失败');
                      }
                    },
              child: Text('下载 (${ByteModel.create(detail.size.toDouble()).format()})')),
        ],
      )
    ];
  }

  @override
  void dispose() {
    _pathEditCtrl.dispose();
    super.dispose();
  }

  ///路径变更
  String? _changePath(String? value) {
    if (value != null) {
      final dir = Directory(value);
      if (dir.existsSync() == false) {
        return "无法下载到这个目录";
      }
    }
    return null;
  }
}

///添加下载的弹窗.
class DownloadDialog extends ConsumerWidget {
  final String url;
  final File saveTo;

  const DownloadDialog({super.key, required this.url, required this.saveTo});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Placeholder();
  }
}
