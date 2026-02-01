import 'package:church_admin/church_admin.dart';

class UserAdminScope<T extends ViewableWithID> {
  static const _undefined = Object();

  final T object;
  final bool canManageUsers;
  final bool canWriteData;
  final bool? canWriteRelatedFamilies;

  final StudyYear? studyYear;
  final bool? gender;

  UserAdminScope({
    required this.object,
    required this.canManageUsers,
    required this.canWriteData,
    this.canWriteRelatedFamilies,
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
        );

      case AdminOnData(service: final service?):
        return UserAdminScope<Service>(
          object: service,
          canManageUsers: adminOnData.serviceAdminOnUsers ?? false,
          canWriteData: adminOnData.serviceAllowEdit ?? false,
          canWriteRelatedFamilies:
              adminOnData.serviceWriteRelatedFamilies ?? false,
          studyYear: adminOnData.serviceStudyYearData,
          gender: adminOnData.serviceGender,
        );

      case AdminOnData(group: final group?):
        return UserAdminScope<Group>(
          object: group,
          canManageUsers: adminOnData.groupAdminOnUsers ?? false,
          canWriteData: adminOnData.groupAllowEdit ?? false,
          canWriteRelatedFamilies:
              adminOnData.groupWriteRelatedFamilies ?? false,
        );

      default:
        throw Exception('AdminOnData has no scope object');
    }
  }

  UserAdminScope copyWith({
    bool? canManageUsers,
    bool? canWriteData,
    bool? canWriteRelatedFamilies,
    Object? studyYear = _undefined,
    Object? gender = _undefined,
  }) {
    final newCanWriteData = canWriteData ?? this.canWriteData;
    return UserAdminScope(
      object: object,
      canManageUsers:
          newCanWriteData && (canManageUsers ?? this.canManageUsers),
      canWriteData: newCanWriteData,
      canWriteRelatedFamilies:
          canWriteRelatedFamilies ?? this.canWriteRelatedFamilies,
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
        );

      case final Service service:
        return AdminOnData(
          permissionId: permissionId,
          service: service,
          serviceAdminOnUsers: canManageUsers,
          serviceAllowEdit: canWriteData,
          serviceWriteRelatedFamilies: canWriteRelatedFamilies,
          serviceStudyYearData: studyYear,
          serviceGender: gender,
        );

      case final Group group:
        return AdminOnData(
          permissionId: permissionId,
          group: group,
          groupAdminOnUsers: canManageUsers,
          groupAllowEdit: canWriteData,
          groupWriteRelatedFamilies: canWriteRelatedFamilies,
        );

      default:
        throw Exception('Unexpected object type: ${object.runtimeType}');
    }
  }
}
