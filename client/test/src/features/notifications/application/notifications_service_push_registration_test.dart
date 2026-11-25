import 'dart:async';

import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter/services.dart';
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
    const appStartSignedOut = Transition<AuthEvent, AuthState>(
      currentState: AuthInitial(),
      event: ListenToSubscriptions(),
      nextState: AuthUnauthenticated(),
    );
    const signIn = Transition<AuthEvent, AuthState>(
      currentState: AuthUnauthenticated(),
      event: SignInWithEmailPassword(email: 'email', password: 'password'),
      nextState: AuthAuthenticated(authUser: signedInUser),
    );
    const sessionEnd = Transition<AuthEvent, AuthState>(
      currentState: AuthAuthenticated(authUser: signedInUser),
      event: ListenToSubscriptions(),
      nextState: AuthUnauthenticated(),
    );

    late PushRegistrationFixture fixture;
    late MockAuthBloc authBloc;
    late NotificationsService unit;
    late List<MethodCall> scheduledAlarms;

    setUpAll(() => registerFallbackValue(<Permission>[]));

    setUp(() {
      initGlobalProviderContainer([
        loggingServiceProvider.overrideWithValue(FakeLoggingService()),
        currentPlatformServiceProvider.overrideWithValue(
          const CurrentPlatformService(PlatformValue.android),
        ),
      ]);
      addTearDown(resetGlobalProviderContainer);
      fixture = PushRegistrationFixture();
      addTearDown(fixture.dispose);
      authBloc = MockAuthBloc();
      unit = fixture.buildNotificationsService(fixture.buildRegistration());
      addTearDown(unit.dispose);
      scheduledAlarms = _recordScheduledAlarms();
    });

    test(
      'a sign-in with the notifications permission schedules the default notifications',
      () async {
        await unit.onTransition(authBloc, signIn);

        expect(scheduledAlarms, isNotEmpty);
      },
    );

    test(
      'signing out while a sign-in waits on the permission prompt schedules no default notifications',
      () async {
        final promptAnswered = fixture.holdTheNextPermissionPrompt();
        final signingIn = unit.onTransition(authBloc, signIn);
        await pumpEventQueue();

        await fixture.authRepository.signOut();
        promptAnswered.complete();
        await signingIn;

        expect(scheduledAlarms, isEmpty);
      },
    );

    test(
      'disposing while a sign-in waits on the permission prompt schedules no default notifications',
      () async {
        final promptAnswered = fixture.holdTheNextPermissionPrompt();
        final signingIn = unit.onTransition(authBloc, signIn);
        await pumpEventQueue();

        await unit.dispose();
        promptAnswered.complete();
        await signingIn;

        expect(scheduledAlarms, isEmpty);
      },
    );

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

    test(
      'a session that ends without a repository sign-out unregisters this device',
      () async {
        await unit.onTransition(authBloc, signIn);

        await unit.onTransition(authBloc, sessionEnd);

        verify(() => fixture.firebaseMessaging.unregister());
      },
    );

    test('launching the app signed out unregisters this device', () async {
      await unit.onTransition(authBloc, appStartSignedOut);

      verify(() => fixture.firebaseMessaging.unregister());
    });

    test(
      'a sign-in right after a repository sign-out and its session end is never unregistered',
      () async {
        await unit.onTransition(authBloc, signIn);
        await fixture.authRepository.signOut();
        final outcomes = <String>[];
        final unregistrationFinishes = Completer<void>();
        when(() => fixture.firebaseMessaging.unregister()).thenAnswer((
          _,
        ) async {
          await unregistrationFinishes.future;
          outcomes.add('unregistered');
        });
        when(() => fixture.firebaseMessaging.register()).thenAnswer((_) async {
          outcomes.add('registered');
        });

        final sessionEnding = unit.onTransition(authBloc, sessionEnd);
        final signingIn = unit.onTransition(authBloc, signIn);
        await pumpEventQueue();
        unregistrationFinishes.complete();
        await Future.wait([sessionEnding, signingIn]);

        expect(outcomes, ['unregistered', 'registered']);
      },
    );
  });
}

List<MethodCall> _recordScheduledAlarms() {
  final scheduledAlarms = <MethodCall>[];
  final messenger =
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        ..setMockMethodCallHandler(AndroidAlarmManager.channel, (call) async {
          scheduledAlarms.add(call);

          return true;
        });
  addTearDown(
    () => messenger.setMockMethodCallHandler(AndroidAlarmManager.channel, null),
  );

  return scheduledAlarms;
}
