import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/meetings/__generated__/queries.gql.dart';

typedef AttendanceStreak = ({int length, DateTimeRange? range});

/// [heldDays] and [attendedDays] are both day-grain local dates sourced from
/// the same `day` column, so they compare directly with [Set.contains].
class PersonMeetingAttendanceAnalysis {
  final String personId;

  final Meeting meeting;

  final bool asServant;

  final List<DateTime> heldDays;

  final Set<DateTime> attendedDays;

  int get heldCount => heldDays.length;

  int get attendedCount => heldDays.where(attendedDays.contains).length;

  int get absentCount => heldCount - attendedCount;

  double get percent => heldCount == 0 ? 0 : attendedCount / heldCount;

  DateTime? get lastAttended => attendedDays.isEmpty
      ? null
      : attendedDays.reduce((a, b) => a.isAfter(b) ? a : b);

  int? get weeksSinceLastAttended {
    if (lastAttended case final lastAttended?) {
      return DateTime.now().difference(lastAttended).inDays ~/ 7;
    }

    return null;
  }

  int get attendanceStreak =>
      heldDays.reversed.takeWhile(attendedDays.contains).length;

  int get absenceStreak =>
      heldDays.reversed.takeWhile((d) => !attendedDays.contains(d)).length;

  DateTimeRange? get currentStreakRange {
    final streak = attendanceStreak;
    if (streak == 0) return null;

    final streakDays = heldDays.sublist(heldDays.length - streak);
    return DateTimeRange(start: streakDays.first, end: streakDays.last);
  }

  late final AttendanceStreak _longestStreak = _computeLongestStreak();

  int get longestStreak => _longestStreak.length;

  DateTimeRange? get longestStreakRange => _longestStreak.range;

  PersonMeetingAttendanceAnalysis({
    required this.personId,
    required this.meeting,
    required this.asServant,
    required this.heldDays,
    required this.attendedDays,
  });

  factory PersonMeetingAttendanceAnalysis.fromQueryResult(
    Query_attendanceAnalysis_historyMeetingRoster row,
    Meeting meeting,
  ) {
    return PersonMeetingAttendanceAnalysis(
      personId: row.personId?.uuid ?? '',
      meeting: meeting,
      asServant: row.asServant ?? false,
      heldDays: (row.meeting?.days ?? const [])
          .map((d) => d.day)
          .nonNulls
          .toSet()
          .toList(),
      attendedDays: row.attendanceHistory.map((e) => e.day).nonNulls.toSet(),
    );
  }

  AttendanceStreak _computeLongestStreak() {
    var longest = 0;
    DateTime? longestStart;
    DateTime? longestEnd;
    var current = 0;
    DateTime? currentStart;

    for (final heldDay in heldDays) {
      if (attendedDays.contains(heldDay)) {
        currentStart ??= heldDay;
        current++;
        if (current > longest) {
          longest = current;
          longestStart = currentStart;
          longestEnd = heldDay;
        }
      } else {
        current = 0;
        currentStart = null;
      }
    }

    return (
      length: longest,
      range: longestStart == null
          ? null
          : DateTimeRange(start: longestStart, end: longestEnd!),
    );
  }
}
