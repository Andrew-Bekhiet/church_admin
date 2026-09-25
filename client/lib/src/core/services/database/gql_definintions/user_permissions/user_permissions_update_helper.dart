import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/user_permissions/__generated__/mutations.gql.dart';

/// Helper class for computing diff-based updates to user admin permissions.
///
/// Similar to `PersonUpdateHelper`, this computes what needs to be deleted
/// and what needs to be inserted when updating a user's admin permissions.
class UserPermissionsUpdateHelper {
  static Input_AuthUsersAdminOnInsertInput adminOnInsertInputFrom(
    String? userId,
    AdminOnData data,
  ) {
    return Input_AuthUsersAdminOnInsertInput(
      uid: userId?.toUuid(),
      adminOnArea: data.area?.id.toUuid(),
      areaAllowEdit: data.areaAllowEdit,
      areaAllowExport: data.areaAllowExport,
      areaAdminOnUsers: data.areaAdminOnUsers,
      adminOnService: data.service?.id.toUuid(),
      serviceStudyYear: data.serviceStudyYearData?.order,
      serviceGender: data.serviceGender,
      serviceAllowEdit: data.serviceAllowEdit,
      serviceAllowExport: data.serviceAllowExport,
      serviceAllowRecordAttendance: data.serviceAllowRecordAttendance,
      serviceAllowRecordServantsAttendance:
          data.serviceAllowRecordServantsAttendance,
      serviceAdminOnUsers: data.serviceAdminOnUsers,
      serviceWriteRelatedFamilies: data.serviceWriteRelatedFamilies,
      adminOnGroup: data.group?.id.toUuid(),
      groupAllowEdit: data.groupAllowEdit,
      groupAllowExport: data.groupAllowExport,
      groupAllowRecordAttendance: data.groupAllowRecordAttendance,
      groupAllowRecordServantsAttendance:
          data.groupAllowRecordServantsAttendance,
      groupAdminOnUsers: data.groupAdminOnUsers,
      groupWriteRelatedFamilies: data.groupWriteRelatedFamilies,
    );
  }

  final String userId;
  final PermissionsSet newPermissions;
  final PermissionsSet oldPermissions;
  final List<AdminOnData> newAdminOn;
  final List<AdminOnData> oldAdminOn;

  late final IterableDifferenceResult<AdminOnData> _adminOnDiff;
  late final IterableDifferenceResult<UserPermission> _permissionsDiff;

  bool get hasChanges =>
      _adminOnDiff.added.isNotEmpty ||
      _adminOnDiff.removed.isNotEmpty ||
      _permissionsDiff.added.isNotEmpty ||
      _permissionsDiff.removed.isNotEmpty;

  bool get _deleteAdminOn => _adminOnDiff.removed.isNotEmpty;
  bool get _insertAdminOn => _adminOnDiff.added.isNotEmpty;
  bool get _deletePermissions => _permissionsDiff.removed.isNotEmpty;
  bool get _insertPermissions => _permissionsDiff.added.isNotEmpty;

  List<UuidValue> get _deleteAdminOnIds =>
      _adminOnDiff.removed.map((a) => a.permissionId.toUuid()).toList();

  List<Input_AuthUsersAdminOnInsertInput> get _newAdminOn => _adminOnDiff.added
      .map((data) => adminOnInsertInputFrom(userId, data))
      .toList();

  Variables_Mutation_updateUserPermissions get variables =>
      Variables_Mutation_updateUserPermissions(
        uid: userId.toUuid(),
        deletePermissions: _deletePermissions,
        insertPermissions: _insertPermissions,
        permissionsToDelete: _permissionsDiff.removed
            .map((p) => p.name)
            .toList(),
        permissionsToInsert: _permissionsDiff.added
            .map(
              (p) => Input_AuthUsersPermissionsInsertInput(
                uid: userId.toUuid(),
                permission: p.name,
              ),
            )
            .toList(),
        deletePermissionIds: _deleteAdminOnIds,
        newAdminOn: _newAdminOn,
        deleteAdminOn: _deleteAdminOn,
        insertAdminOn: _insertAdminOn,
      );

  UserPermissionsUpdateHelper({
    required this.newPermissions,
    required this.oldPermissions,
    required this.newAdminOn,
    required this.oldAdminOn,
    required this.userId,
  }) {
    _permissionsDiff = diff(oldPermissions.toSet(), newPermissions.toSet());
    _adminOnDiff = diff(oldAdminOn.toSet(), newAdminOn.toSet());
  }
}
