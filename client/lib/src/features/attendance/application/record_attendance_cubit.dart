import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/features/attendance/application/attendance_undo_presenter.dart';
import 'package:church_admin/src/features/attendance/application/live_records.dart';
import 'package:church_admin/src/features/attendance/application/optimistic_attendance_outcome.dart';
import 'package:church_admin/src/features/attendance/application/scaffold_attendance_undo_presenter.dart';
import 'package:church_admin/src/features/attendance/domain/attendance_record_rights.dart';
import 'package:clock/clock.dart';
import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_ui/material_ui.dart'
    show DateTimeRange, DateUtils, TimeOfDay;
import 'package:rxdart/rxdart.dart';

class RecordAttendanceCubit extends Cubit<RecordAttendanceState> {
  static const int defaultStreakWindowDays = 60;

  static const Duration _searchDebounce = Duration(milliseconds: 300);
  static const AttendanceNameAlphabet _alphabet = AttendanceNameAlphabet();

  final MeetingsDAO _dao;
  final AuthBloc _authBloc;
  final AttendanceUndoPresenter _presenter;
  final AnalyticsService _analyticsService;

  final BehaviorSubject<String?> _searchSubject = BehaviorSubject.seeded(null);
  StreamSubscription<String?>? _searchSub;
  String _searchQuery = '';

  Meeting _meeting;
  DateTime _selectedDate;

  late AttendanceRosterAudienceView _audienceView;
  late AttendanceRecordRights _recordAttendanceRights;

  AttendancePresenceFilter _presenceFilter = AttendancePresenceFilter.all;
  AttendanceGrouping _grouping = AttendanceGrouping.studyYear;
  AttendanceSorting _sort = AttendanceSorting.byName();

  int _rosterRequestId = 0;
  List<MeetingRosterEntry> _rosterPersons = const [];

  int _trackRequestId = 0;
  Map<String, PersonMeetingAttendanceAnalysis> _personsAttendanceAnalyses =
      const {};
  int _streakWindowDays = defaultStreakWindowDays;

  StreamSubscription<List<AttendanceRecord>>? _attendanceSub;
  final LiveRecords<(String personId, bool asServant), AttendanceRecord>
  _liveAttendance = LiveRecords(keyOf: (r) => (r.personId, r.asServant));
  Set<DateTime> _recordedDays = const {};

  RosterStatus _rosterStatus = RosterStatus.loading;
  Map<String, int> _gutterIndex = const {};

  DateTime get _fromDate => _selectedDate;
  DateTime get _toDate => _selectedDate.add(const Duration(days: 1));
  bool get _asServant => _audienceView.asServant;

  AttendanceSorting get _effectiveSort => switch (_grouping) {
    AttendanceGrouping.none => _sort,
    AttendanceGrouping.studyYear => AttendanceSortingByStudyYear(then: _sort),
  };

  bool get _canToggleAudience =>
      _meeting.audience == MeetingAudience.personsAndServants &&
      _recordAttendanceRights.canToggleAudience;

  AttendanceRosterSettings get _rosterSettings => AttendanceRosterSettings(
    audienceView: _audienceView,
    sort: _sort,
    presenceFilter: _presenceFilter,
    grouping: _grouping,
    isSearchActive: _searchQuery.isNotEmpty,
    isToday: DateUtils.isSameDay(_selectedDate, clock.now()),
  );

  RecordAttendanceCubit({
    required this._meeting,
    DateTime? initialDate,
    MeetingsDAO? dao,
    AuthBloc? authBloc,
    AttendanceUndoPresenter? presenter,
    AnalyticsService? analyticsService,
  }) : _dao = dao ?? DatabaseService.I.meetings,
       _authBloc = authBloc ?? AuthBloc.I,
       _presenter = presenter ?? const ScaffoldAttendanceUndoPresenter(),
       _analyticsService = analyticsService ?? AnalyticsService.I,
       _selectedDate = DateUtils.dateOnly(initialDate ?? DateTime.now()),
       super(const RecordAttendanceLoading()) {
    _forceSwitchMeeting(_meeting);

    _searchSub = _searchSubject
        .debounceTime(_searchDebounce)
        .map((query) => query?.trim().toLowerCase() ?? '')
        .distinct((a, b) => a == b)
        .doOnData((query) => _searchQuery = query)
        .listen((query) {
          _emitLoaded();
          _maybeTrackSearch(query);
        });
  }

