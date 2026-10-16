import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' hide TextDirection;
import 'package:material_symbols_icons/material_symbols_icons.dart';

class AttendancePersonTrackRecordLine extends StatelessWidget {
  final PersonMeetingAttendanceAnalysis? analysis;
  final int staleWeeks;

  const AttendancePersonTrackRecordLine({
    required this.analysis,
    required this.staleWeeks,
  });

  @override
  Widget build(BuildContext context) {
    final analysis = this.analysis;
    if (analysis == null) return const SizedBox(height: 16);

    final themeData = Theme.of(context);
    final colorScheme = themeData.colorScheme;
    final lastAttended = analysis.lastAttended;

    final weeksSince = analysis.weeksSinceLastAttended;
    final isStale = weeksSince != null && weeksSince >= staleWeeks;

    final lastColor = lastAttended == null || isStale
        ? colorScheme.error
        : null;

    final textStyle = themeData.textTheme.bodySmall!.copyWith(
      fontWeight: FontWeight.w400,
    );

    return DefaultTextStyle(
      style: textStyle,
      child: Row(
        spacing: 4,
        children: [
          if (analysis.attendanceStreak > 0)
            Row(
              spacing: 1,
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Symbols.local_fire_department,
                  size: 15,
                  opticalSize: textStyle.fontSize,
                  color: colorScheme.primary,
                ),
                Text(
                  '${analysis.attendanceStreak}',
                  style: TextStyle(color: colorScheme.primary),
                ),
              ],
            )
          else if (analysis.absenceStreak > 0)
            Row(
              spacing: 1,
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Symbols.error,
                  size: 15,
                  opticalSize: textStyle.fontSize,
                  color: colorScheme.error,
                ),
                Text(
                  'غياب ${analysis.absenceStreak} مرة',
                  style: TextStyle(color: colorScheme.error),
                ),
              ],
            ),
          if (lastAttended case final lastAttended?)
            Row(
              spacing: 1,
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Symbols.history,
                  size: 15,
                  opticalSize: textStyle.fontSize,
                  color: lastColor,
                ),
                Text(
                  _formatRelativeAttendanceDate(lastAttended),
                  style: TextStyle(color: lastColor),
                ),
              ],
            ),
        ],
      ),
    );
  }

  String _formatRelativeAttendanceDate(DateTime date) {
    final today = DateUtils.dateOnly(DateTime.now());
    final daysSince = today.difference(DateUtils.dateOnly(date)).inDays;

    if (daysSince <= 0) return 'اليوم';
    if (daysSince == 1) return 'أمس';
    if (daysSince <= 30) {
      return daysSince < 7
          ? 'منذ $daysSince يوم'
          : 'منذ ${daysSince ~/ 7} أسبوع';
    }

    return DateFormat.yMd('ar').format(date);
  }
}
