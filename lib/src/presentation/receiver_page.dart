import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../domain/receiver/receiver_cubit.dart';
import '../domain/receiver/receiver_state.dart';
import 'pixel_painter.dart';

class ReceiverPage extends StatefulWidget {
  const ReceiverPage({super.key});

  @override
  State<ReceiverPage> createState() => _ReceiverPageState();
}

class _ReceiverPageState extends State<ReceiverPage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    context.read<ReceiverCubit>().initializeReceiver();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text("Получатель: IP и порт")),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: BlocBuilder<ReceiverCubit, ReceiverState>(
            builder: (context, state) {
              final colorsGrid = state.colorsGrid;

              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(_mapStateToString(state)),
                    const Spacer(),
                    if (colorsGrid != null)
                      CustomPaint(
                        size: const Size(300, 300),
                        painter: PixelPainter(colorsGrid),
                      ),
                    const Spacer(),
                    Text(
                      "Ваш IP: ${state.ip}",
                      style: const TextStyle(fontSize: 18),
                    ),
                    Text(
                      "Ваш порт: ${state.port}",
                      style: const TextStyle(fontSize: 18),
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              );
            },
          ),
        ),
      );

  String _mapStateToString(ReceiverState state) => state.map(
        idle: (_) => 'Создание UDP сокета',
        waitForHandshake: (_) => 'Ожидание рукопожатия от отправителя',
        waitForSecretKey: (_) => 'Ожидание секретного ключа',
        readyToReceive: (_) => 'Рукопожатие завершено. '
            'Ожидание изображения',
        image: (_) => 'Изображение получено и показано не экране',
      );
}
