import 'package:encrypt/encrypt.dart' as enc;

class Tashfeer {
  initTash(String key, String iv) {
    _key = enc.Key.fromUtf8(key);
    _iv = enc.IV.fromUtf8(iv);
    _encrypter = enc.Encrypter(enc.AES(_key!));
  }

  enc.Encrypter? _encrypter;
  enc.Key? _key;
  enc.IV? _iv;
  String tashfeer(String tash, String key, String iv) {
    initTash(key, iv);
    return _encrypter!.encrypt(tash, iv: _iv).base64;
  }

  String detashfeer(String tash, String key, String iv) {
    initTash(key, iv);
    return _encrypter!.decrypt64(tash, iv: _iv);
  }

  generateK() {}
}
