import 'package:church_admin/church_admin.dart';

/// Unlike [PersonMeetingAttendanceAnalysis] this is not person-scoped: it
/// exposes aggregate counts across the meeting's roster rather than a single
/// person's streaks.
class MeetingAttendanceSummary {
  final Meeting meeting;

  final List<MeetingDayDemographicCounts> demographics;

  late final List<MeetingDay> days = demographics
      .map(
        (d) => MeetingDay(
          day: d.day,
          personsCount: d.personsCount,
          servantsCount: d.servantsCount,
          totalCount: d.totalCount,
        ),
      )
      .mergedByDay;

  late final int totalAttendances = days.totalAttendances;

  int get heldCount => days.length;

  double get averageAttendance =>
      heldCount == 0 ? 0 : totalAttendances / heldCount;

  int get peakAttendance => days.peakDayByCount?.totalCount ?? 0;

  MeetingDay? get latestDay => days.isEmpty ? null : days.last;

  MeetingAttendanceSummary({
    required this.meeting,
    required this.demographics,
  });

  factory MeetingAttendanceSummary.fromMeetingWithDaysJson(
    Json meeting, {
    required Map<int, String> studyYearNames,
  }) => MeetingAttendanceSummary(
    meeting: Meeting.fromJson(meeting),
    demographics: [
      for (final day in meeting['days'] as List? ?? const [])
        MeetingDayDemographicCounts.fromMeetingDayJson(
          (day as Map).cast(),
          studyYearNames: studyYearNames,
        ),
    ],
  );
}
