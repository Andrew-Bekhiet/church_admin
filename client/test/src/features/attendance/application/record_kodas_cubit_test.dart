import 'dart:async';

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
    final liturgy = _Fixture.meeting(showKodasCheckbox: true);
    final sundaySchool = _Fixture.meeting();
    final mina = Person(id: 'mina', name: 'Mina');
    final mark = Person(id: 'mark', name: 'Mark');

    late _Fixture f;

    setUpAll(() => registerFallbackValue(_Fixture.meeting()));

    setUp(() {
      f = _Fixture();
      addTearDown(f.dispose);
    });
    tearDown(defaultTearDown);

    test('is disabled for a meeting that does not record kodas', () async {
      final cubit = f.createCubit()..follow(meeting: sundaySchool, day: sunday);

      final state = await f.settled(cubit);

      expect(state, isA<RecordKodasDisabled>());
    });

    test('shows who took kodas on the followed day', () async {
      f.server.seed([
        KodasRecord(id: 'k1', personId: mina.id, day: sunday),
        KodasRecord(id: 'k2', personId: mark.id, day: nextSunday),
      ]);
      final cubit = f.createCubit()..follow(meeting: liturgy, day: sunday);

      final state = await f.settled(cubit);

      expect(state, _communicants({mina.id}));
    });

    test("following another day shows that day's communicants", () async {
      f.server.seed([
        KodasRecord(id: 'k1', personId: mina.id, day: sunday),
        KodasRecord(id: 'k2', personId: mark.id, day: nextSunday),
      ]);
      final cubit = f.createCubit()..follow(meeting: liturgy, day: sunday);
      await f.settled(cubit);

      cubit.follow(meeting: liturgy, day: nextSunday);
      final state = await f.settled(cubit);

      expect(state, _communicants({mark.id}));
    });

    test('recording kodas marks the person as a communicant', () async {
      final cubit = f.createCubit()..follow(meeting: liturgy, day: sunday);
      await f.settled(cubit);

      await cubit.toggleKodas(mina);
      final state = await f.settled(cubit);

      expect(state, _communicants({mina.id}));
      expect(f.server.recordsOn(sunday).single.personId, mina.id);
    });

    test('recording kodas is offered for undo', () async {
      final cubit = f.createCubit()..follow(meeting: liturgy, day: sunday);
      await f.settled(cubit);

      await cubit.toggleKodas(mina);

      expect(f.presenter.undoableChanges, [
        (personName: 'Mina', change: AttendanceUndoableChange.kodasRecorded),
      ]);
    });

    test('undoing recorded kodas removes it', () async {
      final cubit = f.createCubit()..follow(meeting: liturgy, day: sunday);
      await f.settled(cubit);
      await cubit.toggleKodas(mina);

      f.presenter.undoLast();
      final state = await f.settled(cubit);

      expect(state, _communicants(const {}));
      expect(f.server.recordsOn(sunday), isEmpty);
    });

    test('removing kodas unmarks the person', () async {
      f.server.seed([KodasRecord(id: 'k1', personId: mina.id, day: sunday)]);
      final cubit = f.createCubit()..follow(meeting: liturgy, day: sunday);
      await f.settled(cubit);

      await cubit.toggleKodas(mina);
      final state = await f.settled(cubit);

      expect(state, _communicants(const {}));
      expect(f.server.recordsOn(sunday), isEmpty);
    });

    test('undoing removed kodas records it again', () async {
      f.server.seed([KodasRecord(id: 'k1', personId: mina.id, day: sunday)]);
      final cubit = f.createCubit()..follow(meeting: liturgy, day: sunday);
      await f.settled(cubit);
      await cubit.toggleKodas(mina);

      f.presenter.undoLast();
      final state = await f.settled(cubit);

      expect(state, _communicants({mina.id}));
    });

    test('rejected kodas is rolled back and reported', () async {
      f.server.rejectWith = const KodasChangeRejectedException();
      final cubit = f.createCubit()..follow(meeting: liturgy, day: sunday);
      await f.settled(cubit);

      await cubit.toggleKodas(mina);
      final state = await f.settled(cubit);

      expect(state, _communicants(const {}));
      expect(f.presenter.errors, hasLength(1));
    });

    test(
      'enabling kodas saves it on the meeting and starts tracking',
      () async {
        f.server.seed([KodasRecord(id: 'k1', personId: mina.id, day: sunday)]);
        final cubit = f.createCubit()
          ..follow(meeting: sundaySchool, day: sunday);
        await f.settled(cubit);

        await cubit.changeTracking(enabled: true);
        final state = await f.settled(cubit);

        expect(state, _communicants({mina.id}));
        expect(f.savedMeeting?.showKodasCheckbox, isTrue);
      },
    );

    test(
      'disabling kodas saves it on the meeting and stops tracking',
      () async {
        final cubit = f.createCubit()..follow(meeting: liturgy, day: sunday);
        await f.settled(cubit);

        await cubit.changeTracking(enabled: false);
        final state = await f.settled(cubit);

        expect(state, isA<RecordKodasDisabled>());
        expect(f.savedMeeting?.showKodasCheckbox, isFalse);
      },
    );

    test('a rejected tracking change is rolled back and reported', () async {
      f.rejectMeetingUpdates = true;
      final cubit = f.createCubit()..follow(meeting: sundaySchool, day: sunday);
      await f.settled(cubit);

      await cubit.changeTracking(enabled: true);
      final state = await f.settled(cubit);

      expect(state, isA<RecordKodasDisabled>());
      expect(f.presenter.errors, hasLength(1));
    });

    test(
      'tracking enabled here survives a stale copy of the same meeting',
      () async {
        final cubit = f.createCubit()
          ..follow(meeting: sundaySchool, day: sunday);
        await f.settled(cubit);
        await cubit.changeTracking(enabled: true);

        cubit.follow(meeting: sundaySchool, day: nextSunday);
        final state = await f.settled(cubit);

        expect(state, isA<RecordKodasReady>());
      },
    );

    test("switching meetings follows the new meeting's setting", () async {
      final cubit = f.createCubit()..follow(meeting: liturgy, day: sunday);
      await f.settled(cubit);

      cubit.follow(meeting: sundaySchool, day: sunday);
      final state = await f.settled(cubit);

      expect(state, isA<RecordKodasDisabled>());
    });
  });
}

Matcher _communicants(Set<String> personIds) => isA<RecordKodasReady>().having(
  (s) => s.communicantIds,
  'communicantIds',
  personIds,
);

final class _Fixture {
  static Meeting meeting({bool showKodasCheckbox = false}) => Meeting(
    id: showKodasCheckbox ? 'liturgy' : 'sunday-school',
    name: showKodasCheckbox ? 'Liturgy' : 'Sunday School',
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
      () => historyDao.recordMeetingKodas(
        personId: any(named: 'personId'),
        meetingId: any(named: 'meetingId'),
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

  Future<RecordKodasState> settled(RecordKodasCubit cubit) async {
    await pumpEventQueue();

    return cubit.state;
  }

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
