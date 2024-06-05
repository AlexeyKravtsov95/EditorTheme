import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:theme_changing/util/theme_name.dart';

class ThemeController extends ChangeNotifier {
  static const String key = "theme";
  final SharedPreferences prefs;
  late AppTheme theme;

  ThemeController(this.prefs) {
    try {
      final savedTheme = prefs.getString(key);
      theme = savedTheme == null
          ? AppTheme.system
          : AppTheme.values.firstWhere((e) => e.toString() == savedTheme);
    } catch (e) {
      theme = AppTheme.system;
    }
  }

  void setTheme(AppTheme theme) {
    this.theme = theme;
    prefs.setString(key, theme.toString());
    notifyListeners();
  }
}
