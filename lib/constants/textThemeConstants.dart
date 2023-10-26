import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
//import 'package:google_fonts/google_fonts.dart';
//you can use GoogleFonts.acme(); instead of  TextStyle()
// how to call these in Text ===> Text(“Your Text”,style: Theme.of(context).textTheme.title);
class AppTextTheme {

  static  TextTheme textThemeForLightTheme = TextTheme(
    displayLarge: AppTextStyleLightMode().A,
    displayMedium: AppTextStyleLightMode().B,
    displaySmall: AppTextStyleLightMode().C,
  );
  static  TextTheme textThemeForDarkTheme = TextTheme(
    displayLarge: AppTextStyleDarkMode().A,
    displayMedium: AppTextStyleDarkMode().B,
    displaySmall: AppTextStyleDarkMode().C,
  );
}

class AppTextStyleLightMode{
  TextStyle A =  TextStyle(color: Colors.pink,fontSize: 25.sp,fontWeight: FontWeight.bold);
  TextStyle B =  TextStyle(color: Colors.black87,fontSize: 20.sp,fontWeight: FontWeight.bold);
  TextStyle C =  TextStyle(color: Colors.yellowAccent,fontSize: 30.sp);
}

class AppTextStyleDarkMode{
  TextStyle A =  TextStyle(color: Colors.black,fontSize: 25.sp,fontWeight: FontWeight.bold);
  TextStyle B =  TextStyle(color: Colors.deepOrange,fontSize: 20.sp,fontWeight: FontWeight.bold);
  TextStyle C =  TextStyle(color: Colors.yellowAccent,fontSize: 30.sp);
}
