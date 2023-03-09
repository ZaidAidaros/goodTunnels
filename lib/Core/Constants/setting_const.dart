class SettingConst{
  static const String settingTName="Settings";
  static const String columKeyname="key";
  static const String columKeyvalue="value";

  static const String sqlCreateSettingsTaple=
'''CREATE TABLE "$settingTName" (
      $columKeyname TEXT NOT NULL PRIMARY KEY,
      $columKeyvalue TEXT NOT NULL,
    )
''';

//keys
  static const String settingOrgCodekey="OrgCode";
  static const String settingOrgNamekey="OrgName";
  static const String settingOrgAddresskey="OrgAddress";
  static const String settingOrgUNamekey="OrgUName";
  static const String settingOrgUPasskey="OrgUPassword";
  static const String settingISKey="is";
  static const String settingTashKey="Tash";
  static const String settingTashIkey="Tashi";

}