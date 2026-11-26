import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
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

class _MockNotificationsStorage extends Mock implements NotificationsStorage {}

class _AcceptingNotificationsSettingsStorage extends Fake
    implements NotificationsSettingsStorage {
  @override
  Future<void> setBirthDayTime(NotificationSetting setting) async {}

  @override
  Future<void> setKodasTime(NotificationSetting setting) async {}

  @override
  Future<void> setAttendanceTime(NotificationSetting setting) async {}

  @override
  Future<void> setConfessionTime(NotificationSetting setting) async {}
}

class PushRegistrationFixture {
  final MockFirebaseMessaging firebaseMessaging = MockFirebaseMessaging();
  final MockFunctionsService functionsService = MockFunctionsService();
  final MockPermissionHandlerPlatform permissionHandler =
      MockPermissionHandlerPlatform();
  final FakeSignedInAuthRepository authRepository = FakeSignedInAuthRepository(
    isSignedIn: true,
  );
  final List<StreamController<String>> _onRegisteredControllers = [];

  PushRegistrationFixture() {
    when(firebaseMessaging.isSupported).thenAnswer((_) async => true);
    when(
      () => firebaseMessaging.onRegistered,
    ).thenAnswer((_) => _openOnRegistered());
    when(firebaseMessaging.register).thenAnswer((_) async {});
    when(firebaseMessaging.unregister).thenAnswer((_) async {});
    whenRegisteringWithServer().thenAnswer((_) async {});
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
      settings: _AcceptingNotificationsSettingsStorage(),
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

  void failIssuingAnInstallationId(Object error) =>
      _onRegisteredControllers.lastOrNull?.addError(error);

  When<Future<void>> whenRegisteringWithServer() =>
      when(() => functionsService.registerFirebaseInstallation(any()));

  When<Future<Map<Permission, PermissionStatus>>> whenRequestingPermissions() =>
      when(() => permissionHandler.requestPermissions(any()));

  Future<void> dispose() => Future.wait([
    for (final controller in _onRegisteredControllers) controller.close(),
  ]);
}
