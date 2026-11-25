import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:fake_async/fake_async.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:permission_handler_platform_interface/permission_handler_platform_interface.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import '../../../fakes/fake_logging_service.dart';
import '../../../fakes/fake_sign_out_auth_repository.dart';
import '../../../fakes/mock_auth_bloc.dart';
import '../../../fakes/mock_database_service.dart';
import '../../../fakes/recording_analytics_provider.dart';

class _MockPermissionHandlerPlatform extends Mock
    with MockPlatformInterfaceMixin
    implements PermissionHandlerPlatform {}

class _MockFirebaseMessaging extends Mock implements FirebaseMessaging {}

class _MockNotificationSettings extends Mock implements NotificationSettings {}

class _MockLocalNotificationsPlugin extends Mock
    implements FlutterLocalNotificationsPlugin {}

class _MockFcmTokensDAO extends Mock implements FcmTokensDAO {}

class _MockFunctionsService extends Mock implements FunctionsService {}

class _MockNotificationsStorage extends Mock implements NotificationsStorage {}

class _MockNotificationsSettingsStorage extends Mock
    implements NotificationsSettingsStorage {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('NotificationsService push registration', () {
    const hasuraUserId = 'hasura-user-id';
    const signedInUser = AuthUser(
      uid: 'uid',
      email: 'email',
      emailVerified: true,
      idToken: 'idToken',
      claims: {AuthUser.hasuraUserIdKey: hasuraUserId},
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

    late _MockPermissionHandlerPlatform permissionHandler;
    late _MockFirebaseMessaging firebaseMessaging;
    late MockAuthBloc authBloc;
    late FakeSignOutAuthRepository authRepository;
    late _MockFcmTokensDAO fcmTokens;
    late _MockFunctionsService functionsService;
    late StreamController<String> onRegistered;
    late NotificationsService unit;

    void issueOnNextRegister(String installationId) {
      when(() => firebaseMessaging.register()).thenAnswer((_) async {
        onRegistered.add(installationId);
      });
    }

    void denyNotificationsPermission() {
      when(() => permissionHandler.requestPermissions(any())).thenAnswer(
        (_) async => {Permission.notification: PermissionStatus.denied},
      );
    }

    Future<void> drainRealAndFakeMicrotasks(FakeAsync fakeTime) async {
      for (var round = 0; round < 10; round++) {
        await pumpEventQueue();
        fakeTime.flushMicrotasks();
      }
    }

    setUpAll(() => registerFallbackValue(<Permission>[]));

    setUp(() {
      initGlobalProviderContainer([
        loggingServiceProvider.overrideWithValue(FakeLoggingService()),
      ]);
      addTearDown(resetGlobalProviderContainer);

      permissionHandler = _MockPermissionHandlerPlatform();
      firebaseMessaging = _MockFirebaseMessaging();
      authBloc = MockAuthBloc();
      authRepository = FakeSignOutAuthRepository();
      fcmTokens = _MockFcmTokensDAO();
      functionsService = _MockFunctionsService();
      onRegistered = StreamController<String>.broadcast();
      addTearDown(onRegistered.close);

      final fcmSettings = _MockNotificationSettings();
      when(
        () => fcmSettings.authorizationStatus,
      ).thenReturn(AuthorizationStatus.authorized);

      when(
        () => permissionHandler.checkPermissionStatus(Permission.notification),
      ).thenAnswer((_) async => PermissionStatus.denied);
      when(() => permissionHandler.requestPermissions(any())).thenAnswer(
        (_) async => {Permission.notification: PermissionStatus.granted},
      );
      PermissionHandlerPlatform.instance = permissionHandler;

      when(
        () => firebaseMessaging.requestPermission(),
      ).thenAnswer((_) async => fcmSettings);
      when(firebaseMessaging.isSupported).thenAnswer((_) async => true);
      when(
        () => firebaseMessaging.onRegistered,
      ).thenAnswer((_) => onRegistered.stream);
      when(() => firebaseMessaging.register()).thenAnswer((_) async {});
      when(() => firebaseMessaging.unregister()).thenAnswer((_) async {});

      when(() => authBloc.isSignedIn).thenReturn(false);
      when(() => authBloc.currentUserData).thenReturn(null);
      when(() => authBloc.currentUser).thenReturn(signedInUser);

      when(
        () => functionsService.registerFirebaseInstallation(any()),
      ).thenAnswer((_) async {});

      final databaseService = MockDatabaseService();
      when(() => databaseService.fcmTokens).thenReturn(fcmTokens);
      when(
        () => fcmTokens.deleteByUidAndToken(
          uid: any(named: 'uid'),
          token: any(named: 'token'),
        ),
      ).thenAnswer((_) async {});

      unit = NotificationsService(
        firebaseMessaging: firebaseMessaging,
        localNotificationsPlugin: _MockLocalNotificationsPlugin(),
        onForegroundMessageStream: const Stream.empty(),
        onMessageOpenedAppStream: const Stream.empty(),
        authBloc: authBloc,
        authRepository: authRepository,
        analyticsService: AnalyticsService(
          [RecordingAnalyticsProvider()],
          FakeLoggingService(),
        ),
        databaseService: databaseService,
        functionsService: functionsService,
        storage: _MockNotificationsStorage(),
        settings: _MockNotificationsSettingsStorage(),
      );
      addTearDown(unit.dispose);
    });

    group('registering', () {
      test(
        'the installation id issued at app start with a cached user reaches the server',
        () async {
          const installationId = 'installation-id';
          issueOnNextRegister(installationId);

          await unit.onTransition(authBloc, appStartWithCachedUser);
          await pumpEventQueue();

          verify(
            () => functionsService.registerFirebaseInstallation(installationId),
          );
        },
      );

      test(
        'the installation id issued after signing in reaches the server',
        () async {
          const installationId = 'installation-id';
          issueOnNextRegister(installationId);

          await unit.onTransition(authBloc, signIn);
          await pumpEventQueue();

          verify(
            () => functionsService.registerFirebaseInstallation(installationId),
          );
        },
      );

      test('a replacement installation id also reaches the server', () async {
        const replacementInstallationId = 'replacement-installation-id';
        await unit.onTransition(authBloc, signIn);

        onRegistered.add(replacementInstallationId);
        await pumpEventQueue();

        verify(
          () => functionsService.registerFirebaseInstallation(
            replacementInstallationId,
          ),
        );
      });

      test(
        'signing in again after signing out registers the device again',
        () async {
          const firstInstallationId = 'first-installation-id';
          const secondInstallationId = 'second-installation-id';
          issueOnNextRegister(firstInstallationId);
          await unit.onTransition(authBloc, signIn);
          await unit.stopPushNotificationsToThisDevice();
          issueOnNextRegister(secondInstallationId);

          await unit.onTransition(authBloc, signIn);
          await pumpEventQueue();

          verify(
            () => functionsService.registerFirebaseInstallation(
              secondInstallationId,
            ),
          );
        },
      );

      test(
        'an installation id is sent once after signing in twice without signing out',
        () async {
          const installationId = 'installation-id';
          await unit.onTransition(authBloc, signIn);
          await unit.onTransition(authBloc, signIn);

          onRegistered.add(installationId);
          await pumpEventQueue();

          verify(
            () => functionsService.registerFirebaseInstallation(installationId),
          ).called(1);
        },
      );

      test(
        'nothing is registered without the notifications permission',
        () async {
          issueOnNextRegister('installation-id');
          denyNotificationsPermission();

          await unit.onTransition(authBloc, signIn);
          await pumpEventQueue();

          verifyNever(
            () => functionsService.registerFirebaseInstallation(any()),
          );
        },
      );

      test(
        'a server rejection does not stop later installation ids from registering',
        () async {
          const rejectedInstallationId = 'rejected-installation-id';
          const acceptedInstallationId = 'accepted-installation-id';
          when(
            () => functionsService.registerFirebaseInstallation(
              rejectedInstallationId,
            ),
          ).thenThrow(Exception('server rejected the installation id'));
          issueOnNextRegister(rejectedInstallationId);
          await unit.onTransition(authBloc, signIn);
          await pumpEventQueue();

          onRegistered.add(acceptedInstallationId);
          await pumpEventQueue();

          verify(
            () => functionsService.registerFirebaseInstallation(
              acceptedInstallationId,
            ),
          );
        },
      );

      test(
        'a sign-in waits for a pending stop before registering the device again',
        () async {
          final outcomes = <String>[];
          final unregistrationFinishes = Completer<void>();
          when(() => firebaseMessaging.unregister()).thenAnswer((_) async {
            await unregistrationFinishes.future;
            outcomes.add('unregistered');
          });
          when(() => firebaseMessaging.register()).thenAnswer((_) async {
            outcomes.add('registered');
          });

          final stopping = unit.stopPushNotificationsToThisDevice();
          await pumpEventQueue();
          final signingIn = unit.onTransition(authBloc, signIn);
          await pumpEventQueue();
          unregistrationFinishes.complete();
          await Future.wait([stopping, signingIn]);

          expect(outcomes, ['unregistered', 'registered']);
        },
      );
    });

    group('stopping', () {
      Completer<void> holdTheNextPermissionPrompt() {
        final promptAnswered = Completer<void>();
        when(() => permissionHandler.requestPermissions(any())).thenAnswer((
          _,
        ) async {
          await promptAnswered.future;

          return {Permission.notification: PermissionStatus.granted};
        });

        return promptAnswered;
      }

      test(
        'signing out while a sign-in waits on the permission prompt leaves the device unregistered',
        () async {
          final promptAnswered = holdTheNextPermissionPrompt();
          final signingIn = unit.onTransition(authBloc, signIn);
          await pumpEventQueue();

          await unit.stopPushNotificationsToThisDevice();
          promptAnswered.complete();
          await signingIn;

          verifyNever(() => firebaseMessaging.register());
        },
      );

      test(
        'disposing while a sign-in waits on the permission prompt leaves the device unregistered',
        () async {
          final promptAnswered = holdTheNextPermissionPrompt();
          final signingIn = unit.onTransition(authBloc, signIn);
          await pumpEventQueue();

          await unit.dispose();
          promptAnswered.complete();
          await signingIn;

          verifyNever(() => firebaseMessaging.register());
        },
      );

      test(
        'a stop that never finishes stops holding back the next sign-in',
        () {
          fakeAsync((async) {
            var registered = false;
            when(
              () => firebaseMessaging.unregister(),
            ).thenAnswer((_) => Completer<void>().future);
            when(() => firebaseMessaging.register()).thenAnswer((_) async {
              registered = true;
            });
            unawaited(unit.stopPushNotificationsToThisDevice());
            async.flushMicrotasks();

            unawaited(unit.onTransition(authBloc, signIn));
            async.elapse(const Duration(seconds: 11));

            expect(registered, isTrue);
          });
        },
      );

      test(
        'a stop that outlives its time limit never unregisters the next session',
        () async {
          final stopTime = FakeAsync();
          final outcomes = <String>[];
          final deletionFinishes = Completer<void>();
          issueOnNextRegister('installation-id');
          await unit.onTransition(authBloc, signIn);
          await pumpEventQueue();
          when(
            () => fcmTokens.deleteByUidAndToken(
              uid: any(named: 'uid'),
              token: any(named: 'token'),
            ),
          ).thenAnswer((_) => deletionFinishes.future);
          when(() => firebaseMessaging.unregister()).thenAnswer((_) async {
            outcomes.add('unregistered');
          });
          when(() => firebaseMessaging.register()).thenAnswer((_) async {
            outcomes.add('registered');
          });
          stopTime.run(
            (_) => unawaited(unit.stopPushNotificationsToThisDevice()),
          );
          await drainRealAndFakeMicrotasks(stopTime);
          stopTime.elapse(const Duration(seconds: 6));
          unawaited(unit.onTransition(authBloc, signIn));
          await drainRealAndFakeMicrotasks(stopTime);

          deletionFinishes.complete();
          await drainRealAndFakeMicrotasks(stopTime);

          expect(outcomes, ['registered']);
        },
      );

      test(
        'an unregistration still running at the time limit finishes before the next registration',
        () async {
          final stopTime = FakeAsync();
          final outcomes = <String>[];
          final unregistrationFinishes = Completer<void>();
          when(() => firebaseMessaging.unregister()).thenAnswer((_) async {
            await unregistrationFinishes.future;
            outcomes.add('unregistered');
          });
          when(() => firebaseMessaging.register()).thenAnswer((_) async {
            outcomes.add('registered');
          });
          stopTime.run(
            (_) => unawaited(unit.stopPushNotificationsToThisDevice()),
          );
          await drainRealAndFakeMicrotasks(stopTime);
          stopTime.elapse(const Duration(seconds: 6));
          unawaited(unit.onTransition(authBloc, signIn));
          await drainRealAndFakeMicrotasks(stopTime);

          unregistrationFinishes.complete();
          await drainRealAndFakeMicrotasks(stopTime);

          expect(outcomes, ['unregistered', 'registered']);
        },
      );

      test(
        'a stop that outlives its time limit leaves the next session registration for the next stop to wait on',
        () async {
          final stopTime = FakeAsync();
          final backendOutcomes = <String>[];
          final registrationFinishes = {
            'first-installation-id': Completer<void>(),
            'second-installation-id': Completer<void>(),
          };
          when(
            () => functionsService.registerFirebaseInstallation(any()),
          ).thenAnswer((invocation) async {
            final installationId =
                invocation.positionalArguments.single as String;
            await registrationFinishes[installationId]?.future;
            backendOutcomes.add('registered $installationId');
          });
          when(
            () => fcmTokens.deleteByUidAndToken(
              uid: any(named: 'uid'),
              token: any(named: 'token'),
            ),
          ).thenAnswer((invocation) async {
            backendOutcomes.add('deleted ${invocation.namedArguments[#token]}');
          });
          issueOnNextRegister('first-installation-id');
          await unit.onTransition(authBloc, signIn);
          await pumpEventQueue();
          stopTime.run(
            (_) => unawaited(unit.stopPushNotificationsToThisDevice()),
          );
          await drainRealAndFakeMicrotasks(stopTime);
          stopTime.elapse(const Duration(seconds: 6));
          issueOnNextRegister('second-installation-id');
          unawaited(unit.onTransition(authBloc, signIn));
          await drainRealAndFakeMicrotasks(stopTime);
          registrationFinishes['first-installation-id']?.complete();
          await drainRealAndFakeMicrotasks(stopTime);

          final secondStop = unit.stopPushNotificationsToThisDevice();
          await drainRealAndFakeMicrotasks(stopTime);
          registrationFinishes['second-installation-id']?.complete();
          await drainRealAndFakeMicrotasks(stopTime);
          await secondStop;

          expect(backendOutcomes, [
            'registered first-installation-id',
            'deleted first-installation-id',
            'registered second-installation-id',
            'deleted second-installation-id',
          ]);
        },
      );

      test('signing out deletes this device installation id row', () async {
        const installationId = 'installation-id';
        issueOnNextRegister(installationId);
        await unit.onTransition(authBloc, signIn);

        await unit.stopPushNotificationsToThisDevice();

        verify(
          () => fcmTokens.deleteByUidAndToken(
            uid: hasuraUserId,
            token: installationId,
          ),
        );
      });

      test('signing out unregisters this device', () async {
        await unit.onTransition(authBloc, signIn);

        await unit.stopPushNotificationsToThisDevice();

        verify(() => firebaseMessaging.unregister());
      });

      test(
        'signing out through the auth repository unregisters this device',
        () async {
          await unit.onTransition(authBloc, signIn);

          await authRepository.signOut();

          verify(() => firebaseMessaging.unregister());
        },
      );

      test(
        'signing out through the auth repository after disposing leaves this device registered',
        () async {
          await unit.onTransition(authBloc, signIn);
          await unit.dispose();

          await authRepository.signOut();

          verifyNever(() => firebaseMessaging.unregister());
        },
      );

      test('a failing row deletion still unregisters this device', () async {
        issueOnNextRegister('installation-id');
        when(
          () => fcmTokens.deleteByUidAndToken(
            uid: any(named: 'uid'),
            token: any(named: 'token'),
          ),
        ).thenThrow(Exception('offline'));
        await unit.onTransition(authBloc, signIn);

        await expectLater(unit.stopPushNotificationsToThisDevice(), completes);

        verify(() => firebaseMessaging.unregister());
      });

      test('a failing unregistration is contained', () async {
        when(() => firebaseMessaging.unregister()).thenThrow(Exception());
        await unit.onTransition(authBloc, signIn);

        await expectLater(unit.stopPushNotificationsToThisDevice(), completes);
      });

      test(
        'no row is deleted when no installation id was ever issued',
        () async {
          await unit.stopPushNotificationsToThisDevice();

          verifyNever(
            () => fcmTokens.deleteByUidAndToken(
              uid: any(named: 'uid'),
              token: any(named: 'token'),
            ),
          );
          verify(() => firebaseMessaging.unregister());
        },
      );

      test(
        'installation ids issued after signing out never reach the server',
        () async {
          const lateInstallationId = 'late-installation-id';
          await unit.onTransition(authBloc, signIn);
          await unit.stopPushNotificationsToThisDevice();

          onRegistered.add(lateInstallationId);
          await pumpEventQueue();

          verifyNever(
            () => functionsService.registerFirebaseInstallation(
              lateInstallationId,
            ),
          );
        },
      );

      test(
        'a registration still pending when signing out finishes before the row is deleted',
        () async {
          const installationId = 'installation-id';
          final backendOutcomes = <String>[];
          final registrationFinishes = Completer<void>();
          when(
            () => functionsService.registerFirebaseInstallation(any()),
          ).thenAnswer((_) async {
            await registrationFinishes.future;
            backendOutcomes.add('registered $installationId');
          });
          when(
            () => fcmTokens.deleteByUidAndToken(
              uid: any(named: 'uid'),
              token: any(named: 'token'),
            ),
          ).thenAnswer((invocation) async {
            backendOutcomes.add('deleted ${invocation.namedArguments[#token]}');
          });
          issueOnNextRegister(installationId);
          await unit.onTransition(authBloc, signIn);

          final stopping = unit.stopPushNotificationsToThisDevice();
          await pumpEventQueue();
          registrationFinishes.complete();
          await stopping;

          expect(backendOutcomes, [
            'registered $installationId',
            'deleted $installationId',
          ]);
        },
      );

      test(
        'every registration still pending when signing out finishes before the row is deleted',
        () async {
          const earlierInstallationId = 'earlier-installation-id';
          const laterInstallationId = 'later-installation-id';
          final backendOutcomes = <String>[];
          final registrationFinishes = {
            earlierInstallationId: Completer<void>(),
            laterInstallationId: Completer<void>(),
          };
          when(
            () => functionsService.registerFirebaseInstallation(any()),
          ).thenAnswer((invocation) async {
            final installationId =
                invocation.positionalArguments.single as String;
            await registrationFinishes[installationId]?.future;
            backendOutcomes.add('registered $installationId');
          });
          when(
            () => fcmTokens.deleteByUidAndToken(
              uid: any(named: 'uid'),
              token: any(named: 'token'),
            ),
          ).thenAnswer((invocation) async {
            backendOutcomes.add('deleted ${invocation.namedArguments[#token]}');
          });
          await unit.onTransition(authBloc, signIn);
          onRegistered
            ..add(earlierInstallationId)
            ..add(laterInstallationId);
          await pumpEventQueue();

          final stopping = unit.stopPushNotificationsToThisDevice();
          registrationFinishes[laterInstallationId]?.complete();
          await pumpEventQueue();
          registrationFinishes[earlierInstallationId]?.complete();
          await stopping;

          expect(backendOutcomes, [
            'registered $laterInstallationId',
            'registered $earlierInstallationId',
            'deleted $laterInstallationId',
          ]);
        },
      );
    });
  });
}
