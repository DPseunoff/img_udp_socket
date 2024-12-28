import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_udp_socket/src/shared/image_utils.dart';

import '../../data/sender_repository.dart';
import 'sender_state.dart';

class SenderCubit extends Cubit<SenderState> {
  final SenderRepository repository;

  SenderCubit({
    required this.repository,
  }) : super(const SenderState.idle());

  Future<void> startHandshake({
    required String receiverIp,
    required int receiverPort,
  }) async {
    emit(const SenderState.startHandshake());

    await repository.startHandshake(
      receiverIp: receiverIp,
      receiverPort: receiverPort,
    );

    emit(const SenderState.waitPublicKey());

    final publicKey = await repository.waitForPublicKey();

    emit(const SenderState.finishHandshake());

    await repository.finishHandshake(publicKey: publicKey);

    emit(const SenderState.readyToGenerateImage());
  }

  void generateImage() {
    final image = ImageUtils.generateRandomImage();
    emit(SenderState.readyToSendImage(image: image));
  }

  void regenerateImage() {
    final image = ImageUtils.generateRandomImage();
    emit(SenderState.readyToSendImage(image: image));
  }

  Future<void> sendImage() => state.maybeMap(
        readyToSendImage: (s) async {
          final image = s.image;

          emit(SenderState.sendingImage(image: image));

          await repository.sendImage(image: image);

          emit(SenderState.imageSent(image: image));
        },
        orElse: () async {},
      );
}
