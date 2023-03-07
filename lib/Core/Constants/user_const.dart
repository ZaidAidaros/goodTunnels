
import 'package:goodtunnels/Core/Constants/objectcode_constants.dart';
import 'package:goodtunnels/Core/Constants/subcommitment_constants.dart';

const String userTName="Users";
const String columPass="pass";

const String sqlCreateProjectTable=
'''CREATE TABLE '$userTName' (
      $columUId INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
      $columName TEXT NOT NULL,
      $columPass TEXT NOT NULL,
    )
''';

