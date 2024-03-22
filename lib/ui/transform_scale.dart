part of 'part.dart';
class MyAnimatedWidget extends StatefulWidget {
  final Widget child;
  final MyAnimatedWidgetController? controller;
  final double? scale;
  const MyAnimatedWidget({super.key, required this.child, this.controller, this.scale,});
  @override
  MyAnimatedWidgetState createState() => MyAnimatedWidgetState();
}

class MyAnimatedWidgetState extends State<MyAnimatedWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;



  void _bind(){
    widget.controller?._bind(this);
  }

  @override
  void initState() {
    super.initState();
    _bind();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    _animation = Tween<double>(begin: 1.0, end: widget.scale ?? 1.2).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        if(_animation.status == AnimationStatus.dismissed){
          _controller.forward();
        }
      },
      onExit: (event) {
        if(_animation.status == AnimationStatus.completed){
          _controller.reverse();
        }
      },
      child: ScaleTransition(
        scale: _animation,
        child: widget.child,
      ),
    );
  }

  @override
  void didUpdateWidget(covariant MyAnimatedWidget oldWidget) {
    if(oldWidget.controller!=widget.controller){
      _bind();
    }
    super.didUpdateWidget(oldWidget);
  }
}

class MyAnimatedWidgetController {
   MyAnimatedWidgetState? _state;
  MyAnimatedWidgetController();

  void _bind(MyAnimatedWidgetState state){
    _state = state;
  }

  void start() {
    _state?._controller.forward();
  }

  void stop(){
    _state?._controller.reverse();
  }

  double get currentValue => _state?._animation.value ?? 1;
}