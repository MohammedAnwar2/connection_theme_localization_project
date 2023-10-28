import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_localization_project/constants/Themes.dart';
import 'package:theme_localization_project/core/controllers/ThemeController.dart';

class ChangeTheme
{
  Widget darkMode()=>DarkThemeButton();
  Widget lightMode()=>LightThemeButton();
}

class DarkThemeButton extends StatelessWidget {
  DarkThemeButton({super.key});
  final themeController = Get.find<ThemeController>();
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {
        themeController.changeTheme(Themes().darkTheme);
        themeController.changeThemeMode(ThemeMode.dark);
        themeController.saveTheme(true);
        themeController.isDark.value=true;
    }, child:  Text("6".tr));
  }
}


class LightThemeButton extends StatelessWidget {
  LightThemeButton({super.key});
  final themeController = Get.find<ThemeController>();
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {
        themeController.changeTheme(Themes().lightTheme);
        themeController.changeThemeMode(ThemeMode.light);
        themeController.saveTheme(false);
        themeController.isDark.value=false;
    }, child: Text("7".tr));
  }
}
