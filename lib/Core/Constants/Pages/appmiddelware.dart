import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goodtunnels/Core/Services/settingservices.dart';

import 'getpages.dart';

class AppMiddelWare extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    if (Get.find<SettingServices>().getBool("isCen") == null) {
      return const RouteSettings(name: AppPages.firststartPage);
    } else {
      Get.find<SettingServices>().isCen =
          Get.find<SettingServices>().getBool("isCen")!;
      return const RouteSettings(name: AppPages.loginPage);
    }
  }
}
