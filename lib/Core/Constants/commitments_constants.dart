class CommitConst{
  //Commitments Table
static const String commitTableNamt = "Commitments";
static const String columReqNo = "RequestNo";
static const String columIsApproved = "IsApprovde";
static const String columCodinBlocCode = "CodingBCodelock";
static const String columAdminUnit = "AdminUint";
static const String columAuthEntity = "AuthEntity";
static const String columAuthOfficer = "AuthOfficer";
static const String columForDuration = "ForDuration";
static const String columSubmitDate = "SubmitDate";
static const String columSubmitRejResn = "rejectResen";


static const String sqlCreateCommitmentTable=
'''CREATE TABLE "$commitTableNamt" (
      "$columReqNo" INTEGER NOT NULL PRIMARY KEY,
      "$columCodinBlocCode" INTEGER NOT NULL,
      "$columIsApproved" INTEGER NOT NULL,
      "$columAdminUnit" TEXT NOT NULL,
      "$columAuthEntity" TEXT NOT NULL,
      "$columAuthOfficer" TEXT NOT NULL,
      "$columForDuration" TEXT NOT NULL,
      "$columSubmitDate" TEXT NOT NULL,
      "$columSubmitRejResn" TEXT
    )
''';
}

