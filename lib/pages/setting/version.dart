part of '../part.dart';

final _defaultUpdateService = ChangeNotifierProvider<UpdateAppService>(
    (ref) => DefaultUpdateAppServiceImpl());

///检测更新
class VersionCheckWidget extends ConsumerWidget {
  const VersionCheckWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final UpdateAppService(:exception, :updateModel, :versionText) =
        ref.watch(_defaultUpdateService);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('当前版本:${versionText ?? '-'}'),
        const SizedBox(height: 12),
        Row(
          children: [
            FilledButton(
                onPressed: () {
                  ref.read(_defaultUpdateService.notifier).run();
                },
                child: const Text('检查更新'))
          ],
        ),
        if (exception != null)
          Text(exception.getMessage,
              style: context.textTheme.titleMedium),
        if (updateModel != null) _VersionInfoShow(info: updateModel)
      ],
    );
  }
}

class _VersionInfoShow extends StatelessWidget {
  final VersionInfo info;

  const _VersionInfoShow({required this.info});

  @override
  Widget build(BuildContext context) {
    final VersionInfo(
      :project,
      :description,
      :createDate,
      :packageSize,
      :platform,
      :versionNumber,
      :htmlViewPage,
    ) = info;
    final Project(:name, :logo) = project;
    final size = ByteModel.create(packageSize.toDouble()).format();
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
          color: context.cardColor, borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('新版本详情', style: context.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold
          )),
          const SizedBox(height: 12),
          ImageView(
              image: MyImage.network(
                  url: logo,
                  params: ImageParams(
                      size: 68,
                      fit: BoxFit.cover,
                      borderRadius: BorderRadius.circular(12),
                      shape: BoxShape.rectangle))),
          const SizedBox(height: 12),
          Text('项目名称: $name'),
          Text('版本编号: $versionNumber'),
          Text('文件大小: $size'),
          Text('平台标识: $platform'),
          Text('发布时间: $createDate'),
          Text('更新内容: \n$description'),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              FilledButton(
                  onPressed: () {
                    launchUrlString(htmlViewPage);
                  },
                  child: const Text('前往下载')),
              const SizedBox(width: 12),
              OutlinedButton(onPressed: null, child: Text('立即下载($size)'))
            ],
          )
        ],
      ),
    );
  }
}
