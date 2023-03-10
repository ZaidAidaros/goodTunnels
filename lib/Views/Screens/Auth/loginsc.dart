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
      builder: (controller) => Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          body: DecoratedBox(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/login.png"), fit: BoxFit.cover),
            ),
            child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: ListView(
                  padding: const EdgeInsets.only(bottom: 180),
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 200),
                          child: const Text(
                            "تسجيل الدخول",
                            style: TextStyle(
                                fontSize: 50,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(50),
                          child: Form(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // inputs log
                              LogInputWidget(
                                useNameTEController:
                                    controller.userNameTextController,
                                usePasswordTEController:
                                    controller.userPassTextController,
                              ),
                              BigButtonWidget(
                                title: "تسجيل الدخول",
                                onTap: controller.onLogin(),
                              )
                            ],
                          )),
                        ),
                      ],
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
