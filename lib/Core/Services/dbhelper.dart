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

  Future<List<Map>> getData(String sql)async{
    Database? myDb = await db;
    return myDb!.rawQuery(sql);
  }

  insertData(String table, Map<String, Object?> values )async{
    Database? myDb = await db;
    myDb!.insert(table, values);
  }

  upDateData(String table,Map<String, Object?> values )async{
    Database? myDb = await db;
    int c = await myDb!.update(table, values,where: 'ID = ?', whereArgs: [values['ID']]);
    return c;
  }
  deletData(String table, Map<String, Object?> values )async{
    Database? myDb = await db;
    int c = await myDb!.delete(table,where: 'ID = ?', whereArgs: [values['ID']]);
    return c;
  }

}