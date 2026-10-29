import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fakes/mock_auth_bloc.dart';
import '../../../../fakes/recording_logging_service.dart';

void main() {
  group('LoggingBlocObserver', () {
    const authUser = AuthUser(
      uid: 'firebase-uid',
      email: 'servant@example.com',
      emailVerified: true,
      idToken: 'token',
      claims: {AuthUser.hasuraUserIdKey: 'hasura-user-1'},
    );
    const signedIn = AuthAuthenticated(authUser: authUser);

    late RecordingLoggingService loggingService;
    late LoggingBlocObserver observer;

    setUp(() {
      loggingService = RecordingLoggingService();
      observer = LoggingBlocObserver(loggingService);
    });

    test('signing in identifies the user by their Hasura id', () async {
      observer.onTransition(
        MockAuthBloc(),
        const Transition<AuthEvent, AuthState>(
          currentState: AuthUnauthenticated(),
          event: SignInWithEmailPassword(email: 'e', password: 'p'),
          nextState: signedIn,
        ),
      );
      await pumpEventQueue();

      expect(
        loggingService.identifiedUsers.single,
        isA<LoggingUser>()
            .having((u) => u.id, 'id', authUser.hasuraUserId)
            .having((u) => u.email, 'email', authUser.email),
      );
    });

    test('signing out forgets the identified user', () async {
      observer.onTransition(
        MockAuthBloc(),
        const Transition<AuthEvent, AuthState>(
          currentState: signedIn,
          event: SignOut(SignOutSource.signOutButton),
          nextState: AuthUnauthenticated(),
        ),
      );
      await pumpEventQueue();

      expect(loggingService.identifiedUsers, [null]);
    });

    test(
      'user data arriving after sign-in identifies the user again',
      () async {
        final userData = User(
          uid: authUser.uid,
          name: 'name',
          permissions: const PermissionsSet.fromSet({UserPermission.approved}),
        );

        observer.onTransition(
          MockAuthBloc(),
          Transition<AuthEvent, AuthState>(
            currentState: signedIn,
            event: const ReloadUser(),
            nextState: AuthAuthenticated(
              authUser: authUser,
              userData: userData,
            ),
          ),
        );
        await pumpEventQueue();

        expect(
          loggingService.identifiedUsers.single,
          isA<LoggingUser>()
              .having((u) => u.name, 'name', userData.name)
              .having((u) => u.permissions, 'permissions', [
                UserPermission.approved.name,
              ]),
        );
      },
    );

    test('staying signed in does not identify the user again', () async {
      observer.onTransition(
        MockAuthBloc(),
        const Transition<AuthEvent, AuthState>(
          currentState: signedIn,
          event: ReloadUser(),
          nextState: signedIn,
        ),
      );
      await pumpEventQueue();

      expect(loggingService.identifiedUsers, isEmpty);
    });
  });
}
