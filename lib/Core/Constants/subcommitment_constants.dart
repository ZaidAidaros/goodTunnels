//SubCommitments 

class SubCommitConst{
static const String subCommitTableName = "CommitmentDetails";
static const String columId = "ID";
static const String columReqNo= "ReqNo";
static const String columUId = "UID";
static const String columAuthNo = "AuthorizationNo";
static const String columObjCode = "ObjCode";
static const String columContenue = "contenues";
static const String columDescription = "description";
static const String columSpendingAmount = "amount";
static const String columBalanceAfter = "balanceAfter";
static const String columExpectedPayDate = "expectedPayDate";
static const String columIsApproved = "isApproved";
 static const String columSubmitRejResn = "rejectResen";

static const String sqlCreateSubCommitmentTable=
'''CREATE TABLE "$subCommitTableName" (
      "$columId" INTEGER NOT NULL PRIMARY KEY,
      "$columReqNo" INTEGER NOT NULL,
      "$columAuthNo" INTEGER NOT NULL,
      "$columObjCode" INTEGER NOT NULL,
      "$columSpendingAmount" INTEGER NOT NULL,
      "$columBalanceAfter" INTEGER NOT NULL,
      "$columIsApproved" INTEGER NOT NULL,
      "$columExpectedPayDate" TEXT NOT NULL,
      "$columDescription" TEXT NOT NULL
      
    )
''';
}