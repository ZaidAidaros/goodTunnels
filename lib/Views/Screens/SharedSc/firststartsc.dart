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
      body: GetBuilder<FirstStartController>(
        init: FirstStartController(),
        builder: (controller) => SizedBox(
          height: Get.height,
          width: Get.width,
          child: Column(children: [
            const AssetImageWidget(image: "images/logo.png"),
            BigButtonWidget(
              title: "الفرع الرئيسي",
              onTap:()=> controller.nextPageAsCen(),
            ),
            BigButtonWidget(
              title: "فرع",
              onTap:()=>  controller.nextPageAsDeCen(),
            )
          ]),
        ),
      ),
    );
  }
}
