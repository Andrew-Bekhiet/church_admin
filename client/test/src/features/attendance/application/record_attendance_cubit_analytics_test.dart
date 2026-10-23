import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:clock/clock.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart' show TimeOfDay;
import 'package:mocktail/mocktail.dart';

import '../../../utils.dart';
import '../support/record_attendance_fixture.dart';

void main() {
  group('RecordAttendanceCubit mark analytics', () {
    final recorded = RecordAttendanceFixture.makeRecord('p1');
    final now = recorded.datetime.add(const Duration(hours: 2));
    final otherMeeting = RecordAttendanceFixture.makeMeeting(id: 'meeting-2');
    late RecordAttendanceFixture f;
    late Completer<AttendanceRecord> serverWrite;

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
        ..markAttendanceRecord = recorded
        ..unmarkAttendanceRecord = recorded;
      serverWrite = Completer();
      when(
        () => f.dao.updateAttendanceTime(
          attendanceRecordId: any(named: 'attendanceRecordId'),
          datetime: any(named: 'datetime'),
        ),
      ).thenAnswer((_) => serverWrite.future);
      addTearDown(f.dispose);
    });
    tearDown(defaultTearDown);

    blocTest<RecordAttendanceCubit, RecordAttendanceState>(
      'marking a person present is tracked with the roster view it was made in',
      build: () => f.createCubit(),
      act: (cubit) async {
        final ready = await RecordAttendanceFixture.readyRoster(cubit);
        await withClock(
          Clock.fixed(recorded.datetime),
          () => cubit.toggleAttendance(ready.entries.single),
        );
      },
      verify: (_) => expect(f.trackedPropertiesOf<AttendancePersonMark>(), {
        'meeting_id': f.meeting.id,
        'service_id': f.meeting.serviceId,
        'is_as_servant': false,
        'is_today': true,
        'sort_type': AttendanceSortType.name.name,
        'sort_direction': SortingDirection.ascending.name,
        'presence_filter': AttendancePresenceFilter.all.name,
        'is_search_active': false,
        'grouping': AttendanceGrouping.studyYear.name,
        'person_id': 'p1',
        'new_state': AttendanceMarkState.present.name,
        'is_success': true,
      }),
    );

    blocTest<RecordAttendanceCubit, RecordAttendanceState>(
      'a mark keeps the sort it was made in when the sort changes meanwhile',
      setUp: () => when(
        () => f.dao.markAttendance(
          meetingId: any(named: 'meetingId'),
          personId: any(named: 'personId'),
          datetime: any(named: 'datetime'),
          asServant: any(named: 'asServant'),
        ),
      ).thenAnswer((_) => serverWrite.future),
      build: () => f.createCubit(),
      act: (cubit) async {
        final ready = await RecordAttendanceFixture.readyRoster(cubit);
        final marking = cubit.toggleAttendance(ready.entries.single);
        cubit.changeSorting(AttendanceSorting.byAttendanceTime());
        serverWrite.complete(recorded);
        await marking;
      },
      verify: (_) => expect(
        f.trackedPropertiesOf<AttendancePersonMark>()['sort_type'],
        AttendanceSortType.name.name,
      ),
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
      act: (cubit) async => cubit.toggleAttendance(
        (await RecordAttendanceFixture.readyRoster(cubit)).entries.single,
      ),
      verify: (_) => expect(
        f.trackedPropertiesOf<AttendancePersonMark>()['is_success'],
        isFalse,
      ),
    );

    blocTest<RecordAttendanceCubit, RecordAttendanceState>(
      'undoing a mark is tracked with the change it undid',
      build: () => f.createCubit(),
      act: (cubit) async {
        final ready = await RecordAttendanceFixture.readyRoster(cubit);
        await cubit.toggleAttendance(ready.entries.single);
        f.presenter.undoLast();
      },
      verify: (_) => expect(f.trackedPropertiesOf<AttendanceUndo>(), {
        'meeting_id': f.meeting.id,
        'service_id': f.meeting.serviceId,
        'person_id': 'p1',
        'undone_change': AttendanceUndoableChange.markedPresent.name,
      }),
    );

    blocTest<RecordAttendanceCubit, RecordAttendanceState>(
      'an attendance time edit is tracked by how far it moved the time',
      setUp: () => f.attendanceRecords = [recorded],
      build: () => f.createCubit(),
      act: (cubit) async {
        final attended = await RecordAttendanceFixture.attendedRoster(cubit);
        serverWrite.complete(recorded);
        await withClock(
          Clock.fixed(now),
          () => cubit.updateEntryAttendanceTime(
            attended.entries.single,
            TimeOfDay.fromDateTime(now),
          ),
        );
      },
      verify: (_) => expect(f.trackedPropertiesOf<AttendanceTimeEdit>(), {
        'meeting_id': f.meeting.id,
        'service_id': f.meeting.serviceId,
        'person_id': 'p1',
        'shift_duration_ms': const Duration(hours: 2).inMilliseconds,
        'is_rejected_future': false,
        'is_success': true,
      }),
    );

    blocTest<RecordAttendanceCubit, RecordAttendanceState>(
      'a time edit into the future is tracked as rejected',
      setUp: () => f.attendanceRecords = [recorded],
      build: () => f.createCubit(),
      act: (cubit) async {
        final attended = await RecordAttendanceFixture.attendedRoster(cubit);
        await withClock(
          Clock.fixed(recorded.datetime),
          () => cubit.updateEntryAttendanceTime(
            attended.entries.single,
            TimeOfDay.fromDateTime(now),
          ),
        );
      },
      verify: (_) => expect(
        f.trackedPropertiesOf<AttendanceTimeEdit>(),
        containsPair('is_rejected_future', true),
      ),
    );

    blocTest<RecordAttendanceCubit, RecordAttendanceState>(
      'a time edit is tracked in the meeting it was made in',
      setUp: () => f.attendanceRecords = [recorded],
      build: () => f.createCubit(),
      act: (cubit) async {
        final attended = await RecordAttendanceFixture.attendedRoster(cubit);
        final editing = withClock(
          Clock.fixed(now),
          () => cubit.updateEntryAttendanceTime(
            attended.entries.single,
            TimeOfDay.fromDateTime(now),
          ),
        );
        cubit.switchMeeting(otherMeeting);
        serverWrite.complete(recorded);
        await editing;
      },
      verify: (_) => expect(
        f.trackedPropertiesOf<AttendanceTimeEdit>()['meeting_id'],
        f.meeting.id,
      ),
    );
  });
}
