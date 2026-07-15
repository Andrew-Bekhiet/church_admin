import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
sealed class AttendanceSorting with Equatable {
  final SortingDirection direction;

  AttendanceSorting get then => const _AttendanceSortingById();

  @override
  List<Object?> get props => [direction, then];

  const AttendanceSorting({required this.direction});

  factory AttendanceSorting.byName() => const AttendanceSortingByName();
  factory AttendanceSorting.byAttendanceTime() => const AttendanceSortingByTime(
    then: AttendanceSortingByName(),
  );
  factory AttendanceSorting.byAttendanceStreak() =>
      const AttendanceSortingByStreak(
        then: AttendanceSortingByLastAttendanceTime(
          then: AttendanceSortingByName(),
        ),
      );
  factory AttendanceSorting.byLastAttendanceTime() =>
      const AttendanceSortingByLastAttendanceTime(
        then: AttendanceSortingByStreak(
          then: AttendanceSortingByName(),
        ),
      );

  AttendanceSorting withReversedDirection();

  int compare(MeetingRosterEntry a, MeetingRosterEntry b);
}

final class _AttendanceSortingById extends AttendanceSorting {
  // Avoid infinite recursion by not returning [super.then]
  @override
  List<Object?> get props => [direction];

  const _AttendanceSortingById({super.direction = SortingDirection.ascending});

  @override
  AttendanceSorting withReversedDirection() =>
      _AttendanceSortingById(direction: direction.reversed);

  @override
  int compare(MeetingRosterEntry a, MeetingRosterEntry b) {
    return a.person.id.compareTo(b.person.id) * direction.multiplier;
  }
}

final class AttendanceSortingByName extends AttendanceSorting {
  const AttendanceSortingByName({super.direction = SortingDirection.ascending});

  @override
  AttendanceSorting withReversedDirection() =>
      AttendanceSortingByName(direction: direction.reversed);

  @override
  int compare(MeetingRosterEntry a, MeetingRosterEntry b) {
    final result =
        a.person.name.compareTo(b.person.name) * direction.multiplier;

    return result == 0 ? then.compare(a, b) : result;
  }
}

final class AttendanceSortingByTime extends AttendanceSorting {
  @override
  final AttendanceSorting then;

  const AttendanceSortingByTime({
    required this.then,
    super.direction = SortingDirection.descending,
  });

  @override
  AttendanceSorting withReversedDirection() => AttendanceSortingByTime(
    then: then.withReversedDirection(),
    direction: direction.reversed,
  );

  @override
  int compare(MeetingRosterEntry a, MeetingRosterEntry b) {
    final at = a.attendanceTime;
    final bt = b.attendanceTime;

    if (at == bt) {
      return then.compare(a, b);
    }

    if (at == null) return 1;
    if (bt == null) return -1;

    return at.compareTo(bt) * direction.multiplier;
  }
}

final class AttendanceSortingByStudyYear extends AttendanceSorting {
  @override
  final AttendanceSorting then;

  const AttendanceSortingByStudyYear({
    required this.then,
    super.direction = SortingDirection.ascending,
  });

  @override
  AttendanceSorting withReversedDirection() => AttendanceSortingByStudyYear(
    then: then.withReversedDirection(),
    direction: direction.reversed,
  );

  @override
  int compare(MeetingRosterEntry a, MeetingRosterEntry b) {
    final gradeA = a.person.studyYear?.order;
    final gradeB = b.person.studyYear?.order;

    if (gradeA == gradeB) {
      return then.compare(a, b);
    }

    if (gradeA == null) return 1;
    if (gradeB == null) return -1;

    return gradeA.compareTo(gradeB) * direction.multiplier;
  }
}

final class AttendanceSortingByStreak extends AttendanceSorting {
  @override
  final AttendanceSorting then;

  const AttendanceSortingByStreak({
    required this.then,
    super.direction = SortingDirection.ascending,
  });

  @override
  AttendanceSorting withReversedDirection() => AttendanceSortingByStreak(
    then: then.withReversedDirection(),
    direction: direction.reversed,
  );

  @override
  int compare(MeetingRosterEntry a, MeetingRosterEntry b) {
    final streakA = a.personAttendanceAnalysis?.attendanceStreak == 0
        ? -(a.personAttendanceAnalysis?.absenceStreak ?? 0)
        : a.personAttendanceAnalysis?.attendanceStreak;
    final streakB = b.personAttendanceAnalysis?.attendanceStreak == 0
        ? -(b.personAttendanceAnalysis?.absenceStreak ?? 0)
        : b.personAttendanceAnalysis?.attendanceStreak;

    if (streakA == streakB) {
      return then.compare(a, b);
    }

    if (streakA == null) return 1;
    if (streakB == null) return -1;

    return streakA.compareTo(streakB) * direction.multiplier;
  }
}

final class AttendanceSortingByLastAttendanceTime extends AttendanceSorting {
  @override
  final AttendanceSorting then;

  const AttendanceSortingByLastAttendanceTime({
    required this.then,
    super.direction = SortingDirection.ascending,
  });

  @override
  AttendanceSorting withReversedDirection() =>
      AttendanceSortingByLastAttendanceTime(
        then: then.withReversedDirection(),
        direction: direction.reversed,
      );

  @override
  int compare(MeetingRosterEntry a, MeetingRosterEntry b) {
    final lastAttendanceTimeA = a.personAttendanceAnalysis?.lastAttended;
    final lastAttendanceTimeB = b.personAttendanceAnalysis?.lastAttended;

    if (lastAttendanceTimeA == lastAttendanceTimeB) {
      return then.compare(a, b);
    }

    if (lastAttendanceTimeA == null) return 1;
    if (lastAttendanceTimeB == null) return -1;

    return lastAttendanceTimeA.compareTo(lastAttendanceTimeB) *
        direction.multiplier;
  }
}
