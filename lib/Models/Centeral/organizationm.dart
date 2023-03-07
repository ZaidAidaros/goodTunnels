import 'package:goodtunnels/Core/Constants/codingblock_constants.dart';
import 'package:goodtunnels/Core/Constants/objectcode_constants.dart';
import 'package:goodtunnels/Core/Constants/subcommitment_constants.dart';

class OrganizationM{
  int? code;
  int? userId;
  String? name;
  String? address;


    OrganizationM.fromMap(Map<String,Object?> map){
    code = map[columCode] as int;
    userId = map[columUId] as int;
    name = map[columName].toString();
    address = map[columName].toString();
  }

  Map<String,Object> toMap(){
    Map<String,Object> map = <String,Object>{};
    if(code != null){
      map[columCode]=code!;
    }
    if(userId != null){
      map[columUId]=userId!;
    }
    if(name != null){
      map[columName]=name!;
    }
    return map;
  }
}
