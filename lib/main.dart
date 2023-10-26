import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:theme_localization_project/components/routes/routes.dart';
import 'package:theme_localization_project/constants/Themes.dart';
import 'package:theme_localization_project/core/bindings/AppBinding.dart';
import 'package:theme_localization_project/core/controllers/LocalizationController.dart';
import 'package:theme_localization_project/core/controllers/ThemeController.dart';
import 'package:theme_localization_project/core/services/StorageServices.dart';
import 'package:theme_localization_project/models/TranslationModel.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Get.putAsync(() async => SettingServices().init());
  HomeBinding().dependencies();
   runApp(MyApp());
}
class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final themeController = Get.find<ThemeController>();
  MyLanguageController loacal = Get.find();
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: child,
          theme: Themes.lightTheme,
          darkTheme: Themes.darkTheme ,
          themeMode: themeController.theme,
          initialRoute: "/",
          locale:loacal.local ,
          translations: LocalizationModel(),
          initialBinding: HomeBinding(),
          getPages: route,
        );
      },
    );
  }
}