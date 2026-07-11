import 'dart:collection';

import 'package:church_admin/church_admin.dart';

/// A [MeetingsAttendanceAnalysis] scoped to a single day, where averages and
/// trends are meaningless. It instead joins the day's attendance against the
/// roster to expose attendance rates per class (study year + gender).
class SingleDayMeetingsAttendanceAnalysis extends MeetingsAttendanceAnalysis {
  final List<RosterDemographicEntry> rosterDemographics;

  late final int rosterSize = rosterDemographics.length;

  late final List<ClassAttendanceRate> classAttendanceRates =
      _computeClassAttendanceRates();

  double? get overallAttendanceRate =>
      rosterSize == 0 ? null : totalAttendances / rosterSize;

  ClassAttendanceRate? get topClass {
    ClassAttendanceRate? best;

    for (final entry in classAttendanceRates) {
      if (entry.rate case final rate?) {
        if (best == null || rate > best.rate!) best = entry;
      }
    }

    return best;
  }

  SingleDayMeetingsAttendanceAnalysis({
    required super.title,
    required super.meetings,
    required this.rosterDemographics,
    super.color,
  });

  static int _compareKeys((int?, bool?) a, (int?, bool?) b) {
    final studyYearCompare = (a.$1 ?? -1).compareTo(b.$1 ?? -1);
    if (studyYearCompare != 0) return studyYearCompare;

    return (a.$2 == b.$2)
        ? 0
        : (a.$2 ?? false)
        ? 1
        : -1;
  }

  List<ClassAttendanceRate> _computeClassAttendanceRates() {
    final rosterCounts = <(int?, bool?), int>{};
    final rosterNames = <(int?, bool?), String?>{};

    for (final entry in rosterDemographics) {
      final key = (entry.studyYearId, entry.gender);
      rosterCounts.update(key, (count) => count + 1, ifAbsent: () => 1);
      rosterNames.putIfAbsent(key, () => entry.studyYearName);
    }

    final byKey = SplayTreeMap<(int?, bool?), ClassAttendanceRate>(
      _compareKeys,
    );

    for (final entry in demographicBreakdown) {
      final key = (entry.studyYearId, entry.gender);
      final rosterCount = rosterCounts[key] ?? 0;

      byKey[key] = (
        studyYearId: entry.studyYearId,
        studyYearName: entry.studyYearName ?? rosterNames[key],
        gender: entry.gender,
        attendedCount: entry.totalCount,
        rosterCount: rosterCount,
        rate: rosterCount == 0 ? null : entry.totalCount / rosterCount,
      );
    }

    for (final MapEntry(:key, value: rosterCount) in rosterCounts.entries) {
      byKey.putIfAbsent(
        key,
        () => (
          studyYearId: key.$1,
          studyYearName: rosterNames[key],
          gender: key.$2,
          attendedCount: 0,
          rosterCount: rosterCount,
          rate: 0,
        ),
      );
    }

    return byKey.values.toList();
  }
}
