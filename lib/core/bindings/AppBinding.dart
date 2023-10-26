import 'package:get/get.dart';
import 'package:theme_localization_project/core/controllers/LocalizationController.dart';
import 'package:theme_localization_project/core/controllers/ThemeController.dart';
import 'package:theme_localization_project/core/services/StorageServices.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(()=> SettingServices());
    Get.lazyPut(()=> ThemeController());
    Get.lazyPut(()=> MyLanguageController());
  }
}