  int indexForLetter(String letter) => _gutterIndex[letter] ?? -1;

  void trackForCurrentMeeting(
    AttendanceAnalyticsEvent Function(Meeting meeting) eventFor,
  ) => _analyticsService.track(eventFor(_meeting));

  void switchMeeting(Meeting meeting) {
    if (meeting.id == _meeting.id) return;

    _analyticsService.track(
      AttendanceMeetingSwitch(meeting, fromMeetingId: _meeting.id),
    );
    _forceSwitchMeeting(meeting);
  }

  void _forceSwitchMeeting(Meeting meeting) {
    _meeting = meeting;
    _recordAttendanceRights = AttendanceRecordRights.resolve(
      user: _authBloc.currentUserData,
      meeting: _meeting,
    );
    _audienceView = _recordAttendanceRights.initialViewFor(_meeting);
    _liveAttendance.reset();
    _personsAttendanceAnalyses = const {};
    _recordedDays = const {};
    unawaited(_restartSession());
  }

  void selectDate(DateTime date) {
    final dayOnly = DateUtils.dateOnly(date);
    if (dayOnly == _selectedDate) return;

    _analyticsService.track(
      AttendanceDateChange(
        _meeting,
        day: dayOnly,
        hasRecordsOnDay: _recordedDays.contains(dayOnly),
      ),
    );
    _selectedDate = dayOnly;
    _liveAttendance.reset();
    _personsAttendanceAnalyses = const {};
    _subscribeAttendance();
    unawaited(_loadAttendanceAnalyses());
  }

  void toggleAudience() {
    if (!_canToggleAudience) return;

    _audienceView = _audienceView.toggled;
    _analyticsService.track(
      AttendanceAudienceViewToggle(_meeting, _audienceView),
    );
    _personsAttendanceAnalyses = const {};
    _emitLoaded();
    unawaited(_loadAttendanceAnalyses());
  }

  void changePresenceFilter(
    AttendancePresenceFilter filter, {
    bool isReset = false,
  }) {
    if (_presenceFilter == filter) return;

    if (state case RecordAttendanceLoaded(
      :final presentCount,
      :final eligibleCount,
    )) {
      _analyticsService.track(
        AttendancePresenceFilterChange(
          _meeting,
          filter: filter,
          isReset: isReset,
          presentCount: presentCount,
          eligibleCount: eligibleCount,
        ),
      );
    }
    _presenceFilter = filter;
    _emitLoaded();
  }

  void changeGrouping(AttendanceGrouping grouping) {
    if (_grouping == grouping) return;

    _analyticsService.track(AttendanceGroupingToggle(_meeting, grouping));
    _grouping = grouping;
    _emitLoaded();
  }

  void changeSorting(AttendanceSorting sort) {
    if (_sort == sort) return;

    final isSameSortType =
        AttendanceSortType.of(sort) == AttendanceSortType.of(_sort);
    _analyticsService.track(
      isSameSortType
          ? AttendanceSortReverse(_meeting, sort)
          : AttendanceSortChange(_meeting, sort),
    );
    _sort = sort;
    _emitLoaded();
  }

  void changeStreakWindow(int days) {
    if (_streakWindowDays == days) return;

    _analyticsService.track(AttendanceStreakWindowChange(_meeting, days));
    _streakWindowDays = days;
    _personsAttendanceAnalyses = const {};
    _emitLoaded();
    unawaited(_loadAttendanceAnalyses());
  }

  void onSearch(String? query) => _searchSubject.sink.add(query);

  void retry() {
    _analyticsService.track(AttendanceRetry(_meeting));
    unawaited(_restartSession());
  }

