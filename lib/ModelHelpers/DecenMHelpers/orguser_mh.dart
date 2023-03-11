import 'package:get/get.dart';
import 'package:goodtunnels/Core/Services/settingservices.dart';

import '../../Core/Constants/DecenConst/orguserconst.dart';
import '../../Core/Services/dbhelper.dart';
import '../../Models/Decenteral/orguserm.dart';

class OrgUserMH {
  final DBHelper _dbHelper = DBHelper();


  insertSetting(OrgUserM settingsM) {
    _dbHelper.insertData(OrgUserConst.orguserTName, settingsM.toMap());
  }

  updateSetting(OrgUserM settingsM, String updateColum) {
    _dbHelper.upDateData(
        OrgUserConst.orguserTName,
        settingsM.toMap(),
        OrgUserConst.columOrgName,
        settingsM.toMap()[OrgUserConst.columOrgCode]);
  }

  Future<List<OrgUserM>> getAllOrgUsers() async {
    List<OrgUserM> list = [];
    await _dbHelper.getData(OrgUserConst.orguserTName).then((value) {
      for (var element in value) {
        list.add(OrgUserM.fromMap(element));
      }
    });
    return list;
  }


  Future<bool> logIn(String name, String password) async {
    return await _dbHelper
        .getDataWhereWithAnd(
            OrgUserConst.orguserTName,
            OrgUserConst.columOrgUName,
            OrgUserConst.columOrgUPass,
            name,
            password)
        .then(
      (value) {
        if (value.isNotEmpty) {
          OrgUserM user = OrgUserM.fromMap(value.first);
          Get.find<SettingServices>().orgUserM = user;
          return true;
        } else {
          return false;
        }
      },
    );
  }
}
