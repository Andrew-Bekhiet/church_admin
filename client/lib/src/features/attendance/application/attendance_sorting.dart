import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
sealed class AttendanceSorting with EquatableMixin {
  AttendanceSorting get then => const _AttendanceSortingById();

  const AttendanceSorting();

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

  int compare(MeetingRosterEntry a, MeetingRosterEntry b);

  @override
  List<Object?> get props => [then];
}

final class _AttendanceSortingById extends AttendanceSorting {
  const _AttendanceSortingById();

  @override
  int compare(MeetingRosterEntry a, MeetingRosterEntry b) {
    return a.person.id.compareTo(b.person.id);
  }

  @override
  List<Object?> get props => [];
}

final class AttendanceSortingByName extends AttendanceSorting {
  const AttendanceSortingByName();

  @override
  int compare(MeetingRosterEntry a, MeetingRosterEntry b) {
    return a.person.name.compareTo(b.person.name);
  }
}

final class AttendanceSortingByTime extends AttendanceSorting {
  @override
  final AttendanceSorting then;

  @override
  List<Object?> get props => [then];

  const AttendanceSortingByTime({required this.then});

  @override
  int compare(MeetingRosterEntry a, MeetingRosterEntry b) {
    final at = a.attendanceTime;
    final bt = b.attendanceTime;

    if (at == bt) {
      return then.compare(a, b);
    }

    if (at == null) return 1;
    if (bt == null) return -1;

    return bt.compareTo(at);
  }
}

final class AttendanceSortingByStudyYear extends AttendanceSorting {
  @override
  final AttendanceSorting then;

  @override
  List<Object?> get props => [then];

  const AttendanceSortingByStudyYear({required this.then});

  @override
  int compare(MeetingRosterEntry a, MeetingRosterEntry b) {
    final gradeA = a.person.studyYear?.order;
    final gradeB = b.person.studyYear?.order;

    if (gradeA == gradeB) {
      return then.compare(a, b);
    }

    if (gradeA == null) return 1;
    if (gradeB == null) return -1;

    return gradeA.compareTo(gradeB);
  }
}

final class AttendanceSortingByStreak extends AttendanceSorting {
  @override
  final AttendanceSorting then;

  @override
  List<Object?> get props => [then];

  const AttendanceSortingByStreak({required this.then});

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

    return streakA.compareTo(streakB);
  }
}

final class AttendanceSortingByLastAttendanceTime extends AttendanceSorting {
  @override
  final AttendanceSorting then;

  @override
  List<Object?> get props => [then];

  const AttendanceSortingByLastAttendanceTime({required this.then});

  @override
  int compare(MeetingRosterEntry a, MeetingRosterEntry b) {
    final lastAttendanceTimeA = a.personAttendanceAnalysis?.lastAttended;
    final lastAttendanceTimeB = b.personAttendanceAnalysis?.lastAttended;

    if (lastAttendanceTimeA == lastAttendanceTimeB) {
      return then.compare(a, b);
    }

    if (lastAttendanceTimeA == null) return 1;
    if (lastAttendanceTimeB == null) return -1;

    return lastAttendanceTimeA.compareTo(lastAttendanceTimeB);
  }
}
