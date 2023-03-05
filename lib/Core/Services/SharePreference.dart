import 'package:shared_preferences/shared_preferences.dart';
class SharedPref{


  static SharedPreferences? _sharedPreferences;
  Future<SharedPreferences> get sharefPreference async{
    _sharedPreferences??= await SharedPreferences.getInstance();
    return _sharedPreferences!;
  }


  Future<bool> storeString(String key,String value)async{
   return await sharefPreference.then((value) => value.setString(key, value as String ));
  }

  getString(String key)async{
    return await sharefPreference.then((value) => value.getString(key));
  }
}