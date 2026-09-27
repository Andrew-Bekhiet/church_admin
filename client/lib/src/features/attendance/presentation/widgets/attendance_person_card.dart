import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart' hide TextDirection;
import 'package:material_symbols_icons/material_symbols_icons.dart';

class AttendancePersonCard extends StatelessWidget {
  static const int _staleWeeks = 3;

  static const double _cardVerticalMargin = 1.5;
  static const double _cardVerticalPadding = 6;

  static const double kCardExtent = 78;

  final MeetingRosterEntry entry;
  final ValueChanged<MeetingRosterEntry> onToggle;
  final ValueChanged<TimeOfDay> onChangeAttendanceTime;
  final bool removeEndPadding;

  const AttendancePersonCard({
    required this.entry,
    required this.onToggle,
    required this.onChangeAttendanceTime,
    this.removeEndPadding = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.of(context);
    final present = entry.attended;
    final attendanceTime = present ? entry.attendance?.datetime : null;
    final recordsKodas = context.select<RecordKodasCubit, bool>(
      (cubit) => cubit.state.isVisible,
    );

    const minTileHeight =
        kCardExtent - _cardVerticalMargin * 2 - _cardVerticalPadding * 2;

    return Card(
      margin: const EdgeInsetsDirectional.symmetric(
        horizontal: 8,
        vertical: _cardVerticalMargin,
      ).copyWith(end: removeEndPadding ? 0 : null),
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      color: colorScheme.surfaceContainerLow,
      child: ListTile(
        minTileHeight: minTileHeight,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: _cardVerticalPadding,
        ),
        onTap: () => onToggle(entry),
        onLongPress: () => _openDetails(context),
        leading: ImageObjectWidget(entry.person, size: 44),
        horizontalTitleGap: 10,
        title: Text(
          entry.person.name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: _TrackRecordLine(
          analysis: entry.personAttendanceAnalysis,
          staleWeeks: _staleWeeks,
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (recordsKodas) AttendanceKodasToggle(person: entry.person),
            AttendanceLabelledToggle(
              selected: present,
              label: switch (attendanceTime) {
                final time? => DateFormat.jm('ar').format(time),
                null => 'حضور',
              },
              semanticsLabel: 'حضور ${entry.person.name}',
              icon: const AttendanceCheckIcon(),
              fillColor: colorScheme.inverseSurface,
              iconColor: colorScheme.onInverseSurface,
              selectedLabelColor: colorScheme.onSurface,
              onTap: () => onToggle(entry),
              onLongPress: present
                  ? () => _changeAttendanceTime(context)
                  : null,
            ),
          ],
        ),
      ),
    );
  }

  void _openDetails(BuildContext context) =>
      ViewPersonRoute(id: entry.person.id, $extra: entry.person).push(context);

  Future<void> _changeAttendanceTime(BuildContext context) async {
    final attendanceDateTime = entry.attendance?.datetime;
    if (attendanceDateTime == null) return;

    final result = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(attendanceDateTime),
    );
    if (result == null) return;

    onChangeAttendanceTime(result);
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
