import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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
    final last = analysis.lastAttended;

    final weeksSince = analysis.weeksSinceLastAttended;
    final isStale = weeksSince != null && weeksSince >= staleWeeks;

    final lastLabel = last == null
        ? 'لم يسبق الحضور'
        : 'آخر حضور: ${_formatRelativeAttendanceDate(last)}';
    final lastColor = last == null || isStale ? colorScheme.error : null;

    return Row(
      children: [
        if (analysis.currentStreak > 0) ...[
          Icon(
            Symbols.local_fire_department,
            size: 15,
            color: colorScheme.primary,
          ),
          Text(
            '${analysis.currentStreak}',
            style: themeData.textTheme.labelMedium?.copyWith(
              color: colorScheme.primary,
            ),
          ),
          const SizedBox(width: 8),
        ] else if (analysis.absenceStreak > 0) ...[
          Icon(
            Symbols.warning,
            size: 15,
            color: colorScheme.error,
          ),
          Text(
            'غاب ${analysis.absenceStreak} مرة',
            style: themeData.textTheme.labelMedium?.copyWith(
              color: colorScheme.error,
            ),
          ),
          const SizedBox(width: 8),
        ],
        Expanded(
          child: Text(
            lastLabel,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: themeData.textTheme.bodySmall?.copyWith(color: lastColor),
          ),
        ),
      ],
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
