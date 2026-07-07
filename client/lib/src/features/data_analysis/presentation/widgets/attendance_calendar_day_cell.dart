import 'package:derived_colors/derived_colors.dart';
import 'package:flutter/material.dart';

class AttendanceCalendarDayCell extends StatelessWidget {
  final DateTime day;
  final bool attended;
  final Color fillColor;
  final Color outlineColor;

  const AttendanceCalendarDayCell({
    required this.day,
    required this.attended,
    required this.fillColor,
    required this.outlineColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: attended ? null : Border.all(color: outlineColor),
        color: attended ? fillColor : null,
        shape: BoxShape.circle,
      ),
      child: Text(
        day.day.toString(),
        style: TextStyle(color: attended ? fillColor.findInvert() : null),
      ),
    );
  }
}
