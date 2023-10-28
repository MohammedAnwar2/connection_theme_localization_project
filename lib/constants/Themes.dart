import 'package:flutter/material.dart';
import 'package:theme_localization_project/constants/textThemeConstants.dart';
import 'colorConstants.dart';

class Themes {
    ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: Colors.greenAccent,
    elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.orangeAccent))),
    appBarTheme: const AppBarTheme(color: Colors.brown),
    colorScheme: AppColorScheme().colorSchemeLightMode,
    textTheme: AppTextTheme().textThemeForLightTheme,
    primaryTextTheme: AppTextTheme().textThemeForLightTheme,
  );

   ThemeData darkTheme = ThemeData.dark().copyWith(
      appBarTheme: const AppBarTheme(color: Colors.yellowAccent),
      elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.purpleAccent))),
      scaffoldBackgroundColor: Colors.green,
      colorScheme: AppColorScheme().colorSchemeDarkMode,
      textTheme: AppTextTheme().textThemeForDarkTheme,
      primaryTextTheme: AppTextTheme().textThemeForDarkTheme,
  );
}
/*import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
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
    ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: Colors.greenAccent,
    elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.orangeAccent))),
    appBarTheme: const AppBarTheme(color: Colors.brown),
    colorScheme: AppColorScheme().colorSchemeLightMode,
/*      textTheme: AppTextTheme().textThemeForLightTheme,
    primaryTextTheme: AppTextTheme().textThemeForLightTheme,*/
    textTheme: TextTheme(
        displayLarge:  GoogleFonts.acme(color: Colors.pink,fontSize: 25.sp,fontWeight: FontWeight.bold),
        displayMedium:  GoogleFonts.acme(color: Colors.black87,fontSize: 20.sp,fontWeight: FontWeight.bold),
        displaySmall:  GoogleFonts.acme(color: Colors.yellowAccent,fontSize: 30.sp),
    )

  );

   ThemeData darkTheme = ThemeData.dark().copyWith(
      appBarTheme: const AppBarTheme(color: Colors.yellowAccent),
      elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.purpleAccent))),
      scaffoldBackgroundColor: Colors.green,
      colorScheme: AppColorScheme().colorSchemeDarkMode,
/*       textTheme: AppTextTheme().textThemeForDarkTheme,
    primaryTextTheme: AppTextTheme().textThemeForDarkTheme,*/
       textTheme: TextTheme(
         displayLarge:  GoogleFonts.acme(color: Colors.black,fontSize: 25.sp,fontWeight: FontWeight.bold),
         displayMedium:  GoogleFonts.acme(color: Colors.deepOrange,fontSize: 20.sp,fontWeight: FontWeight.bold),
         displaySmall:  GoogleFonts.acme(color: Colors.yellowAccent,fontSize: 30.sp),
       )
  );
}*/