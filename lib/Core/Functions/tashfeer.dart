import 'package:encrypt/encrypt.dart'as enc;
import 'package:goodtunnels/Models/ModelHelpers/setting_mh.dart';

import '../Constants/setting_const.dart';


class Tashfeer{

  
  
  late final enc.Encrypter _encrypter ;
  late final enc.Key? _key;
  late final enc.IV? _iv;
  static Tashfeer? _tasfeer;
  
 Future<String> tashfeer(String tash,)async{
    await _setK();
    _encrypter = enc.Encrypter(enc.AES(_key!));
    return _encrypter.encrypt(tash,iv: _iv).base64;

  }
 Future<String> detashfeer(String tash)async{
    await _setK();
    return _encrypter.decrypt64(tash,iv:_iv);
  }

 Future<void> _setK()async{
  SettingsMH settingsMH = SettingsMH();
    _key ??= await settingsMH.search(settingTashKey).then((value){
      _key = enc.Key.fromUtf8(value.keyvalue!);
    });
    _iv ??= await settingsMH.search(settingTashIkey).then((value){
      _iv = enc.IV.fromUtf8(value.keyvalue!);
    });
    
  }

  generateK(){

  }
}