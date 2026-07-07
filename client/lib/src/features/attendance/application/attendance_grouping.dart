enum AttendanceGrouping {
  none,
  studyYear;

  AttendanceGrouping get toggled => switch (this) {
    AttendanceGrouping.none => AttendanceGrouping.studyYear,
    AttendanceGrouping.studyYear => AttendanceGrouping.none,
  };
}
