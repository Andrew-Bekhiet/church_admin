import 'dart:async';

import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';
import 'package:church_admin/church_admin.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart' hide Notification;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:rxdart/rxdart.dart' hide Notification;

class NotificationsService extends BlocObserver {
  static NotificationsService get I =>
      globalProviderContainer.read(notificationsServiceProvider);

  static const String localNotificationSenderUID =
      'LOCAL_NOTIFICATION_SENDER_UID';

  static const NotificationDetails defaultRemoteNotificationsDetails =
      NotificationDetails(
        android: AndroidNotificationDetails(
          'Others',
          'أخرى',
          importance: Importance.max,
          priority: Priority.high,
        ),
        iOS: DarwinNotificationDetails(
          presentAlert: true,
          presentBadge: true,
          presentSound: true,
          presentList: true,
          interruptionLevel: InterruptionLevel.active,
        ),
      );

  static Future<NotificationDetails> notificationsDetailsFor(
    Notification notification,
  ) async {
    if (notification.imageURL != null) {
      final photo = await globalProviderContainer
          .read(baseCacheManagerProvider)
          .getSingleFile(notification.imageURL!);

      final defaultAndroidNotificationDetails =
          defaultRemoteNotificationsDetails.android!;
      final defaultIOSNotificationDetails =
          defaultRemoteNotificationsDetails.iOS!;

      return NotificationDetails(
        android: AndroidNotificationDetails(
          defaultAndroidNotificationDetails.channelId,
          defaultAndroidNotificationDetails.channelName,
          importance: defaultAndroidNotificationDetails.importance,
          priority: defaultAndroidNotificationDetails.priority,
          styleInformation: BigPictureStyleInformation(
            FilePathAndroidBitmap(photo.path),
          ),
        ),
        iOS: DarwinNotificationDetails(
          presentAlert: defaultIOSNotificationDetails.presentAlert,
          presentBadge: defaultIOSNotificationDetails.presentBadge,
          presentSound: defaultIOSNotificationDetails.presentSound,
          presentList: defaultIOSNotificationDetails.presentList,
          interruptionLevel: defaultIOSNotificationDetails.interruptionLevel,
          attachments: [
            DarwinNotificationAttachment(photo.path),
          ],
        ),
      );
    }

    return defaultRemoteNotificationsDetails;
  }

  NotificationsService({
    required FirebaseMessaging firebaseMessaging,
    required FlutterLocalNotificationsPlugin localNotificationsPlugin,
    required Stream<RemoteMessage> onForegroundMessageStream,
    required Stream<RemoteMessage> onMessageOpenedAppStream,
    required AuthBloc authBloc,
    UserSettingsService? userSettingsService,
    FunctionsService? functionsService,
    NotificationsStorage? storage,
    NotificationsSettingsStorage? settings,
  }) : _storage = storage ?? NotificationsStorage.I,
       _settings = settings ?? NotificationsSettingsStorage.I,
       _firebaseMessaging = firebaseMessaging,
       _localNotificationsPlugin = localNotificationsPlugin,
       _authBloc = authBloc,
       _userSettingsService = userSettingsService ?? UserSettingsService.I,
       _functionsService = functionsService ?? FunctionsService.I {
    //
    _onForegroundMessageSubscription = onForegroundMessageStream
        .map(Notification.fromRemoteMessage)
        .doOnData(_storage.writeNotification)
        .listen(_onForegroundMessage);

    _onMessageOpenedAppSubscription = onMessageOpenedAppStream
        .map(Notification.fromRemoteMessage)
        .listen(addForegroundNotificationTap);
  }

  final NotificationsSettingsStorage _settings;
  final NotificationsStorage _storage;
  final FirebaseMessaging _firebaseMessaging;
  final FlutterLocalNotificationsPlugin _localNotificationsPlugin;

  final AuthBloc _authBloc;
  final UserSettingsService _userSettingsService;
  final FunctionsService _functionsService;

  final BehaviorSubject<bool> _isPausedSubject = BehaviorSubject.seeded(true);

  final BehaviorSubject<Notification> _foregroundNotificationsStreamController =
      BehaviorSubject();

  late final StreamSubscription<Notification> _onMessageOpenedAppSubscription;
  late final StreamSubscription<Notification> _onForegroundMessageSubscription;
  StreamSubscription<String?>? _onFCMTokenRefresh;

  bool get isPaused => _isPausedSubject.value;

  late final Stream<Notification> onNotificationTapStream =
      getInitialNotification()
          .asStream()
          .switchMap(
            (initial) async* {
              if (initial != null) yield initial;

              yield* _foregroundNotificationsStreamController.stream;
            },
          )
          .delayWhen(
            (_) => _isPausedSubject.where((isPaused) => !isPaused),
          )
          .asBroadcastStream();

