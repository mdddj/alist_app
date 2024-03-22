part of '../part.dart';

///文件列表 readme.md
class FilesReadMeWidget extends PlatformWidget {
  const FilesReadMeWidget({super.key});

  @override
  Widget buildWithDesktop(
      BuildContext context, WidgetRef ref, DomainAccount domain) {
    return buildWithMobile(context, ref,domain);
  }

  @override
  Widget buildWithMobile(
      BuildContext context, WidgetRef ref, DomainAccount domain) {
    // todo 获取 readme 文件
    // final readmeFile = applicationProvider.files
    //     .find((element) => element.name == 'readme.md');
    final readmeFile = null;
    if (readmeFile != null) {
      return Card(
        margin: const EdgeInsets.only(top: 12, left: 12, right: 12),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'readme.md',
                style: context.textTheme.titleMedium,
              ),
              MdRenderWidget(
                readmeFile,
                showToolbar: false,
                builder: (md) {
                  return Markdown(
                      data: md,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics());
                },
              ),
            ],
          ),
        ),
      );
    }
    return const SizedBox.shrink();
  }
}
