import 'package:goodtunnels/Core/Constants/SharedConst/ObjectCode/chapterconst.dart';
import 'package:goodtunnels/Core/Constants/SharedConst/ObjectCode/itemconst.dart';
import 'package:goodtunnels/Core/Constants/SharedConst/ObjectCode/objectcode_constants.dart';
import 'package:goodtunnels/Core/Constants/SharedConst/ObjectCode/partconst.dart';

import 'CenConst/OrgConstants.dart';
import 'CenConst/user_const.dart';
import 'DecenConst/orguserconst.dart';
import 'SharedConst/CodingBlock/codingblock_constants.dart';
import 'SharedConst/CodingBlock/foundconst.dart';
import 'SharedConst/CodingBlock/projectconst.dart';
import 'SharedConst/ObjectCode/typeconst.dart';
import 'commitments_constants.dart';
import 'subcommitment_constants.dart';

class DBConstants {
  static List<String> cenSqlOncreat = [
    UserConstants.sqlCreateUsersTable,
    OrgConst.sqlCreateOrganizationTable,
    CodingBlockConst.sqlCreateCodingBlockTable,
    ProjConst.sqlCreateProjectTable,
    FoundConst.sqlCreateFoundTable,
    CommitConst.sqlCreateCommitmentTable,
    SubCommitConst.sqlCreateSubCommitmentTable,
    ObjCodeConstants.sqlCreateObjectCodeTable,
    ChapterConst.sqlCreateChapterTable,
    PartConst.sqlCreatePartTable,
    TypeConst.sqlCreateTypeTable,
    ItemConst.sqlCreateItemTable,
    _defualtCenUser
  ];
  static List<String> deCenSqlOncreat = [
    OrgUserConst.sqlCreateOrgUsersTaple,
    CodingBlockConst.sqlCreateCodingBlockTable,
    ProjConst.sqlCreateProjectTable,
    FoundConst.sqlCreateFoundTable,
    CommitConst.sqlCreateCommitmentTable,
    SubCommitConst.sqlCreateSubCommitmentTable,
    ObjCodeConstants.sqlCreateObjectCodeTable,
    ChapterConst.sqlCreateChapterTable,
    PartConst.sqlCreatePartTable,
    TypeConst.sqlCreateTypeTable,
    ItemConst.sqlCreateItemTable,
  ];

  static const String _defualtCenUser =
      '''INSERT INTO ${UserConstants.userTName}(${UserConstants.columName}, ${UserConstants.columPass}, ${UserConstants.columOrgCode}) VALUES("MoF", Mof, 1)''';
}
