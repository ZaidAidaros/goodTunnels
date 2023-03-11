class OrgUserConst{
static const String orguserTName="OrgUsers";
  static const String columUId ="UID";
  static const String columOrgName="OrgName";
  static const String columOrgCode="OrgCode";
  static const String columTargetPhone="targetPhone";
  static const String columOrgUName="OrgUName";
  static const String columOrgUPass="OrgUPassword";
  static const String columTashKey="Tash";
  static const String columTashIkey="Tashi";
  static const String columIsDisable="isDisable";
  

  static const String sqlCreateOrgUsersTaple=
'''CREATE TABLE "$orguserTName" (
      "$columUId" INTEGER NOT NULL PRIMARY KEY,
      "$columOrgName" TEXT NOT NULL,
      "$columOrgCode" INTEGER NOT NULL,
      "$columIsDisable" INTEGER NOT NULL,
      "$columTargetPhone" TEXT NOT NULL,
      "$columOrgUName" TEXT NOT NULL,
      "$columOrgUPass" TEXT NOT NULL,
      "$columTashKey" TEXT NOT NULL,
      "$columTashIkey" TEXT NOT NULL
    )
''';

}