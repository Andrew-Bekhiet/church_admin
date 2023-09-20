import 'dart:async';

import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';
import 'package:church_admin/church_admin.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart' hide Notification;
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:rxdart/rxdart.dart' hide Notification;

import 'notifications_storage.dart';

class NotificationsService {
  static NotificationsService get I =>
      globalProviderContainer.read(notificationsServiceProvider);

  static const String localNotificationSenderUID =
      'LOCAL_NOTIFICATION_SENDER_UID';

  @pragma('vm:entry-point')
  static Future<void> onBackgroundMessageReceived(RemoteMessage message) async {
    await InitializationService.I.initialize();

    final notification = Notification.fromRemoteMessage(message);

    await NotificationsStorage.I.writeNotification(notification);

    if (notification.type == NotificationType.manualPushRemote) {
      await NotificationsService.I.notify(
        notification,
        notificationDetails: const NotificationDetails(
          android: AndroidNotificationDetails(
            'Others',
            'Others',
            category: AndroidNotificationCategory.social,
          ),
        ),
      );
    }
  }

  NotificationsService({
    required FirebaseMessaging firebaseMessaging,
    required FlutterLocalNotificationsPlugin localNotificationsPlugin,
    required Stream<RemoteMessage> onForegroundMessageStream,
    required Stream<RemoteMessage> onMessageOpenedAppStream,
    AuthService Function()? getAuthService,
    UserSettingsService? userSettingsService,
    FunctionsService? functionsService,
    NotificationsStorage? storage,
    NotificationsSettingsStorage? settings,
  })  : _storage = storage ?? NotificationsStorage.I,
        _settings = settings ?? NotificationsSettingsStorage.I,
        _firebaseMessaging = firebaseMessaging,
        _localNotificationsPlugin = localNotificationsPlugin,
        _getAuthService = getAuthService ?? (() => AuthService.I),
        _userSettingsService = userSettingsService ?? UserSettingsService.I,
        _functionsService = functionsService ?? FunctionsService.I {
    //
    _onForegroundMessageSubscription = onForegroundMessageStream
        .map(Notification.fromRemoteMessage)
        .doOnData(_storage.writeNotification)
        .listen(addForegroundNotification);

    _onMessageOpenedAppSubscription = onMessageOpenedAppStream
        .map(Notification.fromRemoteMessage)
        .listen(addForegroundNotification);
  }

  final NotificationsSettingsStorage _settings;
  final NotificationsStorage _storage;
  final FirebaseMessaging _firebaseMessaging;
  final FlutterLocalNotificationsPlugin _localNotificationsPlugin;

  final AuthService Function() _getAuthService;
  final UserSettingsService _userSettingsService;
  final FunctionsService _functionsService;

  final BehaviorSubject<bool> _isPausedSubject = BehaviorSubject.seeded(true);

  final BehaviorSubject<Notification> _foregroundNotificationsStreamController =
      BehaviorSubject();

  late final StreamSubscription<Notification> _onMessageOpenedAppSubscription;
  late final StreamSubscription<Notification> _onForegroundMessageSubscription;
  StreamSubscription<String?>? _onFCMTokenRefresh;

  bool get isPaused => _isPausedSubject.value;

  Stream<Notification> get foregroundNotificationsStream =>
      _foregroundNotificationsStreamController.stream.delayWhen(
        (_) => _isPausedSubject.where((isPaused) => !isPaused),
      );

  void addForegroundNotification(Notification notification) {
    _foregroundNotificationsStreamController.add(notification);
  }

  void pauseListeners() {
    _isPausedSubject.add(true);
  }

  void resumeListeners() {
    _isPausedSubject.add(false);
  }

  Future<Notification?> getInitialNotification() async {
    final remoteMessage = await _firebaseMessaging.getInitialMessage();

    if (remoteMessage != null) {
      return Notification.fromRemoteMessage(remoteMessage);
    }

    final localNotificationId =
        (await _localNotificationsPlugin.getNotificationAppLaunchDetails())
            ?.notificationResponse
            ?.payload;

    if (localNotificationId == null) return null;

    return _storage.readNotification(localNotificationId);
  }

  Future<void> scheduleBirthDayNotification([
    NotificationSetting notificationSetting =
        const NotificationSetting(11, 0, 1),
  ]) {
    return _scheduleNotification(
      code: 'BirthDay'.hashCode,
      callback: NotificationsServiceCallbacks.showBirthDayNotification,
      settingsCallback: _settings.setBirthDayTime,
      notificationSetting: notificationSetting,
    );
  }

