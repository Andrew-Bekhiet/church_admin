import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:clock/clock.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rxdart/rxdart.dart';

import '../../../utils.dart';
import '../support/record_attendance_fixture.dart';

void main() {
  group('RecordAttendanceCubit analytics', () {
    final selectedDay = DateTime(2026, 7, 2);
    late RecordAttendanceFixture f;

    Future<RecordAttendanceLoaded> readyRoster(RecordAttendanceCubit cubit) =>
        cubit.stream.whereType<RecordAttendanceLoaded>().firstWhere(
          (s) => s.rosterStatus == RosterStatus.ready,
        );

    Json trackedPropertiesOf<T extends AnalyticsEvent>() =>
        f.analytics.trackedEvents.whereType<T>().single.properties;

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
        ..rosterPersons = [RecordAttendanceFixture.rosterPerson('p1')]
        ..markAttendanceRecord = RecordAttendanceFixture.makeRecord('p1');
      addTearDown(f.dispose);
    });
    tearDown(defaultTearDown);

    blocTest<RecordAttendanceCubit, RecordAttendanceState>(
      'marking a person present is tracked with the roster view it was made in',
      build: () => f.createCubit(),
      act: (cubit) async {
        final ready = await readyRoster(cubit);
        await withClock(
          Clock.fixed(selectedDay.add(const Duration(hours: 12))),
          () => cubit.toggleAttendance(ready.entries.single),
        );
      },
      verify: (_) => expect(trackedPropertiesOf<AttendancePersonMark>(), {
        'meeting_id': f.meeting.id,
        'service_id': f.meeting.serviceId,
        'is_as_servant': false,
        'is_today': true,
        'sort_type': AttendanceSortType.name.name,
        'sort_direction': SortingDirection.ascending.name,
        'filter': AttendancePresenceFilter.all.name,
        'is_search_active': false,
        'grouping': AttendanceGrouping.studyYear.name,
        'person_id': 'p1',
        'new_state': AttendanceMarkState.present.name,
        'is_success': true,
      }),
    );

    blocTest<RecordAttendanceCubit, RecordAttendanceState>(
      'a mark the server rejects is tracked as unsuccessful',
      setUp: () => when(
        () => f.dao.markAttendance(
          meetingId: any(named: 'meetingId'),
          personId: any(named: 'personId'),
          datetime: any(named: 'datetime'),
          asServant: any(named: 'asServant'),
        ),
      ).thenThrow(StateError('offline')),
      build: () => f.createCubit(),
      act: (cubit) async =>
          cubit.toggleAttendance((await readyRoster(cubit)).entries.single),
      verify: (_) => expect(
        trackedPropertiesOf<AttendancePersonMark>()['is_success'],
        isFalse,
      ),
    );

    blocTest<RecordAttendanceCubit, RecordAttendanceState>(
      'a roster search is tracked by its length and phone shape, not its text',
      build: () => f.createCubit(),
      act: (cubit) async {
        await readyRoster(cubit);
        final searched = cubit.stream
            .whereType<RecordAttendanceLoaded>()
            .firstWhere((s) => s.searchQuery == '0100');
        cubit.onSearch('0100');
        await searched;
      },
      verify: (_) => expect(trackedPropertiesOf<AttendanceSearchSubmit>(), {
        'meeting_id': f.meeting.id,
        'service_id': f.meeting.serviceId,
        'query_length': '0100'.length,
        'is_phone_query': true,
        'result_count': 0,
      }),
    );

    blocTest<RecordAttendanceCubit, RecordAttendanceState>(
      'choosing the active sort again is tracked as reversing it',
      build: () => f.createCubit(),
      act: (cubit) async {
        await readyRoster(cubit);
        cubit.changeSorting(AttendanceSorting.byName().withReversedDirection());
      },
      verify: (_) => expect(
        f.analytics.trackedEvents.whereType<AttendanceSortingAnalyticsEvent>(),
        [
          isA<AttendanceSortReverse>().having(
            (event) => event.properties['direction'],
            'direction',
            SortingDirection.descending.name,
          ),
        ],
      ),
    );

    blocTest<RecordAttendanceCubit, RecordAttendanceState>(
      'choosing another sort is tracked as changing it',
      build: () => f.createCubit(),
      act: (cubit) async {
        await readyRoster(cubit);
        cubit.changeSorting(AttendanceSorting.byAttendanceTime());
      },
      verify: (_) => expect(
        f.analytics.trackedEvents.whereType<AttendanceSortingAnalyticsEvent>(),
        [
          isA<AttendanceSortChange>().having(
            (event) => event.properties['sort_type'],
            'sort_type',
            AttendanceSortType.attendanceTime.name,
          ),
        ],
      ),
    );
  });
}
