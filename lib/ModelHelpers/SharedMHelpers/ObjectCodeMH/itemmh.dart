
import 'package:goodtunnels/Models/SharedModels/ObjectCodeM/itemm.dart';

import '../../../Core/Constants/SharedConst/ObjectCode/itemconst.dart';
import '../../../Core/Services/dbhelper.dart';

class ItemMH {
  DBHelper dbHelper = DBHelper();

  newItem(ItemM itemM) async {
    await dbHelper.insertData(
      ItemConst.itemTName,
      itemM.toMap(),
    );
  }

  updateItem(ItemM itemM) async {
    await dbHelper.upDateData(
      ItemConst.itemTName,
      itemM.toMap(),
      ItemConst.columNo,
      itemM.toMap()[ItemConst.columNo],
    );
  }
}
