/// Attendance for one class (study year + gender) on a single day: how many of
/// its roster members attended, and the resulting rate.
///
/// `rate` is null when `rosterCount` is zero (an attendee whose class has no
/// roster member — the division is undefined rather than 100%).
typedef ClassAttendanceRate = ({
  int? studyYearId,
  String? studyYearName,
  bool? gender,
  int attendedCount,
  int rosterCount,
  double? rate,
});
