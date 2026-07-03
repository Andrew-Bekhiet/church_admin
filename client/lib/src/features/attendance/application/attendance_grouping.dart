/// How roster entries are grouped in the recording screen.
///
/// We can either show a flat, name-sorted list with an alphabet jump gutter
/// ([none]) or group persons by their study year ([studyYear]) — never both,
/// because grouping by grade conflicts with a single alphabetical ordering.
enum AttendanceGrouping {
  none,
  studyYear;

  AttendanceGrouping get toggled => switch (this) {
    AttendanceGrouping.none => AttendanceGrouping.studyYear,
    AttendanceGrouping.studyYear => AttendanceGrouping.none,
  };
}
