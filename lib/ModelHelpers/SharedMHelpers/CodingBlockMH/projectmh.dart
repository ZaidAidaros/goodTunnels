import 'package:goodtunnels/Models/SharedModels/CodingBlockM/projectm.dart';

import '../../../Core/Constants/SharedConst/CodingBlock/projectconst.dart';
import '../../../Core/Services/dbhelper.dart';

class ProjectMH{
   DBHelper dbHelper = DBHelper();

  
  createProject(ProjectM projectM) {
    dbHelper.insertData(
      ProjConst.projectTableName,
      projectM.toMap(),
    );
  }

  updateProject(ProjectM projectM) {
    dbHelper.upDateData(
        ProjConst.projectTableName,
        projectM.toMap(),
        ProjConst.columCode,
        projectM.toMap()[ProjConst.columCode]);
  }
}