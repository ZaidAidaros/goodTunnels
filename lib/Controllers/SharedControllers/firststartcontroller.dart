import 'package:get/get.dart';
import 'package:goodtunnels/Core/Services/settingservices.dart';
import 'package:goodtunnels/Views/Screens/Auth/loginsc.dart';

class FirstStartController extends GetxController {



  //
  nextPageAsCen() {
    Get.defaultDialog(
        title: "Worring:",
        middleText: "Are Sure ,you are center",
        onConfirm: () async {
          bool ok = await SettingServices().storeBool("isCen", true);
          if (ok) {
            Get.offAll(const LogInSc());
          } else {}
        },
        onCancel: () {},
        barrierDismissible: false);
  }

  nextPageAsDeCen() {
    Get.defaultDialog(
        title: "Worring:",
        middleText: "Are Sure",
        onConfirm: () async {
          bool ok = await SettingServices().storeBool("isCen", true);
          if (ok) {
            Get.offAll(const LogInSc());
          } else {}
        },
        onCancel: () {},
        barrierDismissible: false);
  }
}
