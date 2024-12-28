// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_udp_socket/src/presentation/pixel_painter.dart';

import '../domain/sender/sender_cubit.dart';
import '../domain/sender/sender_state.dart';

class SenderPage extends StatefulWidget {
  const SenderPage({super.key});

  @override
  State<SenderPage> createState() => _SenderPageState();
}

class _SenderPageState extends State<SenderPage> {
  final TextEditingController _ipController = TextEditingController();
  final TextEditingController _portController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Отправитель")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocBuilder<SenderCubit, SenderState>(
          builder: (context, state) {
            final colorsGrid = state.colorsGrid;
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(_mapStateToString(state)),
                const Spacer(),
                if (colorsGrid != null)
                  CustomPaint(
                    size: const Size(300, 300),
                    // Размер области рисования
                    painter: PixelPainter(colorsGrid),
                  ),
                const Spacer(),
                TextField(
                  controller: _ipController,
                  decoration: const InputDecoration(labelText: "IP получателя"),
                  readOnly: state.maybeMap(
                    idle: (_) => false,
                    orElse: () => true,
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: _portController,
                  decoration:
                      const InputDecoration(labelText: "Порт получателя"),
                  keyboardType: TextInputType.number,
                  readOnly: state.maybeMap(
                    idle: (_) => false,
                    orElse: () => true,
                  ),
                ),
                const SizedBox(height: 20),
                state.maybeMap(
                  idle: (_) => ElevatedButton(
                    onPressed: _onStartHandshake,
                    child: const Text("Начать рукопожатие"),
                  ),
                  readyToGenerateImage: (_) => ElevatedButton(
                    onPressed: _onGenerateImage,
                    child: const Text("Сгенерировать"),
                  ),
                  readyToSendImage: (_) => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: _onRegenerateImage,
                        child: const Text("Перегенерировать"),
                      ),
                      ElevatedButton(
                        onPressed: _onImageSend,
                        child: const Text("Отправить"),
                      ),
                    ],
                  ),
                  orElse: () => const SizedBox.shrink(),
                ),
                const SizedBox(height: 40),
              ],
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _ipController.dispose();
    _portController.dispose();
    super.dispose();
  }

  void _onStartHandshake() {
    final ip = _ipController.text;
    final port = int.tryParse(_portController.text) ?? 0;

    context.read<SenderCubit>().startHandshake(
          receiverIp: ip,
          receiverPort: port,
        );
  }

  void _onGenerateImage() => context.read<SenderCubit>().generateImage();

  void _onRegenerateImage() => context.read<SenderCubit>().regenerateImage();

  void _onImageSend() => context.read<SenderCubit>().sendImage();

  String _mapStateToString(SenderState state) => state.map(
        idle: (_) => 'Ожидание начала рукопожатия',
        startHandshake: (_) => 'Рукопожатие начато',
        waitPublicKey: (_) => 'Ожидание публичного ключа получателя',
        finishHandshake: (_) => 'Отправка секретного ключа получателю',
        readyToGenerateImage: (_) => 'Рукопожатие завершено. '
            'Ожидание генерации изображения',
        readyToSendImage: (_) => 'Ожидание отправки изображения',
        sendingImage: (_) => 'Отправка изображения...',
        imageSent: (_) => 'Изображение отправлено',
      );
}
