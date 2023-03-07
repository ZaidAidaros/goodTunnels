import 'package:encrypt/encrypt.dart'as enc;


testEncKIV(){
  print("888888888888888888888888");
  print(enc.Key.fromSecureRandom(16).toString());
  print("888888888888888888888888");
  print(enc.IV.fromSecureRandom(8).toString());
  print("888888888888888888888888");
}
class Tasfeer{

  Tasfeer._(){
    
  }
  final _key = enc.Key.fromSecureRandom(16);
  final iv = enc.IV.fromSecureRandom(16);
  //final encrypter = enc.Encrypter(enc.AES(_key));
  static Tasfeer? _tasfeer;
  static Tasfeer? get tasfeer{
    _tasfeer??=Tasfeer._();
    return _tasfeer;
  }
  
    _tashfeer(String tash){

  }
  _detashfeer(String tash){
    
  }
}