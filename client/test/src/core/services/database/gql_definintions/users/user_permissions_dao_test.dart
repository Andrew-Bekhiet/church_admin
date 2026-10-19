import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../fakes/fake_ash_backend.dart';
import 'user_fixtures.dart';

void main() {
  final mina = UserFixtures.mina;
  final grants = [UserFixtures.areaGrant, UserFixtures.groupGrant];
  const approvedOnly = PermissionsSet.fromSet({UserPermission.approved});
  const approvedAndReading = PermissionsSet.fromSet({
    UserPermission.approved,
    UserPermission.readAllData,
  });

  FakeAshBackend backendAnswering(String mutation) {
    final backend = FakeAshBackend(
      [],
      mutations: {
        mutation: (variables) => {
          '__typename': 'User',
          'id': variables['id'],
          'permissions': <Json>[],
          'scopeGrants': <Json>[],
        },
      },
    );
    addTearDown(backend.dispose);

    return backend;
  }

  Json lastInput(FakeAshBackend backend) =>
      (backend.server.sentTo('updateUserPermissions').single.variables['input']
              as Map)
          .cast<String, dynamic>();

  group('approval', () {
    test('approving a user sends the user id', () async {
      final backend = backendAnswering('approveUser');

      await backend.db.userPermissions.approveUser(mina.uid);

      expect(backend.server.sentTo('approveUser').single.variables, {
        'id': mina.uid,
      });
    });

    test('unapproving a user sends the user id', () async {
      final backend = backendAnswering('unapproveUser');

      await backend.db.userPermissions.unapproveUser(mina.uid);

      expect(backend.server.sentTo('unapproveUser').single.variables, {
        'id': mina.uid,
      });
    });

    test('a forbidden approval reaches the caller with its code', () async {
      final backend = backendAnswering('approveUser');
      backend.server.nextMutationRejectionCode = 'forbidden';

      await expectLater(
        backend.db.userPermissions.approveUser(mina.uid),
        throwsA(
          isA<BackendException>().having(
            (error) => error.code,
            'code',
            'forbidden',
          ),
        ),
      );
    });
  });

  group('updateUserPermissions', () {
    test('the full desired permissions and scopes are sent', () async {
      final backend = backendAnswering('updateUserPermissions');

      await backend.db.userPermissions.updateUserPermissions(
        userId: mina.uid,
        oldPermissions: approvedOnly,
        newPermissions: approvedAndReading,
        oldAdminOn: [UserFixtures.areaGrant],
        newAdminOn: grants,
      );

      expect(
        backend.server.sentTo('updateUserPermissions').single.variables['id'],
        mina.uid,
      );
      expect(lastInput(backend), {
        'permissions': approvedAndReading.map((p) => p.name).toList(),
        'adminOn': [
          for (final grant in grants) grant.toCommandInput().toJson(),
        ],
      });
    });

    test(
      'removing every scope sends an empty set, not an omitted one',
      () async {
        final backend = backendAnswering('updateUserPermissions');

        await backend.db.userPermissions.updateUserPermissions(
          userId: mina.uid,
          oldPermissions: approvedAndReading,
          newPermissions: approvedAndReading,
          oldAdminOn: grants,
          newAdminOn: const [],
        );

        expect(lastInput(backend)['adminOn'], isEmpty);
      },
    );

    test('permissions and scopes that did not change send nothing', () async {
      final backend = backendAnswering('updateUserPermissions');

      await backend.db.userPermissions.updateUserPermissions(
        userId: mina.uid,
        oldPermissions: approvedAndReading,
        newPermissions: approvedAndReading,
        oldAdminOn: grants,
        newAdminOn: [...grants],
      );

      expect(backend.server.sentTo('updateUserPermissions'), isEmpty);
    });

    for (final code in const [
      'user/permission-not-grantable',
      'user/permission-levels-inconsistent',
      'user/duplicate-scope',
      'forbidden',
      'not_found',
    ]) {
      test('a "$code" rejection reaches the caller with its code', () async {
        final backend = backendAnswering('updateUserPermissions');
        backend.server.nextMutationRejectionCode = code;

        await expectLater(
          backend.db.userPermissions.updateUserPermissions(
            userId: mina.uid,
            oldPermissions: approvedOnly,
            newPermissions: approvedAndReading,
            oldAdminOn: const [],
            newAdminOn: const [],
          ),
          throwsA(
            isA<BackendException>().having(
              (error) => error.code,
              'code',
              code,
            ),
          ),
        );
      });
    }
  });
}
