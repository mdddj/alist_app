part of 'part.dart';

class IndexPage extends ConsumerStatefulWidget {
  const IndexPage({super.key});

  @override
  ConsumerState<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends ConsumerState<IndexPage> {
  @override
  void initState() {
    super.initState();
    _getAccounts();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      (Connectivity().checkConnectivity());
    });
    BroadcastTool.listenMessage(_showMessage);
  }

  ///获取domain列表
  Future<void> _getAccounts() async {
    final list = await GetIt.instance.get<AccountManager>().getDomains();
    if (list.isEmpty) {
      _showCreateNewDialog();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: context.screenWidth,
          height: context.screenHeight,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                context.primaryColor,
                context.primaryColor.withOpacity(.82),
                context.primaryColor.withOpacity(.62),
                context.primaryColor.withOpacity(.42),
              ],
            ),
          ),
        ),
        const _Index(),
      ],
    );
  }

  ///创建新的弹出
  void _showCreateNewDialog() {
    showDialog(
        context: context, builder: (context) => const CreateNewDomainWidget());
  }

  void _showMessage(String value) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(value), showCloseIcon: true));
  }
}

class _Index extends ConsumerWidget {
  const _Index();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final active = ref.activeDomain;
    return active == null ? const SelectDomainWidget() : const MobileHome();
  }
}

class MobileHome extends BasePlatformWidget {
  const MobileHome({super.key});

  @override
  Widget buildWithDesktop(BuildContext context) {
    return const SupportRootWrapper(
      child: ApplicationWidget(),
    );
  }

  @override
  Widget buildWithMobile(BuildContext context) {
    return buildWithDesktop(context);
  }
}

class SupportRootWrapper extends StatelessWidget {
  final Widget child;
  const SupportRootWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return HookConsumer(builder: (context, ref, _) {
      final domain = ref.activeDomain!;
      final domains = ref.watch(sitesStateProvider);
      return domains.when(
        data: (data) {
          return LazyIndexedStack(
            index: data.indexOf(domain),
            children: [
              ...data.map((element) => pp.ChangeNotifierProvider(
                    create: (context) => element..startGetState(),
                    builder: (context, _) => child,
                  ))
            ],
          );
        },
        error: (Object error, StackTrace stackTrace) {
          return Center(
            child: Text('$error'),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
      );
    });
  }
}
