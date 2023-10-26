import 'package:flutter/material.dart';

class AppColorScheme
{
  ColorScheme colorSchemeLightMode =const ColorScheme.light(
    primary: AppColorsLightTheme.lavender,
    secondary: AppColorsLightTheme.spaceBlue,
    onSecondary: AppColorsLightTheme.babyPink,
    background: AppColorsLightTheme.babyPink,
  );
  ColorScheme colorSchemeDarkMode =const ColorScheme.dark(
    primary: AppColorsDarkTheme.white,
    secondary: AppColorsDarkTheme.burgundy,
    onSecondary: AppColorsDarkTheme.spaceCadet,
    background: AppColorsDarkTheme.spaceCadet,
  );
}

class AppColorsDarkTheme {
  // Dark Theme colors
  static const Color darkGrey = Color(0xff303041);
  static const Color lightGrey = Color(0xFF3D3A50);
  static const Color white = Color(0xFF0EA2F6);
  static const Color burgundy = Color(0xFF880d1e);
  static const Color spaceCadet = Color(0xFFF4FCFE);

}

class AppColorsLightTheme {
  // Light Theme Colors
  static const Color babyPink = Color(0xFFFECEE9);
  static const Color lavender = Color(0xFFEB9FEF);
  static const Color gunMetal = Color(0xFF545677);
  static const Color spaceBlue = Color(0xFF03254E);
  static const Color darkBlue = Color(0xFF011C27);
}