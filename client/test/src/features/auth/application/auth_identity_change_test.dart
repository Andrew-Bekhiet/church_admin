import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AuthIdentityChange', () {
    const claimedUser = AuthUser(
      uid: 'firebase-uid',
      email: 'servant@example.com',
      emailVerified: true,
      idToken: 'token',
      claims: {AuthUser.hasuraUserIdKey: 'hasura-user-1'},
    );
    const unclaimedUser = AuthUser(
      uid: 'firebase-uid',
      email: 'servant@example.com',
      emailVerified: true,
      idToken: 'token',
    );
    const signedIn = AuthAuthenticated(authUser: claimedUser);
    final userData = User(uid: claimedUser.uid, name: 'name');

    test('signing in is identified by the Hasura id', () {
      final change = AuthIdentityChange.between(
        const AuthUnauthenticated(),
        signedIn,
      );

      expect(
        change,
        isA<AuthIdentityIdentified>()
            .having(
              (c) => c.hasuraUserId,
              'hasuraUserId',
              claimedUser.hasuraUserId,
            )
            .having((c) => c.authUser, 'authUser', claimedUser),
      );
    });

    test('signing out is forgotten', () {
      final change = AuthIdentityChange.between(
        signedIn,
        const AuthUnauthenticated(),
      );

      expect(change, isA<AuthIdentityForgotten>());
    });

    test('staying in the same state is unchanged', () {
      final change = AuthIdentityChange.between(signedIn, signedIn);

      expect(change, isA<AuthIdentityUnchanged>());
    });

    test('user data arriving is identified with that user data', () {
      final change = AuthIdentityChange.between(
        signedIn,
        AuthAuthenticated(authUser: claimedUser, userData: userData),
      );

      expect(
        change,
        isA<AuthIdentityIdentified>().having(
          (c) => c.userData,
          'userData',
          userData,
        ),
      );
    });

    test('claiming an account mid-session is identified', () {
      final change = AuthIdentityChange.between(
        const AuthAuthenticated(authUser: unclaimedUser),
        signedIn,
      );

      expect(
        change,
        isA<AuthIdentityIdentified>().having(
          (c) => c.hasuraUserId,
          'hasuraUserId',
          claimedUser.hasuraUserId,
        ),
      );
    });

    test('authenticating without a Hasura id is unchanged', () {
      final change = AuthIdentityChange.between(
        const AuthUnauthenticated(),
        const AuthAuthenticated(authUser: unclaimedUser),
      );

      expect(change, isA<AuthIdentityUnchanged>());
    });

    test('a loading wrapper around the same user is unchanged', () {
      final change = AuthIdentityChange.between(
        signedIn,
        const AuthLoading(previousState: signedIn),
      );

      expect(change, isA<AuthIdentityUnchanged>());
    });
  });
}
