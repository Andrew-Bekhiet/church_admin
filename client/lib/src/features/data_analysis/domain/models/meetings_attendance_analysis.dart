import 'dart:collection';
import 'dart:ui';

import 'package:church_admin/church_admin.dart';

class MeetingsAttendanceAnalysis {
  final String title;
  final Color? color;
  final List<MeetingAttendanceSummary> meetings;

  /// Merged by date so a service running several meetings on the same day
  /// shows a single combined point.
  late final List<MeetingDay> aggregateDays = meetings
      .expand((m) => m.days)
      .mergedByDay;

  late final List<MeetingDayDemographicCounts> allDemographics = meetings
      .expand((m) => m.demographics)
      .toList();

  late final List<DemographicBreakdownEntry> demographicBreakdown =
      _computeDemographicBreakdown();

  late final int totalAttendances = meetings.fold(
    0,
    (sum, m) => sum + m.totalAttendances,
  );

  int get heldCount => aggregateDays.length;

  double get averageAttendance =>
      heldCount == 0 ? 0 : totalAttendances / heldCount;

  int get peakAttendance => aggregateDays.peakDayByCount?.totalCount ?? 0;

  MeetingDay? get peakDay => aggregateDays.peakDayByCount;

  MeetingDay? get latestDay => aggregateDays.lastOrNull;

  bool get hasMeetingBreakdown => meetings.length > 1;

  /// A class analysis is already scoped to a single study year + gender, so
  /// its single slice adds nothing and the breakdown is hidden.
  bool get hasDemographicBreakdown => demographicBreakdown.length > 1;

  MeetingsAttendanceAnalysis({
    required this.title,
    required this.meetings,
    this.color,
  });

  List<DemographicBreakdownEntry> _computeDemographicBreakdown() {
    final byKey = SplayTreeMap<(int?, bool?), DemographicBreakdownEntry>(
      (a, b) {
        final studyYearCompare = (a.$1 ?? -1).compareTo(b.$1 ?? -1);
        if (studyYearCompare != 0) return studyYearCompare;

        return (a.$2 == b.$2)
            ? 0
            : (a.$2 ?? false)
            ? 1
            : -1;
      },
    );

    for (final d in allDemographics) {
      final key = (d.studyYearId, d.gender);
      final existing = byKey[key];

      byKey[key] = (
        studyYearId: d.studyYearId,
        studyYearName: existing?.studyYearName ?? d.studyYearName,
        gender: d.gender,
        personsCount: (existing?.personsCount ?? 0) + d.personsCount,
        servantsCount: (existing?.servantsCount ?? 0) + d.servantsCount,
        totalCount: (existing?.totalCount ?? 0) + d.totalCount,
      );
    }

    return byKey.values.toList();
  }
}
