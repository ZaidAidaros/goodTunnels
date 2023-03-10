import 'package:goodtunnels/Core/Services/dbhelper.dart';

import '../../../Core/Constants/SharedConst/ObjectCode/objectcode_constants.dart';
import '../../../Models/SharedModels/ObjectCodeM/objectcodem.dart';

class ObjCodeMH {
  DBHelper dbHelper = DBHelper();

  createObjCode(ObjectCodeM objectCodeM) {
    dbHelper.insertData(ObjCodeConstants.objectCodeTName, objectCodeM.toMap());
  }

  updateObjCode(ObjectCodeM objectCodeM) {
    dbHelper.upDateData(
        ObjCodeConstants.objectCodeTName,
        objectCodeM.toMap(),
        ObjCodeConstants.columObjCode,
        objectCodeM.toMap()[ObjCodeConstants.columObjCode]);
  }
}
