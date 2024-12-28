import 'package:logger/logger.dart';

final logger = Logger(
  printer: PrettyPrinter(
    printEmojis: false,
    dateTimeFormat: DateTimeFormat.onlyTime,
    noBoxingByDefault: false,
    methodCount: 0,
  ),
);
