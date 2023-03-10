class ItemConst {
  static const String itemTName = "Item";
  static const String columNo = "number";
  static const String columName = "name";
  static const String columTypeCode = "typeCode";

  static const String sqlCreateItemTable = '''CREATE TABLE "$itemTName" (
      "$columNo" INTEGER NOT NULL PRIMARY KEY,
      "$columTypeCode" INTEGER NOT NULL,
      "$columName" TEXT NOT NULL,
    )
''';
}
