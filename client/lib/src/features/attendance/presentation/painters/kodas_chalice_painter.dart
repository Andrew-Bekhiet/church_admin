import 'package:flutter/material.dart';

class KodasChalicePainter extends CustomPainter {
  static const double _viewBox = 24;
  static const double _strokeWidth = 1.6;

  final Color color;
  final bool filled;

  const KodasChalicePainter({required this.color, required this.filled});

  @override
  void paint(Canvas canvas, Size size) {
    canvas.scale(size.width / _viewBox, size.height / _viewBox);

    final stroke = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = _strokeWidth
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;
    final fill = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final cross = Path()
      ..moveTo(12, 1.6)
      ..lineTo(12, 6.4)
      ..moveTo(9.6, 3.6)
      ..lineTo(14.4, 3.6);
    final cup = Path()
      ..moveTo(5, 8.8)
      ..lineTo(19, 8.8)
      ..cubicTo(19, 12.9, 16, 15.4, 12, 15.4)
      ..cubicTo(8, 15.4, 5, 12.9, 5, 8.8)
      ..close();
    final stem = Path()
      ..moveTo(12, 15.4)
      ..lineTo(12, 19.4);

    canvas
      ..drawPath(cross, stroke)
      ..drawPath(cup, filled ? fill : stroke)
      ..drawPath(cup, stroke)
      ..drawPath(stem, stroke)
      ..drawRRect(
        RRect.fromLTRBR(7.4, 19.6, 16.6, 22.2, const Radius.circular(1.3)),
        fill,
      );
  }

  @override
  bool shouldRepaint(KodasChalicePainter oldDelegate) =>
      oldDelegate.color != color || oldDelegate.filled != filled;
}
