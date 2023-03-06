import 'package:goodtunnels/Core/Constants/codingblock_constants.dart';
import 'package:goodtunnels/Models/objectcode.dart';

const String objectCodeTName = "ObjectCode";
const String chapterTName = "Chapter";
const String partTName = "Part";
const String typeTName = "Type";
const String itemTName = "Item";
const String columNo = "Number";
const String columParentNo = "ParentNo";
const String columName = "Name";


const String sqlCreateObjectCodeTable=
'''CREATE TABLE '$objectCodeTName' (
      $columCode INTEGER NOT NULL PRIMARY KEY,
      $chapterTName INTEGER NOT NULL,
      $partTName INTEGER NOT NULL,
      $typeTName INTEGER NOT NULL,
      $itemTName INTEGER NOT NULL,
    )
''';
const String sqlCreateChapterTable=
'''CREATE TABLE '$chapterTName' (
      $columNo INTEGER NOT NULL PRIMARY KEY,
      $columName TEXT NOT NULL,
    )
''';
const String sqlCreatePartTable=
'''CREATE TABLE '$chapterTName' (
      $columNo INTEGER NOT NULL PRIMARY KEY,
      $columParentNo INTEGER NOT NULL,
      $columName TEXT NOT NULL,
    )
''';
const String sqlCreateTypeTable=
'''CREATE TABLE '$chapterTName' (
      $columNo INTEGER NOT NULL PRIMARY KEY,
      $columParentNo INTEGER NOT NULL,
      $columName TEXT NOT NULL,
    )
''';
const String sqlCreateItemTable=
'''CREATE TABLE '$chapterTName' (
      $columNo INTEGER NOT NULL PRIMARY KEY,
      $columParentNo INTEGER NOT NULL,
      $columName TEXT NOT NULL,
    )
''';
