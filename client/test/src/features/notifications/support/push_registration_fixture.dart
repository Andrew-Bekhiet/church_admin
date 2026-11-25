import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:mocktail/mocktail.dart';
import 'package:permission_handler_platform_interface/permission_handler_platform_interface.dart';

import '../../../fakes/fake_logging_service.dart';
import '../../../fakes/fake_sign_out_auth_repository.dart';
import '../../../fakes/mock_fcm_tokens_dao.dart';
import '../../../fakes/mock_firebase_messaging.dart';
import '../../../fakes/mock_functions_service.dart';
import '../../../fakes/mock_permission_handler_platform.dart';
import '../../../fakes/recording_analytics_provider.dart';

class _MockNotificationSettings extends Mock implements NotificationSettings {}

class _MockLocalNotificationsPlugin extends Mock
    implements FlutterLocalNotificationsPlugin {}

class _MockNotificationsStorage extends Mock implements NotificationsStorage {}

class _MockNotificationsSettingsStorage extends Mock
    implements NotificationsSettingsStorage {}

class PushRegistrationFixture {
  final MockFirebaseMessaging firebaseMessaging = MockFirebaseMessaging();
  final MockFunctionsService functionsService = MockFunctionsService();
  final MockFcmTokensDAO fcmTokens = MockFcmTokensDAO();
  final MockPermissionHandlerPlatform permissionHandler =
      MockPermissionHandlerPlatform();
  final FakeSignOutAuthRepository authRepository = FakeSignOutAuthRepository();
  final List<StreamController<String>> _onRegisteredControllers = [];
  String? currentUid;

  PushRegistrationFixture() {
    when(firebaseMessaging.isSupported).thenAnswer((_) async => true);
    when(
      () => firebaseMessaging.onRegistered,
    ).thenAnswer((_) => _openOnRegistered());
    when(firebaseMessaging.register).thenAnswer((_) async {});
    when(firebaseMessaging.unregister).thenAnswer((_) async {});
    whenRegisteringWithServer().thenAnswer((_) async {});
    whenDeletingARow().thenAnswer((_) async {});
  }

  Stream<String> _openOnRegistered() {
    _onRegisteredControllers.add(
      StreamController<String>(onCancel: Future<void>.value),
    );

    return _onRegisteredControllers.last.stream;
  }

  ThisDevicePushRegistration buildRegistration() => ThisDevicePushRegistration(
    firebaseMessaging: firebaseMessaging,
    functionsService: functionsService,
    fcmTokens: fcmTokens,
    readCurrentUid: () => currentUid,
  );

  NotificationsService buildNotificationsService(
    ThisDevicePushRegistration registration,
  ) {
    _grantNotificationsPermission();

    return NotificationsService(
      firebaseMessaging: firebaseMessaging,
      localNotificationsPlugin: _MockLocalNotificationsPlugin(),
      onForegroundMessageStream: const Stream.empty(),
      onMessageOpenedAppStream: const Stream.empty(),
      authRepository: authRepository,
      analyticsService: AnalyticsService(
        [RecordingAnalyticsProvider()],
        FakeLoggingService(),
      ),
      thisDevicePushRegistration: registration,
      storage: _MockNotificationsStorage(),
      settings: _MockNotificationsSettingsStorage(),
    );
  }

  void _grantNotificationsPermission() {
    final fcmSettings = _MockNotificationSettings();
    when(
      () => fcmSettings.authorizationStatus,
    ).thenReturn(AuthorizationStatus.authorized);
    when(firebaseMessaging.requestPermission)
        .thenAnswer((_) async => fcmSettings);
    when(
      () => permissionHandler.checkPermissionStatus(Permission.notification),
    ).thenAnswer((_) async => PermissionStatus.denied);
    whenRequestingPermissions().thenAnswer(
      (_) async => {Permission.notification: PermissionStatus.granted},
    );
    PermissionHandlerPlatform.instance = permissionHandler;
  }

  Completer<void> holdTheNextPermissionPrompt() {
    final promptAnswered = Completer<void>();
    whenRequestingPermissions().thenAnswer((_) async {
      await promptAnswered.future;

      return {Permission.notification: PermissionStatus.granted};
    });

    return promptAnswered;
  }

  void issueOnNextRegister(String installationId) {
    when(firebaseMessaging.register).thenAnswer((_) async {
      issueInstallationId(installationId);
    });
  }

  void issueInstallationId(String installationId) =>
      _onRegisteredControllers.lastOrNull?.add(installationId);

  void recordFirebaseOutcomesIn(List<String> outcomes) {
    when(firebaseMessaging.unregister).thenAnswer((_) async {
      outcomes.add('unregistered');
    });
    when(firebaseMessaging.register).thenAnswer((_) async {
      outcomes.add('registered');
    });
  }

  When<Future<void>> whenRegisteringWithServer() =>
      when(() => functionsService.registerFirebaseInstallation(any()));

  When<Future<void>> whenDeletingARow() => when(
    () => fcmTokens.deleteByUidAndToken(
      uid: any(named: 'uid'),
      token: any(named: 'token'),
    ),
  );

  When<Future<Map<Permission, PermissionStatus>>> whenRequestingPermissions() =>
      when(() => permissionHandler.requestPermissions(any()));

  Future<void> dispose() => Future.wait([
    for (final controller in _onRegisteredControllers) controller.close(),
  ]);
}
