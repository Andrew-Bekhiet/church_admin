import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../fakes/fake_logging_service.dart';
import '../../fakes/mock_auth_bloc.dart';
import '../../fakes/recording_analytics_provider.dart';

void main() {
  group('AnalyticsBlocObserver', () {
    const authUser = AuthUser(
      uid: 'firebase-uid',
      email: 'servant@example.com',
      emailVerified: true,
      idToken: 'token',
      claims: {AuthUser.hasuraUserIdKey: 'hasura-user-1'},
    );
    const signedIn = AuthAuthenticated(authUser: authUser);

    late RecordingAnalyticsProvider provider;
    late AnalyticsBlocObserver observer;

    setUp(() {
      provider = RecordingAnalyticsProvider();
      observer = AnalyticsBlocObserver(
        AnalyticsService([provider], FakeLoggingService()),
      );
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

      expect(provider.identifiedUsers.single?.id, 'hasura-user-1');
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

      expect(provider.identifiedUsers, [null]);
    });

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

      expect(provider.identifiedUsers, isEmpty);
    });
  });
}
