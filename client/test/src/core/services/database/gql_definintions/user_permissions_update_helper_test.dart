import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/user_permissions/user_permissions_update_helper.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('UserPermissionsUpdateHelper', () {
    const userId = '00000000-0000-0000-0000-00000000000d';

    UserPermissionsUpdateHelper helperFor({
      required Set<UserPermission> oldPermissions,
      required Set<UserPermission> newPermissions,
    }) => UserPermissionsUpdateHelper(
      userId: userId,
      oldPermissions: PermissionsSet.fromSet(oldPermissions),
      newPermissions: PermissionsSet.fromSet(newPermissions),
      oldAdminOn: const [],
      newAdminOn: const [],
    );

    test(
      'taking app maintenance away revokes both of its permission names',
      () {
        final helper = helperFor(
          oldPermissions: {
            UserPermission.approved,
            UserPermission.appMaintenance,
          },
          newPermissions: {UserPermission.approved},
        );

        expect(
          helper.variables.permissionsToDelete,
          unorderedEquals([
            UserPermission.appMaintenance.name,
            UserPermission.maintenanceNotifications.name,
          ]),
        );
      },
    );

    test('granting app maintenance writes only its current name', () {
      final helper = helperFor(
        oldPermissions: {UserPermission.approved},
        newPermissions: {
          UserPermission.approved,
          UserPermission.appMaintenance,
        },
      );

      expect(
        helper.variables.permissionsToInsert.map((row) => row.permission),
        [UserPermission.appMaintenance.name],
      );
    });

    test('taking another permission away revokes only that permission', () {
      final helper = helperFor(
        oldPermissions: {UserPermission.approved, UserPermission.deleteData},
        newPermissions: {UserPermission.approved},
      );

      expect(
        helper.variables.permissionsToDelete,
        [UserPermission.deleteData.name],
      );
    });
  });
}
