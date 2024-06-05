import 'package:flutter/src/material/theme_data.dart';
import 'package:theme_changing/uikit/theme/theme_data.dart';
import 'package:theme_changing/util/theme_name.dart';

ThemeData getTheme(AppTheme theme) {
  switch (theme) {
    case AppTheme.dark:
      return AppThemeData.darkTheme;
    case AppTheme.light:
      return AppThemeData.lightTheme;
    case AppTheme.lightBlue:
      return AppThemeData.lightBlueTheme;
    case AppTheme.lightOrange:
      return AppThemeData.lightOrangeTheme;
    case AppTheme.darkBlue:
      return AppThemeData.darkBlueTheme;
    case AppTheme.darkOrange:
      return AppThemeData.darkOrangeTheme;
    case AppTheme.system:
      return AppThemeData.lightTheme;
  }
}

String getThemeName(AppTheme theme) {
  switch (theme) {
    case AppTheme.dark:
      return "Темная";
    case AppTheme.light:
      return "Светлая";
    case AppTheme.lightBlue:
      return "Светлая";
    case AppTheme.lightOrange:
      return "Светлая";
    case AppTheme.darkBlue:
      return "Темная";
    case AppTheme.darkOrange:
      return "Темная";
    case AppTheme.system:
      return "Системная";
  }
}