  Future<void> toggleAttendance(MeetingRosterEntry entry) async {
    final meeting = _meeting;
    final personId = entry.person.id;
    final effectiveAttendanceRecord = _liveAttendance.effectiveRecord((
      personId,
      _asServant,
    ));
    final newIsPresent = effectiveAttendanceRecord == null;
    final attendanceTime = _selectedDate.replaceTime(DateTime.now());

    final outcome = await _runOptimisticAttendance(
      entry: entry,
      optimisticTime: newIsPresent ? attendanceTime : null,
      action: () async {
        if (newIsPresent) {
          final record = await _dao.markAttendance(
            meetingId: _meeting.id,
            personId: personId,
            asServant: _asServant,
            datetime: attendanceTime,
          );

          _showTrackedUndo(
            meeting,
            entry,
            AttendanceUndoableChange.markedPresent,
            () => _dao.unmarkAttendance(attendanceRecordId: record.id),
          );
        } else if (entry.attendance?.id case final attendanceRecordId?) {
          final record = await _dao.unmarkAttendance(
            attendanceRecordId: attendanceRecordId,
          );

          _showTrackedUndo(
            meeting,
            entry,
            AttendanceUndoableChange.markedAbsent,
            () => _dao.markAttendance(
              meetingId: record.meetingId,
              personId: record.personId,
              datetime: record.datetime,
              asServant: record.asServant,
            ),
          );
        }
      },
    );
    if (outcome == OptimisticAttendanceOutcome.skippedWhilePending) return;

    _analyticsService.track(
      AttendancePersonMark(
        meeting,
        personId: personId,
        newState: newIsPresent
            ? AttendanceMarkState.present
            : AttendanceMarkState.absent,
        rosterSettings: _rosterSettings,
        isSuccess: outcome == OptimisticAttendanceOutcome.saved,
      ),
    );
  }

  Future<void> updateEntryAttendanceTime(
    MeetingRosterEntry entry,
    TimeOfDay time,
  ) async {
    final attendanceRecord = entry.attendance;
    if (attendanceRecord == null) return;

    final newDatetime = _selectedDate.replaceTimeOfDay(time);
    if (newDatetime == attendanceRecord.datetime) return;

    final isRejectedFuture = newDatetime.isAfter(clock.now());
    if (isRejectedFuture) {
      _presenter.showError('لا يمكن تسجيل الحضور في وقت لم يأت بعد');
    }

    final outcome = isRejectedFuture
        ? OptimisticAttendanceOutcome.failed
        : await _runOptimisticAttendance(
            entry: entry,
            optimisticTime: newDatetime,
            action: () => _dao.updateAttendanceTime(
              attendanceRecordId: attendanceRecord.id,
              datetime: newDatetime,
            ),
          );
    if (outcome == OptimisticAttendanceOutcome.skippedWhilePending) return;

    _analyticsService.track(
      AttendanceTimeEdit(
        _meeting,
        personId: entry.person.id,
        minutesShifted: newDatetime
            .difference(attendanceRecord.datetime)
            .inMinutes,
        isRejectedFuture: isRejectedFuture,
        isSuccess: outcome == OptimisticAttendanceOutcome.saved,
      ),
    );
  }

  void _showTrackedUndo(
    Meeting meeting,
    MeetingRosterEntry entry,
    AttendanceUndoableChange change,
    Future<void> Function() undo,
  ) => _presenter.showUndo(
    personName: entry.person.name,
    change: change,
    onUndo: () {
      _analyticsService.track(
        AttendanceUndo(
          meeting,
          personId: entry.person.id,
          undoneChange: change,
        ),
      );
      unawaited(undo());
    },
  );

  void _maybeTrackSearch(String query) {
    if (query.isEmpty) return;

    if (state case RecordAttendanceLoaded(:final entries)) {
      _analyticsService.track(
        AttendanceSearchSubmit(
          _meeting,
          query: query,
          resultCount: entries.length,
        ),
      );
    }
  }

