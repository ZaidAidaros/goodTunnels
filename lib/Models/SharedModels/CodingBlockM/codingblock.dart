import 'package:goodtunnels/Core/Constants/SharedConst/CodingBlock/codingblock_constants.dart';

class CodingBlockM {
  int? code;
  int? orgCode;
  int? projCode;
  int? foundCode;

  CodingBlockM(this.orgCode, this.projCode, this.foundCode) {
    code = int.parse(
        orgCode.toString() + projCode.toString() + foundCode.toString());
  }

  CodingBlockM.fromMap(Map<String, Object> map) {
    code = map[CodingBlockConst.columCode] as int;
    orgCode = map[CodingBlockConst.columOrgCode] as int;
    projCode = map[CodingBlockConst.columProjCode] as int;
    foundCode = map[CodingBlockConst.columFoundCode] as int;
  }

  Map<String, Object> toMap() {
    Map<String, Object> map = <String, Object>{};
    if (code != null) {
      map[CodingBlockConst.columCode] = code!;
    }
    if (orgCode != null) {
      map[CodingBlockConst.columOrgCode] = orgCode!;
    }
    if (projCode != null) {
      map[CodingBlockConst.columProjCode] = projCode!;
    }
    if (foundCode != null) {
      map[CodingBlockConst.columFoundCode] = foundCode!;
    }
    return map;
  }
}
