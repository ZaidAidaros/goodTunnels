
class ObjCodeConstants{



static const String objectCodeTName = "ObjectCode";
static const String columCode="ObjCode";
static const String chapterTName = "Chapter";
static const String partTName = "Part";
static const String typeTName = "Type";
static const String itemTName = "Item";
static const String columNo = "Number";
static const String columParentNo = "ParentNo";
static const String columName = "Name";


static const String sqlCreateObjectCodeTable=
'''CREATE TABLE "$objectCodeTName" (
      "$columCode" INTEGER NOT NULL PRIMARY KEY,
      "$chapterTName" INTEGER NOT NULL,
      "$partTName" INTEGER NOT NULL,
      "$typeTName" INTEGER NOT NULL,
      "$itemTName" INTEGER NOT NULL,
    )
''';
static const String sqlCreateChapterTable=
'''CREATE TABLE "$chapterTName" (
      "$columNo" INTEGER NOT NULL PRIMARY KEY,
      "$columName" TEXT NOT NULL,
    )
''';
static const String sqlCreatePartTable=
'''CREATE TABLE "$chapterTName" (
      "$columNo" INTEGER NOT NULL PRIMARY KEY,
      "$columParentNo" INTEGER NOT NULL,
      "$columName" TEXT NOT NULL,
    )
''';
static const String sqlCreateTypeTable=
'''CREATE TABLE "$chapterTName" (
      "$columNo" INTEGER NOT NULL PRIMARY KEY,
      "$columParentNo" INTEGER NOT NULL,
      "$columName" TEXT NOT NULL,
    )
''';
static const String sqlCreateItemTable=
'''CREATE TABLE "$chapterTName" (
      "$columNo" INTEGER NOT NULL PRIMARY KEY,
      "$columParentNo" INTEGER NOT NULL,
      "$columName" TEXT NOT NULL,
    )
''';
}