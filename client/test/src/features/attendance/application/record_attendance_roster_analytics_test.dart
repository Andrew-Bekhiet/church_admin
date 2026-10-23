import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../utils.dart';
import '../support/record_attendance_fixture.dart';

void main() {
  group('RecordAttendanceCubit roster analytics', () {
    final otherMeeting = RecordAttendanceFixture.makeMeeting(id: 'meeting-2');
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

    setUp(() {
      f = RecordAttendanceFixture()
        ..rosterPersons = [RecordAttendanceFixture.rosterPerson('p1')];
      addTearDown(f.dispose);
    });
    tearDown(defaultTearDown);

    blocTest<RecordAttendanceCubit, RecordAttendanceState>(
      'a settled roster search is tracked by its length and phone shape',
      build: () => f.fakeTime.run((_) => f.createCubit()),
      act: (cubit) => f.typeSearchUntilSettled(cubit, ['0100']),
      verify: (_) => expect(f.trackedPropertiesOf<AttendanceSearchRun>(), {
        'meeting_id': f.meeting.id,
        'service_id': f.meeting.serviceId,
        'query_length': '0100'.length,
        'is_phone_query': true,
        'result_count': 0,
      }),
    );

    blocTest<RecordAttendanceCubit, RecordAttendanceState>(
      'a roster search by name is not tracked as a phone search',
      build: () => f.fakeTime.run((_) => f.createCubit()),
      act: (cubit) => f.typeSearchUntilSettled(cubit, ['mina']),
      verify: (_) => expect(
        f.trackedPropertiesOf<AttendanceSearchRun>()['is_phone_query'],
        isFalse,
      ),
    );

    blocTest<RecordAttendanceCubit, RecordAttendanceState>(
      'a roster search is not tracked while it is still being typed',
      build: () => f.fakeTime.run((_) => f.createCubit()),
      act: (cubit) => f.typeSearchUntilSettled(cubit, ['m', 'mi']),
      verify: (_) => expect(
        f.trackedNames.where((name) => name == 'attendance:search_run'),
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
      verify: (_) => expect(f.trackedPropertiesOf<AttendanceSortReverse>(), {
        'meeting_id': f.meeting.id,
        'service_id': f.meeting.serviceId,
        'sort_type': AttendanceSortType.name.name,
        'sort_direction': SortingDirection.descending.name,
      }),
    );

    blocTest<RecordAttendanceCubit, RecordAttendanceState>(
      'choosing another sort is tracked as changing it',
      build: () => f.createCubit(),
      act: (cubit) async {
        await RecordAttendanceFixture.readyRoster(cubit);
        cubit.changeSorting(AttendanceSorting.byAttendanceTime());
      },
      verify: (_) => expect(
        f.trackedPropertiesOf<AttendanceSortChange>()['sort_type'],
        AttendanceSortType.attendanceTime.name,
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
        f.analytics.trackedEvents
            .whereType<AttendancePresenceFilterChange>()
            .map((event) => event.properties['is_reset']),
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
      verify: (_) => expect(f.trackedNames, ['attendance:meeting_switch']),
    );

    blocTest<RecordAttendanceCubit, RecordAttendanceState>(
      'changing the grouping is tracked with the grouping chosen',
      build: () => f.createCubit(),
      act: (cubit) async {
        await RecordAttendanceFixture.readyRoster(cubit);
        cubit.changeGrouping(AttendanceGrouping.none);
      },
      verify: (_) => expect(
        f.trackedPropertiesOf<AttendanceGroupingToggle>()['grouping'],
        AttendanceGrouping.none.name,
      ),
    );
  });
}
