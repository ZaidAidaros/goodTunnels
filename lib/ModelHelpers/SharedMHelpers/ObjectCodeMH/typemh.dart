import '../../../Core/Constants/SharedConst/ObjectCode/typeconst.dart';
import '../../../Core/Services/dbhelper.dart';
import '../../../Models/SharedModels/ObjectCodeM/typem.dart';

class TypeMH {
  DBHelper dbHelper = DBHelper();

  newType(TypeM typeM) async {
    await dbHelper.insertData(
      TypeConst.typeTName,
      typeM.toMap(),
    );
  }

  updateType(TypeM typeM) async {
    await dbHelper.upDateData(
      TypeConst.typeTName,
      typeM.toMap(),
      TypeConst.columNo,
      typeM.toMap()[TypeConst.columNo],
    );
  }
}
