part of 'part.dart';

///锁定组件
class LockingWidget extends ConsumerWidget {

  const LockingWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Loader(load: () => AccountManager.instance.getAuthToken(),builder: (context, value) {
      if(value==null || value.isEmpty){
        return  Tooltip(message: '需要登录',child: Text('需要管理员权限',style: context.textTheme.labelMedium));
      }
      return const SizedBox.shrink();
    },);
  }
}
