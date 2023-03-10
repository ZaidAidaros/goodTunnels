import 'package:goodtunnels/Core/Constants/SharedConst/CodingBlock/codingblock_constants.dart';
import 'package:goodtunnels/Models/SharedModels/CodingBlockM/codingblock.dart';

import '../../../Core/Services/dbhelper.dart';

class CodingBlockMH {
  DBHelper dbHelper = DBHelper();

  
  createCodingBloc(CodingBlockM codingBlockM) {
    dbHelper.insertData(
      CodingBlockConst.codingBlockTableName,
      codingBlockM.toMap(),
    );
  }

  updateCodingBloc(CodingBlockM codingBlockM) {
    dbHelper.upDateData(
        CodingBlockConst.codingBlockTableName,
        codingBlockM.toMap(),
        CodingBlockConst.columCode,
        codingBlockM.toMap()[CodingBlockConst.columCode]);
  }
}
