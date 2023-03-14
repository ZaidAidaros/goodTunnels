import '../../Core/Constants/CenConst/orgconstants.dart';

class OrganizationM {
  int? code;
  String? name;
  String? phone;
  String? k;
  String? iv;

  OrganizationM.fromMap(Map<String, Object?> map) {
    code = map[OrgConst.columCode] as int;
    name = map[OrgConst.columName].toString();
    phone = map[OrgConst.columName].toString();
    k = map[OrgConst.columK].toString();
    iv = map[OrgConst.columiv].toString();
  }

  Map<String, Object> toMap() {
    Map<String, Object> map = <String, Object>{};
    if (code != null) {
      map[OrgConst.columCode] = code!;
    }
    if (name != null) {
      map[OrgConst.columName] = name!;
    }
    if (k != null) {
      map[OrgConst.columK] = k!;
    }
    if (iv != null) {
      map[OrgConst.columiv] = iv!;
    }
    return map;
  }
}
