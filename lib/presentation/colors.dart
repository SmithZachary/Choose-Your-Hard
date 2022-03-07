import 'dart:ui';

class AppColorTheme {
  final String name;
  final Color background;
  final Color onBackground;
  final Color stroke;
  final Color primary;
  final Color alerts;
  final Color warning;
  final Color primaryFont;
  final Color secondaryFont;
  final Color shade;

  const AppColorTheme(
      {required this.name,
      required this.background,
      required this.onBackground,
      required this.stroke,
      required this.primary,
      required this.alerts,
      required this.warning,
      required this.primaryFont,
      required this.secondaryFont,
      required this.shade});
}

class AppColorThemes {
  static const light = AppColorTheme(
    name: 'light',
    background: Color(0xFFFFFFFF),
    onBackground: Color(0xFFF0F0F0),
    stroke: Color(0xFF292929),
    primary: Color(0xFFDE6156),
    alerts: Color(0xFFDE6156),
    warning: Color(0xFFFBC933),
    primaryFont: Color(0xFF121212),
    secondaryFont: Color(0xFF3A3A3A),
    shade: Color(0xFFF0F0F0),
  );
  static const dark = AppColorTheme(
    name: 'dark',
    background: Color(0xFF1B1D21),
    onBackground: Color(0xFF1E2228),
    stroke: Color(0xFF292929),
    primary: Color(0xFFDE6156),
    alerts: Color(0xFFDE6156),
    warning: Color(0xFFFBC933),
    primaryFont: Color(0xFFE0E0E0),
    secondaryFont: Color(0xFF979797),
    shade: Color(0xFFFFFFFF),
  );
  static const midnight = AppColorTheme(
    name: 'midnight',
    background: Color(0xFF0F1427),
    onBackground: Color(0xFF131A2E),
    stroke: Color(0xFF292929),
    primary: Color(0xFFDE6156),
    alerts: Color(0xFFDE6156),
    warning: Color(0xFFFBC933),
    primaryFont: Color(0xFFE0E0E0),
    secondaryFont: Color(0xFF979797),
    shade: Color(0xFFFFFFFF),
  );
}
