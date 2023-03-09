import 'package:goodtunnels/Core/Constants/setting_const.dart';

class SettingsM{
  String? keyname;
  String? keyvalue;

  SettingsM.fromMap(Map<String,Object?> map){
    keyname = map[SettingConst.columKeyname].toString();
    keyname = map[SettingConst.columKeyvalue].toString();
  }

  Map<String,Object> toMap(){
    Map<String,Object> map = <String,Object>{};
    if(keyname != null){
      map[SettingConst.columKeyname]=keyname!;
    }if(keyvalue != null){
      map[SettingConst.columKeyvalue]=keyvalue!;
    }
    return map;
  }
}




