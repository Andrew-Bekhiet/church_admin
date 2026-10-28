import 'package:church_admin/church_admin.dart';

enum AttendanceSortType {
  name,
  attendanceTime,
  streak,
  lastAttendanceTime,
  studyYear,
  id;

  static AttendanceSortType of(AttendanceSorting sort) => switch (sort) {
    AttendanceSortingByName() => name,
    AttendanceSortingByTime() => attendanceTime,
    AttendanceSortingByStreak() => streak,
    AttendanceSortingByLastAttendanceTime() => lastAttendanceTime,
    AttendanceSortingByStudyYear() => studyYear,
    _ => id,
  };
}
