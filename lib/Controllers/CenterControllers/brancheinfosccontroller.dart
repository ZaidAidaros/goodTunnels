import 'package:get/get.dart';
import 'package:goodtunnels/Models/Centeral/organizationm.dart';

class BrancheInfoScController extends GetxController {
  late OrganizationM organizationM;

  @override
  void onInit() {
    organizationM = Get.arguments;
    super.onInit();
  }
}
