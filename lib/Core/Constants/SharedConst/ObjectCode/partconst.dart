class PartConst {
  static const String partTName = "Part";
  static const String columNo = "number";
  static const String columName = "name";
  static const String columChapterCode = "chapterCode";

  static const String sqlCreatePartTable = '''CREATE TABLE "$partTName" (
      "$columNo" INTEGER NOT NULL PRIMARY KEY,
      "$columChapterCode" INTEGER NOT NULL,
      "$columName" TEXT NOT NULL
    )
''';
}
