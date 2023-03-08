import '../../Core/Constants/setting_const.dart';
import '../../Core/Services/dbhelper.dart';
import '../SharedModels/settingm.dart';

class SettingsMH{

  DBHelper dbHelper = DBHelper();

  insertSetting(SettingsM settingsM){
    dbHelper.insertData(settingTName, settingsM.toMap());
  }
  updateSetting(SettingsM settingsM,String updateColum){
    dbHelper .upDateData(settingTName, settingsM.toMap(),
    columKeyname,settingsM.toMap()[columKeyvalue]);
  }
  getAllSetting()async{
    List<SettingsM> list =[];
    await dbHelper.getData(settingTName).then((value) {
      for (var element in value) { 
        list.add(SettingsM.fromMap(element));
      }
    });
    return list;
  }
  search(String settingKey)async{
   return SettingsM.fromMap(await dbHelper.getDataOne(settingTName, columKeyname, settingKey));
  }
}