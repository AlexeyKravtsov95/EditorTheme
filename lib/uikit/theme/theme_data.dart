import 'package:flutter/material.dart';
import 'package:theme_changing/uikit/colors/color_scheme.dart';
import 'package:theme_changing/uikit/text/text_data.dart';
import 'package:theme_changing/util/constants.dart';

abstract class AppThemeData {
  static final ThemeData main = ThemeData(
    fontFamily: AppTextTheme.fontFamily,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(size: 24),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
      topRight: Radius.circular(24),
      topLeft: Radius.circular(24),
    ))),
  );

  static final darkTheme = main.copyWith(
    scaffoldBackgroundColor: ColorConst.black,
    appBarTheme: AppBarTheme(
        color: ColorConst.black,
        titleTextStyle:
            AppTextTheme.labelLarge.copyWith(color: ColorConst.white),
        toolbarTextStyle:
            AppTextTheme.titleMedium.copyWith(color: ColorConst.lightGreen),
        iconTheme: const IconThemeData(color: ColorConst.lightGreen)),
    bottomSheetTheme: main.bottomSheetTheme
        .copyWith(modalBackgroundColor: ColorConst.darkGrey),
    radioTheme:
        RadioThemeData(fillColor: MaterialStateProperty.all(Colors.lightGreen)),
    textTheme: const TextTheme(
        displaySmall: AppTextTheme.titleMedium,
        displayMedium: AppTextTheme.bodyMedium,
        displayLarge: AppTextTheme.labelLarge),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: ColorConst.bluePurple,
        textStyle: AppTextTheme.bodyMedium,
        foregroundColor: ColorConst.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: ColorConst.red),
        foregroundColor: ColorConst.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: ColorConst.darkGrey,
      suffixIconColor: ColorConst.lightGreen,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      labelStyle: AppTextTheme.titleMedium.copyWith(color: ColorConst.grey),
    ),
    useMaterial3: true,
    extensions: <ThemeExtension<dynamic>>[AppColorScheme.dark],
  );

  static final darkBlueTheme = main.copyWith(
    scaffoldBackgroundColor: ColorConst.darkBlue,
    appBarTheme: AppBarTheme(
        color: ColorConst.darkBlue,
        titleTextStyle:
            AppTextTheme.labelLarge.copyWith(color: ColorConst.white),
        toolbarTextStyle:
            AppTextTheme.titleMedium.copyWith(color: ColorConst.blue),
        iconTheme: const IconThemeData(color: ColorConst.blue)),
    bottomSheetTheme: main.bottomSheetTheme
        .copyWith(modalBackgroundColor: ColorConst.blueGrey),
    radioTheme:
        RadioThemeData(fillColor: MaterialStateProperty.all(Colors.blue)),
    textTheme: const TextTheme(
        displaySmall: AppTextTheme.titleMedium,
        displayMedium: AppTextTheme.bodyMedium,
        displayLarge: AppTextTheme.labelLarge),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: ColorConst.blue,
        textStyle: AppTextTheme.bodyMedium,
        foregroundColor: ColorConst.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: ColorConst.red),
        foregroundColor: ColorConst.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: ColorConst.blueGrey,
      suffixIconColor: ColorConst.blue,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      labelStyle:
          AppTextTheme.titleMedium.copyWith(color: ColorConst.lightBlue),
    ),
    useMaterial3: true,
    extensions: <ThemeExtension<dynamic>>[AppColorScheme.darkBlue],
  );

  static final darkOrangeTheme = main.copyWith(
    scaffoldBackgroundColor: ColorConst.darkBrown,
    appBarTheme: AppBarTheme(
        color: ColorConst.darkBrown,
        titleTextStyle:
            AppTextTheme.labelLarge.copyWith(color: ColorConst.white),
        toolbarTextStyle:
            AppTextTheme.titleMedium.copyWith(color: ColorConst.orange),
        iconTheme: const IconThemeData(color: ColorConst.orange)),
    bottomSheetTheme: main.bottomSheetTheme
        .copyWith(modalBackgroundColor: ColorConst.greyBrown),
    radioTheme:
        RadioThemeData(fillColor: MaterialStateProperty.all(Colors.orange)),
    textTheme: const TextTheme(
        displaySmall: AppTextTheme.titleMedium,
        displayMedium: AppTextTheme.bodyMedium,
        displayLarge: AppTextTheme.labelLarge),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: ColorConst.orange,
        textStyle: AppTextTheme.bodyMedium,
        foregroundColor: ColorConst.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: ColorConst.red),
        foregroundColor: ColorConst.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: ColorConst.greyBrown,
      suffixIconColor: ColorConst.orange,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      labelStyle:
          AppTextTheme.titleMedium.copyWith(color: ColorConst.lightBrown),
    ),
    useMaterial3: true,
    extensions: <ThemeExtension<dynamic>>[AppColorScheme.darkOrange],
  );

  static final lightTheme = main.copyWith(
    scaffoldBackgroundColor: ColorConst.white,
    appBarTheme: AppBarTheme(
        color: ColorConst.white,
        titleTextStyle:
            AppTextTheme.labelLarge.copyWith(color: ColorConst.darkGrey),
        toolbarTextStyle:
            AppTextTheme.titleMedium.copyWith(color: ColorConst.lightGreen),
        iconTheme: const IconThemeData(color: ColorConst.lightGreen)),
    bottomSheetTheme:
        main.bottomSheetTheme.copyWith(modalBackgroundColor: ColorConst.white),
    radioTheme:
        RadioThemeData(fillColor: MaterialStateProperty.all(Colors.lightGreen)),
    textTheme: const TextTheme(
        displaySmall: AppTextTheme.titleMedium,
        displayMedium: AppTextTheme.bodyMedium,
        displayLarge: AppTextTheme.labelLarge),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: ColorConst.bluePurple,
        textStyle: AppTextTheme.bodyMedium,
        foregroundColor: ColorConst.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: ColorConst.red),
        foregroundColor: ColorConst.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: ColorConst.whiteSilver,
      suffixIconColor: ColorConst.lightGreen,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      labelStyle: AppTextTheme.titleMedium.copyWith(color: ColorConst.grey),
    ),
    useMaterial3: true,
    extensions: <ThemeExtension<dynamic>>[AppColorScheme.light],
  );

  static final lightBlueTheme = main.copyWith(
    scaffoldBackgroundColor: ColorConst.skyGrey,
    appBarTheme: AppBarTheme(
        color: ColorConst.skyGrey,
        titleTextStyle:
            AppTextTheme.labelLarge.copyWith(color: ColorConst.darkBlue),
        toolbarTextStyle:
            AppTextTheme.titleMedium.copyWith(color: ColorConst.blue),
        iconTheme: const IconThemeData(color: ColorConst.blue)),
    bottomSheetTheme:
        main.bottomSheetTheme.copyWith(modalBackgroundColor: ColorConst.white),
    radioTheme:
        RadioThemeData(fillColor: MaterialStateProperty.all(Colors.blue)),
    textTheme: const TextTheme(
        displaySmall: AppTextTheme.titleMedium,
        displayMedium: AppTextTheme.bodyMedium,
        displayLarge: AppTextTheme.labelLarge),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: ColorConst.blue,
        textStyle: AppTextTheme.bodyMedium,
        foregroundColor: ColorConst.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: ColorConst.red),
        foregroundColor: ColorConst.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: ColorConst.white,
      suffixIconColor: ColorConst.blue,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      labelStyle:
          AppTextTheme.titleMedium.copyWith(color: ColorConst.lightBlue),
    ),
    useMaterial3: true,
    extensions: <ThemeExtension<dynamic>>[AppColorScheme.lightBlue],
  );

  static final lightOrangeTheme = main.copyWith(
    scaffoldBackgroundColor: ColorConst.creamy,
    appBarTheme: AppBarTheme(
        color: ColorConst.creamy,
        titleTextStyle:
            AppTextTheme.labelLarge.copyWith(color: ColorConst.darkBrown),
        toolbarTextStyle:
            AppTextTheme.titleMedium.copyWith(color: ColorConst.orange),
        iconTheme: const IconThemeData(color: ColorConst.orange)),
    bottomSheetTheme:
        main.bottomSheetTheme.copyWith(modalBackgroundColor: ColorConst.white),
    radioTheme:
        RadioThemeData(fillColor: MaterialStateProperty.all(Colors.orange)),
    textTheme: const TextTheme(
        displaySmall: AppTextTheme.titleMedium,
        displayMedium: AppTextTheme.bodyMedium,
        displayLarge: AppTextTheme.labelLarge),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: ColorConst.orange,
        textStyle: AppTextTheme.bodyMedium,
        foregroundColor: ColorConst.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: ColorConst.red),
        foregroundColor: ColorConst.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: ColorConst.white,
      suffixIconColor: ColorConst.orange,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      labelStyle:
          AppTextTheme.titleMedium.copyWith(color: ColorConst.lightBrown),
    ),
    useMaterial3: true,
    extensions: <ThemeExtension<dynamic>>[AppColorScheme.lightOrange],
  );
}
