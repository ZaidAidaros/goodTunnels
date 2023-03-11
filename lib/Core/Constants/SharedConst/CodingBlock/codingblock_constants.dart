
class CodingBlockConst{

static const String codingBlockTableName = "CodingBlock";
static const String columOrgCode= "OrgCode";
static const String columProjCode= "ProjCode";
static const String columFoundCode= "FoundCode";
static const String columCode = "code";

static const String sqlCreateCodingBlockTable=
'''CREATE TABLE "$codingBlockTableName" (
      "$columCode" INTEGER NOT NULL PRIMARY KEY,
      "$columOrgCode" INTEGER NOT NULL,
      "$columProjCode" INTEGER NOT NULL,
      "$columFoundCode" INTEGER NOT NULL
    )
''';


}