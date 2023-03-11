
class ObjCodeConstants{


static const String objectCodeTName = "ObjectCode";
static const String columObjCode="ObjCode";
static const String columChapterCode="chapterCode";
static const String columPartCode = "partCode";
static const String columTypeCode = "typeCode";
static const String columItemCode = "itemCode";


static const String sqlCreateObjectCodeTable=
'''CREATE TABLE "$objectCodeTName" (
      "$columObjCode" INTEGER NOT NULL PRIMARY KEY,
      "$columChapterCode" INTEGER NOT NULL,
      "$columPartCode" INTEGER NOT NULL,
      "$columTypeCode" INTEGER NOT NULL,
      "$columItemCode" INTEGER NOT NULL
    )
''';


}