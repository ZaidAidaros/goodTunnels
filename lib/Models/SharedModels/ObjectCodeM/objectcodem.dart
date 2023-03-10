
import 'package:goodtunnels/Core/Constants/SharedConst/ObjectCode/objectcode_constants.dart';

class ObjectCodeM {
  int? code;
  int? chapterNo;
  int? partNo;
  int? typeNo;
  int? itemNo;

  ObjectCodeM({this.chapterNo, this.partNo, this.typeNo, this.itemNo}) {
    code = int.parse(chapterNo.toString() +
        partNo.toString() +
        typeNo.toString() +
        itemNo.toString());
  }

  ObjectCodeM.fromMap(Map map) {
    code = map[ObjCodeConstants.columChapterCode] as int;
    chapterNo = map[ObjCodeConstants.columChapterCode] as int;
    partNo = map[ObjCodeConstants.columPartCode] as int;
    typeNo = map[ObjCodeConstants.columTypeCode] as int;
    itemNo = map[ObjCodeConstants.columItemCode] as int;
  }

  Map<String, Object?> toMap() {
    Map<String, Object?>  map = <String, Object?>{};
    map[ObjCodeConstants.columChapterCode] = code;
    map[ObjCodeConstants.columChapterCode] = chapterNo;
    map[ObjCodeConstants.columPartCode] = partNo;
    map[ObjCodeConstants.columTypeCode] = typeNo;
    map[ObjCodeConstants.columItemCode] = itemNo;
    return map;
  }
}



