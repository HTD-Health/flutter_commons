part of flutter_commons;

const _circleFilled = 100.0;
const _circleUnfilled = 80.0;
const _lineWidth = 3.0;
const _largeCircleSize = 30.0;
const _smallCircleSize = 17.0;
const _valueTo360degree = 6.3;
const _defaultSmoothFillSizeChange = Duration(milliseconds: 50);

class ActivityIndicator extends StatefulWidget {
  final double scale;
  final double spinTimeFactor;
  final Color smallCircleColor;
  final Color largeCircleColor;
  final bool isActive;
  final double percentage;
  final bool smoothFillSizeChange;
  final Duration fillSizeChangeDuration;

  ActivityIndicator({
    this.scale = 1,
    this.fillSizeChangeDuration,
    this.spinTimeFactor = 1,
    this.percentage,
    this.smoothFillSizeChange = false,
    this.isActive = true,
    @required this.smallCircleColor,
    @required this.largeCircleColor,
  })  : assert(scale != null),
        assert(scale > 0),
        assert(spinTimeFactor > 0);

  @override
  _ActivityInidicatorState createState() => _ActivityInidicatorState();
}

class _ActivityInidicatorState extends State<ActivityIndicator>
    with TickerProviderStateMixin {
  AnimationController _largeCircleController;
  AnimationController _smallCircleController;
  AnimationController _sizeIndicator;

  @override
  void initState() {
    super.initState();
    _sizeIndicator = AnimationController(
      lowerBound: 0.0,
      upperBound: _circleFilled,
      duration: Duration(milliseconds: 400),
      vsync: this,
    )..value = widget.percentage ?? _circleUnfilled;
    _smallCircleController = AnimationController(
      upperBound: _valueTo360degree,
      vsync: this,
      duration: Duration(milliseconds: (750 * widget.spinTimeFactor).floor()),
    );
    _largeCircleController = AnimationController(
      vsync: this,
      upperBound: _valueTo360degree,
      duration: Duration(milliseconds: (1250 * widget.spinTimeFactor).floor()),
    );
    if (widget.isActive) _animationStart();
  }

  @override
  void didUpdateWidget(ActivityIndicator oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.percentage != null &&
        widget.percentage != oldWidget.percentage) {
      if (widget.smoothFillSizeChange) {
        _sizeIndicator.animateTo(
          widget.percentage,
          duration:
              widget.fillSizeChangeDuration ?? _defaultSmoothFillSizeChange,
        );
      } else {
        _sizeIndicator.value = widget.percentage;
      }
    }
    if (oldWidget.isActive != widget.isActive) {
      if (widget.isActive) {
        _animationStart();
      } else {
        _animationStop();
      }
    }
  }

  @override
  void dispose() {
    _largeCircleController.dispose();
    _smallCircleController.dispose();
    _sizeIndicator.dispose();
    super.dispose();
  }

  void _animationStart() {
    _smallCircleController.repeat();
    _largeCircleController.repeat();
  }

  void _animationStop() {
    _smallCircleController
      ..stop()
      ..animateTo(0, duration: const Duration(milliseconds: 500));
    _largeCircleController
      ..stop()
      ..animateTo(0, duration: const Duration(milliseconds: 500));
  }

  @override
  Widget build(BuildContext context) {
    final widgetSize = _largeCircleSize * widget.scale;
    final lineWidth = _lineWidth * widget.scale;
    return SizedBox(
      width: widgetSize,
      height: widgetSize + lineWidth,
      child: Stack(
        children: <Widget>[
          AnimatedRotatingCircle(
            fillPercentage: _sizeIndicator,
            controller: _largeCircleController,
            color: widget.largeCircleColor,
            size: widgetSize,
            lineWidth: lineWidth,
          ),
          AnimatedRotatingCircle(
            fillPercentage: _sizeIndicator,
            controller: _smallCircleController,
            color: widget.smallCircleColor,
            size: _smallCircleSize * widget.scale,
            lineWidth: lineWidth,
          ),
        ],
      ),
    );
  }
}

class AnimatedRotatingCircle extends StatelessWidget {
  final AnimationController controller;
  final AnimationController fillPercentage;
  final double size;
  final Color color;
  final double lineWidth;

  AnimatedRotatingCircle({
    @required this.controller,
    @required this.size,
    @required this.color,
    @required this.lineWidth,
    @required this.fillPercentage,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: controller,
        child: AnimatedBuilder(
          animation: fillPercentage,
          child: SizedBox(
            width: size,
            height: size,
          ),
          builder: (BuildContext context, Widget child) {
            return CustomPaint(
              foregroundPainter: CircleProgressPainter(
                lineColor: color,
                completePercent: fillPercentage.value,
                width: lineWidth,
              ),
              child: child,
            );
          },
        ),
        builder: (BuildContext context, Widget child) => Transform.rotate(
          angle: controller.value,
          child: child,
        ),
      ),
    );
  }
}

class CircleProgressPainter extends CustomPainter {
  Color lineColor;
  double completePercent;
  double width;

  CircleProgressPainter({
    this.lineColor,
    this.completePercent,
    this.width,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint complete = Paint()
      ..color = lineColor
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = width;
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2);
    double arcAngle = 2 * pi * (completePercent / 100);
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -pi / 2,
      arcAngle,
      false,
      complete,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
