import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:material_ui/material_ui.dart';

class ImageObjectPlaceholder extends StatelessWidget {
  final IconData defaultIcon;
  final String? blurhash;
  final double size;

  const ImageObjectPlaceholder({
    required this.defaultIcon,
    required this.size,
    this.blurhash,
  });

  @override
  Widget build(BuildContext context) {
    if (blurhash case final blurhash?) {
      return Image(
        height: size,
        width: size,
        image: BlurHashImage(
          blurhash,
          scale: 32 / size,
        ),
        frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
          if (frame != null) return child;

          return Icon(
            defaultIcon,
            size: size,
          );
        },
        gaplessPlayback: true,
      );
    }

    return Icon(
      defaultIcon,
      size: size,
    );
  }
}
