import 'package:goodtunnels/Core/Constants/codingblock_constants.dart';
import 'package:goodtunnels/Core/Constants/objectcode_constants.dart';


class ObjectCode{
  int? code;
  int? chapterNo;
  int? partNo;
  int? typeNo;
  int? itemNo;

  ObjectCode(this.chapterNo,this.partNo,this.typeNo,this.itemNo){
    code = int.parse(chapterNo.toString()+partNo.toString()+typeNo.toString()+itemNo.toString());
  }

  ObjectCode.fromMap(Map map){
    code = map[ObjCodeConstants.columCode] as int;
    chapterNo = map[ObjCodeConstants.chapterTName] as int;
    partNo = map[ObjCodeConstants.partTName] as int;
    typeNo = map[ObjCodeConstants.typeTName] as int;
    itemNo = map[ObjCodeConstants.itemTName] as int;

  }

  Map toMap(){
    Map map = <String,Object>{};
    map[ObjCodeConstants.columCode]=code;
    map[ObjCodeConstants.chapterTName]=chapterNo;
    map[ObjCodeConstants.partTName]=partNo;
    map[ObjCodeConstants.typeTName]=typeNo;
    map[ObjCodeConstants.itemTName]=itemNo;
    return map;
  }

}



class DOCChapter{
  int? number;
  String? name;

  DOCChapter({this.number,this.name});

  DOCChapter.fromMap(Map<String,Object> map){
    number = map[ObjCodeConstants.columNo] as int;
    name = map[ObjCodeConstants.columName].toString();
  }

  Map<String,Object> toMap(){
    Map<String,Object> map = <String,Object>{};
    if(number != null){
      map[ObjCodeConstants.columNo]=number!;
    }if(name != null){
      map[ObjCodeConstants.columName]=name!;
    }
    return map;
  }
}
class DOCPart{
  int? number;
  int? parentNo;
  String? name;
  
  DOCPart({this.number,this.parentNo,this.name});

  DOCPart.fromMap(Map<String,Object> map){
    number = map[ObjCodeConstants.columNo] as int;
    parentNo = map[ObjCodeConstants.columParentNo] as int;
    name = map[ObjCodeConstants.columName].toString();
  }

  Map<String,Object> toMap(){
    Map<String,Object> map = <String,Object>{};
    if(number != null){
      map[ObjCodeConstants.columNo]=number!;
    }
    if(parentNo != null){
      map[ObjCodeConstants.columParentNo]=parentNo!;
    }
    if(name != null){
      map[ObjCodeConstants.columName]=name!;
    }
    return map;
  }
}
class DOCType{
  int? number;
  int? parentNo;
  String? name;

  DOCType({this.number,this.parentNo,this.name});

  DOCType.fromMap(Map<String,Object> map){
    number = map[ObjCodeConstants.columNo] as int;
    parentNo = map[ObjCodeConstants.columParentNo] as int;
    name = map[ObjCodeConstants.columName].toString();
  }

  Map<String,Object> toMap(){
    Map<String,Object> map = <String,Object>{};
    if(number != null){
      map[ObjCodeConstants.columNo]=number!;
    }
    if(parentNo != null){
      map[ObjCodeConstants.columParentNo]=parentNo!;
    }
    if(name != null){
      map[ObjCodeConstants.columNo]=name!;
    }
    return map;
  }
}
class DOCItem{
  int? number;
  int? parentNo;
  String? name;

  DOCItem({this.number,this.parentNo,this.name});

  DOCItem.fromMap(Map<String,Object> map){
    number = map[ObjCodeConstants.columNo] as int;
    parentNo = map[ObjCodeConstants.columParentNo] as int;
    name = map[ObjCodeConstants.columName].toString();
  }
  
  Map<String,Object> toMap(){
    Map<String,Object> map = <String,Object>{};
    if(number != null){
      map[ObjCodeConstants.columNo]=number!;
    }
    if(parentNo != null){
      map[ObjCodeConstants.columParentNo]=parentNo!;
    }
    if(name != null){
      map[ObjCodeConstants.columNo]=name!;
    }
    return map;
  }
  
}


