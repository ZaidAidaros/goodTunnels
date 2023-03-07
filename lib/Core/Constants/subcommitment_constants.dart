//SubCommitments 
import 'package:goodtunnels/Core/Constants/commitments_constants.dart';

const String subCommitmentTableNamt = "CommitmentDetails";
const String columId = "ID";
const String columUId = "UID";
const String columAuthNo = "AuthorizationNo";
const String columDOCChapter = "chapterNo";
const String columDOCPart = "partNo";
const String columDOCType = "typeNo";
const String columDOCItem = "itemNo";
const String columContenue = "contenues";
const String columDescription = "description";
const String columSpendingAmount = "amount";
const String columBalanceAfter = "balanceAfter";
const String columExpectedPayDate = "expectedPayDate";

const String sqlCreateSubCommitmentTable=
'''CREATE TABLE '$subCommitmentTableNamt' (
      $columId INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
      $columReqNo INTEGER NOT NULL,
      $columAuthNo INTEGER NOT NULL,
      $columDOCChapter INTEGER NOT NULL,
      $columDOCPart INTEGER NOT NULL,
      $columDOCType INTEGER NOT NULL,
      $columDOCItem INTEGER NOT NULL,
      $columContenue INTEGER NOT NULL,
      $columSpendingAmount INTEGER NOT NULL,
      $columBalanceAfter INTEGER NOT NULL,
      $columExpectedPayDate INTEGER NOT NULL,
      $columDescription TEXT NOT NULL,
      $columIsApproved INTEGER NOT NULL
    )
''';