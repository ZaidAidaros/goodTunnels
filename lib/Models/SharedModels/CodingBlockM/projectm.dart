import '../../../Core/Constants/SharedConst/CodingBlock/projectconst.dart';

class ProjectM{
  int? code;
  String? name;
  int? budget;
  int? orgCode;

  ProjectM({this.code,this.name,this.orgCode,this.budget});

  ProjectM.fromMap(Map<String,Object> map){
    code = map[ProjConst.columCode] as int;
    budget = map[ProjConst.columBudget] as int;
    orgCode = map[ProjConst.columOrgCode] as int;
    name = map[ProjConst.columName].toString();
  }

  Map<String,Object> toMap(){
    Map<String,Object> map = <String,Object>{};
    if(code != null){
      map[ProjConst.columCode]=code!;
    }
    if(budget != null){
      map[ProjConst.columBudget]=budget!;
    }
    if(orgCode != null){
      map[ProjConst.columOrgCode]=orgCode!;
    }
    if(name != null){
      map[ProjConst.columName]=name!;
    }
    return map;
  }
}
