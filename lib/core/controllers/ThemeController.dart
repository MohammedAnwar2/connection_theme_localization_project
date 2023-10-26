import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:theme_localization_project/core/services/StorageServices.dart';

class ThemeController extends GetxController {
  final _key = 'isDarkMode';
  RxBool isDark =false.obs;
  ThemeMode get theme => _loadTheme() ? ThemeMode.dark : ThemeMode.light;
  bool _loadTheme() => SettingServices.initServices.read(_key) ?? false;
  void saveTheme(bool isDarkMode) => SettingServices.initServices.write(_key, isDarkMode);
  void changeTheme(ThemeData theme) => Get.changeTheme(theme);
  void changeThemeMode(ThemeMode themeMode) => Get.changeThemeMode(themeMode);
}