
import '../../../Core/Constants/SharedConst/ObjectCode/itemconst.dart';

class ItemM {
  int? number;
  int? parentNo;
  String? name;

  ItemM({this.number, this.parentNo, this.name});

  ItemM.fromMap(Map<String, Object> map) {
    number = map[ItemConst.columNo] as int;
    parentNo = map[ItemConst.columTypeCode] as int;
    name = map[ItemConst.columName].toString();
  }

  Map<String, Object> toMap() {
    Map<String, Object> map = <String, Object>{};
    if (number != null) {
      map[ItemConst.columNo] = number!;
    }
    if (parentNo != null) {
      map[ItemConst.columTypeCode] = parentNo!;
    }
    if (name != null) {
      map[ItemConst.columNo] = name!;
    }
    return map;
  }
}
