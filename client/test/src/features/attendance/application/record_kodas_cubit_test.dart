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
  group('RecordKodasCubit', () {
    final sunday = DateTime(2026, 9, 27);
    final nextSunday = DateTime(2026, 10, 4);
    final liturgy = _Fixture.meeting(id: 'liturgy');
    final sundaySchool = _Fixture.meeting(id: 'sunday-school');
    final hiddenKodasMeeting = _Fixture.meeting(
      id: 'hidden',
      showKodasCheckbox: false,
    );
    final mina = Person(id: 'mina', name: 'Mina');
    final mark = Person(id: 'mark', name: 'Mark');

    late _Fixture f;

    setUp(() {
      f = _Fixture();
      addTearDown(f.dispose);
    });
    tearDown(defaultTearDown);

    blocTest<RecordKodasCubit, RecordKodasState>(
      'is hidden for a meeting that hides the kodas checkbox',
      build: () => f.createCubit(),
      act: (cubit) => cubit.follow(meeting: hiddenKodasMeeting, day: sunday),
      expect: () => [const RecordKodasHidden()],
    );

    blocTest<RecordKodasCubit, RecordKodasState>(
      'shows who took kodas on the followed day',
      setUp: () => f.server.seed([
        KodasRecord(id: 'k1', personId: mina.id, day: sunday),
        KodasRecord(id: 'k2', personId: mark.id, day: nextSunday),
      ]),
      build: () => f.createCubit(),
      act: (cubit) => cubit.follow(meeting: liturgy, day: sunday),
      expect: () => [
        const RecordKodasLoading(),
        _communicants({mina.id}),
      ],
    );

    blocTest<RecordKodasCubit, RecordKodasState>(
      'kodas of a day show in every meeting held that day',
      setUp: () => f.server.seed([
        KodasRecord(id: 'k1', personId: mina.id, day: sunday),
      ]),
      build: () => f.createCubit(),
      act: (cubit) async {
        cubit.follow(meeting: liturgy, day: sunday);
        await f.settle();
        cubit.follow(meeting: sundaySchool, day: sunday);
      },
      skip: 2,
      expect: () => const <RecordKodasState>[],
      verify: (cubit) => expect(cubit.state, _communicants({mina.id})),
    );

    blocTest<RecordKodasCubit, RecordKodasState>(
      "following another day shows that day's communicants",
      setUp: () => f.server.seed([
        KodasRecord(id: 'k1', personId: mina.id, day: sunday),
        KodasRecord(id: 'k2', personId: mark.id, day: nextSunday),
      ]),
      build: () => f.createCubit(),
      act: (cubit) async {
        cubit.follow(meeting: liturgy, day: sunday);
        await f.settle();
        cubit.follow(meeting: liturgy, day: nextSunday);
      },
      skip: 2,
      expect: () => [
        const RecordKodasLoading(),
        _communicants({mark.id}),
      ],
    );

    blocTest<RecordKodasCubit, RecordKodasState>(
      'recording kodas marks the person as a communicant on that day',
      build: () => f.createCubit(),
      act: (cubit) async {
        cubit.follow(meeting: liturgy, day: sunday);
        await f.settle();
        await cubit.toggleKodas(mina);
        await f.settle();
      },
      verify: (cubit) {
        expect(cubit.state, _communicants({mina.id}));
        expect(f.server.recordsOn(sunday).single.personId, mina.id);
      },
    );

    blocTest<RecordKodasCubit, RecordKodasState>(
      'recording kodas is offered for undo',
      build: () => f.createCubit(),
      act: (cubit) async {
        cubit.follow(meeting: liturgy, day: sunday);
        await f.settle();
        await cubit.toggleKodas(mina);
      },
      verify: (_) => expect(f.presenter.undoableChanges, [
        (personName: 'Mina', change: AttendanceUndoableChange.kodasRecorded),
      ]),
    );

    blocTest<RecordKodasCubit, RecordKodasState>(
      'undoing recorded kodas removes it',
      build: () => f.createCubit(),
      act: (cubit) async {
        cubit.follow(meeting: liturgy, day: sunday);
        await f.settle();
        await cubit.toggleKodas(mina);
        await f.settle();
        f.presenter.undoLast();
        await f.settle();
      },
      verify: (cubit) {
        expect(cubit.state, _communicants(const {}));
        expect(f.server.recordsOn(sunday), isEmpty);
      },
    );

    blocTest<RecordKodasCubit, RecordKodasState>(
      'removing kodas unmarks the person',
      setUp: () => f.server.seed([
        KodasRecord(id: 'k1', personId: mina.id, day: sunday),
      ]),
      build: () => f.createCubit(),
      act: (cubit) async {
        cubit.follow(meeting: liturgy, day: sunday);
        await f.settle();
        await cubit.toggleKodas(mina);
        await f.settle();
      },
      verify: (cubit) {
        expect(cubit.state, _communicants(const {}));
        expect(f.server.recordsOn(sunday), isEmpty);
      },
    );

    blocTest<RecordKodasCubit, RecordKodasState>(
      'undoing removed kodas records it again',
      setUp: () => f.server.seed([
        KodasRecord(id: 'k1', personId: mina.id, day: sunday),
      ]),
      build: () => f.createCubit(),
      act: (cubit) async {
        cubit.follow(meeting: liturgy, day: sunday);
        await f.settle();
        await cubit.toggleKodas(mina);
        await f.settle();
        f.presenter.undoLast();
        await f.settle();
      },
      verify: (cubit) => expect(cubit.state, _communicants({mina.id})),
    );

    blocTest<RecordKodasCubit, RecordKodasState>(
      'rejected kodas is rolled back and reported',
      setUp: () => f.server.rejectWith = const KodasChangeRejectedException(),
      build: () => f.createCubit(),
      act: (cubit) async {
        cubit.follow(meeting: liturgy, day: sunday);
        await f.settle();
        await cubit.toggleKodas(mina);
      },
      skip: 2,
      expect: () => [
        _communicants({mina.id}),
        _communicants(const {}),
      ],
      verify: (_) => expect(f.presenter.errors, hasLength(1)),
    );

    blocTest<RecordKodasCubit, RecordKodasState>(
      'showing kodas for the day starts tracking a meeting that hides it',
      setUp: () => f.server.seed([
        KodasRecord(id: 'k1', personId: mina.id, day: sunday),
      ]),
      build: () => f.createCubit(),
      act: (cubit) async {
        cubit.follow(meeting: hiddenKodasMeeting, day: sunday);
        cubit.changeVisibility(visible: true);
      },
      skip: 1,
      expect: () => [
        const RecordKodasLoading(),
        _communicants({mina.id}),
      ],
    );

    blocTest<RecordKodasCubit, RecordKodasState>(
      'hiding kodas for the day hides it',
      build: () => f.createCubit(),
      act: (cubit) async {
        cubit.follow(meeting: liturgy, day: sunday);
        await f.settle();
        cubit.changeVisibility(visible: false);
      },
      skip: 2,
      expect: () => [const RecordKodasHidden()],
    );

    blocTest<RecordKodasCubit, RecordKodasState>(
      'a hidden day stays hidden in the other meetings of that day',
      build: () => f.createCubit(),
      act: (cubit) async {
        cubit
          ..follow(meeting: liturgy, day: sunday)
          ..changeVisibility(visible: false)
          ..follow(meeting: sundaySchool, day: sunday);
      },
      verify: (cubit) => expect(cubit.state, const RecordKodasHidden()),
    );

    blocTest<RecordKodasCubit, RecordKodasState>(
      "hiding a day does not hide the meeting's other days",
      build: () => f.createCubit(),
      act: (cubit) async {
        cubit
          ..follow(meeting: liturgy, day: sunday)
          ..changeVisibility(visible: false)
          ..follow(meeting: liturgy, day: nextSunday);
        await f.settle();
      },
      verify: (cubit) => expect(cubit.state, isA<RecordKodasReady>()),
    );

    blocTest<RecordKodasCubit, RecordKodasState>(
      'the day visibility is remembered by a later cubit',
      build: () {
        f.createCubit()
          ..follow(meeting: liturgy, day: sunday)
          ..changeVisibility(visible: false);

        return f.createCubit();
      },
      act: (cubit) => cubit.follow(meeting: liturgy, day: sunday),
      expect: () => [const RecordKodasHidden()],
    );
  });
}

