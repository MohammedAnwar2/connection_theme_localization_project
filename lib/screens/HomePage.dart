import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:theme_localization_project/components/widgets/CustomChangeLanguageButtonWidget.dart';
import 'package:theme_localization_project/components/widgets/CustomChangeThemeButtonWidget.dart';
import 'package:theme_localization_project/components/widgets/CustomContainer.dart';
import 'package:theme_localization_project/components/widgets/textTitle.dart';
import 'package:theme_localization_project/core/controllers/LocalizationController.dart';
import 'package:theme_localization_project/core/controllers/ThemeController.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});
   final themeController = Get.find<ThemeController>();
   final localController = Get.find<MyLanguageController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('1'.tr, style: Theme.of(context).textTheme.displayMedium),
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.only(top: 10.h),
        child: SizedBox(
            width: Get.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextTile(text: "4".tr,),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ChangeTheme().lightMode(),
                    ChangeTheme().darkMode(),
                  ],
                ),
                SizedBox(
                  height: 50.h,
                ),
                CustomContainer(widget:Obx(()=>themeController.isDark.value? Text("6".tr): Text("7".tr))),
                SizedBox(
                  height: 50.h,
                ),
                TextTile(text: "5".tr,),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ChangeLanguage(language: "ar",nameOfLanhuage: "2".tr).arabic(),
                    ChangeLanguage(language: "en",nameOfLanhuage: "3".tr).english()
                  ],
                ),
                 SizedBox(
                  height: 50.h,
                ),
                CustomContainer(widget:Obx(() => localController.language == "arabic"? Text("2".tr): Text("3".tr))),
              ],
            )),
      ),
    );
  }
}
