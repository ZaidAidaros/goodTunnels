class ProjConst{

static const String projectTableName= "Project";
static const String columCode = "code";
static const String columName = "name";
static const String columOrgCode ="orgCode";
static const String columBudget = "budget";

static const String sqlCreateProjectTable=
'''CREATE TABLE "$projectTableName" (
      "$columCode" INTEGER NOT NULL PRIMARY KEY,
      "$columName" TEXT NOT NULL,
      "$columOrgCode" INTEGER NOT NULL,
      "$columBudget" INTEGER NOT NULL
    )
''';
}