import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('UserDraft.fromUser', () {
    test('a draft of an existing user links the same person', () {
      final person = Person(id: 'p1', name: 'مينا');
      final user = User(uid: 'u1', name: 'مينا', person: person);

      final draft = UserDraft.fromUser(user);

      expect(draft.person, LinkExistingPerson(person));
    });

    test('a draft of a user without a person has no person selected', () {
      const user = User(uid: 'u1', name: 'مينا');

      final draft = UserDraft.fromUser(user);

      expect(draft.person, const NoPersonSelected());
    });

    test('a draft of a user with an invitation carries that invitation', () {
      final invitation = Invitation(
        id: 'i1',
        userUid: 'u1',
        code: 'abc',
        createdAt: DateTime(2026),
        expiresAt: DateTime(2026, 1, 8),
      );
      final user = User(uid: 'u1', name: 'مينا', invitation: invitation);

      final draft = UserDraft.fromUser(user);

      expect(draft.invitation, ExistingInvitation(invitation));
    });

    test('a draft of a user without an invitation has none', () {
      const user = User(uid: 'u1', name: 'مينا');

      final draft = UserDraft.fromUser(user);

      expect(draft.invitation, const NoInvitation());
    });
  });

  group('UserDraft.forNewUser', () {
    test('a new user starts approved with a default-validity invitation', () {
      final now = DateTime(2026, 9, 22);

      final draft = UserDraft.forNewUser(now);

      expect(draft.permissions.approved, isTrue);
      expect(
        draft.invitation,
        InvitationRequest(InvitationRequest.defaultExpiry(now)),
      );
    });
  });

  group('UserDraft.isValid', () {
    test('a draft with an empty name is not valid', () {
      final draft = UserDraft(
        name: '',
        email: '',
        person: LinkExistingPerson(
          Person(id: 'p1', name: 'مينا'),
        ),
        permissions: const PermissionsSet.empty(),
        adminOn: const [],
        invitation: const NoInvitation(),
      );

      expect(draft.isValid, isFalse);
    });

    test('a draft with no person selected is not valid', () {
      const draft = UserDraft(
        name: 'مينا',
        email: '',
        person: NoPersonSelected(),
        permissions: PermissionsSet.empty(),
        adminOn: [],
        invitation: NoInvitation(),
      );

      expect(draft.isValid, isFalse);
    });

    test('a draft creating a person with a blank name is not valid', () {
      const draft = UserDraft(
        name: 'مينا',
        email: '',
        person: CreateNewPerson(name: '  ', gender: true),
        permissions: PermissionsSet.empty(),
        adminOn: [],
        invitation: NoInvitation(),
      );

      expect(draft.isValid, isFalse);
    });

    test('a draft with a name and an existing person is valid', () {
      final draft = UserDraft(
        name: 'مينا',
        email: '',
        person: LinkExistingPerson(
          Person(id: 'p1', name: 'مينا'),
        ),
        permissions: const PermissionsSet.empty(),
        adminOn: const [],
        invitation: const NoInvitation(),
      );

      expect(draft.isValid, isTrue);
    });

    test('a draft with a name and a named new person is valid', () {
      const draft = UserDraft(
        name: 'مينا',
        email: '',
        person: CreateNewPerson(name: 'مخدوم جديد', gender: true),
        permissions: PermissionsSet.empty(),
        adminOn: [],
        invitation: NoInvitation(),
      );

      expect(draft.isValid, isTrue);
    });
  });
}