  Future<void> scheduleMeetingNotification([
    NotificationSetting notificationSetting =
        const NotificationSetting(11, 0, 7),
  ]) {
    return _scheduleNotification(
      code: 'Meeting'.hashCode,
      callback: NotificationsServiceCallbacks.showMeetingNotification,
      settingsCallback: _settings.setMeetingTime,
      notificationSetting: notificationSetting,
    );
  }

  Future<void> scheduleKodasNotification([
    NotificationSetting notificationSetting =
        const NotificationSetting(11, 0, 7),
  ]) {
    return _scheduleNotification(
      code: 'Kodas'.hashCode,
      callback: NotificationsServiceCallbacks.showKodasNotification,
      settingsCallback: _settings.setKodasTime,
      notificationSetting: notificationSetting,
    );
  }

  Future<void> scheduleConfessionNotification([
    NotificationSetting notificationSetting =
        const NotificationSetting(11, 0, 7),
  ]) {
    return _scheduleNotification(
      code: 'Confession'.hashCode,
      callback: NotificationsServiceCallbacks.showConfessionNotification,
      settingsCallback: _settings.setConfessionTime,
      notificationSetting: notificationSetting,
    );
  }

  Future<void> _scheduleNotification({
    required int code,
    required VoidCallback callback,
    required Future<void> Function(NotificationSetting) settingsCallback,
    NotificationSetting notificationSetting =
        const NotificationSetting(11, 0, 7),
  }) async {
    final permissionStatus = await Permission.scheduleExactAlarm.request();
    final exactAlarmPermission = permissionStatus.isGranted;

    await settingsCallback(notificationSetting);

    final startAt = DateTime.now().replaceTimeOfDay(
      TimeOfDay(
        hour: notificationSetting.hours,
        minute: notificationSetting.minutes,
      ),
    );

    await AndroidAlarmManager.periodic(
      Duration(days: notificationSetting.intervalInDays),
      code,
      callback,
      startAt: startAt,
      exact: exactAlarmPermission,
      allowWhileIdle: true,
      wakeup: true,
      rescheduleOnReboot: true,
    );
  }

  Future<void> scheduleDefaultNotifications() async {
    await scheduleBirthDayNotification();
    await scheduleKodasNotification();
    await scheduleMeetingNotification();
    await scheduleConfessionNotification();
  }

  Future<void> notify(
    Notification notification, {
    int? id,
    NotificationDetails? notificationDetails,
  }) async {
    await _localNotificationsPlugin.show(
      id ?? notification.hashCode,
      notification.title,
      notification.body,
      notificationDetails,
      payload: notification.id,
    );
  }

  Future<bool> registerFCMTokenAndListenForChanges({
    String? cachedToken,
  }) async {
    if (_getAuthService().isSignedIn &&
        await _firebaseMessaging.isSupported()) {
      final permissionGranted = await requestNotificationsPermission();

      if (permissionGranted) {
        final token = cachedToken ?? await _firebaseMessaging.getToken();

        if (token != null && _userSettingsService.registeredFCMToken != token) {
          await _functionsService.registerFCMToken(token);

          await _userSettingsService.setRegisteredFCMToken(token);

          _onFCMTokenRefresh ??= _firebaseMessaging.onTokenRefresh
              .delayWhen((_) => _isPausedSubject.where((isPaused) => !isPaused))
              .listen(
                (t) => registerFCMTokenAndListenForChanges(cachedToken: t),
              );

          return true;
        }
      }
    }
    return false;
  }

  Future<bool> requestNotificationsPermission() async {
    final notificationPermissionStatus =
        await Permission.notification.request();
    if (notificationPermissionStatus == PermissionStatus.granted ||
        notificationPermissionStatus == PermissionStatus.limited) {
      final fcmPermission = await _firebaseMessaging.requestPermission();

      return fcmPermission.authorizationStatus ==
              AuthorizationStatus.authorized ||
          fcmPermission.authorizationStatus == AuthorizationStatus.provisional;
    }
    return false;
  }

  Future<void> dispose() async {
    await _isPausedSubject.close();
    await _onMessageOpenedAppSubscription.cancel();
    await _onForegroundMessageSubscription.cancel();
    await _onFCMTokenRefresh?.cancel();
  }
}
