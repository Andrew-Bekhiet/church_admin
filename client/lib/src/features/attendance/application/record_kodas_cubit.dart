import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/features/attendance/application/attendance_undo_presenter.dart';
import 'package:church_admin/src/features/attendance/application/live_records.dart';
import 'package:flutter/material.dart' show DateUtils;
import 'package:flutter_bloc/flutter_bloc.dart';

class RecordKodasCubit extends Cubit<RecordKodasState> {
  final HistoryDAO _historyDao;
  final MeetingsDAO _meetingsDao;
  final AttendanceUndoPresenter _presenter;

  final LiveRecords<String, KodasRecord> _liveKodas = LiveRecords(
    keyOf: (record) => record.personId,
  );

  Meeting? _meeting;
  DateTime? _day;
  int _sessionId = 0;
  StreamSubscription<List<KodasRecord>>? _kodasSub;

  RecordKodasCubit({
    HistoryDAO? historyDao,
    MeetingsDAO? meetingsDao,
    AttendanceUndoPresenter? presenter,
  }) : _historyDao = historyDao ?? DatabaseService.I.history,
       _meetingsDao = meetingsDao ?? DatabaseService.I.meetings,
       _presenter = presenter ?? const ScaffoldAttendanceUndoPresenter(),
       super(const RecordKodasDisabled());

  void follow({required Meeting meeting, required DateTime day}) {
    final dayOnly = DateUtils.dateOnly(day);
    final isNewMeeting = meeting.id != _meeting?.id;
    if (!isNewMeeting && dayOnly == _day) return;

    if (isNewMeeting) _meeting = meeting;
    _day = dayOnly;
    _restartSession();
  }

  Future<void> changeTracking({required bool enabled}) async {
    final previous = _meeting;
    if (previous == null || previous.showKodasCheckbox == enabled) return;

    final changed = previous.copyWith(showKodasCheckbox: enabled);
    _meeting = changed;
    _restartSession();

    try {
      final saved = await _meetingsDao.updateObject(
        newObject: changed,
        oldObject: previous,
      );
      if (saved == null) throw const KodasChangeRejectedException();
    } catch (error, stackTrace) {
      _logError(error, stackTrace);
      if (isClosed || _meeting != changed) return;

      _meeting = previous;
      _restartSession();
      _presenter.showError('تعذر تغيير إعداد تسجيل التناول، حاول مرة أخرى');
    }
  }

  Future<void> toggleKodas(Person person) async {
    final meeting = _meeting;
    final day = _day;
    final personId = person.id;
    if (meeting == null ||
        day == null ||
        state is! RecordKodasReady ||
        _liveKodas.isPending(personId)) {
      return;
    }

    final sessionId = _sessionId;
    final existing = _liveKodas.effectiveRecord(personId);
    _liveKodas.beginOptimistic(
      personId,
      existing == null
          ? KodasRecord(id: personId, personId: personId, day: day)
          : null,
    );
    _emitReady();

    try {
      if (existing == null) {
        final recorded = await _historyDao.recordMeetingKodas(
          personId: personId,
          meetingId: meeting.id,
          day: day,
        );

        _presenter.showUndo(
          personName: person.name,
          change: AttendanceUndoableChange.kodasRecorded,
          onUndo: () => _historyDao.deleteKodas(kodasRecordId: recorded.id),
        );
      } else {
        await _historyDao.deleteKodas(kodasRecordId: existing.id);

        _presenter.showUndo(
          personName: person.name,
          change: AttendanceUndoableChange.kodasRemoved,
          onUndo: () => _historyDao.recordMeetingKodas(
            personId: personId,
            meetingId: meeting.id,
            day: day,
          ),
        );
      }
    } catch (error, stackTrace) {
      _logError(error, stackTrace);
      if (isClosed || sessionId != _sessionId) return;

      _liveKodas.rollbackOptimistic(personId);
      _presenter.showError('تعذر حفظ التناول، حاول مرة أخرى');
    } finally {
      if (sessionId == _sessionId) {
        _liveKodas.settle(personId);
        _emitReady();
      }
    }
  }

  void _restartSession() {
    _sessionId++;
    unawaited(_kodasSub?.cancel());
    _kodasSub = null;
    _liveKodas.reset();

    final day = _day;
    if (day == null || !(_meeting?.showKodasCheckbox ?? false)) {
      emit(const RecordKodasDisabled());

      return;
    }

    emit(const RecordKodasLoading());
    _kodasSub = _historyDao
        .streamDayKodas(day: day)
        .listen(_onServerKodas, onError: _logError);
  }

  void _onServerKodas(List<KodasRecord> records) {
    _liveKodas.refreshWithServerRecords(records);
    _emitReady();
  }

  void _emitReady() {
    if (isClosed) return;

    emit(RecordKodasReady(communicantIds: _liveKodas.effectiveKeys));
  }

  void _logError(Object error, StackTrace stackTrace) => unawaited(
    LoggingService.I.exception(
      LogRecord(
        moduleName: '$RecordKodasCubit',
        error: error,
        stackTrace: stackTrace,
      ),
    ),
  );

  @override
  Future<void> close() async {
    await _kodasSub?.cancel();
    await super.close();
  }
}
