import 'package:get/get.dart';

class LocalizationModel extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        "ar": ar,
        "en": en,
      };
}

Map<String, String> ar = {
  "1": "الصفحة الرئيسة",
  "2": "عربي",
  "3": "انجليزي",
  "4": "غير وضع الجوال",
  "5": "غير لغة الجوال",
  "6": "الوضع الداكن",
  "7": "الوضع المشرق",
  "8": "حالة الاتصال بالانترنت",
  "9": "متصل",
  "10": "غير متصل",
};

Map<String, String> en = {
  "1": "Home Page",
  "2": "Arabic",
  "3": "English",
  "4": "Change The Theme Of App",
  "5": "Change The Language Of App",
  "6": "Dark Theme",
  "7": "Light Theme",
  "8": "Internet Status",
  "9": "Connected",
  "10": "Not Connected",
};
