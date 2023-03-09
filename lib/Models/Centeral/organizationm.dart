import 'package:goodtunnels/Core/Constants/codingblock_constants.dart';

class OrganizationM{
  int? code;
  int? userId;
  String? name;
  String? address;
  String? k;
  String? iv;


    OrganizationM.fromMap(Map<String,Object?> map){
    code = map[CodingBlockConst.columCode] as int;
    userId = map[CodingBlockConst.columUId] as int;
    name = map[CodingBlockConst.columName].toString();
    address = map[CodingBlockConst.columName].toString();
    k=map[CodingBlockConst.columK].toString();
    iv=map[CodingBlockConst.columiv].toString();
  }

  Map<String,Object> toMap(){
    Map<String,Object> map = <String,Object>{};
    if(code != null){
      map[CodingBlockConst.columCode]=code!;
    }
    if(userId != null){
      map[CodingBlockConst.columUId]=userId!;
    }
    if(name != null){
      map[CodingBlockConst.columName]=name!;
    }
    if(k != null){
      map[CodingBlockConst.columK]=k!;
    }
    if(iv != null){
      map[CodingBlockConst.columiv]=iv!;
    }
    return map;
  }
}
