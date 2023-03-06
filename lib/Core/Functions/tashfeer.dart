import 'package:encrypt/encrypt.dart';

class Tasfeer{

  Tasfeer._(){
    
  }
  final _key = Key.fromSecureRandom(32);
  final iv = IV.fromSecureRandom(16);
  //final encrypter = Encrypter(AES(_key));
  static Tasfeer? _tasfeer;
  static Tasfeer? get tasfeer{
    _tasfeer??=Tasfeer._();
    return _tasfeer;
  }
  
}