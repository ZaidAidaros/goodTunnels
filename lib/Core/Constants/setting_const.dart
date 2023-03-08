const String settingTName="Settings";
const String columKeyname="key";
const String columKeyvalue="value";

const String sqlCreateSettingsTaple=
'''CREATE TABLE "$settingTName" (
      $columKeyname TEXT NOT NULL PRIMARY KEY,
      $columKeyvalue TEXT NOT NULL,
    )
''';

//keys
const String settingOrgCodekey="OrgCode";
const String settingOrgNamekey="OrgName";
const String settingOrgAddresskey="OrgAddress";
const String settingOrgUNamekey="OrgUName";
const String settingOrgUPasskey="OrgUPassword";
const String settingISKey="is";
const String settingTashKey="Tash";
const String settingTashIkey="Tashi";
