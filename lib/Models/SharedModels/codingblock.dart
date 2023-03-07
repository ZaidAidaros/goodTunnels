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
    code = map[columCode] as int;
    orgCode = map[organizationTableName] as int;
    projCode = map[projectTableName] as int;
    foundCode = map[foundTableName] as int;
  }

  Map<String,Object> toMap(){
    Map<String,Object> map = <String,Object>{};
    if(code != null){
      map[columCode]=code!;
    }
    if(orgCode != null){
      map[objectCodeTName]=orgCode!;
    }
    if(projCode != null){
      map[projectTableName]=projCode!;
    }
    if(foundCode != null){
      map[foundTableName]=foundCode!;
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
    code = map[columCode] as int;
    budget = map[columBudget] as int;
    parentCode = map[columParentCode] as int;
    name = map[columName].toString();
  }

  Map<String,Object> toMap(){
    Map<String,Object> map = <String,Object>{};
    if(code != null){
      map[columCode]=code!;
    }
    if(budget != null){
      map[columBudget]=budget!;
    }
    if(parentCode != null){
      map[columParentCode]=parentCode!;
    }
    if(name != null){
      map[columName]=name!;
    }
    return map;
  }
}

class Found{
  int? code;
  String? name;
  Found.fromMap(Map<String,Object> map){
    code = map[columCode] as int;
    name = map[columName].toString();
  }

  Map<String,Object> toMap(){
    Map<String,Object> map = <String,Object>{};
    if(code != null){
      map[columCode]=code!;
    }if(name != null){
      map[columName]=name!;
    }
    return map;
  }
}


