import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

/// Manages a single attendance recording session: the active meeting, the
/// selected day, the audience view, the scoped roster (loaded in full so the
/// gutter and group counts stay accurate), live present/eligible counts and
/// optimistic one-tap marking with undo.
class RecordAttendanceCubit extends Cubit<RecordAttendanceState> {
  static const AttendanceNameAlphabet _alphabet = AttendanceNameAlphabet();
  static const Duration _searchDebounce = Duration(milliseconds: 300);
  static const int _rosterLimit = 5000;

  final MeetingsDAO _dao;
  final AuthBloc _authBloc;

  final BehaviorSubject<String?> _searchSubject = BehaviorSubject.seeded(null);
  StreamSubscription<String?>? _searchSub;

  Meeting _meeting;
  DateTime _selectedDate;

  late AttendanceRosterAudienceView _view;
  bool _canRecordPersons = false;
  bool _canRecordServants = false;

  AttendancePresenceFilter _filter = AttendancePresenceFilter.all;
  AttendanceGrouping _grouping = AttendanceGrouping.none;
  AttendanceSorting _sort = AttendanceSorting.byName;

  StreamSubscription<List<MeetingRosterEntry>>? _rosterSub;

  RosterStatus _rosterStatus = RosterStatus.loading;
  List<MeetingRosterEntry> _serverEntries = const [];
  List<MeetingRosterEntry> _displayEntries = const [];

  StreamSubscription<int?>? _presentCountSub;
  StreamSubscription<int?>? _eligibleCountSub;
  int? _presentCount;
  int? _eligibleCount;

  final Map<String, DateTime?> _optimisticPresence = {};

  final Set<String> _inFlight = {};

  RecordAttendanceCubit({
    required Meeting meeting,
    DateTime? initialDate,
    MeetingsDAO? dao,
    AuthBloc? authBloc,
  }) : _dao = dao ?? DatabaseService.I.meetings,
       _authBloc = authBloc ?? AuthBloc.I,
       _meeting = meeting,
       _selectedDate = DateUtils.dateOnly(initialDate ?? DateTime.now()),
       super(const RecordAttendanceLoading()) {
    _updateRecordRights();
    _view = _defaultView();

    _subscribeEligibleCount();
    _searchSub = _searchSubject
        .debounceTime(_searchDebounce)
        .distinct((a, b) => (a ?? '') == (b ?? ''))
        .listen((_) => _emitLoaded());

    unawaited(_restartSession());
  }

  StreamSink<String?> get searchSink => _searchSubject.sink;

  DateTime get _fromDate => _selectedDate;
  DateTime get _toDate => _selectedDate.add(const Duration(days: 1));
  bool get _asServant => _view.asServant;

  bool get _canToggleAudience =>
      _meeting.audience == MeetingAudience.personsAndServants &&
      _canRecordPersons &&
      _canRecordServants;

  int indexForLetter(String letter) => _displayEntries.indexWhere(
    (e) =>
        (_filter != AttendancePresenceFilter.all || !e.attended) &&
        _alphabet.firstLetterOf(e.person.name) == letter,
  );

  void switchMeeting(Meeting meeting) {
    if (meeting.id == _meeting.id) return;

    _meeting = meeting;
    _updateRecordRights();
    _view = _defaultView();
    _resetOptimistic();
    _subscribeEligibleCount();
    unawaited(_restartSession());
  }

  void selectDate(DateTime date) {
    final normalized = DateUtils.dateOnly(date);
    if (normalized == _selectedDate) return;

    _selectedDate = normalized;
    _resetOptimistic();
    unawaited(_restartSession());
  }

  void toggleAudience() {
    if (!_canToggleAudience) return;

    _view = _view.toggled;
    _resetOptimistic();
    _subscribeEligibleCount();
    unawaited(_restartSession());
  }

  void changePresenceFilter(AttendancePresenceFilter filter) {
    if (_filter == filter) return;

    _filter = filter;
    _emitLoaded();
  }

  void changeGrouping(AttendanceGrouping grouping) {
    if (_grouping == grouping) return;

    // Grouping changes the server ordering (study-year prefix), so re-subscribe.
    // Keep the current entries visible until the re-ordered batch arrives.
    _grouping = grouping;
    unawaited(_subscribeRoster(showLoading: false));
  }

  void changeSorting(AttendanceSorting sort) {
    if (_sort == sort) return;

    _sort = sort;
    _emitLoaded();
  }

  void retry() => unawaited(_restartSession());

