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
        builder: (controller) => Column(children: [
          const AssetImageWidget(image: "images/logo.png"),
          BigButtonWidget(
            title: "الفرع الرئيسي",
            onTap: () => controller.nextPageAsCen(),
          ),
          BigButtonWidget(
            title: "فرع",
            onTap: () => controller.nextPageAsDeCen(),
          )
        ]),
      ),
    );
  }
}

//  CommitmentWidget(
//                         commiReqNo: 577568856587,
//                         reqAdminUint: "Basel dkjhs",
//                         authEntity: "dssgsgsgsgfsd",
//                         authOfficer: "skdndskn",
//                         submitDate: "2023/20/11",
//                         forDuration: "1Q",
//                         onTap: () {
//                           Navigator.of(context)
//                               .pushReplacementNamed(AppPages.commitmentInfo);
//                         },
//                       ),