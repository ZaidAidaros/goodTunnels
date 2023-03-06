import 'package:goodtunnels/Core/Constants/objectcode_constants.dart';
import 'package:goodtunnels/Core/Constants/subcommitment_constants.dart';
import 'package:goodtunnels/Core/Constants/user_const.dart';

class UserM{
  int? id;
  String? name;
  String? password;
  int? permId;
  UserM.fromMap(Map map){
    id = map[columId];
    name = map[columName];
    password = map[columPass];
  }

  toMap(){
    Map<String,Object> map = <String,Object>{};
    if(id!=null){
      map[columId] = id!;
      map[columName] = name.toString();
      map[columPass] = password.toString();
    }
  }
}
