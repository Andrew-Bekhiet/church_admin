import 'package:flutter/material.dart';

class AttendanceCheckPainter extends CustomPainter {
  static const double _viewBox = 24;
  static const double _strokeWidth = 1.8;

  final Color color;

  const AttendanceCheckPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    canvas.scale(size.width / _viewBox, size.height / _viewBox);

    final stroke = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = _strokeWidth
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    final shoulders = Path()
      ..moveTo(3, 20)
      ..cubicTo(3, 16.4, 5.9, 13.9, 9.5, 13.9)
      ..cubicTo(10.9, 13.9, 12.2, 14.3, 13.2, 15);
    final check = Path()
      ..moveTo(14.6, 18.2)
      ..lineTo(16.8, 20.3)
      ..lineTo(21, 15.8);

    canvas
      ..drawCircle(const Offset(9.5, 7.6), 3.6, stroke)
      ..drawPath(shoulders, stroke)
      ..drawPath(check, stroke);
  }

  @override
  bool shouldRepaint(AttendanceCheckPainter oldDelegate) =>
      oldDelegate.color != color;
}
