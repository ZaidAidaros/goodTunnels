import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../Constants/dbConstants.dart';

class DBHelper{

  static  Database? _db;

  Future<Database?> get db async{
    _db ??= await initDb();
    return _db;
  }
  
  initDb()async{
    print("Init DataBase============");
    String path = join(await getDatabasesPath(), 'goodtunnels.db');
    print("DataBase path=>$path **============");
    Database dB = await openDatabase(path, onCreate: _onCreate);
    return dB;
  }

  _onCreate(Database database, int version)async{
    print("======OnCreate DataBase======");
    for(int i=0; i<DBConstants.sqlOnCreate.length;i++) {
      await database.execute(DBConstants.sqlOnCreate[i]);
    }
  }
  // get all rows
  Future<List<Map<String, Object?>>> getData(String table)async{
    Database? myDb = await db;
    return await myDb!.query(table);
  }


  // insert new row
  insertData(String table, Map<String, Object?> values )async{
    Database? myDb = await db;
    await myDb!.insert(table, values);
  }
  
  // update a row
  upDateData(String table,Map<String, Object?> values ,String columN, var columV)async{
    Database? myDb = await db;
    int c = await myDb!.update(table, values, where:'$columN = ?' ,whereArgs: [columV]);
    return c;
  }
  // delete a row
  deletData(String table, Map<String, Object?> values,String columN, var columV)async{
    Database? myDb = await db;
    int c = await myDb!.delete(table,where: '$columN = ?', whereArgs: [columV]);
    return c;
  }



  ///Search dep
    // get one row
 Future<Map<String,Object?>> getDataOne(String table,String columN, var columV)async{
    Database? myDb = await db;
   List<Map<String,Object?>> list = await myDb!.query(table,where:'$columN = ?',whereArgs: [columV] );
   return list.first;
  }
  // get rows where
 Future<List<Map<String,Object?>>> getDataWhere(String table,String columN, var columV)async{
    Database? myDb = await db;
   List<Map<String,Object?>> list = await myDb!.query(table,where:'$columN = ?',whereArgs: [columV] );
   return list;
  }
  // Search for string colum strart with my value in all rows
 Future<List<Map<String,Object?>>> SearchStartWith(String table,String columN, String columV)async{
    Database? myDb = await db;
   return await myDb!.rawQuery('SELECT FROM "$table" WHERE "$columN" LIKE "$columV%"');

  }
}