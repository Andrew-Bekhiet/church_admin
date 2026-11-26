import 'package:church_admin/church_admin.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:permission_handler_platform_interface/permission_handler_platform_interface.dart';

import '../../../fakes/fake_logging_service.dart';
import '../../../fakes/fake_signed_in_auth_repository.dart';
import '../../../fakes/mock_firebase_messaging.dart';
import '../../../fakes/mock_functions_service.dart';
import '../../../fakes/mock_permission_handler_platform.dart';
import '../../../fakes/recording_analytics_provider.dart';

class _MockNotificationSettings extends Mock implements NotificationSettings {}

class _MockLocalNotificationsPlugin extends Mock
    implements FlutterLocalNotificationsPlugin {}

class _MockAuthBloc extends Mock implements AuthBloc {}

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
    late MockPermissionHandlerPlatform permissionHandler;
    late MockFirebaseMessaging firebaseMessaging;
    late _MockAuthBloc authBloc;
    late NotificationsService unit;

    setUpAll(() => registerFallbackValue(<Permission>[]));

    setUp(() {
      analytics = RecordingAnalyticsProvider();
      permissionHandler = MockPermissionHandlerPlatform();
      firebaseMessaging = MockFirebaseMessaging();
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
      when(
        () => firebaseMessaging.onRegistered,
      ).thenAnswer((_) => const Stream.empty());
      when(() => firebaseMessaging.register()).thenAnswer((_) async {});

      when(() => authBloc.isSignedIn).thenReturn(true);

      unit = NotificationsService(
        firebaseMessaging: firebaseMessaging,
        localNotificationsPlugin: _MockLocalNotificationsPlugin(),
        onForegroundMessageStream: const Stream.empty(),
        onMessageOpenedAppStream: const Stream.empty(),
        authRepository: FakeSignedInAuthRepository(isSignedIn: true),
        analyticsService: AnalyticsService([analytics], FakeLoggingService()),
        thisDevicePushRegistration: ThisDevicePushRegistration(
          firebaseMessaging: firebaseMessaging,
          functionsService: MockFunctionsService(),
        ),
        storage: _MockNotificationsStorage(),
        settings: _MockNotificationsSettingsStorage(),
      );
      addTearDown(unit.dispose);
    });

    test(
      'the permission request is tracked with whether it was granted',
      () async {
        await unit.onTransition(authBloc, signIn);

        expect(
          analytics.trackedEventsOf<NotificationPermissionRequest>().single,
          isA<NotificationPermissionRequest>().having(
            (event) => event.isGranted,
            'isGranted',
            true,
          ),
        );
      },
    );
  });
}
