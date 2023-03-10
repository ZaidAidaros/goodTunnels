import '../../../Core/Constants/SharedConst/ObjectCode/typeconst.dart';

class TypeM {
  int? number;
  int? parentNo;
  String? name;

  TypeM({this.number, this.parentNo, this.name});

  TypeM.fromMap(Map<String, Object> map) {
    number = map[TypeConst.columNo] as int;
    parentNo = map[TypeConst.columPartCode] as int;
    name = map[TypeConst.columName].toString();
  }

  Map<String, Object> toMap() {
    Map<String, Object> map = <String, Object>{};
    if (number != null) {
      map[TypeConst.columNo] = number!;
    }
    if (parentNo != null) {
      map[TypeConst.columPartCode] = parentNo!;
    }
    if (name != null) {
      map[TypeConst.columNo] = name!;
    }
    return map;
  }
}