Matcher _communicants(Set<String> personIds) => isA<RecordKodasReady>().having(
  (s) => s.communicantIds,
  'communicantIds',
  personIds,
);

final class _Fixture {
  static Meeting meeting({
    required String id,
    bool showKodasCheckbox = true,
  }) => Meeting(
    id: id,
    name: id,
    audience: MeetingAudience.onlyPersons,
    isArchived: false,
    showKodasCheckbox: showKodasCheckbox,
  );

  final historyDao = _MockHistoryDAO();
  final presenter = _PresenterSpy();
  final server = _KodasServer();
  final visibility = KodasDayVisibility();

  _Fixture() {
    when(
      () => historyDao.streamDayKodas(day: any(named: 'day')),
    ).thenAnswer((i) => server.watchDay(i.namedArguments[#day] as DateTime));

    when(
      () => historyDao.recordKodas(
        personId: any(named: 'personId'),
        day: any(named: 'day'),
      ),
    ).thenAnswer(
      (i) => server.record(
        personId: i.namedArguments[#personId] as String,
        day: i.namedArguments[#day] as DateTime,
      ),
    );

    when(
      () => historyDao.deleteKodas(
        kodasRecordId: any(named: 'kodasRecordId'),
      ),
    ).thenAnswer(
      (i) => server.delete(i.namedArguments[#kodasRecordId] as String),
    );
  }

  RecordKodasCubit createCubit() => RecordKodasCubit(
    historyDao: historyDao,
    presenter: presenter,
    dayVisibility: visibility,
  );

  Future<void> settle() => pumpEventQueue();

  Future<void> dispose() => server.close();
}

final class _KodasServer {
  final BehaviorSubject<List<KodasRecord>> _records = BehaviorSubject.seeded(
    const [],
  );
  int _nextId = 0;

  Object? rejectWith;

  void seed(List<KodasRecord> records) => _records.add(records);

  List<KodasRecord> recordsOn(DateTime day) =>
      _records.value.where((r) => r.day == day).toList();

  Stream<List<KodasRecord>> watchDay(DateTime day) =>
      _records.map((records) => records.where((r) => r.day == day).toList());

  Future<KodasRecord> record({
    required String personId,
    required DateTime day,
  }) async {
    if (rejectWith case final error?) throw error;

    final record = KodasRecord(
      id: 'server-${_nextId++}',
      personId: personId,
      day: day,
    );
    _records.add([..._records.value, record]);

    return record;
  }

  Future<KodasRecord> delete(String id) async {
    if (rejectWith case final error?) throw error;

    final record = _records.value.firstWhere((r) => r.id == id);
    _records.add(_records.value.where((r) => r.id != id).toList());

    return record;
  }

  Future<void> close() => _records.close();
}

final class _MockHistoryDAO extends Mock implements HistoryDAO {}

final class _PresenterSpy implements AttendanceUndoPresenter {
  final List<({String personName, AttendanceUndoableChange change})>
  undoableChanges = [];
  final List<String> errors = [];
  final List<VoidCallback> _undos = [];

  @override
  void showUndo({
    required String personName,
    required AttendanceUndoableChange change,
    required VoidCallback onUndo,
  }) {
    undoableChanges.add((personName: personName, change: change));
    _undos.add(onUndo);
  }

  @override
  void showError(String message) => errors.add(message);

  void undoLast() => _undos.last();
}
