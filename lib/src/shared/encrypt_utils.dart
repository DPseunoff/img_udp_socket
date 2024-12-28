import 'dart:typed_data';

class RSAPublicKey {
  final int e;
  final int n;

  const RSAPublicKey(this.e, this.n);

  @override
  String toString() => 'RSAPublicKey(e: $e, n: $n)';
}

class RSAPrivateKey {
  final int d;
  final int n;

  const RSAPrivateKey(this.d, this.n);

  @override
  String toString() => 'RSAPrivateKey(d: $d, n: $n)';
}

abstract class RSAUtils {
  /// Генерация простой пары ключей RSA
  static (RSAPublicKey, RSAPrivateKey) generateRSAKeys() {
    const p = 61;
    const q = 53;
    const n = p * q;
    const phi = (p - 1) * (q - 1);
    const e = 17;
    final d = e.modInverse(phi);

    const publicKey = RSAPublicKey(e, n);
    final privateKey = RSAPrivateKey(d, n);

    return (publicKey, privateKey);
  }

  /// Шифрование данных.
  ///
  /// Каждый байт сообщения зашифровывается и возвращается блок С.
  static List<int> encryptDataByRSA(List<int> data, RSAPublicKey publicKey) {
    return data.map((byte) => byte.modPow(publicKey.e, publicKey.n)).toList();
  }

  /// Расшифровка данных.
  ///
  /// Каждый байт блока С преобразуется в байт исходного сообщения.
  static Uint8List decryptDataByRSA(
      List<int> encryptedData, RSAPrivateKey privateKey) {
    return Uint8List.fromList(
      encryptedData
          .map((byte) => byte.modPow(privateKey.d, privateKey.n))
          .toList(growable: false),
    );
  }
}
