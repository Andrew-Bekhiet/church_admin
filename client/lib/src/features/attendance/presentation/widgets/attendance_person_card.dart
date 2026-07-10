import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' hide TextDirection;
import 'package:material_symbols_icons/material_symbols_icons.dart';

class AttendancePersonCard extends StatelessWidget {
  static const int _staleWeeks = 3;

  static const double _cardVerticalMargin = 1.5;
  static const double _cardVerticalPadding = 6;

  static const double kCardExtent = 78;

  final MeetingRosterEntry entry;
  final ValueChanged<MeetingRosterEntry> onToggle;
  final bool removeEndPadding;

  const AttendancePersonCard({
    required this.entry,
    required this.onToggle,
    this.removeEndPadding = false,
    super.key,
  });

  void _openDetails(BuildContext context) =>
      ViewPersonRoute(id: entry.person.id, $extra: entry.person).push(context);

  @override
  Widget build(BuildContext context) {
    final present = entry.attended;
    final attendanceTime = present ? entry.attendance?.datetime : null;

    const minTileHeight =
        kCardExtent - _cardVerticalMargin * 2 - _cardVerticalPadding * 2;

    return Card(
      margin: const EdgeInsetsDirectional.symmetric(
        horizontal: 8,
        vertical: _cardVerticalMargin,
      ).copyWith(end: removeEndPadding ? 0 : null),
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      color: ColorScheme.of(context).surfaceContainerLow,
      child: ListTile(
        minTileHeight: minTileHeight,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: _cardVerticalPadding,
        ),
        onTap: () => onToggle(entry),
        onLongPress: () => _openDetails(context),
        leading: ImageObjectWidget(entry.person, size: 44),
        title: Row(
          children: [
            Expanded(
              child: Text(
                entry.person.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            if (attendanceTime != null)
              Text(
                DateFormat.jm('ar').format(attendanceTime),
              ),
          ],
        ),
        subtitle: _TrackRecordLine(
          analysis: entry.personAttendanceAnalysis,
          staleWeeks: _staleWeeks,
        ),
        trailing: AttendancePersonToggle(
          isPresent: present,
          onTap: () => onToggle(entry),
        ),
      ),
    );
  }
}

class _TrackRecordLine extends StatelessWidget {
  final PersonMeetingAttendanceAnalysis? analysis;
  final int staleWeeks;

  const _TrackRecordLine({required this.analysis, required this.staleWeeks});

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
