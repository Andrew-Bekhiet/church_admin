import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/meetings/__generated__/queries.gql.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'meeting_day_demographic_counts.freezed.dart';

@freezed
class MeetingDayDemographicCounts with _$MeetingDayDemographicCounts {
  final DateTime day;

  final int? studyYearId;

  final Gender gender;

  final int personsCount;

  final int servantsCount;

  final int totalCount;

  final String? studyYearName;

  const MeetingDayDemographicCounts({
    required this.day,
    required this.personsCount,
    required this.servantsCount,
    required this.totalCount,
    this.gender = Gender.any,
    this.studyYearId,
    this.studyYearName,
  });

  factory MeetingDayDemographicCounts.fromQueryResult(
    Query_meetingsAttendanceAnalysis_historyMeetings_days data,
  ) => MeetingDayDemographicCounts(
    day: data.day ?? DateTime.now(),
    studyYearId: data.studyYearId,
    gender: Gender.fromIsMale(data.gender),
    studyYearName: data.studyYear?.name,
    personsCount: data.personsCount ?? 0,
    servantsCount: data.servantsCount ?? 0,
    totalCount: data.totalCount ?? 0,
  );
}
