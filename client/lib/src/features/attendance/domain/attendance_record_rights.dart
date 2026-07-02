import 'package:church_admin/church_admin.dart';

final class AttendanceRecordRights {
  static const AttendanceRecordRights none = AttendanceRecordRights(
    canRecordPersons: false,
    canRecordServants: false,
  );

  final bool canRecordPersons;
  final bool canRecordServants;

  bool get canToggleAudience => canRecordPersons && canRecordServants;

  const AttendanceRecordRights({
    required this.canRecordPersons,
    required this.canRecordServants,
  });

  factory AttendanceRecordRights.resolve({
    required User? user,
    required Meeting meeting,
  }) {
    final permissions = user?.permissions;
    final canReadAll = permissions?.readAllData ?? false;

    bool canRecordPersons =
        canReadAll && (permissions?.recordAllAttendance ?? false);
    bool canRecordServants =
        canReadAll && (permissions?.recordAllServantsAttendance ?? false);

    for (final adminOn in user?.adminOn ?? const <AdminOnData>[]) {
      final scope = RecordAttendanceScope.fromAdminOnData(adminOn);
      if (scope == null || !scope.coversMeeting(meeting)) continue;

      canRecordPersons = canRecordPersons || scope.canRecordPersons;
      canRecordServants = canRecordServants || scope.canRecordServants;
    }

    return AttendanceRecordRights(
      canRecordPersons: canRecordPersons,
      canRecordServants: canRecordServants,
    );
  }

  AttendanceRosterAudienceView initialViewFor(Meeting meeting) {
    if (meeting.audience != MeetingAudience.personsAndServants) {
      return AttendanceRosterAudienceView.defaultFor(meeting.audience);
    }

    if (canRecordServants && !canRecordPersons) {
      return AttendanceRosterAudienceView.servants;
    }

    return AttendanceRosterAudienceView.persons;
  }
}
