import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:permission_handler_platform_interface/permission_handler_platform_interface.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import '../../../fakes/fake_logging_service.dart';
import '../../../fakes/recording_analytics_provider.dart';

class _MockPermissionHandlerPlatform extends Mock
    with MockPlatformInterfaceMixin
    implements PermissionHandlerPlatform {}

class _MockFirebaseMessaging extends Mock implements FirebaseMessaging {}

class _MockNotificationSettings extends Mock implements NotificationSettings {}

class _MockLocalNotificationsPlugin extends Mock
    implements FlutterLocalNotificationsPlugin {}

class _MockAuthBloc extends Mock implements AuthBloc {}

class _MockDatabaseService extends Mock implements DatabaseService {}

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
    late _MockAuthBloc authBloc;
    late _MockFcmTokensDAO fcmTokens;
    late _MockFunctionsService functionsService;
    late FakeLoggingService logging;
    late StreamController<String> onRegistered;
    late List<String> installationIdsIssuedOnRegister;
    late NotificationsService unit;

    void denyNotificationsPermission() {
      when(() => permissionHandler.requestPermissions(any())).thenAnswer(
        (_) async => {Permission.notification: PermissionStatus.denied},
      );
    }

    setUpAll(() => registerFallbackValue(<Permission>[]));

    setUp(() {
      logging = FakeLoggingService();
      initGlobalProviderContainer([
        loggingServiceProvider.overrideWithValue(logging),
      ]);
      addTearDown(resetGlobalProviderContainer);

      permissionHandler = _MockPermissionHandlerPlatform();
      firebaseMessaging = _MockFirebaseMessaging();
      authBloc = _MockAuthBloc();
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

      installationIdsIssuedOnRegister = ['installation-id'];
      when(
        () => firebaseMessaging.requestPermission(),
      ).thenAnswer((_) async => fcmSettings);
      when(firebaseMessaging.isSupported).thenAnswer((_) async => true);
      when(() => firebaseMessaging.onRegistered).thenAnswer(
        (_) => onRegistered.stream,
      );
      when(() => firebaseMessaging.register()).thenAnswer((_) async {
        onRegistered.add(installationIdsIssuedOnRegister.removeAt(0));
      });
      when(() => firebaseMessaging.unregister()).thenAnswer((_) async {});

      when(() => authBloc.isSignedIn).thenReturn(false);
      when(() => authBloc.currentUserData).thenReturn(null);
      when(() => authBloc.currentUser).thenReturn(signedInUser);

      when(
        () => functionsService.registerFirebaseInstallation(any()),
      ).thenAnswer((_) async {});

      final databaseService = _MockDatabaseService();
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
        analyticsService: AnalyticsService(
          [RecordingAnalyticsProvider()],
          logging,
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
          final installationId = installationIdsIssuedOnRegister.single;

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
          final installationId = installationIdsIssuedOnRegister.single;

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
          const secondInstallationId = 'second-installation-id';
          installationIdsIssuedOnRegister.add(secondInstallationId);
          await unit.onTransition(authBloc, signIn);
          await unit.stopPushNotificationsToThisDevice();

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
        'nothing is registered without the notifications permission',
        () async {
          denyNotificationsPermission();

          await unit.onTransition(authBloc, signIn);
          await pumpEventQueue();

          verifyNever(
            () => functionsService.registerFirebaseInstallation(any()),
          );
        },
      );

      test(
        'a failure registering with the server is reported and contained',
        () async {
          final failure = Exception('server rejected the installation id');
          when(
            () => functionsService.registerFirebaseInstallation(any()),
          ).thenThrow(failure);

          await unit.onTransition(authBloc, signIn);
          await pumpEventQueue();

          expect(logging.reportedWarnings.single.error, failure);
        },
      );
    });

    group('stopping', () {
      test('signing out deletes this device installation id row', () async {
        final installationId = installationIdsIssuedOnRegister.single;
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

      test('a failing row deletion still unregisters this device', () async {
        final failure = Exception('offline');
        when(
          () => fcmTokens.deleteByUidAndToken(
            uid: any(named: 'uid'),
            token: any(named: 'token'),
          ),
        ).thenThrow(failure);
        await unit.onTransition(authBloc, signIn);

        await expectLater(unit.stopPushNotificationsToThisDevice(), completes);

        verify(() => firebaseMessaging.unregister());
        expect(logging.reportedWarnings.single.error, failure);
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
        'installation ids issued after signing out stay unregistered',
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
    });
  });
}
