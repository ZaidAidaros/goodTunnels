import 'package:encrypt/encrypt.dart' as enc;

class Tashfeer {

  initTash(){

    _encrypter??=enc.Encrypter(enc.AES(_key!));
  }

  late final enc.Encrypter? _encrypter;
  late final enc.Key? _key;
  late final enc.IV? _iv;
  tashfeer(String tash) {
    initTash();
    return _encrypter!.encrypt(tash, iv: _iv).base64;
  }

  detashfeer(String tash) {
     initTash();
    return _encrypter!.decrypt64(tash, iv: _iv);
  }

  generateK() {}
}
