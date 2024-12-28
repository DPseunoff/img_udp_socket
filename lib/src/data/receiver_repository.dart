import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:image/image.dart' as img;
import 'package:image_udp_socket/src/shared/xor_utils.dart';
import 'package:network_info_plus/network_info_plus.dart';
import 'package:rxdart/rxdart.dart';

import '../shared/crc_utils.dart';
import '../shared/encrypt_utils.dart';
import '../shared/logger.dart';

class ReceiverRepository {
  late final RawDatagramSocket _socket;
  late final Stream _socketEvents;
  late final RSAPublicKey publicKey;
  late final RSAPrivateKey privateKey;
  late final XORSecretKey senderSecretKey;

  ReceiverRepository();

  /// Инициализация получателя. Создание UDP соекта и генерация ключей RSA.
  Future<(String, int)> createReceiver() async {
    final ip = await NetworkInfo().getWifiIP();
    if (ip == null) {
      throw Error();
    }

    // Генерация пары RSA-ключей
    final keys = RSAUtils.generateRSAKeys();
    publicKey = keys.$1;
    privateKey = keys.$2;

    _socket = await RawDatagramSocket.bind(InternetAddress(ip), 0);
    _socketEvents = _socket
        .asBroadcastStream()
        .where((event) => event == RawSocketEvent.read)
        .map((_) => _socket.receive())
        .whereNotNull();

    final socketIp = _socket.address.address;
    final port = _socket.port;

    logger
      ..i('Created receiver repo')
      ..d('Public key: $publicKey')
      ..d('Private key: $privateKey')
      ..d('IP: $socketIp')
      ..d('Port: $port');

    return (socketIp, port);
  }

  /// Ожидание начала рукопожатия.
  Future<void> waitForHandshake() async {
    final datagram = await _socketEvents.first;
    final message = String.fromCharCodes(datagram.data);
    if (message.startsWith('HELLO')) {
      logger.d('Got message HELLO');
      await Future.delayed(const Duration(milliseconds: 500));
      // Отправляем публичный ключ
      _socket.send(
        'PUBLIC_KEY:${publicKey.e}:${publicKey.n}'.codeUnits,
        datagram.address,
        datagram.port,
      );
      logger.d('Sent public key');
    }
  }

  /// Ожидание возврата секретного ключа и завершение рукопожатия.
  Future<void> waitForSecretKey() async {
    final datagram = await _socketEvents.first;
    final message = String.fromCharCodes(datagram.data);
    if (message.startsWith('SECRET_KEY')) {
      final parts = message.split(':');
      // Расшифровываем секретный ключ и сохраняем его.
      final encryptedBytes = List<int>.from(json.decode(parts[1]));

      logger.d('Got encrypted key: $encryptedBytes');

      final secretKeyBytes =
          RSAUtils.decryptDataByRSA(encryptedBytes, privateKey);

      logger.d('Decrypted key: $secretKeyBytes');
      senderSecretKey = XORSecretKey(key: secretKeyBytes);

      // Завершаем рукопожатие.
      _socket.send(
        'READY'.codeUnits,
        datagram.address,
        datagram.port,
      );
      logger.d('Sent READY');
    }
  }

  Future<img.Image> receiveImage() async {
    final receivedBytes = <int>[];

    final xor = XORHelper(senderSecretKey.key);

    await for (final datagram in _socketEvents) {
      final encryptedData = datagram.data;

      logger.d('Received packet of data. Length ${encryptedData.length}');

      // Расшифровываем данные
      final decryptedData = xor.decrypt(encryptedData);

      const crcSize = 4;
      // Извлекаем контрольную сумму и данные
      final receivedChecksum = decryptedData.sublist(0, crcSize);
      final chunk = decryptedData.sublist(crcSize);

      // Проверяем контрольную сумму
      final calculatedChecksum = CRCUtils.compute(chunk);
      final receivedChecksumValue =
          ByteData.sublistView(receivedChecksum).getUint32(0, Endian.big);

      final succeeded = receivedChecksumValue == calculatedChecksum;

      logger.d(
        'Received CRC32: $receivedChecksumValue, '
        'calculated CRC32: $calculatedChecksum '
        'Succeeded: $succeeded',
      );

      if (!succeeded) {
        throw Exception('Checksum mismatch! Packet is corrupted.');
      }

      // Добавляем данные в общий список
      receivedBytes.addAll(chunk);

      // Проверяем, достигли ли конца изображения (по маркеру 0xD9)
      if (chunk.last == 0xD9) {
        break;
      }
    }

    // Декодируем данные
    final tmpList = Uint8List.fromList(receivedBytes);
    final image = img.JpegDecoder().decode(tmpList);

    if (image == null) {
      throw Exception('Incorrect image');
    }

    return image;
  }
}
