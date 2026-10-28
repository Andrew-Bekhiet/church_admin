import 'package:church_admin/church_admin.dart';
import 'package:clock/clock.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const serviceMeetingId = 'meeting-1';
  const serviceId = 'service-1';
  const groupMeetingId = 'meeting-2';
  const groupId = 'group-1';
  const standaloneMeetingId = 'meeting-3';
  const person1Id = 'person-1';
  const person2Id = 'person-2';
  const person3Id = 'person-3';
  const person4Id = 'person-4';
  final today = Clock.fixed(DateTime(2026, 10, 23, 9));
  const serviceMeeting = Meeting(
    id: serviceMeetingId,
    name: 'اجتماع الخدمة',
    audience: MeetingAudience.onlyPersons,
    isArchived: false,
    serviceId: serviceId,
  );
  const groupMeeting = Meeting(
    id: groupMeetingId,
    name: 'اجتماع المجموعة',
    audience: MeetingAudience.personsAndServants,
    isArchived: false,
    groupId: groupId,
  );
  const standaloneMeeting = Meeting(
    id: standaloneMeetingId,
    name: 'اجتماع عام',
    audience: MeetingAudience.onlyServants,
    isArchived: false,
  );
  final servantsRosterSettings = withClock(
    today,
    () => AttendanceRosterSettings.of(
      RecordAttendanceLoaded(
        meeting: serviceMeeting,
        selectedDate: DateTime(2026, 10, 23),
        audienceView: AttendanceRosterAudienceView.servants,
        canToggleAudience: true,
        presenceFilter: AttendancePresenceFilter.absent,
        grouping: AttendanceGrouping.studyYear,
        sort: AttendanceSorting.byAttendanceTime(),
        rosterStatus: RosterStatus.ready,
        entries: const [],
        gutterLetters: const [],
        presentCount: 3,
        eligibleCount: 10,
        streakWindowDays: 28,
        searchQuery: 'min',
      ),
    ),
  );

  group('Attendance analytics contract =>', () {
    for (final (event, expectedName, expectedProperties)
        in <(AnalyticsEvent, String, Json)>[
          (
            AttendancePersonMark(
              serviceMeeting,
              personId: person1Id,
              newState: AttendanceMarkState.present,
              rosterSettings: servantsRosterSettings,
              isSuccess: true,
            ),
            'attendance:person_mark',
            {
              'meeting_id': serviceMeetingId,
              'service_id': serviceId,
              'is_as_servant': true,
              'is_today': true,
              'sort_type': 'attendanceTime',
              'sort_direction': 'descending',
              'presence_filter': 'absent',
              'is_search_active': true,
              'grouping': 'studyYear',
              'person_id': person1Id,
              'new_state': 'present',
              'is_success': true,
            },
          ),
          (
            AttendanceUndo(
              groupMeeting,
              personId: person2Id,
              undoneChange: AttendanceUndoableChange.markedAbsent,
            ),
            'attendance:undo',
            {
              'meeting_id': groupMeetingId,
              'group_id': groupId,
              'person_id': person2Id,
              'undone_change': 'markedAbsent',
            },
          ),
          (
            AttendanceMeetingSwitch(
              standaloneMeeting,
              fromMeetingId: serviceMeetingId,
            ),
            'attendance:meeting_switch',
            {
              'meeting_id': standaloneMeetingId,
              'from_meeting_id': serviceMeetingId,
            },
          ),
          (
            AttendanceMeetingSelectorDismiss(standaloneMeeting),
            'attendance:meeting_selector_dismiss',
            {'meeting_id': standaloneMeetingId},
          ),
          (
            withClock(
              today,
              () => AttendanceDateChange(
                standaloneMeeting,
                day: DateTime(2026, 10, 20),
                hasRecordsOnDay: true,
              ),
            ),
            'attendance:date_change',
            {
              'meeting_id': standaloneMeetingId,
              'days_from_today': -3,
              'has_records_on_day': true,
            },
          ),
          (
            AttendanceAudienceViewToggle(
              standaloneMeeting,
              AttendanceRosterAudienceView.persons,
            ),
            'attendance:audience_toggle',
            {'meeting_id': standaloneMeetingId, 'audience_view': 'persons'},
          ),
          (
            AttendancePresenceFilterChange(
              standaloneMeeting,
              presenceFilter: AttendancePresenceFilter.present,
              isReset: false,
              presentCount: 4,
              eligibleCount: 9,
            ),
            'attendance:presence_filter_change',
            {
              'meeting_id': standaloneMeetingId,
              'presence_filter': 'present',
              'is_reset': false,
              'present_count': 4,
              'eligible_count': 9,
            },
          ),
          (
            AttendanceSearchRun(
              standaloneMeeting,
              query: '+20 100 123',
              resultCount: 1,
            ),
            'attendance:search_run',
            {
              'meeting_id': standaloneMeetingId,
              'query_length': 11,
              'is_phone_query': true,
              'result_count': 1,
            },
          ),
          (
            AttendanceSearchRun(
              standaloneMeeting,
              query: 'مينا',
              resultCount: 5,
            ),
            'attendance:search_run',
            {
              'meeting_id': standaloneMeetingId,
              'query_length': 4,
              'is_phone_query': false,
              'result_count': 5,
            },
          ),
          (
            AttendanceSortChange(standaloneMeeting, AttendanceSorting.byName()),
            'attendance:sort_change',
            {
              'meeting_id': standaloneMeetingId,
              'sort_type': 'name',
              'sort_direction': 'ascending',
            },
          ),
          (
            AttendanceSortChange(
              standaloneMeeting,
              AttendanceSorting.byLastAttendanceTime(),
            ),
            'attendance:sort_change',
            {
              'meeting_id': standaloneMeetingId,
              'sort_type': 'lastAttendanceTime',
              'sort_direction': 'ascending',
            },
          ),
          (
            AttendanceSortChange(
              standaloneMeeting,
              const AttendanceSortingByStudyYear(
                then: AttendanceSortingByName(),
              ),
            ),
            'attendance:sort_change',
            {
              'meeting_id': standaloneMeetingId,
              'sort_type': 'studyYear',
              'sort_direction': 'ascending',
            },
          ),
          (
            AttendanceSortReverse(
              standaloneMeeting,
              AttendanceSorting.byAttendanceStreak().withReversedDirection(),
            ),
            'attendance:sort_reverse',
            {
              'meeting_id': standaloneMeetingId,
              'sort_type': 'streak',
              'sort_direction': 'descending',
            },
          ),
          (
            AttendanceSortReverse(
              standaloneMeeting,
              AttendanceSorting.byName().then,
            ),
            'attendance:sort_reverse',
            {
              'meeting_id': standaloneMeetingId,
              'sort_type': 'id',
              'sort_direction': 'ascending',
            },
          ),
          (
            AttendanceGroupingToggle(
              standaloneMeeting,
              AttendanceGrouping.none,
            ),
            'attendance:grouping_toggle',
            {'meeting_id': standaloneMeetingId, 'grouping': 'none'},
          ),
          (
            AttendanceSectionToggle(
              standaloneMeeting,
              isCollapsed: true,
              sectionPersonCount: 12,
            ),
            'attendance:section_toggle',
            {
              'meeting_id': standaloneMeetingId,
              'is_collapsed': true,
              'section_person_count': 12,
            },
          ),
          (
            AttendanceStreakWindowChange(standaloneMeeting, 56),
            'attendance:streak_window_change',
            {'meeting_id': standaloneMeetingId, 'streak_window_days': 56},
          ),
          (
            AttendanceTimeEdit(
              standaloneMeeting,
              personId: person3Id,
              shift: const Duration(minutes: -15),
              outcome: AttendanceTimeEditOutcome.saved,
            ),
            'attendance:time_edit',
            {
              'meeting_id': standaloneMeetingId,
              'person_id': person3Id,
              'shift_duration_ms': -900000,
              'is_rejected_future': false,
              'is_success': true,
            },
          ),
          (
            AttendancePersonProfileOpen(
              standaloneMeeting,
              personId: person4Id,
            ),
            'attendance:person_profile_open',
            {'meeting_id': standaloneMeetingId, 'person_id': person4Id},
          ),
          (
            AttendanceLetterGutterUse(
              standaloneMeeting,
              AttendanceLetterGutterGesture.drag,
            ),
            'attendance:letter_gutter_use',
            {'meeting_id': standaloneMeetingId, 'gutter_gesture': 'drag'},
          ),
          (
            AttendanceAnalysisOpen(
              standaloneMeeting,
              CustomDateTimeRangePreset(
                range: DateTimeRange(
                  start: DateTime(2026, 10, 5),
                  end: DateTime(2026, 10, 5),
                ),
              ),
            ),
            'attendance:analysis_open',
            {'meeting_id': standaloneMeetingId, 'range_preset': 'custom'},
          ),
          (
            AttendanceRetry(standaloneMeeting),
            'attendance:retry',
            {'meeting_id': standaloneMeetingId},
          ),
        ]) {
      test('$expectedName sends $expectedProperties', () {
        expect(
          event,
          isA<AnalyticsEvent>()
              .having((event) => event.name, 'name', expectedName)
              .having(
                (event) => event.properties,
                'properties',
                expectedProperties,
              ),
        );
      });
    }
  });
}
