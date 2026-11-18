import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:clock/clock.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart' show TimeOfDay;
import 'package:mocktail/mocktail.dart';
import 'package:rxdart/rxdart.dart';

import '../../../utils.dart';
import '../support/record_attendance_fixture.dart';

void main() {
  group('RecordAttendanceCubit', () {
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
      f = RecordAttendanceFixture();
      addTearDown(f.dispose);
    });
    tearDown(defaultTearDown);

    group('initial load', () {
      blocTest<RecordAttendanceCubit, RecordAttendanceState>(
        'emits Loaded with ready roster after getMeetingRoster resolves',
        build: () => f.createCubit(),
        expect: () => [
          isA<RecordAttendanceLoaded>().having(
            (s) => s.rosterStatus,
            'rosterStatus',
            RosterStatus.ready,
          ),
        ],
      );

      blocTest<RecordAttendanceCubit, RecordAttendanceState>(
        'entries reflect live attendance subscription once records arrive',
        setUp: () {
          f
            ..rosterPersons = [RecordAttendanceFixture.rosterPerson('p1')]
            ..attendanceRecords = [RecordAttendanceFixture.makeRecord('p1')];
        },
        build: () => f.createCubit(),
        expect: () => [
          isA<RecordAttendanceLoaded>().having(
            (s) => s.rosterStatus,
            'rosterStatus',
            RosterStatus.ready,
          ),
          isA<RecordAttendanceLoaded>().having(
            (s) => s.entries.first.attended,
            'attended',
            true,
          ),
        ],
      );
    });

    group('optimistic marks', () {
      blocTest<RecordAttendanceCubit, RecordAttendanceState>(
        'mark: server confirm clears optimistic entry, real id shown',
        setUp: () {
          f
            ..rosterPersons = [RecordAttendanceFixture.rosterPerson('p1')]
            ..markAttendanceRecord = RecordAttendanceFixture.makeRecord(
              'p1',
              id: 'server-id',
            );
        },
        build: () => f.createCubit(),
        act: (cubit) async {
          final ready = await cubit.stream
              .whereType<RecordAttendanceLoaded>()
              .firstWhere((s) => s.rosterStatus == RosterStatus.ready);

          final confirmed = cubit.stream
              .whereType<RecordAttendanceLoaded>()
              .firstWhere(
                (s) =>
                    s.entries.first.attended &&
                    s.entries.first.attendance?.id == 'server-id',
              );

          await cubit.toggleAttendance(ready.entries.first);
          f.attendanceController.add([
            RecordAttendanceFixture.makeRecord('p1', id: 'server-id'),
          ]);

          await confirmed;
        },
        verify: (cubit) {
          final state = cubit.state as RecordAttendanceLoaded;
          expect(state.entries.first.attended, isTrue);
          expect(state.entries.first.attendance?.id, 'server-id');
        },
      );

      blocTest<RecordAttendanceCubit, RecordAttendanceState>(
        'unmark: server empty-list confirm clears optimistic absence',
        setUp: () {
          f
            ..rosterPersons = [RecordAttendanceFixture.rosterPerson('p1')]
            ..attendanceRecords = [RecordAttendanceFixture.makeRecord('p1')]
            ..unmarkAttendanceRecord = RecordAttendanceFixture.makeRecord('p1');
        },
        build: () => f.createCubit(),
        act: (cubit) async {
          await cubit.stream.whereType<RecordAttendanceLoaded>().firstWhere(
            (s) => s.entries.firstOrNull?.attended ?? false,
          );

          final state = cubit.state as RecordAttendanceLoaded;

          final cleared = cubit.stream
              .whereType<RecordAttendanceLoaded>()
              .firstWhere((s) => !s.entries.first.attended);

          await cubit.toggleAttendance(state.entries.first);
          f.attendanceController.add([]);
          await cleared;
        },
        verify: (cubit) {
          expect(
            (cubit.state as RecordAttendanceLoaded).entries.first.attended,
            isFalse,
          );
        },
      );
    });

    group('selectDate', () {
      final pickedDay = DateTime(2026, 7, 3);

      blocTest<RecordAttendanceCubit, RecordAttendanceState>(
        'picking another day keeps the roster ready and shows the attendance '
        'recorded on that day',
        setUp: () {
          f.rosterPersons = [RecordAttendanceFixture.rosterPerson('p1')];
        },
        build: () => f.createCubit(),
        act: (cubit) async {
          await RecordAttendanceFixture.readyRoster(cubit);

          cubit.selectDate(pickedDay);
          f.attendanceController.add([
            RecordAttendanceFixture.makeRecord('p1'),
          ]);
          await pumpEventQueue();
        },
        expect: () => everyElement(
          isA<RecordAttendanceLoaded>().having(
            (s) => s.rosterStatus,
            'rosterStatus',
            RosterStatus.ready,
          ),
        ),
        verify: (cubit) {
          final state = cubit.state as RecordAttendanceLoaded;
          expect(state.selectedDate, pickedDay);
          expect(state.entries.single.attended, isTrue);
        },
      );

      blocTest<RecordAttendanceCubit, RecordAttendanceState>(
        'the 25-hour DST fall-back day streams attendance up to the next '
        'midnight',
        build: () => f.createCubit(),
        act: (cubit) async {
          await cubit.stream.whereType<RecordAttendanceLoaded>().firstWhere(
            (s) => s.rosterStatus == RosterStatus.ready,
          );
          cubit.selectDate(DateTime(2026, 10, 29));
        },
        verify: (_) {
          verify(
            () => f.dao.streamAttendanceHistory(
              meetingId: any(named: 'meetingId'),
              fromDate: DateTime(2026, 10, 29),
              toDate: DateTime(2026, 10, 30),
            ),
          );
        },
      );

      blocTest<RecordAttendanceCubit, RecordAttendanceState>(
        'the 23-hour DST spring-forward day streams attendance only up to the '
        'next midnight',
        build: () => f.createCubit(),
        act: (cubit) async {
          await cubit.stream.whereType<RecordAttendanceLoaded>().firstWhere(
            (s) => s.rosterStatus == RosterStatus.ready,
          );
          cubit.selectDate(DateTime(2026, 4, 24));
        },
        verify: (_) {
          verify(
            () => f.dao.streamAttendanceHistory(
              meetingId: any(named: 'meetingId'),
              fromDate: DateTime(2026, 4, 24),
              toDate: DateTime(2026, 4, 25),
            ),
          );
        },
      );
    });

    group('toggleAudience', () {
      blocTest<RecordAttendanceCubit, RecordAttendanceState>(
        'switching the audience shows the servants instead of the persons '
        'without reloading the roster',
        setUp: () {
          f
            ..meeting = RecordAttendanceFixture.makeMeeting(
              audience: MeetingAudience.personsAndServants,
            )
            ..user = RecordAttendanceFixture.userWithBothRecordRights()
            ..rosterPersons = [
              RecordAttendanceFixture.rosterPerson('p1'),
              MeetingRosterEntry(
                asServant: true,
                person: Person(id: 's1', name: 'Servant s1'),
                attendanceRecord: null,
                personAttendanceAnalysis: null,
              ),
            ];
        },
        build: () => f.createCubit(),
        act: (cubit) async {
          await RecordAttendanceFixture.readyRoster(cubit);
          cubit.toggleAudience();
        },
        verify: (cubit) {
          final state = cubit.state as RecordAttendanceLoaded;
          expect(state.audienceView, AttendanceRosterAudienceView.servants);
          expect(state.rosterStatus, RosterStatus.ready);
          expect(state.entries.map((e) => e.person.id), ['s1']);
        },
      );
    });

    group('changeStreakWindow', () {
      final narrowTrackRecord = PersonMeetingAttendanceAnalysis(
        personId: 'p1',
        meeting: RecordAttendanceFixture.makeMeeting(),
        asServant: false,
        heldDays: [DateTime(2026, 6, 25)],
        attendedDays: {DateTime(2026, 6, 25)},
      );
      final widerTrackRecord = PersonMeetingAttendanceAnalysis(
        personId: 'p1',
        meeting: RecordAttendanceFixture.makeMeeting(),
        asServant: false,
        heldDays: [DateTime(2026, 6, 4), DateTime(2026, 6, 25)],
        attendedDays: {DateTime(2026, 6, 25)},
      );
      late PersonMeetingAttendanceAnalysis currentTrackRecord;

      blocTest<RecordAttendanceCubit, RecordAttendanceState>(
        'a wider streak window refreshes the track record of each person',
        setUp: () {
          currentTrackRecord = narrowTrackRecord;
          f.rosterPersons = [RecordAttendanceFixture.rosterPerson('p1')];
          when(
            () => f.dao.getAttendanceAnalyses(
              meeting: any(named: 'meeting'),
              range: any(named: 'range'),
              asServant: any(named: 'asServant'),
            ),
          ).thenAnswer((_) async => [currentTrackRecord]);
        },
        build: () => f.createCubit(),
        act: (cubit) async {
          await cubit.stream.whereType<RecordAttendanceLoaded>().firstWhere(
            (s) => s.entries.firstOrNull?.personAttendanceAnalysis != null,
          );

          currentTrackRecord = widerTrackRecord;
          cubit.changeStreakWindow(30);
          await pumpEventQueue();
        },
        verify: (cubit) {
          final state = cubit.state as RecordAttendanceLoaded;
          expect(state.streakWindowDays, 30);
          expect(
            state.entries.first.personAttendanceAnalysis,
            widerTrackRecord,
          );
        },
      );
    });

    group('switchMeeting stale-guard', () {
      blocTest<RecordAttendanceCubit, RecordAttendanceState>(
        'rapid switchMeeting applies only the latest roster',
        setUp: () {
          f.rosterPersons = [
            RecordAttendanceFixture.rosterPerson('p-original'),
          ];
        },
        build: () => f.createCubit(),
        act: (cubit) async {
          await cubit.stream.whereType<RecordAttendanceLoaded>().firstWhere(
            (s) => s.rosterStatus == RosterStatus.ready,
          );

          when(
            () => f.dao.getMeetingRoster(
              meetingId: 'meeting-2',
              groupByStudyYear: any(named: 'groupByStudyYear'),
            ),
          ).thenAnswer(
            (_) async => [RecordAttendanceFixture.rosterPerson('p-m2')],
          );

          when(
            () => f.dao.getMeetingRoster(
              meetingId: 'meeting-3',
              groupByStudyYear: any(named: 'groupByStudyYear'),
            ),
          ).thenAnswer(
            (_) async => [RecordAttendanceFixture.rosterPerson('p-m3')],
          );

          final settled = cubit.stream
              .whereType<RecordAttendanceLoaded>()
              .firstWhere((s) => s.rosterStatus == RosterStatus.ready);

          cubit
            ..switchMeeting(
              RecordAttendanceFixture.makeMeeting(id: 'meeting-2'),
            )
            ..switchMeeting(
              RecordAttendanceFixture.makeMeeting(id: 'meeting-3'),
            );
          await settled;
        },
        verify: (cubit) {
          final ids = (cubit.state as RecordAttendanceLoaded).entries
              .map((e) => e.person.id)
              .toList();
          expect(ids, isNot(contains('p-m2')));
          expect(ids, contains('p-m3'));
        },
      );
    });

    group('counts', () {
      blocTest<RecordAttendanceCubit, RecordAttendanceState>(
        'presentCount and eligibleCount propagate into state',
        setUp: () {
          f
            ..rosterPersons = List.generate(
              10,
              (index) => RecordAttendanceFixture.rosterPerson('p${index + 1}'),
            )
            ..attendanceRecords = List.generate(
              3,
              (index) => RecordAttendanceFixture.makeRecord('p${index + 1}'),
            );
        },
        build: () => f.createCubit(),
        act: (cubit) async {
          await cubit.stream.whereType<RecordAttendanceLoaded>().firstWhere(
            (s) => s.presentCount != null && s.eligibleCount != null,
          );
        },
        verify: (cubit) {
          final state = cubit.state as RecordAttendanceLoaded;
          expect(state.presentCount, 3);
          expect(state.eligibleCount, 10);
        },
      );
    });

    group('recordedDays', () {
      final recordedDate = DateTime(2026, 6, 15);

      blocTest<RecordAttendanceCubit, RecordAttendanceState>(
        'recordedDays from dao are emitted in loaded state',
        setUp: () {
          f.recordedDays = {recordedDate};
        },
        build: () => f.createCubit(),
        verify: (cubit) {
          final state = cubit.state as RecordAttendanceLoaded;
          expect(state.recordedDays, contains(recordedDate));
        },
      );

      blocTest<RecordAttendanceCubit, RecordAttendanceState>(
        'marking attendance adds selectedDate to recordedDays',
        setUp: () {
          f
            ..rosterPersons = [RecordAttendanceFixture.rosterPerson('p1')]
            ..markAttendanceRecord = RecordAttendanceFixture.makeRecord('p1');
        },
        build: () => f.createCubit(),
        act: (cubit) async {
          final ready = await cubit.stream
              .whereType<RecordAttendanceLoaded>()
              .firstWhere((s) => s.rosterStatus == RosterStatus.ready);

          await cubit.toggleAttendance(ready.entries.first);
        },
        verify: (cubit) {
          final state = cubit.state as RecordAttendanceLoaded;
          expect(state.recordedDays, contains(state.selectedDate));
        },
      );
    });

    group('roster search by phone', () {
      Future<void> searchOnceReady(
        RecordAttendanceCubit cubit,
        String query,
      ) async {
        await cubit.stream.whereType<RecordAttendanceLoaded>().firstWhere(
          (s) => s.rosterStatus == RosterStatus.ready,
        );

        final searched = cubit.stream
            .whereType<RecordAttendanceLoaded>()
            .firstWhere((s) => s.searchQuery == query);
        cubit.onSearch(query);
        await searched;
      }

      List<String> foundIds(RecordAttendanceCubit cubit) =>
          (cubit.state as RecordAttendanceLoaded).entries
              .map((e) => e.person.id)
              .toList();

      void arrangeRoster() => f.rosterPersons = [
        RecordAttendanceFixture.rosterPersonWithPhones('child', [
          '+201001234567',
          '+201227654321',
        ]),
        RecordAttendanceFixture.rosterPersonWithPhones('stranger', [
          '+201111111111',
          '+201555555555',
        ]),
      ];

      blocTest<RecordAttendanceCubit, RecordAttendanceState>(
        'a full national number finds only the person who has it',
        setUp: arrangeRoster,
        build: () => f.createCubit(),
        act: (cubit) => searchOnceReady(cubit, '01227654321'),
        verify: (cubit) => expect(foundIds(cubit), ['child']),
      );

      blocTest<RecordAttendanceCubit, RecordAttendanceState>(
        'a partially typed national number finds the person',
        setUp: arrangeRoster,
        build: () => f.createCubit(),
        act: (cubit) => searchOnceReady(cubit, '0100123'),
        verify: (cubit) => expect(foundIds(cubit), ['child']),
      );
    });

    group('changing the attendance time on the selected day', () {
      final recorded = RecordAttendanceFixture.makeRecord('p1');
      final now = recorded.datetime.add(const Duration(hours: 2));

      Future<void> changeTimeOnceAttended(
        RecordAttendanceCubit cubit,
        DateTime time,
      ) async {
        final ready = await cubit.stream
            .whereType<RecordAttendanceLoaded>()
            .firstWhere((s) => s.entries.firstOrNull?.attended ?? false);

        await withClock(
          Clock.fixed(now),
          () => cubit.updateEntryAttendanceTime(
            ready.entries.first,
            TimeOfDay.fromDateTime(time),
          ),
        );
      }

      DateTime? shownTime(RecordAttendanceCubit cubit) =>
          (cubit.state as RecordAttendanceLoaded)
              .entries
              .first
              .attendance
              ?.datetime;

      setUp(() {
        f
          ..rosterPersons = [RecordAttendanceFixture.rosterPerson('p1')]
          ..attendanceRecords = [recorded];
        when(
          () => f.dao.updateAttendanceTime(
            attendanceRecordId: any(named: 'attendanceRecordId'),
            datetime: any(named: 'datetime'),
          ),
        ).thenAnswer((_) async => recorded);
      });

      blocTest<RecordAttendanceCubit, RecordAttendanceState>(
        'a time later than now keeps the recorded time',
        build: () => f.createCubit(),
        act: (cubit) => changeTimeOnceAttended(
          cubit,
          now.add(const Duration(hours: 1)),
        ),
        verify: (cubit) => expect(shownTime(cubit), recorded.datetime),
      );

      blocTest<RecordAttendanceCubit, RecordAttendanceState>(
        'a time later than now tells the user it cannot be in the future',
        build: () => f.createCubit(),
        act: (cubit) => changeTimeOnceAttended(
          cubit,
          now.add(const Duration(hours: 1)),
        ),
        verify: (_) => expect(f.presenter.shownErrors, hasLength(1)),
      );

      blocTest<RecordAttendanceCubit, RecordAttendanceState>(
        'a time earlier than now becomes the attendance time',
        build: () => f.createCubit(),
        act: (cubit) => changeTimeOnceAttended(
          cubit,
          now.subtract(const Duration(hours: 1)),
        ),
        verify: (cubit) => expect(
          shownTime(cubit),
          now.subtract(const Duration(hours: 1)),
        ),
      );
    });
  });
}
