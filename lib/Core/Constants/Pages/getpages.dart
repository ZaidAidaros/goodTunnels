import 'package:get/get.dart';
import 'package:goodtunnels/Views/Screens/Auth/loginsc.dart';
import 'package:goodtunnels/Views/Screens/CenterazionSc/centerhome.dart';
import 'package:goodtunnels/Views/Screens/DeCenterazionSc/decenterhome.dart';
import 'package:goodtunnels/Views/Screens/SharedSc/firststartsc.dart';

import 'appmiddelware.dart';

class AppPages {
  static const String loginPage = "/logInSc";
  static const String firststartPage = "firstStartSc";
  static const String cenHomePage = "/CenHomeSc";
  static const String deCenHomePage = "/DecenHomeSc";
  static  String homePage = "";

  static List<GetPage<dynamic>> getPages = [
    GetPage(
      name: firststartPage,
      page: () => const FirstStartSc(),
    ),
    GetPage(
      name: loginPage,
      page: () => const LogInSc(),
      middlewares: [AppMiddelWare()],
    ),
    GetPage(
      name: cenHomePage,
      page: () => const CenterHomeSc(),
    ),
    GetPage(
      name: deCenHomePage,
      page: () => const DecenterHomeSc(),
    ),
  ];
}
