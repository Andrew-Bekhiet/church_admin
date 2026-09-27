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

    setUpAll(() => registerFallbackValue(liturgy));

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
        _loading(sunday),
        _communicants(sunday, {mina.id}),
      ],
    );

    blocTest<RecordKodasCubit, RecordKodasState>(
      'kodas of a day show in every meeting held that day without reloading',
      setUp: () => f.server.seed([
        KodasRecord(id: 'k1', personId: mina.id, day: sunday),
      ]),
      build: () => f.createCubit(),
      act: (cubit) async {
        cubit.follow(meeting: liturgy, day: sunday);
        await f.settle();
        cubit.follow(meeting: sundaySchool, day: sunday);
        await f.settle();
      },
      expect: () => [
        _loading(sunday),
        _communicants(sunday, {mina.id}),
      ],
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
      expect: () => [
        _loading(sunday),
        _communicants(sunday, {mina.id}),
        _loading(nextSunday),
        _communicants(nextSunday, {mark.id}),
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
        expect(cubit.state, _communicants(sunday, {mina.id}));
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
      'kodas someone else already recorded that day is not offered for undo',
      setUp: () => f.server.alreadyRecorded = true,
      build: () => f.createCubit(),
      act: (cubit) async {
        cubit.follow(meeting: liturgy, day: sunday);
        await f.settle();
        await cubit.toggleKodas(mina);
      },
      verify: (_) => expect(f.presenter.undoableChanges, isEmpty),
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
        expect(cubit.state, _communicants(sunday, const {}));
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
        expect(cubit.state, _communicants(sunday, const {}));
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
      verify: (cubit) => expect(cubit.state, _communicants(sunday, {mina.id})),
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
      expect: () => [
        _loading(sunday),
        _communicants(sunday, const {}),
        _communicants(sunday, {mina.id}),
        _communicants(sunday, const {}),
      ],
      verify: (_) => expect(f.presenter.errors, hasLength(1)),
    );

    blocTest<RecordKodasCubit, RecordKodasState>(
      'hiding kodas saves it on the meeting and hides it',
      build: () => f.createCubit(),
      act: (cubit) async {
        cubit.follow(meeting: liturgy, day: sunday);
        await f.settle();
        await cubit.changeVisibility(visible: false);
      },
      expect: () => [
        _loading(sunday),
        _communicants(sunday, const {}),
        const RecordKodasHidden(),
      ],
      verify: (_) => expect(f.savedMeeting, _showsKodas(isFalse)),
    );

    blocTest<RecordKodasCubit, RecordKodasState>(
      'showing kodas saves it on a meeting that hid it and shows the day',
      setUp: () => f.server.seed([
        KodasRecord(id: 'k1', personId: mina.id, day: sunday),
      ]),
      build: () => f.createCubit(),
      act: (cubit) async {
        cubit.follow(meeting: hiddenKodasMeeting, day: sunday);
        await cubit.changeVisibility(visible: true);
        await f.settle();
      },
      expect: () => [
        const RecordKodasHidden(),
        _loading(sunday),
        _communicants(sunday, {mina.id}),
      ],
      verify: (_) => expect(f.savedMeeting, _showsKodas(isTrue)),
    );

    blocTest<RecordKodasCubit, RecordKodasState>(
      'a rejected visibility change is rolled back and reported',
      setUp: () => f.rejectMeetingUpdates = true,
      build: () => f.createCubit(),
      act: (cubit) async {
        cubit.follow(meeting: hiddenKodasMeeting, day: sunday);
        await cubit.changeVisibility(visible: true);
      },
      verify: (cubit) {
        expect(cubit.state, const RecordKodasHidden());
        expect(f.savedMeeting, isNull);
        expect(f.presenter.errors, hasLength(1));
      },
    );

    blocTest<RecordKodasCubit, RecordKodasState>(
      'a saved visibility survives a stale copy of the same meeting',
      build: () => f.createCubit(),
      act: (cubit) async {
        cubit.follow(meeting: hiddenKodasMeeting, day: sunday);
        await cubit.changeVisibility(visible: true);
        await f.settle();
        cubit.follow(meeting: hiddenKodasMeeting, day: nextSunday);
        await f.settle();
      },
      skip: 3,
      expect: () => [
        _loading(nextSunday),
        _communicants(nextSunday, const {}),
      ],
    );

    blocTest<RecordKodasCubit, RecordKodasState>(
      "switching meetings on the same day follows the new meeting's setting",
      build: () => f.createCubit(),
      act: (cubit) async {
        cubit.follow(meeting: liturgy, day: sunday);
        await f.settle();
        cubit.follow(meeting: hiddenKodasMeeting, day: sunday);
      },
      expect: () => [
        _loading(sunday),
        _communicants(sunday, const {}),
        const RecordKodasHidden(),
      ],
    );
  });
}

Matcher _showsKodas(Matcher matcher) => isA<Meeting>().having(
  (m) => m.showKodasCheckbox,
  'showKodasCheckbox',
  matcher,
);

Matcher _loading(DateTime day) =>
    isA<RecordKodasLoading>().having((s) => s.day, 'day', day);

Matcher _communicants(DateTime day, Set<String> personIds) =>
    isA<RecordKodasReady>()
        .having((s) => s.day, 'day', day)
        .having((s) => s.communicantIds, 'communicantIds', personIds);

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
  final meetingsDao = _MockMeetingsDAO();
  final presenter = _PresenterSpy();
  final server = _KodasServer();

  bool rejectMeetingUpdates = false;
  Meeting? savedMeeting;

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

    when(
      () => meetingsDao.updateObject(
        newObject: any(named: 'newObject'),
        oldObject: any(named: 'oldObject'),
      ),
    ).thenAnswer((i) async {
      if (rejectMeetingUpdates) return null;

      return savedMeeting = i.namedArguments[#newObject] as Meeting;
    });
  }

  RecordKodasCubit createCubit() => RecordKodasCubit(
    historyDao: historyDao,
    meetingsDao: meetingsDao,
    presenter: presenter,
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
  bool alreadyRecorded = false;

  void seed(List<KodasRecord> records) => _records.add(records);

  List<KodasRecord> recordsOn(DateTime day) =>
      _records.value.where((r) => r.day == day).toList();

  Stream<List<KodasRecord>> watchDay(DateTime day) =>
      _records.map((records) => records.where((r) => r.day == day).toList());

  Future<KodasRecord?> record({
    required String personId,
    required DateTime day,
  }) async {
    if (rejectWith case final error?) throw error;
    if (alreadyRecorded) {
      _records.add([
        ..._records.value,
        KodasRecord(id: 'other', personId: personId, day: day),
      ]);

      return null;
    }

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

final class _MockMeetingsDAO extends Mock implements MeetingsDAO {}

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
