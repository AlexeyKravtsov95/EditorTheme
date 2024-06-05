import 'package:flutter/material.dart';
import 'package:theme_changing/uikit/colors/color_scheme.dart';
import 'package:theme_changing/util/get_theme.dart';
import 'package:theme_changing/util/theme_name.dart';

extension BuildContextExtension on BuildContext {
  AppColorScheme get colors => Theme.of(this).extension<AppColorScheme>()!;
}

extension ThemeModeExtension on AppTheme {
  ThemeMode themeMode() {
    switch (this) {
      case AppTheme.system:
        return ThemeMode.system;
      case AppTheme.light || AppTheme.lightOrange || AppTheme.lightBlue:
        return ThemeMode.light;
      case AppTheme.dark || AppTheme.darkOrange || AppTheme.darkBlue:
        return ThemeMode.dark;
    }
  }

  ThemeData themeData() {
    return this == AppTheme.dark
        ? getTheme(AppTheme.dark)
        : this == AppTheme.darkBlue
            ? getTheme(AppTheme.darkBlue)
            : getTheme(AppTheme.darkOrange);
  }
}
