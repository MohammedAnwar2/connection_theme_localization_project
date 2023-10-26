import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_localization_project/core/controllers/LocalizationController.dart';

class ChangeLanguage
{
  final  language;
  final nameOfLanhuage;
  ChangeLanguage({required this.language,required this.nameOfLanhuage});
  Widget arabic()=>ArabicLanguage(language: language, nameOfLanguage: nameOfLanhuage);
  Widget english()=>EnglishLanguage(language: language, nameOfLanhuage: nameOfLanhuage);
}

class ArabicLanguage extends GetView<MyLanguageController> {
  const ArabicLanguage({super.key,required this.language,required this.nameOfLanguage});
   final String language;
   final nameOfLanguage;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {
      controller.language.value="arabic";
      controller.changeLangauge(language);
    }, child:  Text(nameOfLanguage));
  }
}

class EnglishLanguage extends GetView<MyLanguageController> {
  const EnglishLanguage({super.key,required this.language,required this.nameOfLanhuage});
   final String language;
   final nameOfLanhuage;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {
      controller.language.value="english";
      controller.changeLangauge(language);
    }, child:  Text(nameOfLanhuage));
  }
}

