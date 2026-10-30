import 'package:church_admin/church_admin.dart';

/// A distinct roster person for a single day, as returned by the
/// `meetingsRosterDemographics` query. Carries the class slice (study year +
/// gender) the person belongs to and whether they attended that day.
///
/// A person may appear in several rows (one per meeting and per servant/member
/// role); the analysis collapses them by [personId].
class SingleDayRosterMember {
  final String personId;
  final int? studyYearId;
  final String? studyYearName;
  final Gender gender;
  final bool attended;

  const SingleDayRosterMember({
    required this.personId,
    required this.attended,
    this.gender = Gender.any,
    this.studyYearId,
    this.studyYearName,
  });
}
