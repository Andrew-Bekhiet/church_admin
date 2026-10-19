import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'meeting_day_demographic_counts.freezed.dart';

@freezed
class MeetingDayDemographicCounts with _$MeetingDayDemographicCounts {
  final DateTime day;

  final int? studyYearId;

  final bool? gender;

  final int personsCount;

  final int servantsCount;

  final int totalCount;

  final String? studyYearName;

  const MeetingDayDemographicCounts({
    required this.day,
    required this.personsCount,
    required this.servantsCount,
    required this.totalCount,
    this.studyYearId,
    this.gender,
    this.studyYearName,
  });

  factory MeetingDayDemographicCounts.fromMeetingDayJson(
    Json day, {
    required Map<int, String> studyYearNames,
  }) {
    final studyYearId = day['studyYearId'] as int?;

    return MeetingDayDemographicCounts(
      day: dateFromString(day['day']),
      studyYearId: studyYearId,
      gender: day['gender'] as bool?,
      studyYearName: studyYearNames[studyYearId],
      personsCount: day['personsCount'] as int? ?? 0,
      servantsCount: day['servantsCount'] as int? ?? 0,
      totalCount: day['totalCount'] as int? ?? 0,
    );
  }
}
