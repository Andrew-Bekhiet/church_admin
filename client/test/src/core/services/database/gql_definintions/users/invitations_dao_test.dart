import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../fakes/fake_ash_backend.dart';
import 'user_fixtures.dart';

void main() {
  final invitation = UserFixtures.invitation;
  final newExpiry = DateTime.utc(2030, 5, 8, 12);

  Json invitationRow() => {...invitation.toJson(), '__typename': 'Invitation'};

  FakeAshBackend backendServing() {
    final backend = FakeAshBackend(
      [],
      mutations: {
        'createInvitation': (_) => invitationRow(),
        'updateInvitationExpiry': (_) => invitationRow(),
      },
    );
    addTearDown(backend.dispose);

    return backend;
  }

  test('a created invitation is sent with its user and expiry', () async {
    final backend = backendServing();

    await backend.db.invitations.createInvitation(
      userUid: invitation.userUid,
      expiresAt: newExpiry,
    );

    expect(backend.server.sentTo('createInvitation').single.variables, {
      'input': {
        'userUid': invitation.userUid,
        'expiresAt': newExpiry.toIso8601String(),
      },
    });
  });

  test('a created invitation is the one the server answers with', () async {
    final backend = backendServing();

    final created = await backend.db.invitations.createInvitation(
      userUid: invitation.userUid,
      expiresAt: newExpiry,
    );

    expect(created, invitation);
  });

  test('a changed expiry is sent with the invitation id', () async {
    final backend = backendServing();

    await backend.db.invitations.updateInvitationExpiry(
      id: invitation.id,
      expiresAt: newExpiry,
    );

    expect(backend.server.sentTo('updateInvitationExpiry').single.variables, {
      'id': invitation.id,
      'input': {'expiresAt': newExpiry.toIso8601String()},
    });
  });

  test('an invalid expiry reaches the caller with its code', () async {
    final backend = backendServing();
    backend.server.nextMutationRejectionCode = 'invitation/invalid-expiry';

    await expectLater(
      backend.db.invitations.updateInvitationExpiry(
        id: invitation.id,
        expiresAt: newExpiry,
      ),
      throwsA(
        isA<BackendException>().having(
          (error) => error.code,
          'code',
          'invitation/invalid-expiry',
        ),
      ),
    );
  });
}
