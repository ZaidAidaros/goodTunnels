import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goodtunnels/Core/Functions/reqnogenerator.dart';
import 'package:goodtunnels/Core/Services/settingservices.dart';
import 'package:goodtunnels/Models/SharedModels/commitment.dart';

import '../../ModelHelpers/SharedMHelpers/commitment_mh.dart';

class NewCommitController extends GetxController {
  TextEditingController adminUintTextEController = TextEditingController();
  TextEditingController authEntityTextEController = TextEditingController();
  TextEditingController authOfficerTextEController = TextEditingController();
  TextEditingController forDurationTextEController = TextEditingController();

  onSubmitCommit() async {
    try {
      await CommitmentMH()
          .newCommitment(CommitmentM(
            requestNo:
                generateReqNo(Get.find<SettingServices>().orgUserM!.orgCode!),
            adminUint: adminUintTextEController.text,
            authEntity: authEntityTextEController.text,
            authOfficer: authOfficerTextEController.text,
            forDuration: forDurationTextEController.text,
            submitDate: formateDate(DateTime.now()),
          ))
          .then((value) {
            //SmsHelper().sendSmsMsg(, )
          });
    } on Exception catch (e) {
      Get.defaultDialog(middleText: e.toString());
    }
  }
}
