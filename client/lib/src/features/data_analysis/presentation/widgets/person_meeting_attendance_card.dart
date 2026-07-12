import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class PersonMeetingAttendanceCard extends StatelessWidget {
  static const int _absenceAlertWeeks = 2;

  final String personId;
  final PersonMeetingAttendanceAnalysis analysis;
  final DateTimeRange range;
  final bool showTime;

  String get _name => analysis.asServant
      ? '${analysis.meeting.name} (كخادم)'
      : analysis.meeting.name;

  String get _percentLabel =>
      '${(analysis.percent * 100).toStringAsFixed(1).replaceAll('.0', '')}%';

  DateTime? get _absenceSince {
    final streak = analysis.absenceStreak;
    if (streak == 0) return null;

    return analysis.heldDays[analysis.heldDays.length - streak];
  }

  bool get _isLastAttendedAlerting => switch (analysis.lastAttended) {
    null => true,
    _ => switch (analysis.weeksSinceLastAttended) {
      final weeksSince? => weeksSince >= _absenceAlertWeeks,
      null => false,
    },
  };

  const PersonMeetingAttendanceCard({
    required this.personId,
    required this.analysis,
    required this.range,
    this.showTime = true,
    super.key,
  });

  ViewableObjectListController<LastRecordedByInfo> _historyController() =>
      ViewableObjectListController(
        objectsPaginatableStream: DatabaseService.I.meetings
            .paginatePersonAttendance(
              personId: personId,
              meetingId: analysis.meeting.id,
              asServant: analysis.asServant,
            ),
      );

  @override
  Widget build(BuildContext context) {
    final textTheme = TextTheme.of(context);
    final colorScheme = ColorScheme.of(context);
    final accent = analysis.meeting.color ?? colorScheme.primary;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 8,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              spacing: 12,
              children: [
                MeetingAvatar(meeting: analysis.meeting, radius: 18),
                Expanded(child: Text(_name, style: textTheme.titleLarge)),
              ],
            ),
          ),
          if (analysis.heldCount == 0)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Center(
                child: Text('لا يوجد سجل', style: textTheme.titleMedium),
              ),
            )
          else ...[
            AttendanceKpiGrid(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: [
                AttendanceKpiTile(
                  icon: const Icon(Symbols.check_circle),
                  label: 'نسبة الحضور',
                  value: _percentLabel,
                  caption:
                      'حضر ${analysis.attendedCount} '
                      'من ${analysis.heldCount} يوم',
                  accentColor: accent,
                  emphasized: true,
                ),
                switch ((analysis.attendanceStreak, analysis.absenceStreak)) {
                  (0, > 0) => AttendanceKpiTile(
                    icon: const Icon(Symbols.event_busy),
                    label: 'غياب متواصل',
                    value: analysis.absenceStreak.toString(),
                    caption: _sinceLabel(_absenceSince),
                    accentColor: colorScheme.error,
                  ),
                  _ => AttendanceKpiTile(
                    icon: const Icon(Symbols.local_fire_department),
                    label: 'المواظبة الحالية',
                    value: analysis.attendanceStreak.toString(),
                    caption: _rangeLabel(analysis.currentStreakRange),
                  ),
                },
                AttendanceKpiTile(
                  icon: const Icon(Symbols.trophy),
                  label: 'أطول مواظبة',
                  value: analysis.longestStreak.toString(),
                  caption: _rangeLabel(analysis.longestStreakRange),
                ),
                AttendanceKpiTile(
                  icon: const Icon(Symbols.history),
                  label: 'آخر حضور',
                  value: analysis.lastAttended?.toDurationString() ?? 'لم يحضر',
                  caption: switch (analysis.lastAttended) {
                    null => null,
                    final lastAttended => DateFormat(
                      'yyyy/M/d',
                      'ar',
                    ).format(lastAttended),
                  },
                  accentColor: _isLastAttendedAlerting
                      ? colorScheme.error
                      : null,
                  onTap: () =>
                      HistoryProperty.showHistoryDialog<LastRecordedByInfo>(
                        context,
                        _historyController,
                        showTime: showTime,
                      ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: PersonMeetingAttendanceCalendar(
                analysis: analysis,
                range: range,
              ),
            ),
          ],
        ],
      ),
    );
  }

  String? _rangeLabel(DateTimeRange? range) {
    if (range == null) return null;

    final format = DateFormat('yyyy/M/d', 'ar');
    return 'من ${format.format(range.start)} إلى ${format.format(range.end)}';
  }

  String? _sinceLabel(DateTime? since) {
    if (since == null) return null;

    return 'منذ ${DateFormat('yyyy/M/d', 'ar').format(since)}';
  }
}
