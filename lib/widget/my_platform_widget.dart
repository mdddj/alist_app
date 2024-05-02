part of 'part.dart';

T myPlatformBuilder<T>(T Function() mobile, T Function() desktop) {
  return myPlatform.isDesktop ? desktop() : mobile();
}

abstract class PlatformWidget extends ConsumerWidget {
  const PlatformWidget({super.key});

  Widget buildWithDesktop(
      BuildContext context, WidgetRef ref, DomainAccount domain);

  Widget buildWithMobile(
      BuildContext context, WidgetRef ref, DomainAccount domain) {
    return buildWithDesktop(context, ref, domain);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return pp.Consumer<DomainAccount>(
      builder: (context, value, child) {
        final mobileValue = ref.activeDomain;
        final desktopWidget = buildWithDesktop(context, ref, value);
        final mobileWidget = buildWithMobile(context, ref,mobileValue ?? value);
        return myPlatform.isDesktop ? desktopWidget : mobileWidget;
      },
    );
  }
}

abstract class BasePlatformWidget extends StatelessWidget {
  const BasePlatformWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final desktopWidget = buildWithDesktop(context);
    final mobileWidget = buildWithMobile(context);
    return myPlatform.isDesktop ? desktopWidget : mobileWidget;
  }

  Widget buildWithDesktop(BuildContext context);

  Widget buildWithMobile(BuildContext context);
}

class ActiveApplicationWrapper extends ConsumerWidget {
  final Widget child;

  const ActiveApplicationWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final active = ref.activeDomain;
    if (active == null) {
      return child;
    }
    return child;
  }
}

class ActiveApplicationProviderBuilder extends ConsumerWidget {
  final Widget Function(DomainAccount account) builder;

  const ActiveApplicationProviderBuilder({super.key, required this.builder});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return builder.call(ref.activeDomain!);
  }
}

class ProviderDialogWrapper extends ConsumerWidget {
  final Widget child;
  const ProviderDialogWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return pp.ChangeNotifierProvider(
      create: (context) => ref.activeDomain?..startGetState(),
      child: child,
    );
  }
}
