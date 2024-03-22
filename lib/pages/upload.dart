part of 'part.dart';

///任务列表
class FileTaskList extends ConsumerWidget {
  final TaskType taskType;
  const FileTaskList(this.taskType, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final files = ref
        .watch(uploadTaskProvider)
        .where((element) => element.taskType == taskType);
    if (files.isEmpty) {
      return Text('没有正在${taskType == TaskType.download ? '下载' : '上传'}的项目')
          .center;
    }
    return const CustomScrollView(
      slivers: [
        SliverPersistentHeader(
          delegate: TabHeader(),
          pinned: true,
          floating: true,
        ),
        _UploadListTable()
      ],
    );
  }
}

///上传速度
class _TaskSpeed extends ConsumerWidget {
  final TaskModel task;

  const _TaskSpeed({required this.task});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ByteModel.create(task.speed.toDouble());
    return _Info(
        errorInfo: task.uploadFailError,
        progress: task.progress,
        showSuccessIcon: task.status == UploadTaskStatus.success,
        statusText: task.status.statusText,
        isError: task.status == UploadTaskStatus.error,
        subTitle: task.status == UploadTaskStatus.uploading
            ? '${model.format()}/s'
            : '');
  }
}

///上传中任务的表格
class _UploadListTable extends ConsumerWidget {
  const _UploadListTable();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tasks = ref.uploadTasksByGroup;
    return SliverList.list(children: [...tasks.mapTo(TaskGroupUi.new)]);
  }
}

class TaskGroupUi extends ConsumerWidget {
  final String groupId;
  final List<TaskModel> list;
  final bool useInHistory;

  const TaskGroupUi(this.groupId, this.list,
      {super.key, this.useInHistory = false});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (list.length == 1) {
      return UploadTaskTableRowLayout(model: list.first);
    } else {
      return UploadTaskTableRowLayoutByGroup(
          groupId: groupId, list: list, useInHistory: useInHistory);
    }
  }
}

class _UploadProgress extends ConsumerWidget {
  final double progress;

  const _UploadProgress({required this.progress});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LinearProgressIndicator(
      value: progress,
      minHeight: 5,
      borderRadius: BorderRadius.circular(50),
      backgroundColor: context.colorScheme.primaryContainer,
      valueColor: AlwaysStoppedAnimation(context.primaryColor),
    );
  }
}

class _Info extends ConsumerWidget {
  final double progress;
  final bool showSuccessIcon;
  final String statusText;
  final String subTitle;
  final bool isError;
  final GlobalError? errorInfo;

  const _Info(
      {required this.progress,
      required this.showSuccessIcon,
      required this.statusText,
      this.isError = false,
      required this.subTitle,
      this.errorInfo});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const icon = Icon(Icons.check_circle, color: Colors.green);
    final textStyle = context.textTheme.bodySmall?.copyWith(
        color: isError ? context.colorScheme.error : null, fontSize: 8);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            RichText(
                text: TextSpan(text: statusText, style: textStyle, children: [
              if (subTitle.isNotEmpty)
                TextSpan(
                    text: subTitle,
                    style: context.textTheme.bodySmall?.copyWith(fontSize: 8))
            ])),
            if (showSuccessIcon) icon,
            if (errorInfo != null)
              _IconAction(
                  iconData: LineIcons.infoCircle,
                  message: '${errorInfo?.getMessage()}')
          ],
        ),
        const SizedBox(
          height: 1,
        ),
        _UploadProgress(
          progress: progress,
        )
      ],
    );
  }
}

class UploadTaskTableRowLayoutByGroup extends ConsumerWidget {
  final String groupId;
  final List<TaskModel> list;
  final bool useInHistory;

  const UploadTaskTableRowLayoutByGroup(
      {super.key,
      required this.groupId,
      required this.list,
      required this.useInHistory});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = list.first.directoryName ?? '';
    final uploaded =
        list.where((element) => element.status == UploadTaskStatus.success);
    final hasUploadingItem =
        list.any((element) => element.status == UploadTaskStatus.uploading);
    final max = list
        .where((element) => element.status == UploadTaskStatus.uploading)
        .fold(0.0, (value, element) => value + element.speed);
    return MyTaskTableRow(
      columns: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Builder(builder: (context) {
              return Icon(
                Icons.folder,
                color: context.primaryColor,
              );
            }),
            const SizedBox(
              width: 2,
            ),
            _FileNameTitle(name: name),
          ],
        ),
        _UploadTaskActionToolbarByGroup(groupId: groupId),
        Builder(builder: (context) {
          return Text(
            '${uploaded.length}项/${list.length}项',
            style: context.textTheme.bodySmall,
          );
        }),
        _Info(
            progress: uploaded.length / list.length,
            showSuccessIcon: uploaded.length == list.length,
            statusText: uploaded.length == list.length
                ? '全部完成'
                : (hasUploadingItem ? '上传中...' : '-'),
            subTitle: hasUploadingItem
                ? '${ByteModel.create(max).format(1)}/s'
                : '0b/s'),
      ],
      alignmentBuilder: (index) {
        if (index == 1) {
          return Alignment.centerRight;
        }
        return null;
      },
      onTap: () {
        showModalBottomSheet(
            context: context,
            builder: (context) {
              return HookConsumer(
                builder: (context, ref, child) {
                  final folderList = useInHistory
                      ? list
                      : ref
                          .watch(uploadTaskProvider)
                          .where((element) => element.groupId == groupId);

                  return CustomScrollView(
                    slivers: [
                      SliverList.list(children: [
                        ...folderList
                            .map((e) => UploadTaskTableRowLayout(model: e))
                      ])
                    ],
                  );
                },
              );
            },
            useSafeArea: true);
      },
    );
  }
}

