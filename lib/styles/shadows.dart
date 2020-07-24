part of htdc;

class _AppShadows {
  final BoxShadow shadow;
  final BoxShadow shadow2;
  final BoxShadow shadow3;
  _AppShadows(AppColors colors)
      : shadow = BoxShadow(
          color: colors.shadow,
          offset: const Offset(0, 0),
          blurRadius: 2,
        ),
        shadow2 = BoxShadow(
          color: colors.shadow2,
          offset: const Offset(0, 0),
          blurRadius: 5,
        ),
        shadow3 = BoxShadow(
          color: colors.shadow2,
          offset: const Offset(0, 0),
          blurRadius: 32,
          spreadRadius: 8,
        );
}
