/// A service an e2e user is seeded as admin on, optionally narrowed to one
/// study year and gender, with the attendance it may record.
class SeededServiceScope {
  final String serviceId;
  final int? studyYear;

  /// true=male, false=female.
  final bool? gender;
  final bool recordsPersons;
  final bool recordsServants;

  Map<String, dynamic> get adminOnInsertObject => {
    'adminOnService': serviceId,
    'serviceStudyYear': studyYear,
    'serviceGender': gender,
    'serviceAllowRecordAttendance': recordsPersons,
    'serviceAllowRecordServantsAttendance': recordsServants,
  };

  const SeededServiceScope(
    this.serviceId, {
    this.recordsPersons = false,
    this.recordsServants = false,
    this.studyYear,
    this.gender,
  });
}
