import 'dart:convert';
import 'dart:typed_data';

class XORSecretKey {
  final Uint8List key;

  XORSecretKey({
    Uint8List? key,
  }) : key = key ?? Uint8List.fromList(utf8.encode('mysecurekey'));

  @override
  String toString() => 'XORSecretKey(key: $key)';
}

class XORHelper {
  final Uint8List key;

  XORHelper(this.key);

  Uint8List encrypt(Uint8List data) => _xor(data);

  Uint8List decrypt(Uint8List data) => _xor(data);

  Uint8List _xor(Uint8List data) {
    final result = Uint8List(data.length);
    for (int i = 0; i < data.length; i++) {
      result[i] = data[i] ^ key[i % key.length];
    }
    return result;
  }
}
