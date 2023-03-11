class UserConstants {
  static const String userTName = "Users";
  static const String columUId = "UID";
  static const String columOrgCode = "OrgCode";
  static const String columName = "uName";
  static const String columPass = "pass";

  static const String sqlCreateUsersTable = ''' CREATE TABLE "$userTName" (
      $columUId INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
      $columOrgCode INTEGER NOT NULL,
      $columName TEXT NOT NULL,
      $columPass TEXT NOT NULL
    )
''';
}
