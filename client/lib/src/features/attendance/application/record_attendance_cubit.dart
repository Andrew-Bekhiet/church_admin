import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/features/attendance/application/attendance_undo_presenter.dart';
import 'package:church_admin/src/features/attendance/application/live_attendance.dart';
import 'package:church_admin/src/features/attendance/domain/attendance_record_rights.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart' show DateUtils;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

/// Manages a single attendance recording session: the active meeting, the
/// selected day, the audience view, the scoped roster (loaded in full so the
/// gutter and group counts stay accurate), live present/eligible counts and
/// optimistic one-tap marking with undo.
class RecordAttendanceCubit extends Cubit<RecordAttendanceState> {
  static const Duration _searchDebounce = Duration(milliseconds: 300);
  static const AttendanceNameAlphabet _alphabet = AttendanceNameAlphabet();

  final MeetingsDAO _dao;
  final AuthBloc _authBloc;
  final AttendanceUndoPresenter _presenter;

  final BehaviorSubject<String?> _searchSubject = BehaviorSubject.seeded(null);
  StreamSubscription<String?>? _searchSub;
  String _searchQuery = '';

  Meeting _meeting;
  DateTime _selectedDate;

  late AttendanceRosterAudienceView _audienceView;
  late AttendanceRecordRights _recordAttendanceRights;

  AttendancePresenceFilter _presenceFilter = AttendancePresenceFilter.all;
  AttendanceGrouping _grouping = AttendanceGrouping.none;
  AttendanceSorting _sort = AttendanceSorting.byName;

  int _rosterRequestId = 0;
  List<MeetingRosterEntry> _rosterPersons = const [];

  StreamSubscription<List<AttendanceRecord>>? _attendanceSub;
  final LiveAttendance _liveAttendance = LiveAttendance();

  RosterStatus _rosterStatus = RosterStatus.loading;
  List<MeetingRosterEntry> _displayEntries = const [];

  DateTime get _fromDate => _selectedDate;
  DateTime get _toDate => _selectedDate.add(const Duration(days: 1));
  bool get _asServant => _audienceView.asServant;

  bool get _canToggleAudience =>
      _meeting.audience == MeetingAudience.personsAndServants &&
      _recordAttendanceRights.canToggleAudience;

  RecordAttendanceCubit({
    required Meeting meeting,
    DateTime? initialDate,
    MeetingsDAO? dao,
    AuthBloc? authBloc,
    AttendanceUndoPresenter? presenter,
  }) : _dao = dao ?? DatabaseService.I.meetings,
       _authBloc = authBloc ?? AuthBloc.I,
       _presenter = presenter ?? const ScaffoldAttendanceUndoPresenter(),
       _meeting = meeting,
       _selectedDate = DateUtils.dateOnly(initialDate ?? DateTime.now()),
       super(const RecordAttendanceLoading()) {
    _forceSwitchMeeting(_meeting);

    _searchSub = _searchSubject
        .debounceTime(_searchDebounce)
        .map((query) => query?.trim().toLowerCase() ?? '')
        .distinct((a, b) => a == b)
        .doOnData((query) => _searchQuery = query)
        .listen((_) => _emitLoaded());
  }

  int indexForLetter(String letter) {
    return _displayEntries.indexWhere(
      (e) =>
          (_presenceFilter != AttendancePresenceFilter.all || !e.attended) &&
          _alphabet.firstLetterOf(e.person.name) == letter,
    );
  }

  void switchMeeting(Meeting meeting) {
    if (meeting.id == _meeting.id) return;

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
    unawaited(_restartSession());
  }

  void selectDate(DateTime date) {
    final dayOnly = DateUtils.dateOnly(date);
    if (dayOnly == _selectedDate) return;

    _selectedDate = dayOnly;
    _liveAttendance.reset();
    _subscribeAttendance();
  }

  void toggleAudience() {
    if (!_canToggleAudience) return;

    _audienceView = _audienceView.toggled;
    _liveAttendance.reset();
    _emitLoaded();
  }

  void changePresenceFilter(AttendancePresenceFilter filter) {
    if (_presenceFilter == filter) return;

    _presenceFilter = filter;
    _emitLoaded();
  }

  void changeGrouping(AttendanceGrouping grouping) {
    if (_grouping == grouping) return;

    _grouping = grouping;
    _emitLoaded();
  }

  void changeSorting(AttendanceSorting sort) {
    if (_sort == sort) return;

    _sort = sort;
    _emitLoaded();
  }

  void onSearch(String? query) => _searchSubject.sink.add(query);

  void retry() => unawaited(_restartSession());

