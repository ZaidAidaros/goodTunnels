
import '../../../Core/Constants/SharedConst/ObjectCode/partconst.dart';

class PartM {
  int? number;
  int? parentNo;
  String? name;

  PartM({this.number, this.parentNo, this.name});

  PartM.fromMap(Map<String, Object> map) {
    number = map[PartConst.columNo] as int;
    parentNo = map[PartConst.columChapterCode] as int;
    name = map[PartConst.columName].toString();
  }

  Map<String, Object> toMap() {
    Map<String, Object> map = <String, Object>{};
    if (number != null) {
      map[PartConst.columNo] = number!;
    }
    if (parentNo != null) {
      map[PartConst.columChapterCode] = parentNo!;
    }
    if (name != null) {
      map[PartConst.columName] = name!;
    }
    return map;
  }
}