  Future<void> _onForegroundMessage(Notification notification) async {
    await notify(
      notification,
      notificationDetails: await notificationsDetailsFor(notification),
    );
  }

  void addForegroundNotificationTap(Notification notification) {
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

    final notificationResponse =
        (await _localNotificationsPlugin.getNotificationAppLaunchDetails())
            ?.notificationResponse;
    final localNotificationId = notificationResponse?.payload;

    if (localNotificationId == null) return null;

    return _storage.readNotification(localNotificationId);
  }

  Future<void> scheduleBirthDayNotification([
    NotificationSetting? notificationSetting,
  ]) {
    return _scheduleNotification(
      code: 'BirthDay'.hashCode,
      callback: NotificationsServiceCallbacks.showBirthDayNotification,
      settingsCallback: _settings.setBirthDayTime,
      notificationSetting:
          notificationSetting ??
          const NotificationSetting(hours: 11, minutes: 0, intervalInDays: 1),
    );
  }

  Future<void> scheduleAttendanceNotification([
    NotificationSetting? notificationSetting,
  ]) {
    return _scheduleNotification(
      code: 'Attendance'.hashCode,
      callback: NotificationsServiceCallbacks.showAttendanceNotification,
      settingsCallback: _settings.setAttendanceTime,
      notificationSetting:
          notificationSetting ??
          const NotificationSetting(hours: 11, minutes: 0, intervalInDays: 7),
    );
  }

  Future<void> scheduleKodasNotification([
    NotificationSetting? notificationSetting,
  ]) {
    return _scheduleNotification(
      code: 'Kodas'.hashCode,
      callback: NotificationsServiceCallbacks.showKodasNotification,
      settingsCallback: _settings.setKodasTime,
      notificationSetting:
          notificationSetting ??
          const NotificationSetting(hours: 11, minutes: 0, intervalInDays: 7),
    );
  }

  Future<void> scheduleConfessionNotification([
    NotificationSetting? notificationSetting,
  ]) {
    return _scheduleNotification(
      code: 'Confession'.hashCode,
      callback: NotificationsServiceCallbacks.showConfessionNotification,
      settingsCallback: _settings.setConfessionTime,
      notificationSetting:
          notificationSetting ??
          const NotificationSetting(hours: 11, minutes: 0, intervalInDays: 7),
    );
  }

  Future<void> _scheduleNotification({
    required int code,
    required VoidCallback callback,
    required Future<void> Function(NotificationSetting) settingsCallback,
    required NotificationSetting notificationSetting,
  }) async {
    if (!CurrentPlatformService.I.isAndroid) return;

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
    await scheduleAttendanceNotification();
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
    if (!_authBloc.isSignedIn || !await _firebaseMessaging.isSupported()) {
      return false;
    }

    final permissionGranted = await requestNotificationsPermission();

    if (!permissionGranted) {
      return false;
    }

    final token = cachedToken ?? await _firebaseMessaging.getToken();

    if (token == null || _userSettingsService.registeredFCMToken == token) {
      return false;
    }

    await _functionsService.registerFCMToken(token);
    await _userSettingsService.setRegisteredFCMToken(token);

    _onFCMTokenRefresh ??= _firebaseMessaging.onTokenRefresh
        .delayWhen((_) => _isPausedSubject.where((isPaused) => !isPaused))
        .listen(
          (t) => registerFCMTokenAndListenForChanges(cachedToken: t),
        );

    return true;
  }

  Future<bool> requestNotificationsPermission() async {
    final notificationPermissionStatus = await Permission.notification
        .request();
    if (notificationPermissionStatus == PermissionStatus.granted ||
        notificationPermissionStatus == PermissionStatus.limited) {
      final fcmPermission = await _firebaseMessaging.requestPermission();

      return fcmPermission.authorizationStatus ==
              AuthorizationStatus.authorized ||
          fcmPermission.authorizationStatus == AuthorizationStatus.provisional;
    }
    return false;
  }

  @override
  Future<void> onTransition(Bloc bloc, Transition transition) async {
    super.onTransition(bloc, transition);

    if (bloc is! AuthBloc || transition is! Transition<AuthEvent, AuthState>) {
      return;
    }

    final nextState = transition.nextState.unwrapped;
    final currentState = transition.currentState.unwrapped;

    if (currentState is! AuthAuthenticated &&
        nextState is AuthAuthenticated &&
        await requestNotificationsPermission()) {
      if (currentState is! AuthInitial) {
        await scheduleDefaultNotifications();
      }

      await registerFCMTokenAndListenForChanges();
    }
  }

  Future<void> dispose() async {
    await _isPausedSubject.close();
    await _onMessageOpenedAppSubscription.cancel();
    await _onForegroundMessageSubscription.cancel();
    await _onFCMTokenRefresh?.cancel();
  }
}
