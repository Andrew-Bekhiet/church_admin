import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PermissionsSet =>', () {
    test('validates onboarding permission with account approval', () {
      const permissions = PermissionsSet.fromSet({
        UserPermission.approved,
        UserPermission.onboardUsers,
      });

      expect(permissions.validated(), permissions);
    });

    test('removes onboarding permission without account approval', () {
      const permissions = PermissionsSet.fromSet({
        UserPermission.onboardUsers,
      });

      expect(permissions.validated(), const PermissionsSet.empty());
    });

    test('a user holding only the old maintenance permission name holds '
        'app maintenance', () {
      final permissions = PermissionsSet.parse({
        UserPermission.maintenanceNotifications.name,
      });

      expect(permissions, {UserPermission.appMaintenance});
    });

    test('held permissions are grouped by section in the order the app lists '
        'them, leaving out account approval', () {
      const permissions = PermissionsSet.fromSet({
        UserPermission.manageFingerprintIds,
        UserPermission.approved,
        UserPermission.readAllData,
        UserPermission.deleteData,
        UserPermission.manageAllUsers,
      });

      expect(
        permissions.groupedBySection.entries.map((e) => [e.key, e.value]),
        [
          [
            UserPermissionSection.general,
            [UserPermission.manageAllUsers, UserPermission.readAllData],
          ],
          [
            UserPermissionSection.scopeBound,
            [UserPermission.deleteData, UserPermission.manageFingerprintIds],
          ],
        ],
      );
    });

    test('a section none of the held permissions belongs to is left out', () {
      const permissions = PermissionsSet.fromSet({
        UserPermission.approved,
        UserPermission.deleteData,
      });

      expect(permissions.groupedBySection.keys, [
        UserPermissionSection.scopeBound,
      ]);
    });
  });
}
