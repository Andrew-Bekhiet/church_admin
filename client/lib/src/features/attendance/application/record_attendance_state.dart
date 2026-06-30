import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

sealed class RecordAttendanceState with EquatableMixin {
  const RecordAttendanceState();

  @override
  List<Object?> get props => [];
}

/// Seed state shown for the first frame, before the session emits its roster.
final class RecordAttendanceLoading extends RecordAttendanceState {
  const RecordAttendanceLoading();
}

/// Load status of the roster list *within* an active session. The session shell
/// (meeting/date/audience controls) stays visible across all three; only the
/// persons list swaps between a spinner, an error+retry and the roster itself.
enum RosterStatus { loading, ready, error }

/// The active recording session with its current roster and counts.
final class RecordAttendanceLoaded extends RecordAttendanceState {
  final Meeting meeting;
  final DateTime selectedDate;
  final AttendanceRosterAudienceView view;
  final AttendancePresenceFilter filter;
  final AttendanceGrouping grouping;
  final AttendanceSorting sort;
  final String? searchQuery;

  /// Load status of the persons list. The shell above renders regardless.
  final RosterStatus rosterStatus;

  /// Roster entries after applying optimistic marks, the active filter and sort.
  final List<MeetingRosterEntry> entries;

  /// Ordered first letters present in [entries], for the name-jump gutter.
  final List<String> gutterLetters;

  /// Persons whose mark/unmark mutation is currently in flight.
  final Set<String> pendingPersonIds;

  final int? presentCount;
  final int? eligibleCount;

  const RecordAttendanceLoaded({
    required this.meeting,
    required this.selectedDate,
    required this.view,
    required this.filter,
    required this.grouping,
    required this.sort,
    required this.rosterStatus,
    required this.entries,
    required this.gutterLetters,
    required this.pendingPersonIds,
    required this.presentCount,
    required this.eligibleCount,
    this.searchQuery,
  });

  int? get absentCount => (presentCount != null && eligibleCount != null)
      ? (eligibleCount! - presentCount!).clamp(0, eligibleCount!)
      : null;

  bool get canToggleAudience =>
      meeting.audience == MeetingAudience.personsAndServants;

  bool isPending(String personId) => pendingPersonIds.contains(personId);

  @override
  List<Object?> get props => [
    meeting,
    selectedDate,
    view,
    filter,
    grouping,
    sort,
    rosterStatus,
    searchQuery,
    entries,
    gutterLetters,
    pendingPersonIds,
    presentCount,
    eligibleCount,
  ];
}
