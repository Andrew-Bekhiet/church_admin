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

    test('a user holding both maintenance permission names holds '
        'app maintenance once', () {
      final permissions = PermissionsSet.parse({
        UserPermission.maintenanceNotifications.name,
        UserPermission.appMaintenance.name,
      });

      expect(permissions, {UserPermission.appMaintenance});
    });
  });
}
