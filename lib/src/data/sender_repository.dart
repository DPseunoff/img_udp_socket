import 'dart:io';
import 'dart:typed_data';

import 'package:image/image.dart' as img;
import 'package:image_udp_socket/src/shared/xor_utils.dart';
import 'package:rxdart/rxdart.dart';

import '../shared/crc_utils.dart';
import '../shared/encrypt_utils.dart';
import '../shared/logger.dart';

class SenderRepository {
  late final RawDatagramSocket _socket;
  late final Stream _socketEvents;
  late final String _receiverIp;
  late final int _receiverPort;
  late final XORSecretKey _secretKey;

  SenderRepository() : _secretKey = XORSecretKey() {
    logger
      ..i('Created sender repo')
      ..i('Secret key: ${_secretKey.key}');
  }

  Future<void> startHandshake({
    required String receiverIp,
    required int receiverPort,
  }) async {
    _receiverIp = receiverIp;
    _receiverPort = receiverPort;

    logger.d('Saved receiver IP = $_receiverIp and port = $_receiverPort');

    _socket = await RawDatagramSocket.bind(InternetAddress.anyIPv4, 0);
    _socketEvents = _socket
        .asBroadcastStream()
        .where((event) => event == RawSocketEvent.read)
        .map((_) => _socket.receive())
        .whereNotNull();

    // Начинаем процесс рукопожатия.
    _socket.send(
      'HELLO'.codeUnits,
      InternetAddress(_receiverIp),
      _receiverPort,
    );
    logger.d('Sent receiver HELLO');
  }

  Future<RSAPublicKey> waitForPublicKey() async {
    final datagram = await _socketEvents.first;
    final message = String.fromCharCodes(datagram.data);

    logger.d('Got socket message');

    if (!message.startsWith('PUBLIC_KEY:')) {
      throw Exception('Incorrect key');
    }

    final parts = message.split(':');
    final publicKey = RSAPublicKey(int.parse(parts[1]), int.parse(parts[2]));

    logger.d('Got public key: $publicKey');

    return publicKey;
  }

  Future<void> finishHandshake({
    required RSAPublicKey publicKey,
  }) async {
    final encryptedKey = RSAUtils.encryptDataByRSA(
      _secretKey.key,
      publicKey,
    );

    logger.d('Sent encrypted secret key: $encryptedKey');

    // Начинаем процесс рукопожатия.
    _socket.send(
      'SECRET_KEY:$encryptedKey'.codeUnits,
      InternetAddress(_receiverIp),
      _receiverPort,
    );

    final datagram = await _socketEvents.first;
    final message = String.fromCharCodes(datagram.data);
    if (!message.startsWith('READY')) {
      throw Exception('Handshake not finished');
    }

    logger.d('Got READY message');
  }

  Future<void> sendImage({
    required img.Image image,
  }) async {
    final xor = XORHelper(_secretKey.key);
    final jpegBytes = img.JpegEncoder().encode(image);

    // Отправляем зашифрованные данные пакетами
    const packetSize = 256;
    const crcSize = 4;
    const pixelsSize = packetSize - crcSize;

    for (int i = 0; i < jpegBytes.lengthInBytes; i += pixelsSize) {
      final chunk = jpegBytes.sublist(
        i,
        i + pixelsSize < jpegBytes.length ? i + pixelsSize : jpegBytes.length,
      );

      // Вычисляем контрольную сумму
      final crc32Checksum = CRCUtils.compute(chunk);
      final checksumBytes = Uint8List(crcSize)
        ..buffer.asByteData().setUint32(0, crc32Checksum, Endian.big);

      // Собираем пакет: [контрольная сумма | данные]
      final packet = Uint8List.fromList(checksumBytes + chunk);

      // Шифруем пакет
      final encryptedPacket = xor.encrypt(packet);

      // Отправляем зашифрованный пакет
      _socket.send(
        encryptedPacket,
        InternetAddress(_receiverIp),
        _receiverPort,
      );

      logger.d('Sent packet of data. Length ${encryptedPacket.length}');
      logger.d('CRC32 of package: $crc32Checksum');
    }
  }
}
