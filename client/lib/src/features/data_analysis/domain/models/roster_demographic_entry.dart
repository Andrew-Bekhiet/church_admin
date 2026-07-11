/// A single distinct roster person, sliced by class (study year + gender), as
/// returned by the `meetingsRosterDemographics` query for single-day analyses.
typedef RosterDemographicEntry = ({
  int? studyYearId,
  String? studyYearName,
  bool? gender,
});
