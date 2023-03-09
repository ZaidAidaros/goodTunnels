

class UserConstants{
static const String userTName="Users";
static const String columName ="uName";
static const String columPass="pass";
static const String columUId ="UID";
static const String sqlCreateProjectTable=
'''CREATE TABLE "$userTName" (
      "$columUId" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
      "$columName" TEXT NOT NULL,
      "$columPass" TEXT NOT NULL,
    )
''';

}
