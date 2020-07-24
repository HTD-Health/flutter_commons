part of htdc;

/// Provides colors that are used to create app style by style provider
class AppColors {
  const AppColors({
    @required this.accent,
    @required this.accent2,
    @required this.content,
    @required this.content2,
    @required this.background,
    @required this.background2,
    @required this.shadow,
    @required this.shadow2,
    @required this.confirm,
    @required this.confirm2,
    @required this.errorColor,
    @required this.errorColor2,
    @required this.inactive,
  });

  final Color accent;
  final Color accent2;

  final Color content;
  final Color content2;

  final Color background;
  final Color background2;

  final Color shadow;
  final Color shadow2;
  final Color confirm;
  final Color confirm2;
  final Color errorColor;
  final Color errorColor2;
  final Color inactive;

  /// Create [MaterialColor] from color
  MaterialColor getMaterialColorFrom(Color color) =>
      MaterialColor(color.value, {
        50: accent,
        for (int i = 100; i <= 900; i += 100) i: accent,
      });

  /// Create primary swatch color based on accent color
  MaterialColor get primarySwatch => getMaterialColorFrom(accent);

  /// Creates a copy of this [AppColors] but with the given
  /// fields replaced with the new values.
  AppColors copyWith(
    Color accent,
    Color accent2,
    Color content,
    Color content2,
    Color background,
    Color background2,
    Color shadow,
    Color shadow2,
    Color confirm,
    Color errorColor,
    Color errorColor2,
    Color inactive,
  ) =>
      AppColors(
          accent: accent ?? this.accent,
          accent2: accent2 ?? this.accent2,
          content: content ?? this.content,
          content2: content2 ?? this.content2,
          background: background ?? this.background,
          background2: background2 ?? this.background2,
          shadow: shadow ?? this.shadow,
          shadow2: shadow2 ?? this.shadow2,
          confirm: confirm ?? this.confirm,
          confirm2: confirm2 ?? this.confirm2,
          errorColor: errorColor ?? this.errorColor,
          errorColor2: errorColor2 ?? this.errorColor2,
          inactive: inactive ?? this.inactive);
}
