import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('User.fromJson', () {
    test('skips a permission name this app version does not know and keeps '
        'the known ones', () {
      final user = User.fromJson({
        'uid': 'uid',
        'name': 'servant',
        'permissions': [
          {'permission': UserPermission.approved.name},
          const {'permission': 'permissionAddedByANewerAppVersion'},
          {'permission': UserPermission.readAllData.name},
        ],
      });

      expect(
        user.permissions,
        unorderedEquals({
          UserPermission.approved,
          UserPermission.readAllData,
        }),
      );
    });
  });

  group('User.fromJson user type', () {
    User userOfType(String? serverName) => User.fromJson({
      'uid': 'uid',
      'name': 'account',
      'userType': ?serverName,
    });

    test('reads the fingerprint bot', () {
      expect(
        userOfType(UserType.fingerprintBot.serverName).userType,
        UserType.fingerprintBot,
      );
    });

    test('treats a type this app version does not know as non-human', () {
      expect(
        userOfType('typeAddedByANewerAppVersion').userType.isHuman,
        isFalse,
      );
    });

    test('treats a user fetched without a type as human', () {
      expect(userOfType(null).userType, UserType.human);
    });
  });

  group('User.canEditObject for users', () {
    const manager = User(
      uid: 'manager',
      name: 'manager',
      permissions: PermissionsSet.fromSet({
        UserPermission.approved,
        UserPermission.readAllData,
        UserPermission.writeAllData,
      }),
    );

    test('a user who may edit all data cannot edit a non-human user', () {
      const bot = User(
        uid: 'bot',
        name: 'bot',
        userType: UserType.fingerprintBot,
        currentUserCanManageThisUser: true,
      );

      expect(manager.canEditObject(bot), isFalse);
    });

    test('a user who may edit all data can edit a human user', () {
      const servant = User(uid: 'servant', name: 'servant');

      expect(manager.canEditObject(servant), isTrue);
    });
  });

  group('User.canManageFingerprintIdsOf', () {
    final editablePerson = Person(id: 'p', name: 'p', userCanEdit: true);
    final readOnlyPerson = Person(id: 'p', name: 'p');

    User userWith(Set<UserPermission> permissions) => User(
      uid: 'uid',
      name: 'servant',
      permissions: PermissionsSet.fromSet(permissions),
    );

    test('allows a holder of the permission on a person they can edit', () {
      final user = userWith({UserPermission.manageFingerprintIds});

      expect(user.canManageFingerprintIdsOf(editablePerson), isTrue);
    });

    test('refuses a holder of the permission on a person they cannot edit', () {
      final user = userWith({UserPermission.manageFingerprintIds});

      expect(user.canManageFingerprintIdsOf(readOnlyPerson), isFalse);
    });

    test('refuses a user without the permission on a person they can edit', () {
      final user = userWith({UserPermission.approved});

      expect(user.canManageFingerprintIdsOf(editablePerson), isFalse);
    });
  });

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
