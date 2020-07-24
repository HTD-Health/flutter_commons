part of htdc;

class Fader extends StatefulWidget {
  final Widget child;

  const Fader({Key key, this.child}) : super(key: key);
  @override
  _FaderState createState() => _FaderState();
}

class _FaderState extends State<Fader> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  static final _curveTween = CurveTween(curve: Curves.easeInOut);
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
      lowerBound: 0.6,
      upperBound: 1.0,
    )..repeat(reverse: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller.drive(_curveTween),
      builder: (context, snapshot) {
        return Opacity(
          opacity: _controller.value,
          child: widget.child,
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class PlaceholderStripe extends StatelessWidget {
  final EdgeInsets margin;
  final double height;
  final double width;
  final BorderRadiusGeometry borderRadius;

  /// Defines [PlaceholderStripe] color
  ///
  /// Optional. By default `content` color is used.
  final Color color;

  const PlaceholderStripe({
    this.margin,
    this.height = 20,
    this.width = double.infinity,
    this.color,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: margin,
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color ?? Style.of(context).colors.content,
          borderRadius:
              borderRadius ?? const BorderRadius.all(Radius.circular(10)),
        ),
      ),
    );
  }
}
