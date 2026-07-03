import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

/// How roster entries are ordered in the recording screen.
@immutable
sealed class AttendanceSorting with EquatableMixin {
  const AttendanceSorting();

  factory AttendanceSorting.byName() => const AttendanceSortingByName();
  factory AttendanceSorting.byAttendanceTime() => const AttendanceSortingByTime(
    then: AttendanceSortingByName(),
  );
  factory AttendanceSorting.byStudyYear() => const AttendanceSortingByStudyYear(
    then: AttendanceSortingByName(),
  );

  int compare(MeetingRosterEntry a, MeetingRosterEntry b);

  /// Whether attendance time is part of this sort's comparison chain.
  bool get isSortingByTime;

  /// Returns a sort with attendance-time ordering toggled: adds it if absent,
  /// removes it if present.
  AttendanceSorting toggleAttendanceTimeSorting();

  @override
  List<Object?> get props => [];
}

final class AttendanceSortingByName extends AttendanceSorting {
  const AttendanceSortingByName();

  @override
  int compare(MeetingRosterEntry a, MeetingRosterEntry b) {
    return a.person.name.compareTo(b.person.name);
  }

  @override
  bool get isSortingByTime => false;

  @override
  AttendanceSorting toggleAttendanceTimeSorting() =>
      AttendanceSorting.byAttendanceTime();
}

final class AttendanceSortingByTime extends AttendanceSorting {
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

  @override
  bool get isSortingByTime => true;

  @override
  AttendanceSorting toggleAttendanceTimeSorting() => then;
}

final class AttendanceSortingByStudyYear extends AttendanceSorting {
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

  @override
  bool get isSortingByTime => then.isSortingByTime;

  @override
  AttendanceSorting toggleAttendanceTimeSorting() =>
      AttendanceSortingByStudyYear(then: then.toggleAttendanceTimeSorting());
}
