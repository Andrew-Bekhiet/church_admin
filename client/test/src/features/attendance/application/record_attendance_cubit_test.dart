import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/features/attendance/application/attendance_undo_presenter.dart';
import 'package:flutter/material.dart' show VoidCallback;
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rxdart/rxdart.dart';

import '../../../utils.dart';

void main() {
  group('RecordAttendanceCubit', () {
    late _Fixture f;

    setUpAll(() {
      registerFallbackValue(_Fixture.makeMeeting());
      registerFallbackValue(MeetingAnalysisSubject(_Fixture.makeMeeting()));
      registerFallbackValue(
        DateTimeRange(start: DateTime(2026), end: DateTime(2026)),
      );
    });

    setUp(() {
      f = _Fixture();
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
            ..rosterPersons = [_Fixture.rosterPerson('p1')]
            ..attendanceRecords = [_Fixture.makeRecord('p1')];
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
            ..rosterPersons = [_Fixture.rosterPerson('p1')]
            ..markAttendanceRecord = _Fixture.makeRecord('p1', id: 'server-id');
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
            _Fixture.makeRecord('p1', id: 'server-id'),
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
            ..rosterPersons = [_Fixture.rosterPerson('p1')]
            ..attendanceRecords = [_Fixture.makeRecord('p1')]
            ..unmarkAttendanceRecord = _Fixture.makeRecord('p1');
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
      blocTest<RecordAttendanceCubit, RecordAttendanceState>(
        'does NOT re-call getMeetingRoster — only re-subscribes attendance',
        build: () => f.createCubit(),
        act: (cubit) async {
          await cubit.stream.whereType<RecordAttendanceLoaded>().firstWhere(
            (s) => s.rosterStatus == RosterStatus.ready,
          );
          cubit.selectDate(DateTime(2026, 7, 3));
        },
        verify: (_) {
          verify(
            () => f.dao.getMeetingRoster(
              meetingId: any(named: 'meetingId'),
              groupByStudyYear: any(named: 'groupByStudyYear'),
            ),
          ).called(1);

          verify(
            () => f.dao.streamAttendanceHistory(
              meetingId: any(named: 'meetingId'),
              fromDate: any(named: 'fromDate'),
              toDate: any(named: 'toDate'),
            ),
          ).called(2); // once on init, once after date change
        },
      );
    });

    group('toggleAudience', () {
      blocTest<RecordAttendanceCubit, RecordAttendanceState>(
        'does NOT re-call getMeetingRoster or re-subscribe attendance',
        setUp: () {
          f
            ..meeting = _Fixture.makeMeeting(
              audience: MeetingAudience.personsAndServants,
            )
            ..user = _Fixture.userWithBothRecordRights();
        },
        build: () => f.createCubit(),
        act: (cubit) async {
          await cubit.stream.whereType<RecordAttendanceLoaded>().firstWhere(
            (s) => s.rosterStatus == RosterStatus.ready,
          );

          final toggled = cubit.stream
              .whereType<RecordAttendanceLoaded>()
              .first;
          cubit.toggleAudience();
          await toggled;
        },
        verify: (_) {
          verify(
            () => f.dao.getMeetingRoster(
              meetingId: any(named: 'meetingId'),
              groupByStudyYear: any(named: 'groupByStudyYear'),
            ),
          ).called(1);

          verify(
            () => f.dao.streamAttendanceHistory(
              meetingId: any(named: 'meetingId'),
              fromDate: any(named: 'fromDate'),
              toDate: any(named: 'toDate'),
            ),
          ).called(1);
        },
      );
    });

    group('changeStreakWindow', () {
      blocTest<RecordAttendanceCubit, RecordAttendanceState>(
        'reloads track records with the new window and does not re-call '
        'getMeetingRoster or re-subscribe attendance',
        build: () => f.createCubit(),
        act: (cubit) async {
          await cubit.stream.whereType<RecordAttendanceLoaded>().firstWhere(
            (s) => s.rosterStatus == RosterStatus.ready,
          );

          final changed = cubit.stream
              .whereType<RecordAttendanceLoaded>()
              .firstWhere((s) => s.streakWindowDays == 30);
          cubit.changeStreakWindow(30);
          await changed;
        },
        verify: (cubit) {
          expect((cubit.state as RecordAttendanceLoaded).streakWindowDays, 30);

          verify(
            () => f.dao.getMeetingRoster(
              meetingId: any(named: 'meetingId'),
              groupByStudyYear: any(named: 'groupByStudyYear'),
            ),
          ).called(1);

          verify(
            () => f.dao.streamAttendanceHistory(
              meetingId: any(named: 'meetingId'),
              fromDate: any(named: 'fromDate'),
              toDate: any(named: 'toDate'),
            ),
          ).called(1);

          verify(
            () => f.dao.getAttendanceAnalyses(
              meeting: any(named: 'meeting'),
              range: any(named: 'range'),
              asServant: any(named: 'asServant'),
            ),
          ).called(2); // once on init, once after the window change
        },
      );
    });

    group('switchMeeting stale-guard', () {
      blocTest<RecordAttendanceCubit, RecordAttendanceState>(
        'rapid switchMeeting applies only the latest roster',
        setUp: () {
          f.rosterPersons = [_Fixture.rosterPerson('p-original')];
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
          ).thenAnswer((_) async => [_Fixture.rosterPerson('p-m2')]);

          when(
            () => f.dao.getMeetingRoster(
              meetingId: 'meeting-3',
              groupByStudyYear: any(named: 'groupByStudyYear'),
            ),
          ).thenAnswer((_) async => [_Fixture.rosterPerson('p-m3')]);

          final settled = cubit.stream
              .whereType<RecordAttendanceLoaded>()
              .firstWhere((s) => s.rosterStatus == RosterStatus.ready);

          cubit
            ..switchMeeting(_Fixture.makeMeeting(id: 'meeting-2'))
            ..switchMeeting(_Fixture.makeMeeting(id: 'meeting-3'));
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
              (index) => _Fixture.rosterPerson('p${index + 1}'),
            )
            ..attendanceRecords = List.generate(
              3,
              (index) => _Fixture.makeRecord('p${index + 1}'),
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
            ..rosterPersons = [_Fixture.rosterPerson('p1')]
            ..markAttendanceRecord = _Fixture.makeRecord('p1');
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
  });
}

final class _Fixture {
  final dao = _MockMeetingsDAO();
  final authBloc = _MockAuthBloc();
  final presenter = _FakePresenter();

  final attendanceController =
      StreamController<List<AttendanceRecord>>.broadcast();
  final presentCountController = StreamController<int?>.broadcast();
  final eligibleCountController = StreamController<int?>.broadcast();

  Meeting meeting = _Fixture.makeMeeting();
  User? user = _Fixture.userWithPersonsOnlyRecordRights();

  List<MeetingRosterEntry> rosterPersons = [];
  List<AttendanceRecord> attendanceRecords = [];
  Set<DateTime> recordedDays = const {};
  AttendanceRecord? markAttendanceRecord;
  AttendanceRecord? unmarkAttendanceRecord;

  _Fixture() {
    when(() => authBloc.currentUserData).thenAnswer((_) => user);

    when(
      () => dao.getMeetingsAttendanceAnalysis(
        subject: any(named: 'subject'),
        range: any(named: 'range'),
      ),
    ).thenAnswer(
      (_) async => MeetingsAttendanceAnalysis(
        title: meeting.name,
        meetings: recordedDays.isEmpty
            ? const []
            : [
                MeetingAttendanceSummary(
                  meeting: meeting,
                  demographics: recordedDays
                      .map(
                        (d) => MeetingDayDemographicCounts(
                          day: d,
                          personsCount: 1,
                          servantsCount: 0,
                          totalCount: 1,
                        ),
                      )
                      .toList(),
                ),
              ],
      ),
    );

    when(
      () => dao.getMeetingRoster(
        meetingId: any(named: 'meetingId'),
        groupByStudyYear: any(named: 'groupByStudyYear'),
      ),
    ).thenAnswer((_) async => rosterPersons);

    when(
      () => dao.streamAttendanceHistory(
        meetingId: any(named: 'meetingId'),
        fromDate: any(named: 'fromDate'),
        toDate: any(named: 'toDate'),
      ),
    ).thenAnswer((_) async* {
      if (attendanceRecords.isNotEmpty) {
        yield attendanceRecords;
      }

      yield* attendanceController.stream;
    });

    when(
      () => dao.markAttendance(
        meetingId: any(named: 'meetingId'),
        personId: any(named: 'personId'),
        datetime: any(named: 'datetime'),
        asServant: any(named: 'asServant'),
      ),
    ).thenAnswer((_) async => markAttendanceRecord!);

    when(
      () => dao.unmarkAttendance(
        attendanceRecordId: any(named: 'attendanceRecordId'),
      ),
    ).thenAnswer((_) async => unmarkAttendanceRecord!);

    when(
      () => dao.getAttendanceAnalyses(
        meeting: any(named: 'meeting'),
        range: any(named: 'range'),
        asServant: any(named: 'asServant'),
      ),
    ).thenAnswer((_) async => const []);
  }

  RecordAttendanceCubit createCubit() => RecordAttendanceCubit(
    meeting: meeting,
    initialDate: DateTime(2026, 7, 2),
    dao: dao,
    authBloc: authBloc,
    presenter: presenter,
  );

  Future<void> dispose() => Future.wait([
    attendanceController.close(),
    presentCountController.close(),
    eligibleCountController.close(),
  ]);

  static Meeting makeMeeting({
    String id = 'meeting-1',
    MeetingAudience audience = MeetingAudience.onlyPersons,
  }) => Meeting(
    id: id,
    name: 'Test Meeting',
    audience: audience,
    isArchived: false,
    serviceId: 'service-1',
  );

  static MeetingRosterEntry rosterPerson(String personId) => MeetingRosterEntry(
    asServant: false,
    person: Person(id: personId, name: 'Person $personId'),
    attendanceRecord: null,
    personAttendanceAnalysis: null,
  );

  static AttendanceRecord makeRecord(String personId, {String id = 'att-1'}) =>
      AttendanceRecord(
        id: id,
        meetingId: 'meeting-1',
        personId: personId,
        datetime: DateTime(2026, 7, 2, 10),
        asServant: false,
      );

  static User userWithPersonsOnlyRecordRights() => User(
    uid: 'uid',
    name: 'User',
    person: Person(id: 'person-uid', name: 'User'),
    permissions: const PermissionsSet.fromSet({
      UserPermission.readAllData,
      UserPermission.recordAllAttendance,
    }),
    photoUpdatedAt: DateTime(2026),
    lastEdit: LastRecordedByInfo(time: DateTime(2026), recordedBy: 'system'),
  );

  static User userWithBothRecordRights() => User(
    uid: 'uid',
    name: 'User',
    person: Person(id: 'person-uid', name: 'User'),
    permissions: const PermissionsSet.fromSet({
      UserPermission.readAllData,
      UserPermission.recordAllAttendance,
      UserPermission.recordAllServantsAttendance,
    }),
    photoUpdatedAt: DateTime(2026),
    lastEdit: LastRecordedByInfo(time: DateTime(2026), recordedBy: 'system'),
  );
}

final class _MockMeetingsDAO extends Mock implements MeetingsDAO {}

final class _MockAuthBloc extends Mock implements AuthBloc {}

final class _FakePresenter implements AttendanceUndoPresenter {
  @override
  void showUndo({
    required String personName,
    required bool isPresent,
    required VoidCallback onUndo,
  }) {}

  @override
  void showError(String message) {}
}
