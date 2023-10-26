import 'package:flutter/material.dart';
import 'package:theme_localization_project/constants/textThemeConstants.dart';
import 'colorConstants.dart';

class Themes {
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.greenAccent,
    elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.orangeAccent))),
    appBarTheme: const AppBarTheme(color: Colors.brown),
    colorScheme: AppColorScheme().colorSchemeLightMode,
      textTheme: AppTextTheme.textThemeForLightTheme
  );

  static final darkTheme = ThemeData(
      appBarTheme: const AppBarTheme(color: Colors.yellowAccent),
      elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.purpleAccent))),
      scaffoldBackgroundColor: Colors.green,
      colorScheme: AppColorScheme().colorSchemeDarkMode,
       textTheme: AppTextTheme.textThemeForDarkTheme
  );
}