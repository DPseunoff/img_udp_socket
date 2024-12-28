import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/receiver_repository.dart';
import 'receiver_state.dart';

class ReceiverCubit extends Cubit<ReceiverState> {
  final ReceiverRepository repository;

  ReceiverCubit({
    required this.repository,
  }) : super(const ReceiverState.idle(
          ip: '',
          port: 0,
        ));

  Future<void> initializeReceiver() async {
    final res = await repository.createReceiver();

    emit(
      ReceiverState.waitForHandshake(
        ip: res.$1,
        port: res.$2,
      ),
    );

    await repository.waitForHandshake();

    ReceiverState.waitForSecretKey(
      ip: state.ip,
      port: state.port,
    );

    await repository.waitForSecretKey();

    emit(
      ReceiverState.readyToReceive(
        ip: state.ip,
        port: state.port,
      ),
    );

    final image = await repository.receiveImage();

    emit(
      ReceiverState.image(
        ip: state.ip,
        port: state.port,
        image: image,
      ),
    );
  }
}
