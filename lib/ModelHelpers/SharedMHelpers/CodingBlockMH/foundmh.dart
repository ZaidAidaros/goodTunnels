import '../../../Core/Constants/SharedConst/CodingBlock/foundconst.dart';
import '../../../Core/Services/dbhelper.dart';
import '../../../Models/SharedModels/CodingBlockM/foundm.dart';

class FoundMH{
   DBHelper dbHelper = DBHelper();

  
  createFound(FoundM foundM) {
    dbHelper.insertData(
      FoundConst.foundTableName,
      foundM.toMap(),
    );
  }

  updateFound(FoundM foundM) {
    dbHelper.upDateData(
        FoundConst.foundTableName,
        foundM.toMap(),
        FoundConst.columCode,
        foundM.toMap()[FoundConst.columCode]);
  }
}