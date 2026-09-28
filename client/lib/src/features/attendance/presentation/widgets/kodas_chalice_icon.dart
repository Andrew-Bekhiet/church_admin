import 'package:church_admin/src/features/attendance/presentation/painters/kodas_chalice_painter.dart';
import 'package:flutter/material.dart';

class KodasChaliceIcon extends StatelessWidget {
  static const double _defaultSize = 24;

  final bool filled;
  final double? size;
  final Color? color;

  const KodasChaliceIcon({
    this.filled = false,
    this.size,
    this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final iconTheme = IconTheme.of(context);

    return ExcludeSemantics(
      child: SizedBox.square(
        dimension: size ?? iconTheme.size ?? _defaultSize,
        child: CustomPaint(
          painter: KodasChalicePainter(
            color:
                color ?? iconTheme.color ?? ColorScheme.of(context).onSurface,
            filled: filled,
          ),
        ),
      ),
    );
  }
}
