import 'dart:ui' show Color;

/// Attendance for one class (study year + gender) on a single day: how many of
/// its roster members attended, and the resulting rate.
///
/// When a matching class was resolved, [className] and [classColor] carry its
/// real name and colour; otherwise the class is described by its study year and
/// gender.
class ClassAttendanceRate {
  final int? studyYearId;
  final String? studyYearName;
  final bool? gender;
  final int attendedCount;
  final int rosterCount;
  final String? className;
  final Color? classColor;

  /// Null when [rosterCount] is zero (an attendee whose class has no roster
  /// member — the division is undefined rather than 100%).
  double? get rate => rosterCount == 0 ? null : attendedCount / rosterCount;

  String get displayName {
    if (className case final name? when name.isNotEmpty) return name;

    return _gradeGenderLabel;
  }

  String get ratePercentLabel {
    final value = rate;

    return value == null ? '—' : '${(value * 100).toStringAsFixed(0)}%';
  }

  String get _gradeGenderLabel {
    final genderLabel = switch (gender) {
      null => null,
      true => 'بنين',
      false => 'بنات',
    };

    final parts = [studyYearName, genderLabel].nonNulls;

    return parts.isEmpty ? 'غير محدد' : parts.join(' - ');
  }

  const ClassAttendanceRate({
    required this.studyYearId,
    required this.studyYearName,
    required this.gender,
    required this.attendedCount,
    required this.rosterCount,
    this.className,
    this.classColor,
  });
}
