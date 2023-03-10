import 'package:goodtunnels/Core/Constants/DecenConst/orguserconst.dart';


class OrgUserM {
  int? uid;
  String? orgName;
  String? orgTargetPhone;
  String? uName;
  String? uPass;
  String? tashK;
  String? tashik;
  int? orgCode;
  int? isDisable;

  OrgUserM(
      {this.orgName,
      this.orgCode,
      this.orgTargetPhone,
      this.uName,
      this.uPass,
      this.isDisable,
      this.tashK,
      this.tashik});

  OrgUserM.fromMap(Map<String, Object?> map) {
     uid = map[OrgUserConst.columUId] as int;
     uName = map[OrgUserConst.columOrgUName].toString();
     uPass = map[OrgUserConst.columOrgUPass].toString();
    orgName = map[OrgUserConst.columOrgName].toString();
    orgCode = map[OrgUserConst.columOrgCode] as int;
    orgTargetPhone = map[OrgUserConst.columTargetPhone].toString();
    tashK = map[OrgUserConst.columTashKey].toString();
    tashik = map[OrgUserConst.columTashIkey].toString();
    isDisable = map[OrgUserConst.columIsDisable] as int;
  }

  Map<String, Object> toMap() {
    Map<String, Object> map = <String, Object>{};

    if(uid!=null){
      map[OrgUserConst.columUId] = uid!;
    }
    if (orgName != null) {
      map[OrgUserConst.columOrgName] = orgName!;
    }
    if (orgTargetPhone != null) {
      map[OrgUserConst.columTargetPhone] = orgTargetPhone!;
    }
    if (orgCode != null) {
      map[OrgUserConst.columOrgCode] = orgCode!;
    }
    if (uName != null) {
      map[OrgUserConst.columOrgUName] = uName!;
    }
    if (uPass != null) {
      map[OrgUserConst.columOrgUPass] = uPass!;
    }
    if (tashK != null) {
      map[OrgUserConst.columTashKey] = tashK!;
    }
    if (tashik != null) {
      map[OrgUserConst.columTashIkey] = tashik!;
    }
    if (isDisable != null) {
      map[OrgUserConst.columIsDisable] = isDisable!;
    }
    return map;
  }
}
