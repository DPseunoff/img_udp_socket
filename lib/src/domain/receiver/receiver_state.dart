import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image/image.dart' as img;

import '../../shared/image_utils.dart';

part 'receiver_state.freezed.dart';

@freezed
abstract class ReceiverState with _$ReceiverState {
  const factory ReceiverState.idle({
    required String ip,
    required int port,
  }) = _Idle;

  const factory ReceiverState.waitForHandshake({
    required String ip,
    required int port,
  }) = _WFH;

  const factory ReceiverState.waitForSecretKey({
    required String ip,
    required int port,
  }) = _WFSK;

  const factory ReceiverState.readyToReceive({
    required String ip,
    required int port,
  }) = _RTR;

  const factory ReceiverState.image({
    required String ip,
    required int port,
    required img.Image image,
  }) = _ReceiverIState;

  const ReceiverState._();

  List<List<Color>>? get colorsGrid => maybeMap(
        image: (s) => ImageUtils.convertImageToPixels(s.image),
        orElse: () => null,
      );
}
