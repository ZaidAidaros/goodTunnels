import 'package:goodtunnels/Core/Constants/objectcode_constants.dart';
import 'package:goodtunnels/Core/Constants/subcommitment_constants.dart';
import 'package:goodtunnels/Core/Constants/user_const.dart';

class UserM{
  int? id;
  String? name;
  String? password;
  
  UserM.fromMap(Map map){
    id = map[columUId];
    name = map[columName];
    password = map[columPass];
  }

  toMap(){
    Map<String,Object> map = <String,Object>{};
    if(id!=null){
      map[columUId] = id!;
      map[columName] = name.toString();
      map[columPass] = password.toString();
    }
  }
}
