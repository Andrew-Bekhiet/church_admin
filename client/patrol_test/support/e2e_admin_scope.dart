/// One `auth.users_admin_on` row: the container a user administers and what
/// they may do inside it.
sealed class E2eAdminScope {
  final bool canWriteData;
  final bool canExportData;
  final bool canManageUsers;

  Map<String, Object?> get adminOnInput;

  const E2eAdminScope({
    required this.canWriteData,
    required this.canExportData,
    required this.canManageUsers,
  }) : assert(
         !canManageUsers || canWriteData,
         'The app only grants managing users together with writing data',
       );
}

final class AreaAdminScope extends E2eAdminScope {
  final String areaId;

  @override
  Map<String, Object?> get adminOnInput => {
    'adminOnArea': areaId,
    'areaAllowEdit': canWriteData,
    'areaAllowExport': canExportData,
    'areaAdminOnUsers': canManageUsers,
  };

  const AreaAdminScope(
    this.areaId, {
    super.canWriteData = false,
    super.canExportData = false,
    super.canManageUsers = false,
  });
}

final class ServiceAdminScope extends E2eAdminScope {
  final String serviceId;

  /// The `study_years.order` the scope is narrowed to, e.g. 10 for
  /// أولى ثانوي; null covers every study year of the service.
  final int? studyYear;

  /// Null covers both genders.
  final AdminScopeGender? gender;
  final bool canWriteRelatedFamilies;
  final bool canRecordAttendance;
  final bool canRecordServantsAttendance;

  @override
  Map<String, Object?> get adminOnInput => {
    'adminOnService': serviceId,
    'serviceStudyYear': studyYear,
    'serviceGender': gender?.isMale,
    'serviceAllowEdit': canWriteData,
    'serviceAllowExport': canExportData,
    'serviceAdminOnUsers': canManageUsers,
    'serviceWriteRelatedFamilies': canWriteRelatedFamilies,
    'serviceAllowRecordAttendance': canRecordAttendance,
    'serviceAllowRecordServantsAttendance': canRecordServantsAttendance,
  };

  const ServiceAdminScope(
    this.serviceId, {
    this.canWriteRelatedFamilies = false,
    this.canRecordAttendance = false,
    this.canRecordServantsAttendance = false,
    this.studyYear,
    this.gender,
    super.canWriteData = false,
    super.canExportData = false,
    super.canManageUsers = false,
  });
}

final class GroupAdminScope extends E2eAdminScope {
  final String groupId;
  final bool canWriteRelatedFamilies;
  final bool canRecordAttendance;
  final bool canRecordServantsAttendance;

  @override
  Map<String, Object?> get adminOnInput => {
    'adminOnGroup': groupId,
    'groupAllowEdit': canWriteData,
    'groupAllowExport': canExportData,
    'groupAdminOnUsers': canManageUsers,
    'groupWriteRelatedFamilies': canWriteRelatedFamilies,
    'groupAllowRecordAttendance': canRecordAttendance,
    'groupAllowRecordServantsAttendance': canRecordServantsAttendance,
  };

  const GroupAdminScope(
    this.groupId, {
    this.canWriteRelatedFamilies = false,
    this.canRecordAttendance = false,
    this.canRecordServantsAttendance = false,
    super.canWriteData = false,
    super.canExportData = false,
    super.canManageUsers = false,
  });
}

enum AdminScopeGender {
  male(isMale: true),
  female(isMale: false);

  final bool isMale;

  const AdminScopeGender({required this.isMale});
}
