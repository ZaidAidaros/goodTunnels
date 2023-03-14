import 'package:get/get.dart';
import 'package:goodtunnels/Views/Screens/Auth/loginsc.dart';
import 'package:goodtunnels/Views/Screens/CenterazionSc/brancheinfosc.dart';
import 'package:goodtunnels/Views/Screens/CenterazionSc/branchesettingsc.dart';
import 'package:goodtunnels/Views/Screens/CenterazionSc/branchessc.dart';
import 'package:goodtunnels/Views/Screens/CenterazionSc/censettingsc.dart';
import 'package:goodtunnels/Views/Screens/CenterazionSc/centerhome.dart';
import 'package:goodtunnels/Views/Screens/CenterazionSc/incomingreqsc.dart';
import 'package:goodtunnels/Views/Screens/CenterazionSc/newbranchesc.dart';
import 'package:goodtunnels/Views/Screens/CenterazionSc/newprojectsc.dart';
import 'package:goodtunnels/Views/Screens/DeCenterazionSc/commitinfosc.dart';
import 'package:goodtunnels/Views/Screens/DeCenterazionSc/branchehomesc.dart';
import 'package:goodtunnels/Views/Screens/DeCenterazionSc/newcommitsc.dart';
import 'package:goodtunnels/Views/Screens/DeCenterazionSc/newsubcommitsc.dart';
import 'package:goodtunnels/Views/Screens/SharedSc/firststartsc.dart';

import '../../../Views/Screens/SharedSc/commitmentssc.dart';
import 'appmiddelware.dart';

class AppPages {
  // shared
  static const String logIn = "/logInSc";
  static const String firstStart = "/firstStartSc";
  static String homePage = "";

  // as center
  static const String cenHome = "/CenHomeSc";
  static const String incommingReq = "/incomigReqSc";
  //
  static const String branches = "/branchesSc";
  static const String brancheInfo = "/brancheInfoSc";
  static const String brancheSetting = "/brancheSettingSc";
  static const String newBranche = "/newBrancheSc";
  static const String newProject = "/newProjectSc";
  //
  static const String cenSettings = "/cenSettingsSc";

  // as branch
  static const String brancheHome = "/brancheHomeSc";
  static const String newCommitment = "/newCommitmentSc";
  static const String commitments = "/commitmentsSc";
  static const String commitmentInfo = "/commitmentInfoSc";
  static const String newSubCommitment = "/newSubCommitmentSc";

  static const String settings = "/settingsSc";

  static List<GetPage<dynamic>> getPages = [
    // shared
    GetPage(
      name: firstStart,
      page: () => const FirstStartSc(),
    ),
    GetPage(
      name: logIn,
      page: () => const LogInSc(),
      middlewares: [AppMiddelWare()],
    ),

    // as center
    GetPage(
      name: cenHome,
      page: () => const CenterHomeSc(),
    ),
    GetPage(
      name: incommingReq,
      page: () => const InCommingReqSc(),
    ),
    GetPage(
      name: branches,
      page: () => const BranchesSc(),
    ),
    GetPage(
      name: brancheInfo,
      page: () => const BrancheInfoSc(),
    ),
    GetPage(
      name: brancheSetting,
      page: () => const BrancheSettingSc(),
    ),
    GetPage(
      name: newBranche,
      page: () => const NewBrancheSc(),
    ),
    GetPage(
      name: newProject,
      page: () => const NewProjectSc(),
    ),
    GetPage(
      name: cenSettings,
      page: () => const CenSettingSc(),
    ),

    // as branch
    GetPage(
      name: brancheHome,
      page: () => const BrancheHomeSc(),
    ),
    GetPage(
      name: newCommitment,
      page: () => const NewCommitSc(),
    ),
    GetPage(
      name: commitments,
      page: () => const CommitmentsSc(),
    ),
    GetPage(
      name: commitmentInfo,
      page: () => const CommitInfoSc(),
    ),
    GetPage(
      name: newSubCommitment,
      page: () => const NewSubCommitSc(),
    ),
    GetPage(
      name: settings,
      page: () => const CenterHomeSc(),
    ),
  ];
}
