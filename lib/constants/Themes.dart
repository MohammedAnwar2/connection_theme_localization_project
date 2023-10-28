import 'package:flutter/material.dart';
import 'package:theme_localization_project/constants/textThemeConstants.dart';
import 'colorConstants.dart';

/*
final ThemeData appTheme = ThemeData.dark().copyWith(
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    displayMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    bodyLarge: TextStyle(fontSize: 16, color: Colors.black),
    bodyMedium: TextStyle(fontSize: 14, color: Colors.grey),
  ),
);
*/

class Themes {
  static final lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: Colors.greenAccent,
    elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.orangeAccent))),
    appBarTheme: const AppBarTheme(color: Colors.brown),
    colorScheme: AppColorScheme().colorSchemeLightMode,
      textTheme: AppTextTheme().textThemeForLightTheme,
    primaryTextTheme: AppTextTheme().textThemeForLightTheme,

  );

  static final darkTheme = ThemeData.dark().copyWith(
      appBarTheme: const AppBarTheme(color: Colors.yellowAccent),
      elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.purpleAccent))),
      scaffoldBackgroundColor: Colors.green,
      colorScheme: AppColorScheme().colorSchemeDarkMode,
       textTheme: AppTextTheme().textThemeForDarkTheme,
    primaryTextTheme: AppTextTheme().textThemeForDarkTheme,
  );
}