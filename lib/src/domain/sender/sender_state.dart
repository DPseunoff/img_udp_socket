import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image/image.dart' as img;
import 'package:image_udp_socket/src/shared/image_utils.dart';

part 'sender_state.freezed.dart';

@freezed
abstract class SenderState with _$SenderState {
  const factory SenderState.idle() = _Idle;

  const factory SenderState.startHandshake() = _SH;

  const factory SenderState.waitPublicKey() = _WP;

  const factory SenderState.finishHandshake() = _FH;

  const factory SenderState.readyToGenerateImage() = _RTGI;

  const factory SenderState.readyToSendImage({
    required img.Image image,
  }) = _RTSI;

  const factory SenderState.sendingImage({
    required img.Image image,
  }) = _SenderIState;

  const factory SenderState.imageSent({
    required img.Image image,
  }) = _SenderISState;

  const SenderState._();

  List<List<Color>>? get colorsGrid => maybeMap(
        readyToSendImage: (s) => ImageUtils.convertImageToPixels(s.image),
        sendingImage: (s) => ImageUtils.convertImageToPixels(s.image),
        imageSent: (s) => ImageUtils.convertImageToPixels(s.image),
        orElse: () => null,
      );
}
