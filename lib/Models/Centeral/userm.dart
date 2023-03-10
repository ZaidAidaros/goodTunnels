import 'package:goodtunnels/Core/Constants/CenConst/user_const.dart';

class UserM {
  int? id;
  int? orgCode;
  String? name;
  String? password;

  UserM.fromMap(Map map) {
    id = map[UserConstants.columUId];
    orgCode=map[UserConstants.columOrgCode];
    name = map[UserConstants.columName];
    password = map[UserConstants.columPass];
  }

  toMap() {
    Map<String, Object> map = <String, Object>{};
    if (id != null) {
      map[UserConstants.columUId] = id!;
    }
    if (orgCode != null) {
      map[UserConstants.columOrgCode] = orgCode!;
    }
    if (name != null) {
      map[UserConstants.columName] = name.toString();
    }
    if (password != null) {
       map[UserConstants.columPass] = password.toString();
    }
    
   
  }
}
