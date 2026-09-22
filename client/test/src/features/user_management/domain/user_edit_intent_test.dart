import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('UserEditIntent router extra', () {
    test('an update intent survives a JSON round trip with its user', () {
      final user = User(
        uid: 'u1',
        name: 'مينا',
        email: 'mina@example.com',
        permissions: const PermissionsSet.fromSet({UserPermission.approved}),
        invitation: Invitation(
          id: 'i1',
          userUid: 'u1',
          code: 'AAAA-BBBB-CCCC',
          createdAt: DateTime(2026, 9, 1),
          expiresAt: DateTime(2026, 9, 28),
        ),
      );

      final restored = UserEditIntent.fromJson(UpdateUser(user: user).toJson());

      expect(restored, isA<UpdateUser>());
      expect((restored as UpdateUser).user, user);
    });

    test('a create intent survives a JSON round trip', () {
      final restored = UserEditIntent.fromJson(const CreateUser().toJson());

      expect(restored, isA<CreateUser>());
    });
  });
}
