import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('User.canChangeDataCheck', () {
    const editableFamily = Family(
      id: 'family',
      name: 'family',
      userCanEdit: true,
    );
    const readOnlyFamily = Family(id: 'family', name: 'family');

    User userWith(Set<UserPermission> permissions) => User(
      uid: 'uid',
      name: 'servant',
      permissions: PermissionsSet.fromSet(permissions),
    );

    test('a user holding the data checks permission who can edit the family '
        'can change its data check', () {
      final user = userWith({
        UserPermission.approved,
        UserPermission.changeDataChecks,
      });

      expect(user.canChangeDataCheck(editableFamily), isTrue);
    });

    test('a user who can edit the family but lacks the data checks permission '
        'cannot change its data check', () {
      final user = userWith({
        UserPermission.approved,
        UserPermission.readAllData,
        UserPermission.writeAllData,
      });

      expect(user.canChangeDataCheck(editableFamily), isFalse);
    });

    test('a user holding the data checks permission who cannot edit the family '
        'cannot change its data check', () {
      final user = userWith({
        UserPermission.approved,
        UserPermission.changeDataChecks,
      });

      expect(user.canChangeDataCheck(readOnlyFamily), isFalse);
    });
  });
}
