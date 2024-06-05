import 'package:flutter/material.dart';
import 'package:theme_changing/util/constants.dart';

class AppColorScheme extends ThemeExtension<AppColorScheme> {
  final Color textFieldInitColor;
  final Color radioListColor;
  final Color saveColor;
  final Color secondaryTextColor;
  final Color dropBackgroundColor;

  AppColorScheme(
      {required this.textFieldInitColor,
      required this.radioListColor,
      required this.saveColor,
      required this.secondaryTextColor,
      required this.dropBackgroundColor});

  @override
  ThemeExtension<AppColorScheme> copyWith({
    Color? textFieldInitColor,
    Color? radioListColor,
    Color? saveColor,
    Color? secondaryTextColor,
    Color? dropBackgroundColor,
  }) {
    return AppColorScheme(
        textFieldInitColor: textFieldInitColor ?? this.textFieldInitColor,
        radioListColor: radioListColor ?? this.radioListColor,
        saveColor: saveColor ?? this.saveColor,
        secondaryTextColor: secondaryTextColor ?? this.secondaryTextColor,
        dropBackgroundColor: dropBackgroundColor ?? this.dropBackgroundColor);
  }

  @override
  ThemeExtension<AppColorScheme> lerp(
    ThemeExtension<AppColorScheme>? other,
    double t,
  ) {
    if (other is! AppColorScheme) {
      return this;
    }
    return AppColorScheme(
      textFieldInitColor:
          Color.lerp(textFieldInitColor, other.textFieldInitColor, t)!,
      radioListColor: Color.lerp(radioListColor, other.radioListColor, t)!,
      saveColor: Color.lerp(saveColor, other.saveColor, t)!,
      secondaryTextColor:
          Color.lerp(secondaryTextColor, other.secondaryTextColor, t)!,
      dropBackgroundColor:
          Color.lerp(dropBackgroundColor, other.dropBackgroundColor, t)!,
    );
  }

  static final light = AppColorScheme(
    textFieldInitColor: ColorConst.darkGrey,
    radioListColor: ColorConst.darkGrey,
    saveColor: ColorConst.lightGreen,
    secondaryTextColor: ColorConst.grey,
    dropBackgroundColor: ColorConst.lightSilver,
  );

  static final lightBlue = AppColorScheme(
    textFieldInitColor: ColorConst.darkBlue,
    radioListColor: ColorConst.black,
    saveColor: ColorConst.blue,
    secondaryTextColor: ColorConst.lightBlue,
    dropBackgroundColor: ColorConst.blueLight,
  );

  static final lightOrange = AppColorScheme(
    textFieldInitColor: ColorConst.darkBrown,
    radioListColor: ColorConst.black,
    saveColor: ColorConst.orange,
    secondaryTextColor: ColorConst.lightBrown,
    dropBackgroundColor: ColorConst.paleIvory,
  );

  static final dark = AppColorScheme(
    textFieldInitColor: ColorConst.white,
    radioListColor: ColorConst.white,
    saveColor: ColorConst.lightGreen,
    secondaryTextColor: ColorConst.grey,
    dropBackgroundColor: ColorConst.charcoalGrey,
  );

  static final darkBlue = AppColorScheme(
    textFieldInitColor: ColorConst.white,
    radioListColor: ColorConst.white,
    saveColor: ColorConst.blue,
    secondaryTextColor: ColorConst.lightBlue,
    dropBackgroundColor: ColorConst.greyBlue,
  );

  static final darkOrange = AppColorScheme(
    textFieldInitColor: ColorConst.white,
    radioListColor: ColorConst.white,
    saveColor: ColorConst.orange,
    secondaryTextColor: ColorConst.lightBrown,
    dropBackgroundColor: ColorConst.mochaBrown,
  );
}
