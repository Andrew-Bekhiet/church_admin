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

class _MockNotificationsStorage extends Mock implements NotificationsStorage {}

class _MockNotificationsSettingsStorage extends Mock
    implements NotificationsSettingsStorage {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('NotificationsService analytics', () {
    const signIn = Transition<AuthEvent, AuthState>(
      currentState: AuthInitial(),
      event: ListenToSubscriptions(),
      nextState: AuthAuthenticated(
        authUser: AuthUser(
          uid: 'uid',
          email: 'email',
          emailVerified: true,
          idToken: 'idToken',
        ),
      ),
    );

    late RecordingAnalyticsProvider analytics;
    late _MockPermissionHandlerPlatform permissionHandler;
    late _MockFirebaseMessaging firebaseMessaging;
    late _MockAuthBloc authBloc;
    late NotificationsService unit;

    setUpAll(() => registerFallbackValue(<Permission>[]));

    setUp(() {
      analytics = RecordingAnalyticsProvider();
      permissionHandler = _MockPermissionHandlerPlatform();
      firebaseMessaging = _MockFirebaseMessaging();
      authBloc = _MockAuthBloc();

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
      // The service registers FCM tokens, as NotificationsService explains
      // ignore: deprecated_member_use
      when(firebaseMessaging.getToken).thenAnswer((_) async => null);

      when(() => authBloc.isSignedIn).thenReturn(true);

      unit = NotificationsService(
        firebaseMessaging: firebaseMessaging,
        localNotificationsPlugin: _MockLocalNotificationsPlugin(),
        onForegroundMessageStream: const Stream.empty(),
        onMessageOpenedAppStream: const Stream.empty(),
        authBloc: authBloc,
        analyticsService: AnalyticsService([analytics], FakeLoggingService()),
        databaseService: _MockDatabaseService(),
        storage: _MockNotificationsStorage(),
        settings: _MockNotificationsSettingsStorage(),
      );
      addTearDown(unit.dispose);
    });

    test('signing in tracks one notification permission request', () async {
      await unit.onTransition(authBloc, signIn);

      expect(analytics.trackedEvents, [isA<NotificationPermissionRequest>()]);
    });

    test(
      'the permission request is tracked with the status before prompting',
      () async {
        await unit.onTransition(authBloc, signIn);

        expect(
          analytics.trackedEventsOf<NotificationPermissionRequest>().single,
          isA<NotificationPermissionRequest>()
              .having(
                (event) => event.previousPermissionStatus,
                'previousPermissionStatus',
                PermissionStatus.denied,
              )
              .having((event) => event.isGranted, 'isGranted', true),
        );
      },
    );
  });
}
