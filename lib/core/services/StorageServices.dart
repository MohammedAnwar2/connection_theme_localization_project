import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
class SettingServices extends GetxService
{
  static SettingServices initServices = Get.find();
  late SharedPreferences pref ;
  Future<SettingServices> init()async{
    pref = await SharedPreferences.getInstance();
    return this;
  }
  bool? read<T> (String key) {
    return pref.getBool(key);
  }
  void write(String key, dynamic value)
  {
    pref.setBool(key, value);
  }
}