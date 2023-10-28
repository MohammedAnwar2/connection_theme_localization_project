import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:google_fonts/google_fonts.dart';
//you can use GoogleFonts.acme(); instead of  TextStyle()
// how to call these in Text ===> Text(“Your Text”,style: Theme.of(context).textTheme.title);
class AppTextTheme {
    TextTheme textThemeForLightTheme = TextTheme(
    displayLarge: AppTextStyleLightMode().A,
    displayMedium: AppTextStyleLightMode().B,
    displaySmall: AppTextStyleLightMode().C,
  );
    TextTheme textThemeForDarkTheme = TextTheme(
    displayLarge: AppTextStyleDarkMode().A,
    displayMedium: AppTextStyleDarkMode().B,
    displaySmall: AppTextStyleDarkMode().C,
  );
}

class AppTextStyleLightMode{
  TextStyle A =  GoogleFonts.acme(color: Colors.pink,fontSize: 25.sp,fontWeight: FontWeight.bold);
  TextStyle B =  GoogleFonts.acme(color: Colors.black87,fontSize: 20.sp,fontWeight: FontWeight.bold);
  TextStyle C =  GoogleFonts.acme(color: Colors.yellowAccent,fontSize: 30.sp);
}

class AppTextStyleDarkMode{
  TextStyle A =  GoogleFonts.acme(color: Colors.black,fontSize: 25.sp,fontWeight: FontWeight.bold);
  TextStyle B =  GoogleFonts.acme(color: Colors.deepOrange,fontSize: 20.sp,fontWeight: FontWeight.bold);
  TextStyle C =  GoogleFonts.acme(color: Colors.yellowAccent,fontSize: 30.sp);
}