  Future<void> toggleAttendance(MeetingRosterEntry entry) async {
    final now = DateTime.now();

    final personId = entry.person.id;
    if (_inFlight.contains(personId)) return;

    final newIsPresent = _displayedPresenceTime(personId, entry) == null;
    final attendanceTime = _selectedDate.replaceTime(now);

    _optimisticPresence[personId] = newIsPresent ? attendanceTime : null;
    _inFlight.add(personId);
    _emitLoaded();

    try {
      if (newIsPresent) {
        final record = await _dao.markAttendance(
          meetingId: _meeting.id,
          personId: personId,
          asServant: _asServant,
          datetime: attendanceTime,
        );

        _showUndoSnackBar(
          entry,
          isPresent: true,
          onUndo: () => _dao.unmarkAttendance(
            attendanceRecordId: record.id,
          ),
        );
      } else if (entry.attendance?.id case final attendanceRecordId?) {
        final record = await _dao.unmarkAttendance(
          attendanceRecordId: attendanceRecordId,
        );

        _showUndoSnackBar(
          entry,
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
      _optimisticPresence.remove(personId);

      unawaited(
        LoggingService.I.exception(
          LogRecord(error: error, stackTrace: stackTrace),
        ),
      );

      if (!isClosed) {
        scaffoldMessenger.showErrorSnackBar('تعذر حفظ الحضور، حاول مرة أخرى');
      }
    } finally {
      _inFlight.remove(personId);
      _emitLoaded();
    }
  }

  DateTime? _displayedPresenceTime(String personId, MeetingRosterEntry entry) =>
      _optimisticPresence[personId] ?? entry.attendanceTime;

  void _showUndoSnackBar(
    MeetingRosterEntry entry, {
    required bool isPresent,
    required VoidCallback onUndo,
  }) {
    if (isClosed) return;

    final personName = entry.person.name;

    scaffoldMessenger
      ..clearSnackBars()
      ..showSnackBar(
        SnackBar(
          content: Text(
            isPresent
                ? 'تم تسجيل حضور $personName'
                : 'تم إلغاء حضور $personName',
          ),
          action: SnackBarAction(
            label: 'تراجع',
            onPressed: onUndo,
          ),
        ),
      );
  }

  Future<void> _restartSession() async {
    try {
      await _subscribeRoster(showLoading: true);
      _subscribePresentCount();
    } catch (error, stackTrace) {
      _onRosterError(error, stackTrace);
    }
  }

  Future<void> _subscribeRoster({required bool showLoading}) async {
    if (showLoading) {
      _rosterStatus = RosterStatus.loading;
      _serverEntries = const [];
    }
    _emitLoaded();

    await _rosterSub?.cancel();
    _rosterSub = _dao
        .streamMeetingRoster(
          meetingId: _meeting.id,
          fromDate: _fromDate,
          toDate: _toDate,
          groupByStudyYear: _grouping == AttendanceGrouping.studyYear,
          limit: _rosterLimit,
        )
        .listen(
          _onServerEntries,
          onError: _onRosterError,
        );
  }

  void _onServerEntries(List<MeetingRosterEntry> entries) {
    if (isClosed) return;

    _serverEntries = entries;
    _rosterStatus = RosterStatus.ready;

    for (final entry in entries) {
      final personId = entry.person.id;

      _optimisticPresence.remove(personId);
    }

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

  void _subscribePresentCount() {
    unawaited(_presentCountSub?.cancel());
    _presentCount = null;
    _presentCountSub = _dao
        .streamPresentCount(
          meetingId: _meeting.id,
          fromDate: _fromDate,
          toDate: _toDate,
          asServant: _asServant,
        )
        .listen(
          (count) {
            _presentCount = count;
            if (state is RecordAttendanceLoaded) _emitLoaded();
          },
        );
  }

  void _subscribeEligibleCount() {
    unawaited(_eligibleCountSub?.cancel());
    _eligibleCount = null;
    _eligibleCountSub = _dao
        .streamEligibleCount(meetingId: _meeting.id, asServant: _asServant)
        .listen(
          (count) {
            _eligibleCount = count;
            if (state is RecordAttendanceLoaded) _emitLoaded();
          },
        );
  }

  void _emitLoaded() {
    if (isClosed) return;

    final query = _searchSubject.valueOrNull?.trim() ?? '';
    final filtered = _serverEntries
        .map(_applyOptimistic)
        .where((e) => e.asServant == _asServant)
        .where(_matchesPresenceFilter)
        .where((e) => _matchesSearch(e, query))
        .toList();
    _displayEntries = _applySorting(
      filtered,
      sorting: _sort,
      grouping: _grouping,
    );

    emit(
      RecordAttendanceLoaded(
        meeting: _meeting,
        selectedDate: _selectedDate,
        view: _view,
        canToggleAudience: _canToggleAudience,
        filter: _filter,
        grouping: _grouping,
        sort: _sort,
        rosterStatus: _rosterStatus,
        searchQuery: _searchSubject.valueOrNull,
        entries: _displayEntries,
        gutterLetters: _alphabet.lettersFrom(
          _displayEntries.map((e) => e.person.name),
        ),
        presentCount: _presentCount,
        eligibleCount: _eligibleCount,
      ),
    );
  }

  MeetingRosterEntry _applyOptimistic(MeetingRosterEntry entry) {
    final shouldApplyOptimisticAttendance = _optimisticPresence.containsKey(
      entry.person.id,
    );
    if (!shouldApplyOptimisticAttendance) {
      return entry;
    }

    final optimisticAttendanceTime = _optimisticPresence[entry.person.id];
    final optimisticIsAttended = optimisticAttendanceTime != null;

    return MeetingRosterEntry(
      asServant: entry.asServant,
      person: entry.person,
      attendanceHistory: optimisticIsAttended
          ? [
              AttendanceRecord(
                id: _meeting.id, // placeholder id for the optimistic record
                meetingId: _meeting.id,
                personId: entry.person.id,
                datetime: optimisticAttendanceTime,
                asServant: _asServant,
              ),
            ]
          : const [],
    );
  }

  bool _matchesSearch(MeetingRosterEntry entry, String query) {
    if (query.isEmpty) return true;

    final person = entry.person;
    return person.name.toLowerCase().contains(query.toLowerCase()) ||
        (person.mainPhone?.contains(query) ?? false);
  }

  bool _matchesPresenceFilter(MeetingRosterEntry entry) => switch (_filter) {
    AttendancePresenceFilter.all => true,
    AttendancePresenceFilter.present => entry.attended,
    AttendancePresenceFilter.absent => !entry.attended,
  };

  /// By-name order is left to the server. By-attendance-time is sorted here
  /// (the day-windowed attendance can't be expressed in the server ORDER BY),
  /// keeping the study-year prefix so grouping stays a pure partition.
  List<MeetingRosterEntry> _applySorting(
    List<MeetingRosterEntry> entries, {
    required AttendanceSorting sorting,
    required AttendanceGrouping grouping,
  }) {
    int studyYearOrder(MeetingRosterEntry entry) =>
        entry.person.studyYear?.order ?? 1 << 16;

    return switch (sorting) {
      AttendanceSorting.byName => entries,
      AttendanceSorting.byAttendanceTime => entries.sorted((a, b) {
        if (grouping == AttendanceGrouping.studyYear) {
          final gradeComparison = studyYearOrder(
            a,
          ).compareTo(studyYearOrder(b));

          if (gradeComparison != 0) return gradeComparison;
        }

        final at = a.attendance?.datetime;
        final bt = b.attendance?.datetime;

        if (at == null && bt == null) {
          return a.person.name.compareTo(b.person.name);
        }

        if (at == null) return 1;
        if (bt == null) return -1;

        return bt.compareTo(at);
      }),
    };
  }

  void _updateRecordRights() {
    final user = _authBloc.currentUserData;
    final permissions = user?.permissions;
    final canReadAll = permissions?.readAllData ?? false;

    bool canRecordPersons =
        canReadAll && (permissions?.recordAllAttendance ?? false);
    bool canRecordServants =
        canReadAll && (permissions?.recordAllServantsAttendance ?? false);

    for (final adminOn in user?.adminOn ?? const <AdminOnData>[]) {
      final scope = RecordAttendanceScope.fromAdminOnData(adminOn);
      if (scope == null || !_scopeCoversMeeting(scope)) continue;

      canRecordPersons = canRecordPersons || scope.canRecordPersons;
      canRecordServants = canRecordServants || scope.canRecordServants;
    }

    _canRecordPersons = canRecordPersons;
    _canRecordServants = canRecordServants;
  }

  bool _scopeCoversMeeting(RecordAttendanceScope scope) => switch (scope) {
    ServiceAttendanceScope(:final service, :final studyYear, :final gender) =>
      service.id == _meeting.serviceId &&
          (studyYear == null ||
              _meeting.serviceStudyYear == null ||
              studyYear.order == _meeting.serviceStudyYear) &&
          (gender == null ||
              _meeting.serviceGender == null ||
              gender == _meeting.serviceGender),
    GroupAttendanceScope(:final group) => group.id == _meeting.groupId,
  };

  AttendanceRosterAudienceView _defaultView() {
    if (_meeting.audience != MeetingAudience.personsAndServants) {
      return AttendanceRosterAudienceView.defaultFor(_meeting.audience);
    }

    if (_canRecordServants && !_canRecordPersons) {
      return AttendanceRosterAudienceView.servants;
    }

    return AttendanceRosterAudienceView.persons;
  }

  void _resetOptimistic() {
    _optimisticPresence.clear();
    _inFlight.clear();
  }

  Future<void> _disposeRoster() async {
    await _rosterSub?.cancel();
    _rosterSub = null;
    _serverEntries = const [];
    _displayEntries = const [];
  }

  @override
  Future<void> close() async {
    await _disposeRoster();
    await _searchSub?.cancel();
    await _presentCountSub?.cancel();
    await _eligibleCountSub?.cancel();
    await _searchSubject.close();
    await super.close();
  }
}
