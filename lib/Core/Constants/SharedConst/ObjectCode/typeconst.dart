class TypeConst{
  static const String typeTName = "TypeTaple";
  static const String columNo = "number";
  static const String columName = "name";
  static const String columPartCode = "partCode";

  static const String sqlCreateTypeTable=
'''CREATE TABLE "$typeTName" (
      "$columNo" INTEGER NOT NULL PRIMARY KEY,
      "$columPartCode" INTEGER NOT NULL,
      "$columName" TEXT NOT NULL
    )
''';
}