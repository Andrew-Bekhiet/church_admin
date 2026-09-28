import 'package:church_admin/src/features/attendance/presentation/painters/attendance_check_painter.dart';
import 'package:flutter/material.dart';

class AttendanceCheckIcon extends StatelessWidget {
  static const double _defaultSize = 24;

  final double? size;
  final Color? color;

  const AttendanceCheckIcon({this.size, this.color, super.key});

  @override
  Widget build(BuildContext context) {
    final iconTheme = IconTheme.of(context);

    return ExcludeSemantics(
      child: SizedBox.square(
        dimension: size ?? iconTheme.size ?? _defaultSize,
        child: CustomPaint(
          painter: AttendanceCheckPainter(
            color:
                color ?? iconTheme.color ?? ColorScheme.of(context).onSurface,
          ),
        ),
      ),
    );
  }
}
