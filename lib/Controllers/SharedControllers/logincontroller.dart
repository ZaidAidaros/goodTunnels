import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Core/Constants/Pages/getpages.dart';
import '../../Core/Services/settingservices.dart';

class LoginContorller extends GetxController {
  TextEditingController userNameTextController = TextEditingController();
  TextEditingController userPassTextController = TextEditingController();


  login() async {
    await Get.find<SettingServices>()
        .login(
      userNameTextController.text,
      userPassTextController.text,
    )
        .then((value) {
      if (value == true) {
        Get.offAllNamed(AppPages.homePage);
      } else {
        Get.defaultDialog(
          title: "Error:",
          middleText: "User Name Or Passowrd is wrong",
        );
      }
    });
  }
}
