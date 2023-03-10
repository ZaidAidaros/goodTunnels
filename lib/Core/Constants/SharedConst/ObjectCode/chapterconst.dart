class ChapterConst {
  static const String chapterTName = "Chapter";
  static const String columNo = "number";
  static const String columName = "name";

  static const String sqlCreateChapterTable = '''CREATE TABLE "$chapterTName" (
      "$columNo" INTEGER NOT NULL PRIMARY KEY,
      "$columName" TEXT NOT NULL,
    )
''';
}
