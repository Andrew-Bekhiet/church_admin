import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/features/attendance/application/attendance_undo_presenter.dart';
import 'package:church_admin/src/features/attendance/application/live_records.dart';
import 'package:flutter/material.dart' show DateUtils;
import 'package:flutter_bloc/flutter_bloc.dart';

class RecordKodasCubit extends Cubit<RecordKodasState> {
  final HistoryDAO _historyDao;
  final AttendanceUndoPresenter _presenter;
  final KodasDayVisibility _dayVisibility;

  final LiveRecords<String, KodasRecord> _liveKodas = LiveRecords(
    keyOf: (record) => record.personId,
  );

  Meeting? _meeting;
  DateTime? _day;
  int _sessionId = 0;
  StreamSubscription<List<KodasRecord>>? _kodasSub;

  bool get _isVisible => switch ((_meeting, _day)) {
    (final meeting?, final day?) =>
      _dayVisibility.forDay(day) ?? meeting.showKodasCheckbox,
    _ => false,
  };

  RecordKodasCubit({
    HistoryDAO? historyDao,
    AttendanceUndoPresenter? presenter,
    KodasDayVisibility? dayVisibility,
  }) : _historyDao = historyDao ?? DatabaseService.I.history,
       _presenter = presenter ?? const ScaffoldAttendanceUndoPresenter(),
       _dayVisibility = dayVisibility ?? KodasDayVisibility.I,
       super(const RecordKodasHidden());

  void follow({required Meeting meeting, required DateTime day}) {
    final dayOnly = DateUtils.dateOnly(day);
    if (meeting.id == _meeting?.id && dayOnly == _day) return;

    final wasVisible = _isVisible;
    final isNewDay = dayOnly != _day;
    _meeting = meeting;
    _day = dayOnly;

    if (isNewDay || wasVisible != _isVisible) _restartSession();
  }

  void changeVisibility({required bool visible}) {
    final day = _day;
    if (day == null || visible == _isVisible) return;

    _dayVisibility.setForDay(day, visible: visible);
    _restartSession();
  }

  Future<void> toggleKodas(Person person) async {
    final day = _day;
    final personId = person.id;
    if (day == null ||
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
        final recorded = await _historyDao.recordKodas(
          personId: personId,
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
          onUndo: () => _historyDao.recordKodas(personId: personId, day: day),
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
    if (day == null || !_isVisible) {
      emit(const RecordKodasHidden());

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
