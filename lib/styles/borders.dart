part of htdc;

class _AppBorders {
  final _AppInputBorders input;
  final _AppBoxBorders box;
  _AppBorders(AppColors colors)
      : input = _AppInputBorders(colors),
        box = _AppBoxBorders(colors);
}

class _AppInputBorders {
  final InputBorder primary;
  final InputBorder focused;
  final InputBorder noBorder;
  final InputBorder enabled;
  _AppInputBorders(AppColors colors)
      : focused = OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(
            color: colors.accent,
            width: 1,
          ),
        ),
        enabled = OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(
            color: colors.accent,
            width: 1,
          ),
        ),
        primary = OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(
            color: colors.accent,
            width: 1,
          ),
        ),
        noBorder = const OutlineInputBorder(
          borderSide: BorderSide.none,
        );
}

class _AppBoxBorders {
  final BoxBorder primary;
  final BoxBorder accent;
  _AppBoxBorders(AppColors colors)
      : primary = Border.all(
          color: colors.content,
          width: 1,
        ),
        accent = Border.all(
          color: colors.accent,
          width: 1,
        );
}
