import 'package:church_admin/church_admin.dart';

class MeetingsAnalysisScope {
  final Input_MeetingFilterInput meetings;
  final ({int from, int to})? studyYears;
  final bool? gender;

  Input_RosterEntryFilterInput get rosterFilter => Input_RosterEntryFilterInput(
    meeting: meetings,
    studyYearId: switch (studyYears) {
      (:final from, :final to) => Input_RosterEntryFilterStudyYearId(
        greaterThanOrEqual: from,
        lessThanOrEqual: to,
      ),
      null => null,
    },
    gender: switch (gender) {
      final gender? => Input_RosterEntryFilterGender(eq: gender),
      null => null,
    },
  );

  const MeetingsAnalysisScope({
    required this.meetings,
    this.studyYears,
    this.gender,
  });

  factory MeetingsAnalysisScope.of(MeetingsAnalysisSubject subject) =>
      switch (subject) {
        MeetingAnalysisSubject(:final meeting) => MeetingsAnalysisScope(
          meetings: Input_MeetingFilterInput(
            id: Input_MeetingFilterId(eq: meeting.id),
          ),
        ),
        ServiceAnalysisSubject(:final service) => MeetingsAnalysisScope(
          meetings: Input_MeetingFilterInput(
            serviceId: Input_MeetingFilterServiceId(eq: service.id),
          ),
        ),
        GroupAnalysisSubject(:final group) => MeetingsAnalysisScope(
          meetings: Input_MeetingFilterInput(
            groupId: Input_MeetingFilterGroupId(eq: group.id),
          ),
        ),
        ClassAnalysisSubject(:final class$) => MeetingsAnalysisScope._ofClass(
          class$,
        ),
      };

  /// Real meetings are almost always service-wide (no serviceStudyYear or
  /// serviceGender set), so the class's study year and gender narrow the
  /// attendee demographic rows rather than the meeting selection itself.
  factory MeetingsAnalysisScope._ofClass(Class class$) {
    final serviceId = class$.service?.id ?? class$.serviceId;

    return MeetingsAnalysisScope(
      meetings: Input_MeetingFilterInput(
        serviceId: switch (serviceId) {
          final serviceId? => Input_MeetingFilterServiceId(eq: serviceId),
          null => null,
        },
      ),
      studyYears: switch ((
        class$.studyYearFromOrder,
        class$.studyYearToOrder,
      )) {
        (final from?, final to?) => (from: from, to: to),
        _ => null,
      },
      gender: class$.serviceGender,
    );
  }

  Input_MeetingDayFilterInput daysFilter(DateTimeRange range) =>
      Input_MeetingDayFilterInput(
        day: Input_MeetingDayFilterDay(
          greaterThanOrEqual: range.start,
          lessThanOrEqual: range.end,
        ),
        studyYearId: switch (studyYears) {
          (:final from, :final to) => Input_MeetingDayFilterStudyYearId(
            greaterThanOrEqual: from,
            lessThanOrEqual: to,
          ),
          null => null,
        },
        gender: switch (gender) {
          final gender? => Input_MeetingDayFilterGender(eq: gender),
          null => null,
        },
      );
}
