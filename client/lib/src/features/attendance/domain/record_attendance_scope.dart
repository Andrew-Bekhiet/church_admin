import 'package:church_admin/church_admin.dart';

sealed class RecordAttendanceScope {
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

  final bool canRecordPersons;
  final bool canRecordServants;

  const RecordAttendanceScope({
    required this.canRecordPersons,
    required this.canRecordServants,
  });

  bool coversMeeting(Meeting meeting);
}

final class ServiceAttendanceScope extends RecordAttendanceScope {
  final Service service;
  final StudyYear? studyYear;

  final Gender gender;

  const ServiceAttendanceScope({
    required this.service,
    required super.canRecordPersons,
    required super.canRecordServants,
    this.gender = Gender.any,
    this.studyYear,
  });

  @override
  bool coversMeeting(Meeting meeting) {
    if (service.id != meeting.serviceId) return false;

    final studyYear = this.studyYear;

    final studyYearsMatch =
        studyYear == null ||
        meeting.serviceStudyYear == null ||
        studyYear.order == meeting.serviceStudyYear;

    return studyYearsMatch && gender.overlaps(meeting.serviceGender);
  }
}

final class GroupAttendanceScope extends RecordAttendanceScope {
  final Group group;

  const GroupAttendanceScope({
    required this.group,
    required super.canRecordPersons,
    required super.canRecordServants,
  });

  @override
  bool coversMeeting(Meeting meeting) => group.id == meeting.groupId;
}
