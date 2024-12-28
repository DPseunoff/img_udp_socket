import 'package:flutter/material.dart';

class PixelPainter extends CustomPainter {
  final List<List<Color>> pixels;

  PixelPainter(this.pixels);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    final pixelWidth = size.width / pixels.length; // Ширина одного пикселя
    final pixelHeight = size.height / pixels.length; // Высота одного пикселя

    for (int y = 0; y < pixels.length; y++) {
      for (int x = 0; x < pixels[y].length; x++) {
        paint.color = pixels[y][x];
        canvas.drawRect(
          Rect.fromLTWH(
            x * pixelWidth,
            y * pixelHeight,
            pixelWidth,
            pixelHeight,
          ),
          paint,
        );
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
