import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goodtunnels/Core/Services/settingservices.dart';

import 'getpages.dart';

class AppMiddelWare extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    if (Get.find<SettingServices>().getIsCen() == null) {
      return const RouteSettings(name: AppPages.firstStart);
    }
    return null;
  }
}
