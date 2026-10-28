import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../utils.dart';
import '../support/record_attendance_fixture.dart';

void main() {
  group('RecordAttendanceCubit roster analytics', () {
    const phoneQuery = '0100';
    const nameSortType = 'name';
    const attendanceTimeSortType = 'attendanceTime';
    const nameQuery = 'mina';
    final otherMeeting = RecordAttendanceFixture.makeMeeting(
      id: RecordAttendanceFixture.otherMeetingId,
    );
    const personId = 'p1';
    late RecordAttendanceFixture f;

    setUpAll(() {
      registerFallbackValue(RecordAttendanceFixture.makeMeeting());
      registerFallbackValue(
        MeetingAnalysisSubject(RecordAttendanceFixture.makeMeeting()),
      );
      registerFallbackValue(
        DateTimeRange(start: DateTime(2026), end: DateTime(2026)),
      );
    });

    RecordAttendanceCubit buildSearchCubit() =>
        f.fakeTime.run((_) => f.createCubit());

    setUp(() {
      f = RecordAttendanceFixture()
        ..rosterPersons = [RecordAttendanceFixture.rosterPerson(personId)];
      addTearDown(f.dispose);
    });
    tearDown(defaultTearDown);

    blocTest<RecordAttendanceCubit, RecordAttendanceState>(
      'a settled roster search is tracked by its length and phone shape',
      build: buildSearchCubit,
      act: (cubit) => f.typeSearchUntilSettled(cubit, [phoneQuery]),
      verify: (_) =>
          expect(f.analytics.trackedEventsOf<AttendanceSearchRun>(), [
            isA<AttendanceSearchRun>()
                .having(
                  (event) => event.meetingProperties,
                  'meetingProperties',
                  f.meetingProperties,
                )
                .having(
                  (event) => event.queryLength,
                  'queryLength',
                  phoneQuery.length,
                )
                .having((event) => event.isPhoneQuery, 'isPhoneQuery', isTrue)
                .having((event) => event.resultCount, 'resultCount', 0),
          ]),
    );

    blocTest<RecordAttendanceCubit, RecordAttendanceState>(
      'a roster search by name is not tracked as a phone search',
      build: buildSearchCubit,
      act: (cubit) => f.typeSearchUntilSettled(cubit, [nameQuery]),
      verify: (_) => expect(
        f.analytics.trackedEventsOf<AttendanceSearchRun>(),
        [
          isA<AttendanceSearchRun>().having(
            (event) => event.isPhoneQuery,
            'isPhoneQuery',
            isFalse,
          ),
        ],
      ),
    );

    blocTest<RecordAttendanceCubit, RecordAttendanceState>(
      'a roster search is not tracked while it is still being typed',
      build: buildSearchCubit,
      act: (cubit) => f.typeSearchUntilSettled(cubit, ['m', 'mi']),
      verify: (_) => expect(
        f.analytics.trackedEventsOf<AttendanceSearchRun>(),
        hasLength(1),
      ),
    );

    blocTest<RecordAttendanceCubit, RecordAttendanceState>(
      'choosing the active sort again is tracked as reversing it',
      build: () => f.createCubit(),
      act: (cubit) async {
        await RecordAttendanceFixture.readyRoster(cubit);
        cubit.changeSorting(AttendanceSorting.byName().withReversedDirection());
      },
      verify: (_) =>
          expect(f.analytics.trackedEventsOf<AttendanceSortReverse>(), [
            isA<AttendanceSortReverse>()
                .having(
                  (event) => event.meetingProperties,
                  'meetingProperties',
                  f.meetingProperties,
                )
                .having((event) => event.sortType, 'sortType', nameSortType)
                .having(
                  (event) => event.sortDirection,
                  'sortDirection',
                  SortingDirection.descending,
                ),
          ]),
    );

    blocTest<RecordAttendanceCubit, RecordAttendanceState>(
      'choosing another sort is tracked as changing it',
      build: () => f.createCubit(),
      act: (cubit) async {
        await RecordAttendanceFixture.readyRoster(cubit);
        cubit.changeSorting(AttendanceSorting.byAttendanceTime());
      },
      verify: (_) => expect(
        f.analytics.trackedEventsOf<AttendanceSortChange>(),
        [
          isA<AttendanceSortChange>().having(
            (event) => event.sortType,
            'sortType',
            attendanceTimeSortType,
          ),
        ],
      ),
    );

    blocTest<RecordAttendanceCubit, RecordAttendanceState>(
      'tapping the active presence filter is tracked as resetting it',
      build: () => f.createCubit(),
      act: (cubit) async {
        await RecordAttendanceFixture.readyRoster(cubit);
        cubit
          ..togglePresenceFilter(AttendancePresenceFilter.absent)
          ..togglePresenceFilter(AttendancePresenceFilter.absent);
      },
      verify: (_) => expect(
        f.analytics.trackedEventsOf<AttendancePresenceFilterChange>().map(
          (event) => event.isReset,
        ),
        [false, true],
      ),
    );

    blocTest<RecordAttendanceCubit, RecordAttendanceState>(
      'tapping the presence filter already shown is not tracked',
      build: () => f.createCubit(),
      act: (cubit) async {
        await RecordAttendanceFixture.readyRoster(cubit);
        cubit.togglePresenceFilter(AttendancePresenceFilter.all);
      },
      verify: (_) => expect(f.analytics.trackedEvents, isEmpty),
    );

    blocTest<RecordAttendanceCubit, RecordAttendanceState>(
      'switching meetings is tracked once, from the meeting left',
      build: () => f.createCubit(),
      act: (cubit) async {
        await RecordAttendanceFixture.readyRoster(cubit);
        cubit.switchMeeting(otherMeeting);
        await RecordAttendanceFixture.readyRoster(cubit);
      },
      verify: (_) => expect(f.analytics.trackedEvents, [
        isA<AttendanceMeetingSwitch>().having(
          (event) => event.fromMeetingId,
          'fromMeetingId',
          f.meeting.id,
        ),
      ]),
    );

    blocTest<RecordAttendanceCubit, RecordAttendanceState>(
      'changing the grouping is tracked with the grouping chosen',
      build: () => f.createCubit(),
      act: (cubit) async {
        await RecordAttendanceFixture.readyRoster(cubit);
        cubit.changeGrouping(AttendanceGrouping.none);
      },
      verify: (_) => expect(
        f.analytics.trackedEventsOf<AttendanceGroupingToggle>(),
        [
          isA<AttendanceGroupingToggle>().having(
            (event) => event.grouping,
            'grouping',
            AttendanceGrouping.none,
          ),
        ],
      ),
    );
  });
}
