import 'package:goodtunnels/Core/Constants/SharedConst/ObjectCode/partconst.dart';
import 'package:goodtunnels/Models/SharedModels/ObjectCodeM/partm.dart';

import '../../../Core/Services/dbhelper.dart';

class PartMH {
  DBHelper dbHelper = DBHelper();

  newPart(PartM partM) async {
    await dbHelper.insertData(
      PartConst.partTName,
      partM.toMap(),
    );
  }

  updatePart(PartM partM) async {
    await dbHelper.upDateData(
      PartConst.partTName,
      partM.toMap(),
      PartConst.columNo,
      partM.toMap()[PartConst.columNo],
    );
  }
}
