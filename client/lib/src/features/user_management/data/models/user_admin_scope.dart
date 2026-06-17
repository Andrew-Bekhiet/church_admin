import 'package:church_admin/church_admin.dart';

class UserAdminScope<T extends ViewableWithID> {
  static const _undefined = Object();

  final T object;
  final bool canManageUsers;
  final bool canWriteData;
  final bool canExportData;
  final bool? canWriteRelatedFamilies;
  final bool? canRecordAttendance;
  final bool? canRecordServantsAttendance;

  final StudyYear? studyYear;
  final bool? gender;

  UserAdminScope({
    required this.object,
    required this.canManageUsers,
    required this.canWriteData,
    required this.canExportData,
    this.canWriteRelatedFamilies,
    this.canRecordAttendance,
    this.canRecordServantsAttendance,
    this.studyYear,
    this.gender,
  });

  static UserAdminScope fromAdminOnData(AdminOnData adminOnData) {
    switch (adminOnData) {
      case AdminOnData(area: final area?):
        return UserAdminScope<Area>(
          object: area,
          canManageUsers: adminOnData.areaAdminOnUsers ?? false,
          canWriteData: adminOnData.areaAllowEdit ?? false,
          canExportData: adminOnData.areaAllowExport ?? false,
        );

      case AdminOnData(service: final service?):
        return UserAdminScope<Service>(
          object: service,
          canManageUsers: adminOnData.serviceAdminOnUsers ?? false,
          canWriteData: adminOnData.serviceAllowEdit ?? false,
          canExportData: adminOnData.serviceAllowExport ?? false,
          canWriteRelatedFamilies:
              adminOnData.serviceWriteRelatedFamilies ?? false,
          canRecordAttendance:
              adminOnData.serviceAllowRecordAttendance ?? false,
          canRecordServantsAttendance:
              adminOnData.serviceAllowRecordServantsAttendance ?? false,
          studyYear: adminOnData.serviceStudyYearData,
          gender: adminOnData.serviceGender,
        );

      case AdminOnData(group: final group?):
        return UserAdminScope<Group>(
          object: group,
          canManageUsers: adminOnData.groupAdminOnUsers ?? false,
          canWriteData: adminOnData.groupAllowEdit ?? false,
          canExportData: adminOnData.groupAllowExport ?? false,
          canWriteRelatedFamilies:
              adminOnData.groupWriteRelatedFamilies ?? false,
          canRecordAttendance: adminOnData.groupAllowRecordAttendance ?? false,
          canRecordServantsAttendance:
              adminOnData.groupAllowRecordServantsAttendance ?? false,
        );

      default:
        throw Exception('AdminOnData has no scope object');
    }
  }

  UserAdminScope copyWith({
    bool? canManageUsers,
    bool? canWriteData,
    bool? canExportData,
    bool? canWriteRelatedFamilies,
    Object? studyYear = _undefined,
    Object? gender = _undefined,
    bool? canRecordAttendance,
    bool? canRecordServantsAttendance,
  }) {
    final newCanWriteData = canWriteData ?? this.canWriteData;

    return UserAdminScope(
      object: object,
      canManageUsers:
          newCanWriteData && (canManageUsers ?? this.canManageUsers),
      canWriteData: newCanWriteData,
      canExportData: canExportData ?? this.canExportData,
      canWriteRelatedFamilies:
          canWriteRelatedFamilies ?? this.canWriteRelatedFamilies,
      canRecordAttendance: canRecordAttendance ?? this.canRecordAttendance,
      canRecordServantsAttendance:
          canRecordServantsAttendance ?? this.canRecordServantsAttendance,
      studyYear: studyYear is StudyYear? ? studyYear : this.studyYear,
      gender: gender is bool? ? gender : this.gender,
    );
  }

  AdminOnData toAdminOnData({required String permissionId}) {
    switch (object) {
      case final Area area:
        return AdminOnData(
          permissionId: permissionId,
          area: area,
          areaAdminOnUsers: canManageUsers,
          areaAllowEdit: canWriteData,
          areaAllowExport: canExportData,
        );

      case final Service service:
        return AdminOnData(
          permissionId: permissionId,
          service: service,
          serviceAdminOnUsers: canManageUsers,
          serviceAllowEdit: canWriteData,
          serviceAllowExport: canExportData,
          serviceWriteRelatedFamilies: canWriteRelatedFamilies,
          serviceAllowRecordAttendance: canRecordAttendance,
          serviceAllowRecordServantsAttendance: canRecordServantsAttendance,
          serviceStudyYearData: studyYear,
          serviceGender: gender,
        );

      case final Group group:
        return AdminOnData(
          permissionId: permissionId,
          group: group,
          groupAdminOnUsers: canManageUsers,
          groupAllowEdit: canWriteData,
          groupAllowExport: canExportData,
          groupWriteRelatedFamilies: canWriteRelatedFamilies,
          groupAllowRecordAttendance: canRecordAttendance,
          groupAllowRecordServantsAttendance: canRecordServantsAttendance,
        );

      default:
        throw Exception('Unexpected object type: ${object.runtimeType}');
    }
  }
}
