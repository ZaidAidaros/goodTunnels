import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goodtunnels/Controllers/SharedControllers/firststartcontroller.dart';
import '../../Widgets/assetimagew.dart';
import '../../Widgets/bigbuttonw.dart';

class FirstStartSc extends StatelessWidget {
  const FirstStartSc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: DecoratedBox(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/backgroung.png"), fit: BoxFit.cover),
          ),
          child: GetBuilder<FirstStartController>(
            builder: (controller) => Column(children: [
              const AssetImageWidget(image: "images/logo.png"),
              BigButtonWidget(
                title: "الفرع الرئيسي",
                onTap: controller.nextPageAsCen(),
              ),
              BigButtonWidget(
                title: "فرع",
                onTap: controller.nextPageAsDeCen(),
              )
            ]),
          )),
    );
  }
}
