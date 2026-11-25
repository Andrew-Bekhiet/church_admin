import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:permission_handler_platform_interface/permission_handler_platform_interface.dart';

import '../../../fakes/fake_logging_service.dart';
import '../../../fakes/mock_auth_bloc.dart';
import '../support/push_registration_fixture.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('NotificationsService push registration', () {
    const signedInUser = AuthUser(
      uid: 'uid',
      email: 'email',
      emailVerified: true,
      idToken: 'idToken',
    );
    const appStartWithCachedUser = Transition<AuthEvent, AuthState>(
      currentState: AuthInitial(),
      event: ListenToSubscriptions(),
      nextState: AuthAuthenticated(authUser: signedInUser),
    );
    const signIn = Transition<AuthEvent, AuthState>(
      currentState: AuthUnauthenticated(),
      event: SignInWithEmailPassword(email: 'email', password: 'password'),
      nextState: AuthAuthenticated(authUser: signedInUser),
    );

    late PushRegistrationFixture fixture;
    late MockAuthBloc authBloc;
    late NotificationsService unit;

    setUpAll(() => registerFallbackValue(<Permission>[]));

    setUp(() {
      initGlobalProviderContainer([
        loggingServiceProvider.overrideWithValue(FakeLoggingService()),
      ]);
      addTearDown(resetGlobalProviderContainer);
      fixture = PushRegistrationFixture();
      addTearDown(fixture.dispose);
      authBloc = MockAuthBloc();
      unit = fixture.buildNotificationsService(fixture.buildRegistration());
      addTearDown(unit.dispose);
    });

    test(
      'the installation id issued at app start with a cached user reaches the server',
      () async {
        const installationId = 'installation-id';
        fixture.issueOnNextRegister(installationId);

        await unit.onTransition(authBloc, appStartWithCachedUser);
        await pumpEventQueue();

        verify(
          () => fixture.functionsService.registerFirebaseInstallation(
            installationId,
          ),
        );
      },
    );

    test(
      'the installation id issued after signing in reaches the server',
      () async {
        const installationId = 'installation-id';
        fixture.issueOnNextRegister(installationId);

        await unit.onTransition(authBloc, signIn);
        await pumpEventQueue();

        verify(
          () => fixture.functionsService.registerFirebaseInstallation(
            installationId,
          ),
        );
      },
    );

    test(
      'nothing is registered without the notifications permission',
      () async {
        fixture
          ..issueOnNextRegister('installation-id')
          ..whenRequestingPermissions().thenAnswer(
            (_) async => {Permission.notification: PermissionStatus.denied},
          );

        await unit.onTransition(authBloc, signIn);
        await pumpEventQueue();

        verifyNever(() => fixture.firebaseMessaging.register());
      },
    );

    test(
      'signing out while a sign-in waits on the permission prompt leaves the device unregistered',
      () async {
        final promptAnswered = fixture.holdTheNextPermissionPrompt();
        final signingIn = unit.onTransition(authBloc, signIn);
        await pumpEventQueue();

        await fixture.authRepository.signOut();
        promptAnswered.complete();
        await signingIn;

        verifyNever(() => fixture.firebaseMessaging.register());
      },
    );

    test(
      'disposing while a sign-in waits on the permission prompt leaves the device unregistered',
      () async {
        final promptAnswered = fixture.holdTheNextPermissionPrompt();
        final signingIn = unit.onTransition(authBloc, signIn);
        await pumpEventQueue();

        await unit.dispose();
        promptAnswered.complete();
        await signingIn;

        verifyNever(() => fixture.firebaseMessaging.register());
      },
    );

    test(
      'signing out through the auth repository unregisters this device',
      () async {
        await unit.onTransition(authBloc, signIn);

        await fixture.authRepository.signOut();

        verify(() => fixture.firebaseMessaging.unregister());
      },
    );

    test(
      'signing out through the auth repository after disposing leaves this device registered',
      () async {
        await unit.onTransition(authBloc, signIn);
        await unit.dispose();

        await fixture.authRepository.signOut();

        verifyNever(() => fixture.firebaseMessaging.unregister());
      },
    );
  });
}
