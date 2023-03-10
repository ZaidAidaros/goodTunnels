import 'package:get/get.dart';
import 'package:goodtunnels/Core/Constants/CenConst/user_const.dart';
import 'package:goodtunnels/Core/Services/dbhelper.dart';
import 'package:goodtunnels/Core/Services/settingservices.dart';
import 'package:goodtunnels/Models/Centeral/userm.dart';

class UserMH {
  DBHelper dbHelper = DBHelper();

  createOrganization(UserM userM) {
    dbHelper.insertData(UserConstants.userTName, userM.toMap());
  }

  updateOrganization(UserM userM) {
    dbHelper.upDateData(UserConstants.userTName, userM.toMap(),
        UserConstants.columUId, userM.toMap()[UserConstants.columUId]);
  }

  getAllUsers() async {
    List<UserM> list = [];
    await dbHelper.getData(UserConstants.userTName).then((value) {
      for (var element in value) {
        list.add(UserM.fromMap(element));
      }
    });
    return list;
  }

  Future<UserM?> getUser(int userId) async {
    UserM? userM;
    await dbHelper
        .getDataOne(UserConstants.userTName, UserConstants.columUId, userId)
        .then((value) {
      userM = UserM.fromMap(value);
    });
    return userM;
  }

  Future<bool> logIn(String name, String password) async {
    return await dbHelper
        .getDataWhereWithAnd(
      UserConstants.userTName,
      UserConstants.columName,
      UserConstants.columPass,
      name,
      password,
    )
        .then(
      (value) {
        if (value.isNotEmpty) {
          UserM userM = UserM.fromMap(value.first);
          if (userM.id == 1 && userM.orgCode == 1) {
            Get.find<SettingServices>().userM = userM;
            return true;
          } else {
            return false;
          }
        } else {
          return false;
        }
      },
    );
  }
}
