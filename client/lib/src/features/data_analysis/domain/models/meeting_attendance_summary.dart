import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/meetings/__generated__/queries.gql.dart';

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

  factory MeetingAttendanceSummary.fromQueryResult(
    Query_meetingsAttendanceAnalysis_historyMeetings data,
  ) => MeetingAttendanceSummary(
    meeting: Meeting.fromJson(data.toJson()),
    demographics: data.days
        .map(MeetingDayDemographicCounts.fromQueryResult)
        .toList(),
  );
}
