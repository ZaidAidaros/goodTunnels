import '../../Core/Constants/setting_const.dart';
import '../../Core/Services/dbhelper.dart';
import '../SharedModels/settingm.dart';

class SettingsMH{

  DBHelper dbHelper = DBHelper();

  insertSetting(SettingsM settingsM){
    dbHelper.insertData(SettingConst.settingTName, settingsM.toMap());
  }
  updateSetting(SettingsM settingsM,String updateColum){
    dbHelper .upDateData(SettingConst.settingTName, settingsM.toMap(),
    SettingConst.columKeyname,settingsM.toMap()[SettingConst.columKeyvalue]);
  }
  getAllSetting()async{
    List<SettingsM> list =[];
    await dbHelper.getData(SettingConst.settingTName).then((value) {
      for (var element in value) { 
        list.add(SettingsM.fromMap(element));
      }
    });
    return list;
  }
  Future<SettingsM> search(String settingKey)async{
   return SettingsM.fromMap(await dbHelper.getDataOne(
    SettingConst.settingTName, 
    SettingConst.columKeyname, 
    settingKey));
  }
}