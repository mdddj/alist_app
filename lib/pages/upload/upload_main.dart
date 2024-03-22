part of '../part.dart';

class UploadMainPage extends PlatformWidget {
  const UploadMainPage({super.key});

  @override
  Widget buildWithDesktop(
      BuildContext context, WidgetRef ref, DomainAccount domain) {
    final navList = domain.uploadTaskPages;

    return DesktopScaffold(
        showHeader: false,
        firstChild: SingleChildScrollView(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              ...navList.map((element) {
                return HookConsumer(
                  builder: (context, ref, child) {
                    return MyButton(
                      text: element.getTitle(context),
                      isActivated: domain.activePageByUpload.isEq(element),
                      onTap: () {
                        domain.changeNavigatorByUpload(element);
                      },
                      end: element.mapOrNull(
                        custom: (value) => value.ending?.call(context, ref),
                      ),
                      leading: Icon(element.getIconData(context)),
                    );
                  },
                );
              })
            ],
          ),
        ),
        child: domain.activePageByUpload.child ?? const SizedBox.shrink());
  }
}

///正在上传中的任务列表
class UploadTaskUploadingWidget extends ConsumerWidget {
  const UploadTaskUploadingWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const FileTaskList(TaskType.upload);
  }
}

///正在下载中的任务列表
class UploadTaskDownloadWidget extends ConsumerWidget {
  const UploadTaskDownloadWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const FileTaskList(TaskType.download);
  }
}

///任务历史纪录列表
class UploadTaskHistoryWidget extends ConsumerWidget {
  const UploadTaskHistoryWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final list = ref.watch(taskHistoryStateProvider);

    return list.when(
      data: (data) {
        final groupMap = ref.taskHistoryByGroup;
        return CustomScrollView(
          slivers: [
            const SliverPersistentHeader(
              delegate: TabHeader(),
              pinned: true,
              floating: true,
            ),
            if (groupMap.isEmpty)
              const SliverFillRemaining(
                child: Center(
                  child: Text('暂无记录'),
                ),
              ),
            SliverList.list(children: [
              ...groupMap.mapTo(
                  (key, value) => TaskGroupUi(key, value, useInHistory: true))
            ])
          ],
        );
      },
      error: (error, stackTrace) {
        return Center(
          child: Text('$error'),
        );
      },
      loading: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}

///上传中的数量
class UploadingCountBuilder extends ConsumerWidget {
  const UploadingCountBuilder({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.uploadingCount;
    if (count == 0) {
      return const SizedBox();
    }

    return Text('$count');
  }
}
