
class CodingBlockConst{

static const String codingBlockTableName = "CodingBlock";
static const String orgTableName= "Organization";
static const String projectTableName= "Project";
static const String foundTableName= "Found";
static const String columUId = "UID";
static const String columCode = "code";
static const String columOrgAddress = "Address";
static const String columParentCode ="parentCode";
static const String columBudget = "budget";
static const String columName="OrgName";
static const String columK="K";
static const String columiv="iv";

static const String sqlCreateCodingBlockTable=
'''CREATE TABLE "$codingBlockTableName" (
      "$columCode" INTEGER NOT NULL PRIMARY KEY,
      "$orgTableName" INTEGER NOT NULL,
      "$projectTableName" INTEGER NOT NULL,
      "$foundTableName" INTEGER NOT NULL,
    )
''';

static const String sqlCreateOrganizationTable=
'''CREATE TABLE "$orgTableName" (
      "$columCode" INTEGER NOT NULL PRIMARY KEY,
      "$columName" TEXT NOT NULL,
      "$columOrgAddress" TEXT NOT NULL,
      "$columK" TEXT NOT NULL,
      "$columiv" TEXT NOT NULL,
      "$columUId" INTEGER NOT NULL
    )
''';

static const String sqlCreateProjectTable=
'''CREATE TABLE "$projectTableName" (
      "$columCode" INTEGER NOT NULL PRIMARY KEY,
      "$columName" TEXT NOT NULL,
      "$columParentCode" INTEGER NOT NULL,
      "$columBudget" INTEGER NOT NULL
    )
''';

static const String sqlCreateFoundTable=
'''CREATE TABLE "$foundTableName" (
      "$columCode" INTEGER NOT NULL PRIMARY KEY,
      "$columName" TEXT NOT NULL,
    )
''';

}