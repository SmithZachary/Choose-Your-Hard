import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'colors.dart';

class AppTheme {
  static final ThemeData lightTheme = _buildLightTheme();
  static final ThemeData darkTheme = _buildDarkTheme();
  static final ThemeData midnightTheme = _buildMidnightTheme();

  static ThemeData _buildLightTheme() {
    final base = ThemeData.light();
    return base.copyWith(
      brightness: Brightness.light,
      primaryColor: AppColorThemes.light.primary,
      errorColor: AppColorThemes.light.alerts,
      backgroundColor: AppColorThemes.light.onBackground,
      scaffoldBackgroundColor: AppColorThemes.light.background,
      dividerColor: AppColorThemes.light.stroke,
      colorScheme: base.colorScheme.copyWith(
        primary: AppColorThemes.light.primary,
      ),
      textTheme: base.textTheme.apply(fontFamily: 'Assistant'),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              primary: AppColorThemes.light.primary,
              maximumSize: const Size(100, 40))),
      appBarTheme: AppBarTheme(
        brightness: Brightness.dark,
        color: AppColorThemes.light.onBackground,
        elevation: 0,
        iconTheme: IconThemeData(
          color: AppColorThemes.light.secondaryFont,
        ),
        actionsIconTheme: IconThemeData(
          color: AppColorThemes.light.secondaryFont,
        ),
      ),
    );
  }

  static ThemeData _buildMidnightTheme() {
    final base = ThemeData.dark();
    return base.copyWith(
      brightness: Brightness.dark,
      primaryColor: AppColorThemes.midnight.primary,
      errorColor: AppColorThemes.midnight.alerts,
      backgroundColor: AppColorThemes.midnight.onBackground,
      scaffoldBackgroundColor: AppColorThemes.midnight.onBackground,
      dividerColor: AppColorThemes.midnight.stroke,
      colorScheme: base.colorScheme.copyWith(
        primary: AppColorThemes.midnight.primary,
      ),
      textTheme: base.textTheme.apply(fontFamily: 'Assistant'),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              primary: AppColorThemes.midnight.primary,
              maximumSize: const Size(100, 40))),
      appBarTheme: AppBarTheme(
        brightness: Brightness.dark,
        color: AppColorThemes.midnight.onBackground,
        elevation: 0,
        iconTheme: IconThemeData(color: AppColorThemes.midnight.secondaryFont),
        actionsIconTheme:
            IconThemeData(color: AppColorThemes.midnight.secondaryFont),
      ),
    );
  }

  static ThemeData _buildDarkTheme() {
    final base = ThemeData.dark();
    return base.copyWith(
      brightness: Brightness.dark,
      primaryColor: AppColorThemes.dark.primary,
      errorColor: AppColorThemes.dark.alerts,
      backgroundColor: AppColorThemes.dark.onBackground,
      scaffoldBackgroundColor: AppColorThemes.dark.background,
      dividerColor: AppColorThemes.dark.stroke,
      colorScheme: base.colorScheme.copyWith(
        primary: AppColorThemes.dark.primary,
      ),
      textTheme: base.textTheme.apply(fontFamily: 'Assistant'),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              primary: AppColorThemes.dark.primary,
              maximumSize: const Size(100, 40))),
      appBarTheme: AppBarTheme(
        brightness: Brightness.dark,
        color: AppColorThemes.dark.onBackground,
        elevation: 0,
        iconTheme: IconThemeData(color: AppColorThemes.dark.secondaryFont),
        actionsIconTheme:
            IconThemeData(color: AppColorThemes.dark.secondaryFont),
      ),
    );
  }
}

enum ThemeType { Light, Dark, Midnight }

class ThemeNotifier extends ChangeNotifier {
  var _userTheme = ThemeType.Midnight;
  ThemeData get theme {
    switch (_userTheme) {
      case ThemeType.Light:
        return AppTheme.lightTheme;
      case ThemeType.Dark:
        return AppTheme.darkTheme;
      case ThemeType.Midnight:
      default:
        return AppTheme.darkTheme;
    }
  }

  final String key = "theme";
  late SharedPreferences _prefs;

  ThemeNotifier() {
    _loadFromPrefs();
  }

  toggleTheme() {
    _saveToPrefs();
    notifyListeners();
  }

  void _initPrefs() async {
    if (_prefs == null) _prefs = await SharedPreferences.getInstance();
  }

  void _loadFromPrefs() async {
    await _initPrefs;
    final _theme = _prefs.getString(key);

    _userTheme = ThemeType.values.firstWhere((t) => t.toString() == _theme) ??
        _userTheme;

    notifyListeners();
  }

  void _saveToPrefs() async {
    await _initPrefs;
    await _prefs.setString(key, _userTheme.toString());
  }
}
