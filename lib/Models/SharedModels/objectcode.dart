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
    code = map[columCode] as int;
    chapterNo = map[chapterTName] as int;
    partNo = map[partTName] as int;
    typeNo = map[typeTName] as int;
    itemNo = map[itemTName] as int;

  }

  Map toMap(){
    Map map = <String,Object>{};
    map[columCode]=code;
    map[chapterTName]=chapterNo;
    map[partTName]=partNo;
    map[typeTName]=typeNo;
    map[itemTName]=itemNo;
    return map;
  }

}



class DOCChapter{
  int? number;
  String? name;

  DOCChapter({this.number,this.name});

  DOCChapter.fromMap(Map<String,Object> map){
    number = map[columNo] as int;
    name = map[columName].toString();
  }

  Map<String,Object> toMap(){
    Map<String,Object> map = <String,Object>{};
    if(number != null){
      map[columNo]=number!;
    }if(name != null){
      map[columName]=name!;
    }
    return map;
  }
}
class DOCPart{
  int? number;
  int? parentNo;
  String? name;
  
  DOCPart({this.number,this.name});

  DOCPart.fromMap(Map<String,Object> map){
    number = map[columNo] as int;
    parentNo = map[columParentNo] as int;
    name = map[columName].toString();
  }

  Map<String,Object> toMap(){
    Map<String,Object> map = <String,Object>{};
    if(number != null){
      map[columNo]=number!;
    }
    if(parentNo != null){
      map[columParentNo]=parentNo!;
    }
    if(name != null){
      map[columName]=name!;
    }
    return map;
  }
}
class DOCType{
  int? number;
  int? parentNo;
  String? name;

  DOCType({this.number,this.name});

  DOCType.fromMap(Map<String,Object> map){
    number = map[columNo] as int;
    parentNo = map[columParentNo] as int;
    name = map[columName].toString();
  }

  Map<String,Object> toMap(){
    Map<String,Object> map = <String,Object>{};
    if(number != null){
      map[columNo]=number!;
    }
    if(parentNo != null){
      map[columParentNo]=parentNo!;
    }
    if(name != null){
      map[columNo]=name!;
    }
    return map;
  }
}
class DOCItem{
  int? number;
  int? parentNo;
  String? name;

  DOCItem({this.number,this.name});

  DOCItem.fromMap(Map<String,Object> map){
    number = map[columNo] as int;
    parentNo = map[columParentNo] as int;
    name = map[columName].toString();
  }
  
  Map<String,Object> toMap(){
    Map<String,Object> map = <String,Object>{};
    if(number != null){
      map[columNo]=number!;
    }
    if(parentNo != null){
      map[columParentNo]=parentNo!;
    }
    if(name != null){
      map[columNo]=name!;
    }
    return map;
  }
  
}


