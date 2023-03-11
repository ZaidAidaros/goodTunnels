import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goodtunnels/Controllers/SharedControllers/logincontroller.dart';
import 'package:goodtunnels/Views/Widgets/bigbuttonw.dart';

import 'logininputw.dart';

class LogInSc extends StatelessWidget {
  const LogInSc({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginContorller>(
      init: LoginContorller(),
      builder: (controller) => Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          body: Center(
            child: Container(
              padding: const EdgeInsets.only(top: 25),
              width: Get.width,
              height: Get.height,
              child: SingleChildScrollView(
                child: Stack(children: [
                  Container(
                    margin:const EdgeInsets.only(top: 15),
                    height: Get.height,
                    width: Get.width,
                    child: const DecoratedBox(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/login.png"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.only(top: 200),
                      padding: const EdgeInsets.all(20),
                      child: Form(
                          child: Column(
                        children: [
                          const Text(
                            "تسجيل الدخول",
                            style: TextStyle(
                                fontSize: 50,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          // inputs log
                          LogInputWidget(
                            useNameTEController:
                                controller.userNameTextController,
                            usePasswordTEController:
                                controller.userPassTextController,
                          ),
                          BigButtonWidget(
                            title: "تسجيل الدخول",
                            onTap: () => controller.login(),
                          )
                        ],
                      )),
                    ),
                  ),
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
