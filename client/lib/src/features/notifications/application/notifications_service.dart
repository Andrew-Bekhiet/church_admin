import 'dart:async';

import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';
import 'package:church_admin/church_admin.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:material_ui/material_ui.dart' hide Notification;
import 'package:permission_handler/permission_handler.dart';
import 'package:rxdart/rxdart.dart';

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

  final NotificationsSettingsStorage _settings;
  final NotificationsStorage _storage;
  final FirebaseMessaging _firebaseMessaging;
  final FlutterLocalNotificationsPlugin _localNotificationsPlugin;

  final AuthBloc _authBloc;
  final DatabaseService _databaseService;
  final FunctionsService _functionsService;
  final AnalyticsService _analyticsService;

  final BehaviorSubject<bool> _isPausedSubject = BehaviorSubject.seeded(true);

  final BehaviorSubject<Notification> _foregroundNotificationsStreamController =
      BehaviorSubject();

  late final StreamSubscription<Notification> _onMessageOpenedAppSubscription;
  late final StreamSubscription<Notification> _onForegroundMessageSubscription;
  StreamSubscription<String>? _installationRegistrationSubscription;
  String? _lastIssuedInstallationId;
  Future<void>? _latestInstallationRegistration;
  Future<void>? _latestStop;
  int _pushLifecycleGeneration = 0;

  late final Stream<Notification> onNotificationTapStream =
      getInitialNotification()
          .asStream()
          .switchMap(
            (initial) async* {
              if (initial != null) {
                _analyticsService.track(
                  NotificationOpen(
                    initial,
                    source: NotificationOpenSource.coldStart,
                  ),
                );
                yield initial;
              }

              yield* _foregroundNotificationsStreamController.stream;
            },
          )
          .delayWhen(
            (_) => _isPausedSubject.where((isPaused) => !isPaused),
          )
          .asBroadcastStream();

  bool get isPaused => _isPausedSubject.value;

  NotificationsService({
    required this._firebaseMessaging,
    required this._localNotificationsPlugin,
    required Stream<RemoteMessage> onForegroundMessageStream,
    required Stream<RemoteMessage> onMessageOpenedAppStream,
    required this._authBloc,
    required this._analyticsService,
    required this._functionsService,
    DatabaseService? databaseService,
    NotificationsStorage? storage,
    NotificationsSettingsStorage? settings,
  }) : _storage = storage ?? NotificationsStorage.I,
       _settings = settings ?? NotificationsSettingsStorage.I,
       _databaseService = databaseService ?? DatabaseService.I {
    //
    _onForegroundMessageSubscription = onForegroundMessageStream
        .map(Notification.fromRemoteMessage)
        .doOnData(_storage.writeNotification)
        .listen(_onForegroundMessage);

    _onMessageOpenedAppSubscription = onMessageOpenedAppStream
        .map(Notification.fromRemoteMessage)
        .doOnData(
          (notification) => _analyticsService.track(
            NotificationOpen(
              notification,
              source: NotificationOpenSource.fcmOpenedApp,
            ),
          ),
        )
        .listen(addForegroundNotificationTap);
  }

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
      id: id ?? notification.hashCode,
      title: notification.title,
      body: notification.body,
      notificationDetails: notificationDetails,
      payload: notification.id,
    );
  }

  Future<void> maybeRegisterThisDeviceForPushNotifications() =>
      _maybeRegisterUnlessStoppedSince(_pushLifecycleGeneration);

  Future<void> _maybeRegisterUnlessStoppedSince(int startGeneration) async {
    bool stoppedSinceStart() => startGeneration != _pushLifecycleGeneration;

    if (!await _firebaseMessaging.isSupported() ||
        !await requestNotificationsPermission()) {
      return;
    }

    await _latestStop;
    if (stoppedSinceStart()) return;

    final previousSubscription = _installationRegistrationSubscription;
    _installationRegistrationSubscription = _firebaseMessaging.onRegistered
        .listen(
          _registerInstallationIdWithServer,
          onError: _logInstallationRegistrationError,
        );
    await previousSubscription?.cancel();
    if (stoppedSinceStart()) return;

    await _firebaseMessaging.register.runBestEffort();
  }

  Future<void> stopPushNotificationsToThisDevice() {
    _pushLifecycleGeneration++;
    final stopping = _cancelRegistrationDeleteRowAndUnregister.runBestEffort();
    _latestStop = stopping;

    return stopping;
  }

  Future<void> _cancelRegistrationDeleteRowAndUnregister() async {
    final installationId = _lastIssuedInstallationId;
    final uid = _authBloc.currentUser?.hasuraUserId;
    _lastIssuedInstallationId = null;

    await _stopListeningForInstallationIds();
    await _latestInstallationRegistration;
    _latestInstallationRegistration = null;

    if (installationId != null && uid != null) {
      await (() => _databaseService.fcmTokens.deleteByUidAndToken(
        uid: uid,
        token: installationId,
      )).runBestEffort();
    }

    await _firebaseMessaging.unregister.runBestEffort();
  }

  void _registerInstallationIdWithServer(String installationId) {
    _lastIssuedInstallationId = installationId;

    final earlierRegistrations = _latestInstallationRegistration;
    final registration = (() => _functionsService.registerFirebaseInstallation(
      installationId,
    )).runBestEffort();
    _latestInstallationRegistration = Future.wait([
      ?earlierRegistrations,
      registration,
    ]);
  }

  Future<void> _logInstallationRegistrationError(
    Object error,
    StackTrace stackTrace,
  ) =>
      LoggingService.I.warning(LogRecord(error: error, stackTrace: stackTrace));

  Future<void> _stopListeningForInstallationIds() async {
    final subscription = _installationRegistrationSubscription;
    _installationRegistrationSubscription = null;
    await subscription?.cancel();
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

  Future<bool> _requestAndTrackNotificationsPermission() async {
    final isGranted = await requestNotificationsPermission();

    _analyticsService.track(
      NotificationPermissionRequest(isGranted: isGranted),
    );

    return isGranted;
  }

  @override
  Future<void> onTransition(Bloc bloc, Transition transition) async {
    super.onTransition(bloc, transition);

    if (bloc is! AuthBloc || transition is! Transition<AuthEvent, AuthState>) {
      return;
    }

    final nextState = transition.nextState.unwrapped;
    final currentState = transition.currentState.unwrapped;
    final generationAtTransition = _pushLifecycleGeneration;

    if (currentState is! AuthAuthenticated &&
        nextState is AuthAuthenticated &&
        await _requestAndTrackNotificationsPermission()) {
      if (currentState is! AuthInitial) {
        await scheduleDefaultNotifications();
      }

      await _maybeRegisterUnlessStoppedSince(generationAtTransition);
    }
  }

  Future<void> dispose() async {
    _pushLifecycleGeneration++;
    await _isPausedSubject.close();
    await _onMessageOpenedAppSubscription.cancel();
    await _onForegroundMessageSubscription.cancel();
    await _installationRegistrationSubscription?.cancel();
  }
}
