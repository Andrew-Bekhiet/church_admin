import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/features/attendance/application/attendance_undo_presenter.dart';
import 'package:church_admin/src/features/attendance/application/live_records.dart';
import 'package:church_admin/src/features/attendance/application/scaffold_attendance_undo_presenter.dart';
import 'package:church_admin/src/features/attendance/application/undo_tracking_attendance_presenter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_ui/material_ui.dart' show DateUtils;

class RecordKodasCubit extends Cubit<RecordKodasState> {
  final HistoryDAO _historyDao;
  final MeetingsDAO _meetingsDao;
  final AttendanceUndoPresenter _presenter;
  final AnalyticsService _analyticsService;

  final Map<String, bool> _savedShowKodasByMeetingId = {};

  final LiveRecords<String, KodasRecord> _liveKodasRecords = LiveRecords(
    keyOf: (record) => record.personId,
  );

  Meeting? _meeting;
  DateTime? _day;
  int _sessionId = 0;
  StreamSubscription<List<KodasRecord>>? _kodasSub;

  bool get _isVisible => switch (_meeting) {
    final meeting? =>
      _savedShowKodasByMeetingId[meeting.id] ?? meeting.showKodasCheckbox,
    null => false,
  };

  RecordKodasCubit({
    HistoryDAO? historyDao,
    MeetingsDAO? meetingsDao,
    AttendanceUndoPresenter? presenter,
    AnalyticsService? analyticsService,
  }) : _historyDao = historyDao ?? DatabaseService.I.history,
       _meetingsDao = meetingsDao ?? DatabaseService.I.meetings,
       _presenter = presenter ?? const ScaffoldAttendanceUndoPresenter(),
       _analyticsService = analyticsService ?? AnalyticsService.I,
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

  Future<void> changeVisibility({required bool visible}) async {
    final meeting = _meeting;
    if (meeting == null || visible == _isVisible) return;

    final previous = meeting.copyWith(showKodasCheckbox: _isVisible);
    _savedShowKodasByMeetingId[meeting.id] = visible;
    _restartSession();

    try {
      final saved = await _meetingsDao.updateObject(
        newObject: previous.copyWith(showKodasCheckbox: visible),
        oldObject: previous,
      );
      if (saved == null) throw const KodasChangeRejectedException();

      _trackColumnToggle(meeting, isVisible: visible, isSuccess: true);
    } catch (error, stackTrace) {
      _trackColumnToggle(meeting, isVisible: visible, isSuccess: false);
      _logError(error, stackTrace);
      if (isClosed) return;

      _savedShowKodasByMeetingId[meeting.id] = previous.showKodasCheckbox;
      if (_meeting?.id == meeting.id) _restartSession();
      _presenter.showError('تعذر تغيير إعداد تسجيل التناول، حاول مرة أخرى');
    }
  }

  Future<void> toggleKodas(Person person) async {
    final day = _day;
    final meeting = _meeting;
    final personId = person.id;
    if (day == null ||
        meeting == null ||
        state is! RecordKodasReady ||
        _liveKodasRecords.isPending(personId)) {
      return;
    }

    final sessionId = _sessionId;
    final existing = _liveKodasRecords.effectiveRecord(personId);
    _liveKodasRecords.beginOptimistic(
      personId,
      existing == null
          ? KodasRecord(id: personId, personId: personId, day: day)
          : null,
    );
    _emitReady();

    final presenter = UndoTrackingAttendancePresenter(
      _presenter,
      (undoneChange) => _analyticsService.track(
        KodasUndo(meeting, personId: personId, undoneChange: undoneChange),
      ),
    );
    var isSaved = false;
    try {
      if (existing == null) {
        final recorded = await _historyDao.recordKodas(
          personId: personId,
          day: day,
        );

        isSaved = recorded != null;
        if (recorded != null) {
          presenter.showUndo(
            personName: person.name,
            change: AttendanceUndoableChange.kodasRecorded,
            onUndo: () => _historyDao.deleteKodas(kodasRecordId: recorded.id),
          );
        }
      } else {
        await _historyDao.deleteKodas(kodasRecordId: existing.id);
        isSaved = true;

        presenter.showUndo(
          personName: person.name,
          change: AttendanceUndoableChange.kodasRemoved,
          onUndo: () => _historyDao.recordKodas(personId: personId, day: day),
        );
      }
    } catch (error, stackTrace) {
      _logError(error, stackTrace);
      if (isClosed || sessionId != _sessionId) return;

      _liveKodasRecords.rollbackOptimistic(personId);
      _presenter.showError('تعذر حفظ التناول، حاول مرة أخرى');
    } finally {
      _analyticsService.track(
        KodasPersonMark(
          meeting,
          personId: personId,
          isRecorded: existing == null,
          isSuccess: isSaved,
        ),
      );
      if (sessionId == _sessionId) {
        _liveKodasRecords.settle(personId);
        _emitReady();
      }
    }
  }

  void _trackColumnToggle(
    Meeting meeting, {
    required bool isVisible,
    required bool isSuccess,
  }) => _analyticsService.track(
    KodasColumnToggle(meeting, isVisible: isVisible, isSuccess: isSuccess),
  );

  void _restartSession() {
    _sessionId++;
    unawaited(_kodasSub?.cancel());
    _kodasSub = null;
    _liveKodasRecords.reset();

    final day = _day;
    if (day == null || !_isVisible) {
      emit(const RecordKodasHidden());

      return;
    }

    emit(RecordKodasLoading(day: day));
    _kodasSub = _historyDao
        .streamDayKodas(day: day)
        .listen(_onServerKodas, onError: _logError);
  }

  void _onServerKodas(List<KodasRecord> records) {
    _liveKodasRecords.refreshWithServerRecords(records);
    _emitReady();
  }

  void _emitReady() {
    final day = _day;
    if (isClosed || day == null) return;

    emit(
      RecordKodasReady(
        day: day,
        communicantIds: _liveKodasRecords.effectiveKeys,
      ),
    );
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
