import 'package:church_admin/church_admin.dart';

/// A scope in which the current user may record attendance.
sealed class RecordAttendanceScope {
  final bool canRecordPersons;
  final bool canRecordServants;

  const RecordAttendanceScope({
    required this.canRecordPersons,
    required this.canRecordServants,
  });

  static RecordAttendanceScope? fromAdminOnData(AdminOnData adminOnData) {
    switch (adminOnData) {
      case AdminOnData(
        :final service?,
        :final serviceGender,
        :final serviceStudyYearData,
        :final serviceAllowRecordAttendance,
        :final serviceAllowRecordServantsAttendance,
      ):
        return ServiceAttendanceScope(
          service: service,
          studyYear: serviceStudyYearData,
          gender: serviceGender,
          canRecordPersons: serviceAllowRecordAttendance ?? false,
          canRecordServants: serviceAllowRecordServantsAttendance ?? false,
        );

      case AdminOnData(
        :final group?,
        :final groupAllowRecordAttendance,
        :final groupAllowRecordServantsAttendance,
      ):
        return GroupAttendanceScope(
          group: group,
          canRecordPersons: groupAllowRecordAttendance ?? false,
          canRecordServants: groupAllowRecordServantsAttendance ?? false,
        );

      default:
        return null;
    }
  }
}

/// Service-based scope: attendance is recorded for persons in a given service,
/// optionally filtered by study year and/or gender.
final class ServiceAttendanceScope extends RecordAttendanceScope {
  final Service service;

  /// If set, restricts the scope to a specific study year.
  final StudyYear? studyYear;

  /// If set, restricts the scope to a specific gender (true=female, false=male).
  final bool? gender;

  const ServiceAttendanceScope({
    required this.service,
    required super.canRecordPersons,
    required super.canRecordServants,
    this.studyYear,
    this.gender,
  });
}

/// Group-based scope: attendance is recorded for all members of a group.
final class GroupAttendanceScope extends RecordAttendanceScope {
  final Group group;

  const GroupAttendanceScope({
    required this.group,
    required super.canRecordPersons,
    required super.canRecordServants,
  });
}
