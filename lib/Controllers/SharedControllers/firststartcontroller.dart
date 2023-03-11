import 'package:get/get.dart';
import 'package:goodtunnels/Core/Services/settingservices.dart';

import '../../Core/Constants/Pages/getpages.dart';

class FirstStartController extends GetxController {
  //
  nextPageAsCen() {
    Get.defaultDialog(
        title: "Worring:",
        middleText: "Are Sure ,you are center",
        onConfirm: () {
          Get.find<SettingServices>().storeIsCen(true);
          Get.offAllNamed(AppPages.logIn);
        },
        onCancel: () {},
        barrierDismissible: false);
  }

  nextPageAsDeCen() {
    Get.defaultDialog(
        title: "Worring:",
        middleText: "Are Sure",
        onConfirm: () async {
          Get.find<SettingServices>().storeIsCen(false);
          Get.offAllNamed(AppPages.logIn);
        },
        onCancel: () {},
        barrierDismissible: false);
  }
}
