import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class MeetingAttendanceTrendChart extends StatelessWidget {
  final List<MeetingDay> days;
  final Color? color;

  const MeetingAttendanceTrendChart({
    required this.days,
    this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) => AttendanceTrendChart(
    points: [for (final day in days) (day.day, day.totalCount)],
    color: color,
  );
}