  Future<OptimisticAttendanceOutcome> _runOptimisticAttendance({
    required MeetingRosterEntry entry,
    required DateTime? optimisticTime,
    required Future<void> Function() action,
  }) async {
    final personId = entry.person.id;
    final key = (personId, _asServant);
    if (_liveAttendance.isPending(key)) {
      return OptimisticAttendanceOutcome.skippedWhilePending;
    }

    _liveAttendance.beginOptimistic(key, switch (optimisticTime) {
      null => null,
      final time => AttendanceRecord(
        id: _meeting.id,
        meetingId: _meeting.id,
        personId: personId,
        datetime: time,
        asServant: _asServant,
      ),
    });
    if (optimisticTime != null && !_recordedDays.contains(_selectedDate)) {
      _recordedDays = {..._recordedDays, _selectedDate};
    }
    _emitLoaded();

    try {
      await action();

      return OptimisticAttendanceOutcome.saved;
    } catch (error, stackTrace) {
      _liveAttendance.rollbackOptimistic(key);

      unawaited(
        LoggingService.I.exception(
          LogRecord(error: error, stackTrace: stackTrace),
        ),
      );

      if (!isClosed) _presenter.showError('تعذر حفظ الحضور، حاول مرة أخرى');

      return OptimisticAttendanceOutcome.failed;
    } finally {
      _liveAttendance.endInFlight(key);
      _emitLoaded();
    }
  }

  Future<void> _restartSession() async {
    try {
      await _loadRoster(showLoading: true);
      if (isClosed) return;
      _subscribeAttendance();
      unawaited(_loadAttendanceAnalyses());
      unawaited(_loadRecordedDays());
    } catch (error, stackTrace) {
      _onRosterError(error, stackTrace);
    }
  }

  Future<void> _loadRecordedDays() async {
    try {
      final analysis = await _dao.getMeetingsAttendanceAnalysis(
        subject: MeetingAnalysisSubject(_meeting),
        range: DateTimeRange(start: DateTime(2019), end: DateTime.now()),
      );
      if (isClosed) return;

      final days = analysis.aggregateDays
          .where((d) => d.totalCount > 0)
          .map((d) => DateUtils.dateOnly(d.day))
          .toSet();

      final merged = {...days, ..._recordedDays};
      if (const SetEquality<DateTime>().equals(merged, _recordedDays)) return;

      _recordedDays = merged;
      _emitLoaded();
    } catch (error, stackTrace) {
      unawaited(
        LoggingService.I.exception(
          LogRecord(
            moduleName: '$RecordAttendanceCubit',
            error: error,
            stackTrace: stackTrace,
          ),
        ),
      );
    }
  }

  Future<void> _loadAttendanceAnalyses() async {
    final requestId = ++_trackRequestId;

    try {
      final attendanceAnalyses = await _dao.getAttendanceAnalyses(
        meeting: _meeting,
        // Ends the day before selectedDate so marking attendance today doesn't
        // retroactively change the shown incoming track record.
        range: DateTimeRange(
          start: _selectedDate.subtract(Duration(days: _streakWindowDays)),
          end: _selectedDate.subtract(const Duration(days: 1)),
        ),
        asServant: _asServant,
      );

      if (requestId != _trackRequestId || isClosed) return;

      _personsAttendanceAnalyses = {
        for (final analysis in attendanceAnalyses) analysis.personId: analysis,
      };
      _emitLoaded();
    } catch (error, stackTrace) {
      unawaited(
        LoggingService.I.exception(
          LogRecord(
            moduleName: '$RecordAttendanceCubit',
            error: error,
            stackTrace: stackTrace,
          ),
        ),
      );

      if (requestId != _trackRequestId || isClosed) return;

      _personsAttendanceAnalyses = const {};
      _emitLoaded();
    }
  }

