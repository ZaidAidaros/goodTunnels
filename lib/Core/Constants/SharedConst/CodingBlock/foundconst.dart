class FoundConst{

static const String foundTableName= "Found";
static const String columCode = "code";
static const String columName = "name";

static const String sqlCreateFoundTable=
'''CREATE TABLE "$foundTableName" (
      "$columCode" INTEGER NOT NULL PRIMARY KEY,
      "$columName" TEXT NOT NULL
    )
''';

}