

import 'package:goodtunnels/Core/Constants/objectcode_constants.dart';

const String codingBlockTableName = "CodingBlock";
const String organizationTableName= "Organization";
const String projectTableName= "Project";
const String foundTableName= "Found";

const String columCode = "code";

const String sqlCreateCodingBlockTable=
'''CREATE TABLE '$codingBlockTableName' (
      $columCode INTEGER NOT NULL PRIMARY KEY,
      $organizationTableName INTEGER NOT NULL,
      $projectTableName INTEGER NOT NULL,
      $foundTableName INTEGER NOT NULL,
    )
''';

const String sqlCreateOrganizationTable=
'''CREATE TABLE '$organizationTableName' (
      $columCode INTEGER NOT NULL PRIMARY KEY,
      $columName TEXT NOT NULL,
    )
''';

const String sqlCreateProjectTable=
'''CREATE TABLE '$projectTableName' (
      $columCode INTEGER NOT NULL PRIMARY KEY,
      $columName TEXT NOT NULL,
    )
''';

const String sqlCreateFoundTable=
'''CREATE TABLE '$foundTableName' (
      $columCode INTEGER NOT NULL PRIMARY KEY,
      $columName TEXT NOT NULL,
    )
''';