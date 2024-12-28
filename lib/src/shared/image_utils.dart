import 'dart:math';
import 'dart:ui';

import 'package:image/image.dart' as img;

abstract class ImageUtils {
  static List<List<Color>> convertImageToPixels(img.Image image) {
    final colors = image
        .map(
          (pixel) => Color.fromARGB(
            255,
            pixel.r.toInt(),
            pixel.g.toInt(),
            pixel.b.toInt(),
          ),
        )
        .toList(growable: false);

    return List.generate(
      image.height,
      (row) {
        final columns = image.width;
        return colors.sublist(row * columns, (row + 1) * columns);
      },
    );
  }

  static img.Image generateRandomImage() {
    final random = Random();

    // Размер, кратный 8.
    final randomSize = (random.nextInt(3) + 1) * 8;

    final image = img.Image(
      width: randomSize,
      height: randomSize,
    );

    // Заполняем изображение случайными цветами
    for (final pixel in image) {
      final randomR = random.nextInt(256); // Красный
      final randomG = random.nextInt(256); // Зеленый
      final randomB = random.nextInt(256); // Синий
      pixel.setRgb(randomR, randomG, randomB);
    }

    return image;
  }

  static List<List<Color>> convertPixelsToColorsGrid(
    List<List<List<int>>> pixelsGrid,
  ) =>
      pixelsGrid
          .map(
            (y) => y.map(
              (x) {
                final red = x[0];
                final green = x[1];
                final blue = x[2];

                return Color.fromARGB(255, red, green, blue);
              },
            ).toList(growable: false),
          )
          .toList(growable: false);
}
