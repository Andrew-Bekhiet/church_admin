import 'dart:collection';

import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';

/// A [MeetingsAttendanceAnalysis] scoped to a single day, where averages and
/// trends are meaningless. It instead joins the day's attendance against the
/// roster to expose attendance rates per class (study year + gender).
///
/// Counting is person-grained: a person who attends two meetings, or as both
/// servant and member, is a single attendee — so every rate stays `<= 100%`.
class SingleDayMeetingsAttendanceAnalysis extends MeetingsAttendanceAnalysis {
  final List<SingleDayRosterMember> rosterMembers;

  /// Classes of the analysed scope, used to resolve real names and colours for
  /// each slice. Empty when the scope can't be mapped to classes (e.g. groups).
  final List<Class> classes;

  late final int rosterSize = rosterMembers
      .map((member) => member.personId)
      .toSet()
      .length;

  late final int attendedPersonsCount = {
    for (final member in rosterMembers)
      if (member.attended) member.personId,
  }.length;

  late final List<ClassAttendanceRate> classAttendanceRates =
      _computeClassAttendanceRates();

  double? get overallAttendanceRate =>
      rosterSize == 0 ? null : attendedPersonsCount / rosterSize;

  String get overallAttendanceRateLabel =>
      ClassAttendanceRate.formatRate(overallAttendanceRate);

  @override
  bool get hasDemographicBreakdown => classAttendanceRates.length > 1;

  bool get hasClassRanking => _ratedClasses.length >= 2;

  late final List<ClassAttendanceRate> _ratedClasses = classAttendanceRates
      .where((c) => c.rate != null)
      .toList();

  ClassAttendanceRate? get topClass => maxBy(_ratedClasses, (c) => c.rate!);

  ClassAttendanceRate? get lowestClass =>
      _ratedClasses.length < 2 ? null : minBy(_ratedClasses, (c) => c.rate!);

  SingleDayMeetingsAttendanceAnalysis({
    required super.title,
    required super.meetings,
    required this.rosterMembers,
    this.classes = const [],
    super.color,
  });

  static int _compareKeys((int?, bool?) a, (int?, bool?) b) {
    final studyYearCompare = (a.$1 ?? -1).compareTo(b.$1 ?? -1);
    if (studyYearCompare != 0) return studyYearCompare;

    return (a.$2 == b.$2)
        ? 0
        : (a.$2 ?? false)
        ? 1
        : -1;
  }

  /// Null when [class$] doesn't match the slice at all; otherwise the number
  /// of fields matched exactly rather than through a null wildcard.
  static int? _matchSpecificity(Class class$, int? studyYearId, bool? gender) {
    final studyYearScore = switch (class$.studyYear?.order ??
        class$.serviceStudyYear) {
      null => 0,
      final classStudyYear when classStudyYear == studyYearId => 1,
      _ => null,
    };
    final genderScore = switch (class$.serviceGender) {
      null => 0,
      final classGender when classGender == gender => 1,
      _ => null,
    };

    return switch ((studyYearScore, genderScore)) {
      (final year?, final gender?) => year + gender,
      _ => null,
    };
  }

  List<ClassAttendanceRate> _computeClassAttendanceRates() {
    final personKey = <String, (int?, bool?)>{};
    final personAttended = <String, bool>{};
    final names = <(int?, bool?), String?>{};

    for (final member in rosterMembers) {
      final key = (member.studyYearId, member.gender);
      personKey.putIfAbsent(member.personId, () => key);
      personAttended.update(
        member.personId,
        (attended) => attended || member.attended,
        ifAbsent: () => member.attended,
      );
      names.putIfAbsent(key, () => member.studyYearName);
    }

    final rosterCounts = <(int?, bool?), int>{};
    final attendedCounts = <(int?, bool?), int>{};

    for (final MapEntry(key: personId, value: key) in personKey.entries) {
      rosterCounts.update(key, (count) => count + 1, ifAbsent: () => 1);
      if (personAttended[personId] ?? false) {
        attendedCounts.update(key, (count) => count + 1, ifAbsent: () => 1);
      }
    }

    final byKey = SplayTreeMap<(int?, bool?), ClassAttendanceRate>(
      _compareKeys,
    );

    for (final MapEntry(:key, value: rosterCount) in rosterCounts.entries) {
      final matched = _matchClass(key.$1, key.$2);

      byKey[key] = ClassAttendanceRate(
        studyYearId: key.$1,
        studyYearName: names[key],
        gender: key.$2,
        attendedCount: attendedCounts[key] ?? 0,
        rosterCount: rosterCount,
        className: matched?.name,
        classColor: matched?.color,
      );
    }

    return byKey.values.toList();
  }

  /// Picks the most specific matching class: an exact study-year or gender
  /// match beats a null wildcard, so a service-wide "general" class can't
  /// steal slices from properly graded classes.
  Class? _matchClass(int? studyYearId, bool? gender) {
    final candidates = [
      for (final class$ in classes)
        if (_matchSpecificity(class$, studyYearId, gender)
            case final specificity?)
          (class$, specificity),
    ];

    return maxBy(candidates, (candidate) => candidate.$2)?.$1;
  }
}
