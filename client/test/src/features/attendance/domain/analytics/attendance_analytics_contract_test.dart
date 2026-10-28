import 'package:church_admin/church_admin.dart';
import 'package:clock/clock.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final today = Clock.fixed(DateTime(2026, 10, 23, 9));
  const serviceMeeting = Meeting(
    id: 'meeting-1',
    name: 'اجتماع الخدمة',
    audience: MeetingAudience.onlyPersons,
    isArchived: false,
    serviceId: 'service-1',
  );
  const groupMeeting = Meeting(
    id: 'meeting-2',
    name: 'اجتماع المجموعة',
    audience: MeetingAudience.personsAndServants,
    isArchived: false,
    groupId: 'group-1',
  );
  const standaloneMeeting = Meeting(
    id: 'meeting-3',
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
              personId: 'person-1',
              newState: AttendanceMarkState.present,
              rosterSettings: servantsRosterSettings,
              isSuccess: true,
            ),
            'attendance:person_mark',
            {
              'meeting_id': 'meeting-1',
              'service_id': 'service-1',
              'is_as_servant': true,
              'is_today': true,
              'sort_type': 'attendanceTime',
              'sort_direction': 'descending',
              'presence_filter': 'absent',
              'is_search_active': true,
              'grouping': 'studyYear',
              'person_id': 'person-1',
              'new_state': 'present',
              'is_success': true,
            },
          ),
          (
            AttendanceUndo(
              groupMeeting,
              personId: 'person-2',
              undoneChange: AttendanceUndoableChange.markedAbsent,
            ),
            'attendance:undo',
            {
              'meeting_id': 'meeting-2',
              'group_id': 'group-1',
              'person_id': 'person-2',
              'undone_change': 'markedAbsent',
            },
          ),
          (
            AttendanceMeetingSwitch(
              standaloneMeeting,
              fromMeetingId: 'meeting-1',
            ),
            'attendance:meeting_switch',
            {'meeting_id': 'meeting-3', 'from_meeting_id': 'meeting-1'},
          ),
          (
            AttendanceMeetingSelectorDismiss(standaloneMeeting),
            'attendance:meeting_selector_dismiss',
            {'meeting_id': 'meeting-3'},
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
              'meeting_id': 'meeting-3',
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
            {'meeting_id': 'meeting-3', 'audience_view': 'persons'},
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
              'meeting_id': 'meeting-3',
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
              'meeting_id': 'meeting-3',
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
              'meeting_id': 'meeting-3',
              'query_length': 4,
              'is_phone_query': false,
              'result_count': 5,
            },
          ),
          (
            AttendanceSortChange(standaloneMeeting, AttendanceSorting.byName()),
            'attendance:sort_change',
            {
              'meeting_id': 'meeting-3',
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
              'meeting_id': 'meeting-3',
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
              'meeting_id': 'meeting-3',
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
              'meeting_id': 'meeting-3',
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
              'meeting_id': 'meeting-3',
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
            {'meeting_id': 'meeting-3', 'grouping': 'none'},
          ),
          (
            AttendanceSectionToggle(
              standaloneMeeting,
              isCollapsed: true,
              sectionPersonCount: 12,
            ),
            'attendance:section_toggle',
            {
              'meeting_id': 'meeting-3',
              'is_collapsed': true,
              'section_person_count': 12,
            },
          ),
          (
            AttendanceStreakWindowChange(standaloneMeeting, 56),
            'attendance:streak_window_change',
            {'meeting_id': 'meeting-3', 'streak_window_days': 56},
          ),
          (
            AttendanceTimeEdit(
              standaloneMeeting,
              personId: 'person-3',
              shift: const Duration(minutes: -15),
              outcome: AttendanceTimeEditOutcome.saved,
            ),
            'attendance:time_edit',
            {
              'meeting_id': 'meeting-3',
              'person_id': 'person-3',
              'shift_duration_ms': -900000,
              'is_rejected_future': false,
              'is_success': true,
            },
          ),
          (
            AttendancePersonProfileOpen(
              standaloneMeeting,
              personId: 'person-4',
            ),
            'attendance:person_profile_open',
            {'meeting_id': 'meeting-3', 'person_id': 'person-4'},
          ),
          (
            AttendanceLetterGutterUse(
              standaloneMeeting,
              AttendanceLetterGutterGesture.drag,
            ),
            'attendance:letter_gutter_use',
            {'meeting_id': 'meeting-3', 'gutter_gesture': 'drag'},
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
            {'meeting_id': 'meeting-3', 'range_preset': 'custom'},
          ),
          (
            AttendanceRetry(standaloneMeeting),
            'attendance:retry',
            {'meeting_id': 'meeting-3'},
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
