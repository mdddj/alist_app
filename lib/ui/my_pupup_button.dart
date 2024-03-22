part of 'part.dart';

class MyPopupButton<T> extends PopupMenuEntry<T> {
  final String text;
  final VoidCallback? onTap;
  final bool? dangerous;
  final Widget? leading;
  final bool? isActive;
  final Widget? ending;

  const MyPopupButton(
      {super.key,
      required this.text,
      this.onTap,
      this.isActive,
      this.dangerous,
      this.leading,
      this.ending});

  @override
  State<StatefulWidget> createState() => _MyPopupButtonState();

  @override
  double get height => 32;

  @override
  bool represents(T? value) {
    return false;
  }
}

class _MyPopupButtonState extends State<MyPopupButton> {
  @override
  Widget build(BuildContext context) {
    return ActiveApplicationWrapper(
      child: MyButton(
        leading: widget.leading,
        dangerous: widget.dangerous,
        text: widget.text,
        isActivated: widget.isActive ?? false,
        onTap: () {
          Navigator.pop(context);
          Future.delayed(Duration.zero, () {
            WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
              widget.onTap?.call();
            });
          });
        },
        end: widget.ending,
        margin: const EdgeInsets.symmetric(horizontal: 6),
      ),
    );
  }
}

class MyFsModelPopupDetail<T> extends PopupMenuEntry<T> {
  final FsModel fsModel;
  final double? iconSize;

  const MyFsModelPopupDetail({super.key, required this.fsModel, this.iconSize});

  @override
  State<StatefulWidget> createState() => _MyFsModelPopupDetailState();

  @override
  double get height => 38;

  @override
  bool represents(T? value) {
    return false;
  }
}

class _MyFsModelPopupDetailState extends State<MyFsModelPopupDetail> {
  @override
  Widget build(BuildContext context) {
    return ActiveApplicationWrapper(
      child: HoverWidget(
        builder: (color, isHove, controller) {
          return Container(
            color: color,
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
            child: ConstrainedBox(
              constraints: const BoxConstraints(minWidth: 120),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Row(
                  children: [
                    widget.fsModel.getIcon(size: widget.iconSize),
                    const SizedBox(width: 5),
                    Expanded(
                      child: Text(
                        widget.fsModel.name,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: context.textTheme.titleSmall
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class MyPopupTitle extends PopupMenuEntry<String> {
  final String title;

  const MyPopupTitle({super.key, required this.title});

  @override
  State<StatefulWidget> createState() => _MyPopupTitleState();

  @override
  double get height => kToolbarHeight;

  @override
  bool represents(String? value) => false;
}

///默认加载组建
class _MyPopupTitleState extends State<MyPopupTitle> {
  _MyPopupTitleState();

  @override
  Widget build(BuildContext context) {
    return ActiveApplicationWrapper(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Text(
          widget.title,
          style: context.textTheme.titleMedium
              ?.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class MyPopupWrapper<T> extends PopupMenuEntry<T> {
  final double size;
  final Widget child;
  const MyPopupWrapper({super.key, required this.child, required this.size});

  @override
  State<StatefulWidget> createState() => _MyPopupWrapperStateState();

  @override
  double get height => size;

  @override
  bool represents(T? value) => false;
}

class _MyPopupWrapperStateState extends State<MyPopupWrapper> {
  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
