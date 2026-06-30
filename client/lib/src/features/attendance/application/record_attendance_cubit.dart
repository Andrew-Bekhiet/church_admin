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
  static const Duration _searchDebounce = Duration(milliseconds: 300);

  static const int _rosterLimit = 5000;

  static const AttendanceNameAlphabet _alphabet = AttendanceNameAlphabet();

  final MeetingsDAO _dao;

  final BehaviorSubject<String?> _searchSubject = BehaviorSubject.seeded(null);

  Meeting _meeting;
  DateTime _selectedDate;
  AttendanceRosterAudienceView _view;
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

  final Map<String, bool> _optimisticPresence = {};

  final Set<String> _inFlight = {};

  RecordAttendanceCubit({
    required Meeting meeting,
    DateTime? initialDate,
    MeetingsDAO? dao,
  }) : _dao = dao ?? DatabaseService.I.meetings,
       _meeting = meeting,
       _selectedDate = DateUtils.dateOnly(initialDate ?? DateTime.now()),
       _view = AttendanceRosterAudienceView.defaultFor(meeting.audience),
       super(const RecordAttendanceLoading()) {
    _subscribeEligibleCount();
    unawaited(_restartSession());
  }

  StreamSink<String?> get searchSink => _searchSubject.sink;

  DateTime get _fromDate => _selectedDate;
  DateTime get _toDate => _selectedDate.add(const Duration(days: 1));
  bool get _asServant => _view.asServant;

  int indexForLetter(String letter) => _displayEntries.indexWhere(
    (e) => _alphabet.firstLetterOf(e.person.name) == letter,
  );

  void switchMeeting(Meeting meeting) {
    if (meeting.id == _meeting.id) return;

    _meeting = meeting;
    _view = AttendanceRosterAudienceView.defaultFor(meeting.audience);
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
    if (_meeting.audience != MeetingAudience.personsAndServants) return;

    _view = _view.toggled;
    _resetOptimistic();
    // The eligible roster differs between the persons and servants audiences,
    // so its live count must be re-subscribed for the new `asServant` scope.
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

    _grouping = grouping;
    _emitLoaded();
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

    final newIsPresent = !_displayedPresence(personId, entry);

    _optimisticPresence[personId] = newIsPresent;
    _inFlight.add(personId);
    _emitLoaded();

    try {
      if (newIsPresent) {
        await _dao.markAttendance(
          meetingId: _meeting.id,
          personId: personId,
          asServant: _asServant,
          datetime: _selectedDate.replaceTime(now),
        );
      } else {
        await _dao.unmarkAttendanceBy(
          meetingId: _meeting.id,
          personId: personId,
          asServant: _asServant,
        );
      }

      _showUndoSnackBar(
        entry.person.name,
        present: newIsPresent,
        entry: entry,
      );
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

  void _showUndoSnackBar(
    String personName, {
    required bool present,
    required MeetingRosterEntry entry,
  }) {
    if (isClosed) return;
    scaffoldMessenger
      ..clearSnackBars()
      ..showSnackBar(
        SnackBar(
          content: Text(
            present ? 'تم تسجيل حضور $personName' : 'تم إلغاء حضور $personName',
          ),
          action: SnackBarAction(
            label: 'تراجع',
            onPressed: () =>
                unawaited(toggleAttendance(_latestEntryFor(entry))),
          ),
        ),
      );
  }

  MeetingRosterEntry _latestEntryFor(MeetingRosterEntry fallback) =>
      _serverEntries.firstWhereOrNull(
        (e) => e.person.id == fallback.person.id,
      ) ??
      fallback;

  Future<void> _restartSession() async {
    _rosterStatus = RosterStatus.loading;
    _serverEntries = const [];
    _emitLoaded();

    await _disposeRoster();

    final searchStream = _searchSubject
        .debounceTime(_searchDebounce)
        .distinct((a, b) => (a ?? '') == (b ?? ''));

    _rosterSub = _dao
        .streamMeetingRoster(
          meetingId: _meeting.id,
          asServant: _asServant,
          fromDate: _fromDate,
          toDate: _toDate,
          searchQuery: searchStream,
          limit: _rosterLimit,
        )
        .listen(
          _onServerEntries,
          onDone: _rosterSub?.cancel,
          onError: _onRosterError,
        );

    _subscribePresentCount();
  }

  void _onServerEntries(List<MeetingRosterEntry> entries) {
    if (isClosed) return;

    _serverEntries = entries;
    _rosterStatus = RosterStatus.ready;
    _optimisticPresence.removeWhere((personId, desiredPresent) {
      final entry = entries.firstWhereOrNull((e) => e.person.id == personId);
      return entry != null && entry.attended == desiredPresent;
    });
    _emitLoaded();
  }

  void _onRosterError(Object error, StackTrace stackTrace) {
    unawaited(
      LoggingService.I.exception(
        LogRecord(error: error, stackTrace: stackTrace),
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
          onDone: _eligibleCountSub?.cancel,
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
          onDone: _eligibleCountSub?.cancel,
        );
  }

  void _emitLoaded() {
    if (isClosed) return;

    final merged = _serverEntries.map(_applyOptimistic).toList();
    final filtered = merged.where(_matchesPresenceFilter).toList();
    _displayEntries = _applySort(filtered);

    emit(
      RecordAttendanceLoaded(
        meeting: _meeting,
        selectedDate: _selectedDate,
        view: _view,
        filter: _filter,
        grouping: _grouping,
        sort: _sort,
        rosterStatus: _rosterStatus,
        searchQuery: _searchSubject.valueOrNull,
        entries: _displayEntries,
        gutterLetters: _alphabet.lettersFrom(
          _displayEntries.map((e) => e.person.name),
        ),
        pendingPersonIds: Set.unmodifiable(_inFlight),
        presentCount: _presentCount,
        eligibleCount: _eligibleCount,
      ),
    );
  }

  bool _displayedPresence(String personId, MeetingRosterEntry entry) =>
      _optimisticPresence[personId] ?? entry.attended;

  MeetingRosterEntry _applyOptimistic(MeetingRosterEntry entry) {
    final desiredPresent = _optimisticPresence[entry.person.id];
    if (desiredPresent == null || desiredPresent == entry.attended) {
      return entry;
    }

    return MeetingRosterEntry(
      person: entry.person,
      attendanceHistory: desiredPresent
          ? [
              AttendanceRecord(
                id: _meeting.id, // placeholder id for the optimistic record
                meetingId: _meeting.id,
                personId: entry.person.id,
                datetime: DateTime.now(),
                asServant: _asServant,
              ),
            ]
          : const [],
    );
  }

  bool _matchesPresenceFilter(MeetingRosterEntry entry) => switch (_filter) {
    AttendancePresenceFilter.all => true,
    AttendancePresenceFilter.present => entry.attended,
    AttendancePresenceFilter.absent => !entry.attended,
  };

  List<MeetingRosterEntry> _applySort(List<MeetingRosterEntry> entries) {
    switch (_sort) {
      case AttendanceSorting.byName:
        // The server already returns entries ordered by name ascending.
        return entries;

      case AttendanceSorting.byAttendanceTime:
        return entries.sorted((a, b) {
          final at = a.attendance?.datetime;
          final bt = b.attendance?.datetime;
          if (at == null && bt == null) {
            return a.person.name.compareTo(b.person.name);
          }
          if (at == null) return 1;
          if (bt == null) return -1;
          return bt.compareTo(at);
        });
    }
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
    await _presentCountSub?.cancel();
    await _eligibleCountSub?.cancel();
    await _searchSubject.close();
    await super.close();
  }
}
