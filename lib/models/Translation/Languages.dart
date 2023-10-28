import 'package:get/get.dart';
import 'package:theme_localization_project/models/Translation/Arabic_Language_Translation.dart';
import 'package:theme_localization_project/models/Translation/English_Language_Translation.dart';

class LocalizationModel extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        "ar": ar,
        "en": en,
      };
}


