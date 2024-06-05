import 'package:flutter/material.dart';

abstract class AppTextTheme {
  static const fontFamily = 'SF Pro Display';
  static const titleMedium = TextStyle(
      fontSize: 14, fontWeight: FontWeight.w400, fontFamily: fontFamily);
  static const bodyMedium = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontFamily: fontFamily,
  );
  static const labelLarge = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    fontFamily: fontFamily,
  );
}
