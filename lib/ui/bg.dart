part of 'part.dart';


class Bg extends StatefulWidget {
  final Widget child;

  const Bg({super.key, required this.child});

  @override
  State<Bg> createState() {
    return _BgState();
  }
}

class _BgState extends State<Bg> {
  @override
  Widget build(BuildContext context) {
    final color = context.isDarkModel ? context.cardColor : context.colorScheme.inversePrimary;
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              color,
              color.withOpacity(.12),
            ],
          ),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(UiTheme.cardRadius), bottomLeft: Radius.circular(UiTheme.cardRadius))),
      child: widget.child,
    );
  }
}
