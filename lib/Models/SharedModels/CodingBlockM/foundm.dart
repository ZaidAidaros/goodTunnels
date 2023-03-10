import '../../../Core/Constants/SharedConst/CodingBlock/foundconst.dart';

class FoundM {
  int? code;
  String? name;

  FoundM({this.code, this.name});

  FoundM.fromMap(Map<String, Object> map) {
    code = map[FoundConst.columCode] as int;
    name = map[FoundConst.columName].toString();
  }

  Map<String, Object> toMap() {
    Map<String, Object> map = <String, Object>{};
    if (code != null) {
      map[FoundConst.columCode] = code!;
    }
    if (name != null) {
      map[FoundConst.columName] = name!;
    }
    return map;
  }
}
