import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_localization_project/core/services/StorageServices.dart';

class MyLanguageController extends GetxController {
  RxString language ="".obs;
  Locale local = SettingServices.initServices.pref.getString("lang") == null? Get.deviceLocale!: Locale(SettingServices.initServices.pref.getString("lang")!);
  changeLangauge(String lang) {
    local = Locale(lang);
    SettingServices.initServices.pref.setString("lang", lang);
    Get.updateLocale(local);
  }
  @override
  void onInit() {
    language.value = SettingServices.initServices.pref.getString("lang") == "ar"?"arabic".tr:"english".tr;
    super.onInit();
  }
}
