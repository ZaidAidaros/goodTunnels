import 'package:goodtunnels/Core/Constants/setting_const.dart';

class Settings{
  String? keyname;
  String? keyvalue;

  Settings.fromMap(Map<String,Object> map){
    keyname = map[columKeyname].toString();
    keyname = map[columKeyvalue].toString();
  }

  Map<String,Object> toMap(){
    Map<String,Object> map = <String,Object>{};
    if(keyname != null){
      map[columKeyname]=keyname!;
    }if(keyvalue != null){
      map[columKeyvalue]=keyvalue!;
    }
    return map;
  }
}

