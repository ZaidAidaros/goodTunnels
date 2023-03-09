import 'package:goodtunnels/Models/SharedModels/objectcode.dart';


//Samples For Test
List<DOCChapter> docChapters = [
  DOCChapter(number: 1,name: "Chapter1"),
  DOCChapter(number: 2,name: "Chapter2")
  ];

List<DOCPart> docParts =[
  DOCPart(number: 1, parentNo: 1,name: "Part1"),
  DOCPart(number: 2, parentNo: 1,name: "Part2"),
  DOCPart(number: 1, parentNo: 2,name: "Part3"),
  DOCPart(number: 2, parentNo: 2,name: "Part4")
];

List<DOCType> docTypes =[
  DOCType(number: 1,parentNo: 1,name: "Type1"),
  DOCType(number: 2,parentNo: 1,name: "Type2"),
  DOCType(number: 1,parentNo: 2,name: "Type3"),
  DOCType(number: 2,parentNo: 2,name: "Type4")
];
List<DOCItem> docItems =[
  DOCItem(number: 1,parentNo: 1,name: "Item1"),
  DOCItem(number: 2,parentNo: 1, name: "Item2"),
  DOCItem(number: 1,parentNo: 2,name: "Item1"),
  DOCItem(number: 2,parentNo: 2, name: "Item2")
];

