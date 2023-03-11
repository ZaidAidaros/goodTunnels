import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:goodtunnels/Core/Functions/format.dart';
import 'package:goodtunnels/Core/Functions/recivesms.dart';
import 'package:goodtunnels/Core/Functions/tashfeer.dart';
import 'package:goodtunnels/ModelHelpers/CentMHelpers/org_mh.dart';
import 'package:goodtunnels/ModelHelpers/SharedMHelpers/commitment_mh.dart';
import 'package:goodtunnels/ModelHelpers/SharedMHelpers/subcommit_mh.dart';
import 'package:goodtunnels/Models/Decenteral/orguserm.dart';
import 'package:telephony/telephony.dart';
import '../../ModelHelpers/CentMHelpers/user_mh.dart';
import '../../ModelHelpers/DecenMHelpers/orguser_mh.dart';
import '../../Models/Centeral/userm.dart';
import '../Constants/Pages/getpages.dart';
import '../Constants/opcodeconst.dart';

// init setting services
Future initServices() async {
  await GetStorage.init();
  Get.put(() => SettingServices(), permanent: true);
  receiveSmsListener();
}

class SettingServices extends GetxService {
  final box = GetStorage();
  UserM? userM;
  OrgUserM? orgUserM;

  storeIsCen(bool value) async {
    await box.write("isCen", value);
  }

  getIsCen() {
    return box.read("isCen");
  }

///////////////////////////
  Future<bool> login(String name, String password) async {
    if (getIsCen()) {
      AppPages.homePage = AppPages.cenHome;
      return await UserMH().logIn(name, password);
    } else {
      AppPages.homePage = AppPages.brancheHome;
      return await OrgUserMH().logIn(name, password);
    }
  }

  onReciveSMS(SmsMessage message) {
    if (getIsCen()) {
      onReciveSMSAsCen(message);
    } else {
      onReciveSMSAsDecen(message);
    }
  }

  onReciveSMSAsCen(SmsMessage message) async {
    await OrganizationMH().getOrgByPhone(message.address!).then((value) {
      if (value != null) {
        String msg = Tashfeer().detashfeer(message.body!, value.k!, value.iv!);
        _responseOp(msg);
      }
    });
  }

  onReciveSMSAsDecen(SmsMessage message) async {
    if (message.address == orgUserM!.orgTargetPhone!) {
      String msg = Tashfeer()
          .detashfeer(message.body!, orgUserM!.tashK!, orgUserM!.tashik!);
      _responseOp(msg);
    }
  }

  // listene to coming sms in background
  static onBackgroundReceiveHandeler(SmsMessage message) {}

  _responseOp(String msg) async {
    if (msg[0] == msg[msg.length - 1]) {
      switch (msg[0]) {
        case OpCodesConst.commit:
          await CommitmentMH().newCommitment(deFormatSMSToCommit(msg));
          break;
        case OpCodesConst.respCommit:
          await CommitmentMH()
              .updateCommitment(deFormatSMSResponseToCommit(msg));
          break;
        case OpCodesConst.subcommit:
          await SubCommitmentMH().newSubCommitment(deFormatSMSToSubCommit(msg));
          break;
        case OpCodesConst.respSubcommit:
          SubCommitmentMH()
              .updateSubCommitment(deFormatSMSResponseSubCommit(msg));
          break;
      }
    }
  }
}
