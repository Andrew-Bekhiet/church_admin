import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/features/attendance/application/attendance_undo_presenter.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart' show VoidCallback;
import 'package:mocktail/mocktail.dart';
import 'package:rxdart/rxdart.dart';

import '../../../fakes/fake_logging_service.dart';
import '../../../fakes/mock_history_dao.dart';
import '../../../fakes/mock_meetings_dao.dart';
import '../../../fakes/recording_analytics_provider.dart';

final class RecordKodasFixture {
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

  final historyDao = MockHistoryDAO();
  final meetingsDao = MockMeetingsDAO();
  final presenter = KodasPresenterSpy();
  final server = FakeKodasServer();
  final analytics = RecordingAnalyticsProvider();

  bool rejectMeetingUpdates = false;
  Meeting? savedMeeting;

  RecordKodasFixture() {
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
    analyticsService: AnalyticsService([analytics], FakeLoggingService()),
  );

  Future<void> settle() => pumpEventQueue();

  Future<void> dispose() => server.close();
}

final class FakeKodasServer {
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

final class KodasPresenterSpy implements AttendanceUndoPresenter {
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
