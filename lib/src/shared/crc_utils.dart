import 'dart:typed_data';

abstract class CRCUtils {
  static final List<int> _crcTable = _generateCrcTable();

  static const int _polynomial = 0xEDB88320;

  static List<int> _generateCrcTable() {
    final table = List<int>.filled(256, 0);
    for (int i = 0; i < 256; i++) {
      int crc = i;
      for (int j = 0; j < 8; j++) {
        if ((crc & 1) != 0) {
          crc = (crc >> 1) ^ _polynomial;
        } else {
          crc >>= 1;
        }
      }
      table[i] = crc;
    }
    return table;
  }

  static int compute(Uint8List data) {
    int crc = 0xFFFFFFFF;
    for (final byte in data) {
      final tableIndex = (crc ^ byte) & 0xFF;
      crc = (_crcTable[tableIndex] ^ (crc >> 8)) & 0xFFFFFFFF;
    }
    return ~crc & 0xFFFFFFFF;
  }
}
