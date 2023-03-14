import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goodtunnels/ModelHelpers/SharedMHelpers/subcommit_mh.dart';

class CommitInfoScController extends GetxController {
  late List<SubCommitmentMH> subcomitmentList;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  fetchData() async {
    subcomitmentList =
        await SubCommitmentMH().getSubCommitByReqNo(Get.arguments.reqNo);
  }
}
