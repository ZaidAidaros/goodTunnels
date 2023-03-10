import 'package:goodtunnels/Models/SharedModels/ObjectCodeM/chapterm.dart';
import 'package:goodtunnels/Models/SharedModels/ObjectCodeM/itemm.dart';

import '../../Models/SharedModels/ObjectCodeM/partm.dart';
import '../../Models/SharedModels/ObjectCodeM/typem.dart';

class ObjectCodeSamples{

//Samples For Test
static List<ChapterM> chapters = [
  ChapterM(number: 1,name: "Chapter1"),
  ChapterM(number: 2,name: "Chapter2")
  ];

static List<PartM> parts =[
  PartM(number: 1, parentNo: 1,name: "Part1"),
  PartM(number: 2, parentNo: 1,name: "Part2"),
  PartM(number: 1, parentNo: 2,name: "Part3"),
  PartM(number: 2, parentNo: 2,name: "Part4")
];

static List<TypeM> types =[
  TypeM(number: 1,parentNo: 1,name: "Type1"),
  TypeM(number: 2,parentNo: 1,name: "Type2"),
  TypeM(number: 1,parentNo: 2,name: "Type3"),
  TypeM(number: 2,parentNo: 2,name: "Type4")
];
static List<ItemM> items =[
  ItemM(number: 1,parentNo: 1,name: "Item1"),
  ItemM(number: 2,parentNo: 1, name: "Item2"),
  ItemM(number: 1,parentNo: 2,name: "Item1"),
  ItemM(number: 2,parentNo: 2, name: "Item2")
];


}