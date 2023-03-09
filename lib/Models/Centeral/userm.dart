
import 'package:goodtunnels/Core/Constants/user_const.dart';

class UserM{
  int? id;
  String? name;
  String? password;
  
  UserM.fromMap(Map map){
    id = map[UserConstants.columUId];
    name = map[UserConstants.columName];
    password = map[UserConstants.columPass];
  }

  toMap(){
    Map<String,Object> map = <String,Object>{};
    if(id!=null){
      map[UserConstants.columUId] = id!;
      map[UserConstants.columName] = name.toString();
      map[UserConstants.columPass] = password.toString();
    }
  }
}