  Future<void> _loadRoster({required bool showLoading}) async {
    if (showLoading) {
      _rosterStatus = RosterStatus.loading;
      _rosterPersons = const [];
      _emitLoaded();
    }

    final requestId = ++_rosterRequestId;

    final entries = await _dao.getMeetingRoster(
      meetingId: _meeting.id,
      groupByStudyYear: _grouping == AttendanceGrouping.studyYear,
    );

    if (requestId != _rosterRequestId || isClosed) return;

    _rosterPersons = entries;
    _rosterStatus = RosterStatus.ready;
    _emitLoaded();
  }

  void _subscribeAttendance() {
    unawaited(_attendanceSub?.cancel());
    _attendanceSub = _dao
        .streamAttendanceHistory(
          meetingId: _meeting.id,
          fromDate: _fromDate,
          toDate: _toDate,
        )
        .listen(_onServerAttendanceRecords, onError: _onRosterError);
  }

  void _onServerAttendanceRecords(List<AttendanceRecord> records) {
    if (isClosed) return;

    if (records.isNotEmpty && !_recordedDays.contains(_selectedDate)) {
      _recordedDays = {..._recordedDays, _selectedDate};
    }
    _liveAttendance.refreshWithServerRecords(records);
    _emitLoaded();
  }

  void _onRosterError(Object error, StackTrace stackTrace) {
    unawaited(
      LoggingService.I.exception(
        LogRecord(
          moduleName: '$RecordAttendanceCubit',
          error: error,
          stackTrace: stackTrace,
        ),
      ),
    );
    if (isClosed) return;

    _rosterStatus = RosterStatus.error;
    _emitLoaded();
  }

  void _emitLoaded() {
    if (isClosed) return;

    final allEligibleEntries = _rosterPersons
        .map(_withLiveAttendance)
        .map(
          (e) => e.copyWith(
            personAttendanceAnalysis: _personsAttendanceAnalyses[e.person.id],
          ),
        )
        .where(_audienceView.matches)
        .toList();

    final filteredEntries = allEligibleEntries
        .where(_presenceFilter.matches)
        .where((e) => _matchesSearch(e, _searchQuery))
        .toList();

    final sorted = filteredEntries.sorted(_effectiveSort.compare);

    _gutterIndex = _alphabet.buildGutterLettersIndex(
      sorted,
      nameOf: (e) => e.person.name,
      navigable: (e) =>
          !(_presenceFilter == AttendancePresenceFilter.all &&
              _sort is AttendanceSortingByTime) ||
          !e.attended,
    );
    final sortedGutterLetters = _alphabet.sortGutterLettersFirst(
      _gutterIndex.keys.toList(),
    );

    emit(
      RecordAttendanceLoaded(
        meeting: _meeting,
        selectedDate: _selectedDate,
        audienceView: _audienceView,
        canToggleAudience: _canToggleAudience,
        presenceFilter: _presenceFilter,
        grouping: _grouping,
        sort: _sort,
        rosterStatus: _rosterStatus,
        searchQuery: _searchQuery,
        recordedDays: _recordedDays,
        entries: sorted,
        gutterLetters: sortedGutterLetters,
        streakWindowDays: _streakWindowDays,
        presentCount: allEligibleEntries.where((e) => e.attended).length,
        eligibleCount: allEligibleEntries.length,
      ),
    );
  }

  MeetingRosterEntry _withLiveAttendance(MeetingRosterEntry entry) {
    final record = _liveAttendance.effectiveRecord((
      entry.person.id,
      entry.asServant,
    ));

    return entry.copyWith(attendanceRecord: record);
  }

  bool _matchesSearch(MeetingRosterEntry entry, String query) {
    if (query.isEmpty) return true;

    final personName = entry.person.name.toLowerCase().trim();
    final phoneFragment = PhoneNumberFormat.normalizeForSearch(query);

    return personName.contains(query) ||
        phoneFragment.isNotEmpty &&
            entry.phones.any((phone) => phone.contains(phoneFragment));
  }

  @override
  Future<void> close() async {
    await _attendanceSub?.cancel();
    await _searchSub?.cancel();
    await _searchSubject.close();
    await super.close();
  }
}
