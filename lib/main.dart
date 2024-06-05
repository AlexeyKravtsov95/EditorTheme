import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:theme_changing/feature/theme/domain/theme_controller.dart';
import 'package:theme_changing/page/profile_page.dart';
import 'package:theme_changing/util/extensions.dart';
import 'package:theme_changing/util/get_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeController(prefs),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeController>(
      builder: (context, ThemeController themeController, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Theme Demo',
          theme: getTheme(themeController.theme),
          darkTheme: themeController.theme.themeData(),
          themeMode: themeController.theme.themeMode(),
          home: const ProfilePage(),
        );
      },
    );
  }
}