class UploadTaskTableRowLayout extends ConsumerWidget {
  final TaskModel model;

  const UploadTaskTableRowLayout({super.key, required this.model});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MyTaskTableRow(
      columns: [
        _FileNameTitle(name: model.getFile().path.urlManager.filenameAll),
        _UploadTaskActionToolbar(uploadTaskModel: model),
        Builder(builder: (context) {
          return Text(
            model.getSize,
            style: context.textTheme.bodySmall,
          );
        }),
        _TaskSpeed(task: model),
      ],
      alignmentBuilder: (index) {
        if (index == 1) {
          return Alignment.centerRight;
        }
        return null;
      },
    );
  }
}

class TabHeader extends SliverPersistentHeaderDelegate {
  const TabHeader();

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final textStyle = context.textTheme.bodySmall
        ?.copyWith(color: context.colorScheme.secondary);
    return MyTaskTableRow(
      columns: [
        Text('名称', style: textStyle),
        Text('', style: textStyle),
        Text('大小', style: textStyle),
        Text('状态', style: textStyle)
      ],
      enableHoverColor: false,
    );
  }

  @override
  double get maxExtent => kToolbarHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

class _IconAction extends ConsumerWidget {
  final ValueChanged<WidgetRef>? onTap;
  final IconData iconData;
  final String message;
  final Color? hoveredColor;

  const _IconAction(
      {this.onTap,
      required this.iconData,
      required this.message,
      this.hoveredColor});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MyIcon(
      noBorder: true,
      toolTip: message,
      hoverBgColor: context.cardColor,
      hoverIconColor:
          hoveredColor ?? (context.isDarkModel ? Colors.white : Colors.black),
      defaultIconColor: context.colorScheme.secondary,
      iconData: iconData,
      onTap: onTap != null ? (value, __) => onTap?.call(ref) : null,
    );
  }
}

class _UploadTaskActionToolbarByGroup extends ConsumerWidget {
  final String groupId;

  const _UploadTaskActionToolbarByGroup({required this.groupId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.read(uploadTaskProvider.notifier);
    return _UploadTaskActionToolbarBase(
      onStart: () {
        model.startAllByGroup(groupId, model.startUploadByItem);
      },
      delete: () {
        model.deleteAllByGroup(groupId);
      },
      cancel: () {
        model.cancelAllByGroup(groupId);
      },
    );
  }
}

///单文件操作工具条
class _UploadTaskActionToolbar extends ConsumerWidget {
  final TaskModel uploadTaskModel;

  const _UploadTaskActionToolbar({required this.uploadTaskModel});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return _UploadTaskActionToolbarBase(
      onStart: () {
        ref
            .read(uploadTaskProvider.notifier)
            .startUploadByItem(uploadTaskModel);
      },
      delete: () {
        ref.read(uploadTaskProvider.notifier).removeByItem(uploadTaskModel);
      },
      cancel: () {
        ref.read(uploadTaskProvider.notifier).cancelByItem(uploadTaskModel);
      },
    );
  }
}

///工具条 UI
class _UploadTaskActionToolbarBase extends StatelessWidget {
  final VoidCallback onStart;
  final VoidCallback delete;
  final VoidCallback cancel;

  const _UploadTaskActionToolbarBase(
      {required this.onStart, required this.delete, required this.cancel});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _IconAction(
          onTap: (ref) {
            onStart.call();
          },
          iconData: LineIcons.play,
          message: '开始上传',
        ),
        _IconAction(
          onTap: (ref) {
            cancel.call();
          },
          iconData: LineIcons.ban,
          hoveredColor: context.colorScheme.error,
          message: '取消上传',
        ),
        _IconAction(
          onTap: (ref) {
            delete.call();
          },
          iconData: LineIcons.trash,
          hoveredColor: context.colorScheme.error,
          message: '删除任务',
        ),
      ],
    ).animate().scaleY();
  }
}

class UploadBadgeBuilder extends ConsumerWidget {
  final Widget menuIcon;

  const UploadBadgeBuilder(this.menuIcon, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.uploadingCount;
    if (count != 0) {
      return Badge.count(count: count, child: menuIcon);
    }
    return menuIcon;
  }
}

class _FileNameTitle extends StatelessWidget {
  final String name;

  const _FileNameTitle({required this.name});

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: name,
      child: Text(
        name,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
