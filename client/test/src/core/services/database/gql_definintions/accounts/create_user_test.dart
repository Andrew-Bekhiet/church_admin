import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../fakes/fake_ash_backend.dart';
import '../../../../../fakes/fake_ash_tables_link.dart';

void main() {
  const createdUid = 'user-created';
  const area = Area(id: 'area-1', name: 'منطقة');
  final expiresAt = DateTime.utc(2030, 5, 8, 12);

  const userAdmin = AdminOnData(
    permissionId: 'permission-1',
    area: area,
    areaAllowEdit: true,
    areaAdminOnUsers: false,
  );

  UserDraft draftFor(PersonLink person) => UserDraft(
    name: 'مينا',
    email: 'mina@example.com',
    person: person,
    permissions: const PermissionsSet.fromSet({
      UserPermission.approved,
      UserPermission.exportAllData,
    }),
    adminOn: [userAdmin],
    invitation: InvitationRequest(expiresAt),
  );

  late FakeAshBackend backend;
  Json? asked;

  void serving(FakeAshAction createUser) {
    backend = FakeAshBackend([], actions: {'createUser': createUser});
    addTearDown(backend.dispose);
  }

  setUp(() => asked = null);

  Object createdUser(Json variables) {
    asked = variables;

    return {
      '__typename': 'CreateUserResult',
      'result': {'__typename': 'User', 'id': createdUid, 'uid': createdUid},
    };
  }

  group('UsersDAO.createUser', () {
    test(
      'a user for an existing person links that person and returns the new uid',
      () async {
        serving(createdUser);
        final draft = draftFor(
          LinkExistingPerson(Person(id: 'person-1', name: 'مينا')),
        );

        final uid = await backend.db.users.createUser(
          CreateUserRequest.fromDraft(draft),
        );

        expect(uid, createdUid);
        expect(asked, {
          'input': {
            'name': draft.name,
            'email': draft.email,
            'permissions': draft.permissions
                .validated()
                .map((p) => p.name)
                .toList(),
            'adminOn': [
              {
                'adminOnArea': area.id,
                'areaAllowEdit': true,
                'areaAdminOnUsers': false,
              },
            ],
            'personId': 'person-1',
            'invitationExpiresAt': expiresAt.toIso8601String(),
          },
        });
      },
    );

    test('a user for a new person sends the person name and gender', () async {
      serving(createdUser);

      await backend.db.users.createUser(
        CreateUserRequest.fromDraft(
          draftFor(const CreateNewPerson(name: 'مينا', gender: false)),
        ),
      );

      final input = (asked!['input'] as Map).cast<String, dynamic>();
      expect(input['newPerson'], {'name': 'مينا', 'gender': false});
      expect(input, isNot(contains('personId')));
    });

    test('a user without an email sends none', () async {
      serving(createdUser);

      await backend.db.users.createUser(
        CreateUserRequest.fromDraft(
          draftFor(
            const CreateNewPerson(name: 'مينا', gender: true),
          ).copyWith(email: ''),
        ),
      );

      expect(asked!['input'] as Map, isNot(contains('email')));
    });

    test('a user without an invitation request sends no expiry', () async {
      serving(createdUser);

      await backend.db.users.createUser(
        CreateUserRequest.fromDraft(
          draftFor(
            const CreateNewPerson(name: 'مينا', gender: true),
          ).copyWith(invitation: const NoInvitation()),
        ),
      );

      expect(asked!['input'] as Map, isNot(contains('invitationExpiresAt')));
    });

    for (final code in const [
      'user/email-taken',
      'user/name-taken',
      'user/person-already-linked',
      'user/permission-not-grantable',
      'user/permission-levels-inconsistent',
      'user/duplicate-scope',
      'invitation/scope-required',
      'invitation/scope-not-manageable',
    ]) {
      test('"$code" is rejected with its code', () async {
        serving((_) => throw FakeAshRejection(code));

        await expectLater(
          backend.db.users.createUser(
            CreateUserRequest.fromDraft(
              draftFor(const CreateNewPerson(name: 'مينا', gender: true)),
            ),
          ),
          throwsA(
            isA<BackendRejectedException>().having(
              (e) => e.code,
              'code',
              code,
            ),
          ),
        );
      });
    }
  });
}
