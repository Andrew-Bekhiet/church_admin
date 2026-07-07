import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

sealed class RecordAttendanceState with EquatableMixin {
  const RecordAttendanceState();

  @override
  List<Object?> get props => [];
}

final class RecordAttendanceLoading extends RecordAttendanceState {
  const RecordAttendanceLoading();
}

enum RosterStatus { loading, ready, error }

final class RecordAttendanceLoaded extends RecordAttendanceState {
  final Meeting meeting;
  final DateTime selectedDate;
  final AttendanceRosterAudienceView audienceView;
  final AttendancePresenceFilter presenceFilter;
  final AttendanceGrouping grouping;
  final AttendanceSorting sort;
  final String? searchQuery;

  final RosterStatus rosterStatus;
  final List<MeetingRosterEntry> entries;
  final List<String> gutterLetters;
  final int streakWindowDays;

  final int? presentCount;
  final int? eligibleCount;

  final bool canToggleAudience;

  int? get absentCount => (presentCount != null && eligibleCount != null)
      ? (eligibleCount! - presentCount!).clamp(0, eligibleCount!)
      : null;

  @override
  List<Object?> get props => [
    meeting,
    selectedDate,
    audienceView,
    presenceFilter,
    grouping,
    sort,
    rosterStatus,
    searchQuery,
    canToggleAudience,
    entries,
    gutterLetters,
    streakWindowDays,
    presentCount,
    eligibleCount,
  ];

  const RecordAttendanceLoaded({
    required this.meeting,
    required this.selectedDate,
    required this.audienceView,
    required this.canToggleAudience,
    required this.presenceFilter,
    required this.grouping,
    required this.sort,
    required this.rosterStatus,
    required this.entries,
    required this.gutterLetters,
    required this.presentCount,
    required this.eligibleCount,
    required this.streakWindowDays,
    this.searchQuery,
  });
}
