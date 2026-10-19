import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../fakes/ash_responses.dart';
import '../../../../../fakes/fake_ash_backend.dart';
import '../../../../../fakes/fake_ash_tables_link.dart';

void main() {
  const uid = 'user-1';

  late FakeAshBackend backend;

  void serving(String action, FakeAshAction answer) {
    backend = FakeAshBackend([], actions: {action: answer});
    addTearDown(backend.dispose);
  }

  group('AccountsDAO.tryClaimAccount', () {
    test('a claimed account is reported as claimed', () async {
      serving('tryClaimAccount', (_) => AshResponses.claimedAccount(uid));

      expect(await backend.db.accounts.tryClaimAccount(), isTrue);
    });

    for (final code in ['unauthenticated', 'account/not-claimable']) {
      test('"$code" means there is nothing to claim', () async {
        serving('tryClaimAccount', (_) => throw FakeAshRejection(code));

        expect(await backend.db.accounts.tryClaimAccount(), isFalse);
      });
    }

    test(
      'an account claimed by someone else is rejected with its code',
      () async {
        serving(
          'tryClaimAccount',
          (_) => throw const FakeAshRejection('account/already-claimed'),
        );

        await expectLater(
          backend.db.accounts.tryClaimAccount(),
          throwsA(
            isA<BackendRejectedException>().having(
              (e) => e.code,
              'code',
              'account/already-claimed',
            ),
          ),
        );
      },
    );

    test('rate limiting is reported with its code', () async {
      serving(
        'tryClaimAccount',
        (_) => throw const FakeAshRejection('rate_limited'),
      );

      await expectLater(
        backend.db.accounts.tryClaimAccount(),
        throwsA(
          isA<BackendException>().having(
            (e) => e.code,
            'code',
            'rate_limited',
          ),
        ),
      );
    });
  });

  group('AccountsDAO.applyInvitationCode', () {
    test('the code is sent as typed and the claimed uid is returned', () async {
      Json? asked;
      serving('applyInvitationCode', (variables) {
        asked = variables;

        return AshResponses.claimedAccount(uid);
      });

      final claimedUid = await backend.db.accounts.applyInvitationCode(
        'INVITE-CODE',
      );

      expect(claimedUid, uid);
      expect(asked, {
        'input': {'code': 'INVITE-CODE'},
      });
    });

    for (final code in [
      'invitation/not-claimable',
      'account/already-claimed',
    ]) {
      test('"$code" is rejected with its code', () async {
        serving('applyInvitationCode', (_) => throw FakeAshRejection(code));

        await expectLater(
          backend.db.accounts.applyInvitationCode('INVITE-CODE'),
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

    test('too many attempts are reported with the rate limit code', () async {
      serving(
        'applyInvitationCode',
        (_) => throw const FakeAshRejection('rate_limited'),
      );

      await expectLater(
        backend.db.accounts.applyInvitationCode('INVITE-CODE'),
        throwsA(
          isA<BackendException>().having(
            (e) => e.code,
            'code',
            'rate_limited',
          ),
        ),
      );
    });
  });

  group('AccountsDAO.deleteMyAccount', () {
    test('completes when the server deletes the account', () async {
      serving('deleteMyAccount', (_) => true);

      await expectLater(backend.db.accounts.deleteMyAccount(), completes);
    });

    test('a server refusal reaches the caller', () async {
      serving(
        'deleteMyAccount',
        (_) => throw const FakeAshRejection('unauthenticated'),
      );

      await expectLater(
        backend.db.accounts.deleteMyAccount(),
        throwsA(isA<BackendAuthenticationException>()),
      );
    });
  });
}
