import '../../../Core/Constants/SharedConst/ObjectCode/chapterconst.dart';

class ChapterM {
  int? number;
  String? name;

  ChapterM({this.number, this.name});

  ChapterM.fromMap(Map<String, Object> map) {
    number = map[ChapterConst.columNo] as int;
    name = map[ChapterConst.columName].toString();
  }

  Map<String, Object> toMap() {
    Map<String, Object> map = <String, Object>{};
    if (number != null) {
      map[ChapterConst.columNo] = number!;
    }
    if (name != null) {
      map[ChapterConst.columName] = name!;
    }
    return map;
  }
}