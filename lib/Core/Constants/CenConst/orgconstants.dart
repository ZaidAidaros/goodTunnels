class OrgConst {
  static const String orgTableName = "Organization";
  static const String columCode = "OrgCode";
  static const String columOrgPhone = "Phone";
  static const String columName = "OrgName";
  static const String columK = "K";
  static const String columiv = "iv";

  static const String sqlCreateOrganizationTable =
      '''CREATE TABLE "$orgTableName" (
      "$columCode" INTEGER NOT NULL PRIMARY KEY,
      "$columName" TEXT NOT NULL,
      "$columOrgPhone" TEXT NOT NULL,
      "$columK" TEXT NOT NULL,
      "$columiv" TEXT NOT NULL
    )
''';
}
