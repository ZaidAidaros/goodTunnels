import 'package:goodtunnels/Core/Services/dbhelper.dart';

import '../../../Core/Constants/SharedConst/ObjectCode/chapterconst.dart';
import '../../../Models/SharedModels/ObjectCodeM/chapterm.dart';

class ChapterMH {
  DBHelper dbHelper = DBHelper();

  newChapter(ChapterM chapterM) async {
    await dbHelper.insertData(
      ChapterConst.chapterTName,
      chapterM.toMap(),
    );
  }

  updateChapter(ChapterM chapterM) async {
    await dbHelper.upDateData(
      ChapterConst.chapterTName,
      chapterM.toMap(),
      ChapterConst.columNo,
      chapterM.toMap()[ChapterConst.columNo],
    );
  }
}
