part of htdc;

/// Provides app style
class Style<AssetsClass> extends InheritedWidget {
  /// Keeps app colors
  final AppColors colors;

  /// Keeps assets names wich can be used like:
  /// ```dart
  ///  Image.asset(
  ///     StyleProvider.of(context).asset.facebookLogo,
  ///  );
  /// ```
  final AssetsClass asset;

  /// Keeps app gradients
  final _AppGradients gradient;

  /// Keeps app shadows
  final _AppShadows shadow;

  /// Keeps app borders
  final _AppBorders border;

  /// Keeps app fonts
  final _AppFonts font;

  Style({
    Widget child,
    @required this.asset,
    @required this.colors,
  })  : gradient = _AppGradients(colors),
        border = _AppBorders(colors),
        font = _AppFonts(colors),
        shadow = _AppShadows(colors),
        super(child: child);

  /// Always returns false because this InheritedWidget is not mutable
  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;

  static Style of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<Style>();
}
