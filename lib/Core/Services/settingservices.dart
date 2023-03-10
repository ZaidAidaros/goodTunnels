import 'package:get/get.dart';
import 'package:goodtunnels/Models/Decenteral/orguserm.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../ModelHelpers/CentMHelpers/user_mh.dart';
import '../../ModelHelpers/DecenMHelpers/orguser_mh.dart';
import '../../Models/Centeral/userm.dart';
import '../Constants/Pages/getpages.dart';

class SettingServices extends GetxService {
  late final SharedPreferences _sharedPreferences;
   UserM? userM;
   OrgUserM? orgUserM;
  late bool isCen;

  Future<SettingServices> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    return this;
  }

  storeBool(String key, bool b) async {
    return await _sharedPreferences.setBool(key, b);
  }

  bool? getBool(String key) {
    return _sharedPreferences.getBool(key);
  }

  Future<bool> login(String name, String password)async{
    if (isCen) {
      AppPages.homePage=AppPages.cenHomePage;
      return await UserMH().logIn(name, password);
    } else {
      AppPages.homePage=AppPages.deCenHomePage;
      return await OrgUserMH().logIn(name, password);
    }
  }
}

// init setting services
Future initServices() async {
  Get.putAsync(() => SettingServices().init());
}
