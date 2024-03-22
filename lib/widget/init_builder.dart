part of 'part.dart';

class InitBuilder extends StatefulWidget {
  final VoidCallback? onInit;
  final Widget child;
  const InitBuilder({super.key,required this.child,this.onInit});

  @override
  State<InitBuilder> createState() => _InitBuilderState();
}

class _InitBuilderState extends State<InitBuilder> {
  @override
  void initState() {
    super.initState();
    widget.onInit?.call();
  }
  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
