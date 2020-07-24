part of htdc;

class _AppFonts {
  final TextStyle thin;
  final TextStyle thin2;
  final TextStyle light;
  final TextStyle light2;
  final TextStyle normal;
  final TextStyle normal2;
  final TextStyle normal3;
  final TextStyle big;
  final TextStyle bold;
  final TextStyle bold2;
  final TextStyle bold3;
  final TextStyle boldBig;
  final TextStyle bold2Big;
  final TextStyle bold3Big;
  final TextStyle boldHuge;

  _AppFonts(AppColors colors)
      : thin = TextStyle(
          color: colors.content,
          fontWeight: FontWeight.w100,
          fontSize: 14,
        ),
        thin2 = TextStyle(
          color: colors.content2,
          fontWeight: FontWeight.w100,
          fontSize: 14,
        ),
        light = TextStyle(
          color: colors.content,
          fontWeight: FontWeight.w300,
          fontSize: 14,
        ),
        light2 = TextStyle(
          color: colors.content2,
          fontWeight: FontWeight.w300,
          fontSize: 14,
        ),
        normal = TextStyle(
          color: colors.content,
          fontWeight: FontWeight.normal,
          fontSize: 14,
        ),
        big = TextStyle(
            color: colors.content, fontWeight: FontWeight.w600, fontSize: 17),
        normal2 = TextStyle(
          color: colors.content2,
          fontWeight: FontWeight.normal,
          fontSize: 14,
        ),
        normal3 = TextStyle(
          color: colors.content.withOpacity(0.6),
          fontWeight: FontWeight.normal,
          fontSize: 14,
        ),
        bold = TextStyle(
          color: colors.content,
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
        bold2 = TextStyle(
          color: colors.content2,
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
        bold3 = TextStyle(
          color: colors.content.withOpacity(0.8),
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
        boldBig = TextStyle(
          color: colors.content,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
        bold2Big = TextStyle(
          color: colors.content2,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
        bold3Big = TextStyle(
          color: colors.accent,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
        boldHuge = TextStyle(
          color: colors.content,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        );
}
