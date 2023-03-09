import 'package:goodtunnels/Core/Constants/codingblock_constants.dart';
import 'package:goodtunnels/Core/Constants/objectcode_constants.dart';

class CodingBlockM{
 int? code;
 int? orgCode;
 int? projCode;
 int? foundCode;

 CodingBlockM(this.orgCode,this.projCode,this.foundCode){
  code = int.parse(orgCode.toString()+projCode.toString()+foundCode.toString());
 }

 CodingBlockM.fromMap(Map<String,Object> map){
    code = map[CodingBlockConst.columCode] as int;
    orgCode = map[CodingBlockConst.orgTableName] as int;
    projCode = map[CodingBlockConst.projectTableName] as int;
    foundCode = map[CodingBlockConst.foundTableName] as int;
  }

  Map<String,Object> toMap(){
    Map<String,Object> map = <String,Object>{};
    if(code != null){
      map[CodingBlockConst.columCode]=code!;
    }
    if(orgCode != null){
      map[CodingBlockConst.orgTableName]=orgCode!;
    }
    if(projCode != null){
      map[CodingBlockConst.projectTableName]=projCode!;
    }
    if(foundCode != null){
      map[CodingBlockConst.foundTableName]=foundCode!;
    }
    return map;
  }

}


class Project{
  int? code;
  String? name;
  int? budget;
  int? parentCode;
  Project.fromMap(Map<String,Object> map){
    code = map[CodingBlockConst.columCode] as int;
    budget = map[CodingBlockConst.columBudget] as int;
    parentCode = map[CodingBlockConst.columParentCode] as int;
    name = map[CodingBlockConst.columName].toString();
  }

  Map<String,Object> toMap(){
    Map<String,Object> map = <String,Object>{};
    if(code != null){
      map[CodingBlockConst.columCode]=code!;
    }
    if(budget != null){
      map[CodingBlockConst.columBudget]=budget!;
    }
    if(parentCode != null){
      map[CodingBlockConst.columParentCode]=parentCode!;
    }
    if(name != null){
      map[CodingBlockConst.columName]=name!;
    }
    return map;
  }
}

class Found{
  int? code;
  String? name;
  Found.fromMap(Map<String,Object> map){
    code = map[CodingBlockConst.columCode] as int;
    name = map[CodingBlockConst.columName].toString();
  }

  Map<String,Object> toMap(){
    Map<String,Object> map = <String,Object>{};
    if(code != null){
      map[CodingBlockConst.columCode]=code!;
    }if(name != null){
      map[CodingBlockConst.columName]=name!;
    }
    return map;
  }
}


