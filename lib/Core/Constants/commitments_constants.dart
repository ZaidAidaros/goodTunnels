//Commitments Table
const String commitTableNamt = "Commitments";
const String columReqNo = "RequestNo";
const String columCodinBlocCode = "CodingBCodelock";
const String columAdminUnit = "AdminUint";
const String columAuthEntity = "AuthEntity";
const String columAuthOfficer = "AuthOfficer";
const String columForDuratiom = "ForDuration";
const String columSubmitDate = "SubmitDate";

const String sqlCreateSubCommitmentTable=
'''CREATE TABLE '$commitTableNamt' (
      $columReqNo INTEGER NOT NULL PRIMARY KEY,
      $columCodinBlocCode INTEGER NOT NULL,
      $columAdminUnit TEXT NOT NULL,
      $columAuthEntity TEXT NOT NULL,
      $columAuthOfficer TEXT NOT NULL,
      $columForDuratiom TEXT NOT NULL,
      $columSubmitDate INTEGER NOT NULL,
    )
''';