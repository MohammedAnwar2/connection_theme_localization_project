import 'package:get/get.dart';
import 'package:theme_localization_project/components/routes/appRoutes.dart';
import 'package:theme_localization_project/screens/HomePage.dart';

List<GetPage<dynamic>> route = [
  GetPage(name: AppRoute.HomePage,page: () => HomePage(),),
];


