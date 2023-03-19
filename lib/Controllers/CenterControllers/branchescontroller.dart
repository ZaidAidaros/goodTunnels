import 'package:get/get.dart';
import 'package:goodtunnels/Core/Constants/Pages/getpages.dart';
import 'package:goodtunnels/ModelHelpers/CentMHelpers/org_mh.dart';
import 'package:goodtunnels/Models/Centeral/organizationm.dart';

class BranchesScController extends GetxController {
  List<OrganizationM> orgList = [];

  @override
  void onInit() {
    super.onInit();
  }

  fetchData() async {
    orgList = await OrganizationMH().getAllOrg();
  }

  goToBranchinfo(OrganizationM org) {
    Get.toNamed(AppPages.brancheInfo, arguments: org);
  }
}