  Future<void> toggleAttendance(MeetingRosterEntry entry) async {
    final personId = entry.person.id;
    if (_liveAttendance.isInFlight(personId) ||
        _liveAttendance.isOptimistic(personId)) {
      return;
    }

    final effectiveAttendanceRecord = _liveAttendance.effectiveAttendanceRecord(
      personId: personId,
      asServant: _asServant,
      meetingId: _meeting.id,
    );
    final newIsPresent = effectiveAttendanceRecord == null;
    final attendanceTime = _selectedDate.replaceTime(DateTime.now());

    _liveAttendance
      ..markOptimistic(personId, newIsPresent ? attendanceTime : null)
      ..beginInFlight(personId);
    _emitLoaded();

    try {
      if (newIsPresent) {
        final record = await _dao.markAttendance(
          meetingId: _meeting.id,
          personId: personId,
          asServant: _asServant,
          datetime: attendanceTime,
        );

        _presenter.showUndo(
          personName: entry.person.name,
          isPresent: true,
          onUndo: () => _dao.unmarkAttendance(attendanceRecordId: record.id),
        );
      } else if (entry.attendance?.id case final attendanceRecordId?) {
        final record = await _dao.unmarkAttendance(
          attendanceRecordId: attendanceRecordId,
        );

        _presenter.showUndo(
          personName: entry.person.name,
          isPresent: false,
          onUndo: () => _dao.markAttendance(
            meetingId: record.meetingId,
            personId: record.personId,
            datetime: record.datetime,
            asServant: record.asServant,
          ),
        );
      }
    } catch (error, stackTrace) {
      _liveAttendance.rollbackOptimistic(personId);

      unawaited(
        LoggingService.I.exception(
          LogRecord(error: error, stackTrace: stackTrace),
        ),
      );

      if (!isClosed) _presenter.showError('تعذر حفظ الحضور، حاول مرة أخرى');
    } finally {
      _liveAttendance.endInFlight(personId);
      _emitLoaded();
    }
  }

  Future<void> _restartSession() async {
    try {
      await _loadRoster(showLoading: true);
      _subscribeAttendance();
    } catch (error, stackTrace) {
      _onRosterError(error, stackTrace);
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
        .where((e) => e.asServant == _audienceView.asServant)
        .toList();

    final filteredEntries = allEligibleEntries
        .where(_matchesPresenceFilter)
        .where((e) => _matchesSearch(e, _searchQuery))
        .toList();

    final sorted = _sortedEntries(filteredEntries);
    _displayEntries = sorted;

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
        entries: sorted,
        gutterLetters: _alphabet.lettersFrom(sorted.map((e) => e.person.name)),
        presentCount: allEligibleEntries.where((e) => e.attended).length,
        eligibleCount: allEligibleEntries.length,
      ),
    );
  }

  MeetingRosterEntry _withLiveAttendance(MeetingRosterEntry entry) {
    final record = _liveAttendance.effectiveAttendanceRecord(
      personId: entry.person.id,
      asServant: entry.asServant,
      meetingId: _meeting.id,
    );

    return entry.copyWith(
      attendanceHistory: [?record],
    );
  }

  bool _matchesPresenceFilter(MeetingRosterEntry entry) =>
      switch (_presenceFilter) {
        AttendancePresenceFilter.all => true,
        AttendancePresenceFilter.present => entry.attended,
        AttendancePresenceFilter.absent => !entry.attended,
      };

  bool _matchesSearch(MeetingRosterEntry entry, String query) {
    if (query.isEmpty) return true;

    final person = entry.person;
    final personName = person.name.toLowerCase().trim();
    final mainPhone = person.mainPhone?.toLowerCase().trim() ?? '';

    return personName.contains(query) || mainPhone.contains(query);
  }

  // Sorted here because day-windowed attendance can't be expressed in the server ORDER BY.
  List<MeetingRosterEntry> _sortedEntries(List<MeetingRosterEntry> entries) {
    int gradeOf(MeetingRosterEntry e) => e.person.studyYear?.order ?? 1 << 16;

    return switch (_sort) {
      AttendanceSorting.byName => entries,
      AttendanceSorting.byAttendanceTime => entries.sorted((a, b) {
        if (_grouping == AttendanceGrouping.studyYear) {
          final cmp = gradeOf(a).compareTo(gradeOf(b));
          if (cmp != 0) return cmp;
        }

        final at = a.attendanceTime;
        final bt = b.attendanceTime;

        if (at == null && bt == null) {
          return a.person.name.compareTo(b.person.name);
        }
        if (at == null) return 1;
        if (bt == null) return -1;
        return bt.compareTo(at);
      }),
    };
  }

  @override
  Future<void> close() async {
    await _attendanceSub?.cancel();
    await _searchSub?.cancel();
    await _searchSubject.close();
    await super.close();
  }
}
