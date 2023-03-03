import 'dart:async';

import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';
import 'package:church_admin/church_admin.dart';
import 'package:church_admin/main.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' hide Notification;
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:rxdart/rxdart.dart' hide Notification;

import 'notifications_storage.dart';

class CANotificationsService {
  static CANotificationsService get I =>
      globalProviderContainer.read(notificationsServiceProvider);

  static const String localNotificationSenderUID =
      'LOCAL_NOTIFICATION_SENDER_UID';

  @pragma('vm:entry-point')
  static Future<void> onBackgroundMessageReceived(RemoteMessage message) async {
    final notification = Notification.fromRemoteMessage(message);

    await initializeChurchAdmin();

    await NotificationsStorage.I.writeNotification(notification);

    if (notification.type == NotificationType.manualPushRemote) {
      await CANotificationsService.I.show(
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

  CANotificationsService({
    required FirebaseMessaging firebaseMessaging,
    required FlutterLocalNotificationsPlugin localNotificationsPlugin,
    required Stream<RemoteMessage> onForegroundMessageStream,
    required Stream<RemoteMessage> onMessageOpenedAppStream,
    AuthService Function()? getAuthService,
    UserSettingsService? userSettingsService,
    CAFunctionsService? functionsService,
    NotificationsStorage? storage,
  })  : _storage = storage ?? NotificationsStorage.I,
        _firebaseMessaging = firebaseMessaging,
        _localNotificationsPlugin = localNotificationsPlugin,
        _getAuthService = getAuthService ?? (() => AuthService.I),
        _userSettingsService = userSettingsService ?? UserSettingsService.I,
        _functionsService = functionsService ?? CAFunctionsService.I {
    _onForegroundMessageSubscription =
        onForegroundMessageStream.listen(_onForegroundMessage);

    _onMessageOpenedAppSubscription =
        onMessageOpenedAppStream.listen(_onMessageOpenedApp);
  }

  final NotificationsStorage _storage;
  final FirebaseMessaging _firebaseMessaging;
  final FlutterLocalNotificationsPlugin _localNotificationsPlugin;

  final AuthService Function() _getAuthService;
  final UserSettingsService _userSettingsService;
  final CAFunctionsService _functionsService;

  final BehaviorSubject<Notification>
      _foregroundNotificationsStreamNotificationsStreamController =
      BehaviorSubject();

  bool _isPaused = false;

  late final StreamSubscription<RemoteMessage> _onMessageOpenedAppSubscription;
  late final StreamSubscription<RemoteMessage> _onForegroundMessageSubscription;

  StreamSubscription<String?>? _onFCMTokenRefresh;

  ValueStream<Notification> get foregroundNotificationsStream =>
      _foregroundNotificationsStreamNotificationsStreamController.stream;

  bool get isPaused => _isPaused;

  void _onMessageOpenedApp(RemoteMessage message) {
    _foregroundNotificationsStreamNotificationsStreamController
        .add(Notification.fromRemoteMessage(message));
  }

  Future<void> _onForegroundMessage(RemoteMessage message) async {
    final notification = Notification.fromRemoteMessage(message);

    await _storage.writeNotification(notification);

    _foregroundNotificationsStreamNotificationsStreamController
        .add(notification);
  }

  Future<bool> schedulePeriodic(
    Duration duration,
    int id,
    Function callback, {
    DateTime? startAt,
    bool allowWhileIdle = false,
    bool exact = false,
    bool wakeup = false,
    bool rescheduleOnReboot = false,
  }) {
    return AndroidAlarmManager.periodic(
      duration,
      id,
      callback,
      startAt: startAt,
      allowWhileIdle: allowWhileIdle,
      exact: exact,
      wakeup: wakeup,
      rescheduleOnReboot: rescheduleOnReboot,
    );
  }

  Future<Notification?> getInitialNotification() async {
    final remoteMessage = await _firebaseMessaging.getInitialMessage();

    if (remoteMessage != null) {
      return Notification.fromRemoteMessage(remoteMessage);
    } else {
      final localNotificationId =
          (await _localNotificationsPlugin.getNotificationAppLaunchDetails())
              ?.notificationResponse
              ?.payload;

      if (localNotificationId != null) {
        return _storage.readNotification(localNotificationId);
      }
    }
    return null;
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

          _onFCMTokenRefresh ??= _firebaseMessaging.onTokenRefresh.listen(
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

  Future<void> show(
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

  void pauseListeners() {
    _isPaused = true;

    _onMessageOpenedAppSubscription.pause();
    _onForegroundMessageSubscription.pause();
    _onFCMTokenRefresh?.pause();
  }

  void resumeListeners() {
    _isPaused = false;

    _onMessageOpenedAppSubscription.resume();
    _onForegroundMessageSubscription.resume();
    _onFCMTokenRefresh?.resume();
  }

  Future<void> dispose() async {
    await _onMessageOpenedAppSubscription.cancel();
    await _onForegroundMessageSubscription.cancel();
    await _onFCMTokenRefresh?.cancel();
  }
}

class NotificationsServiceCallbacks {
  //
  //Static callbacks
  //
  @pragma('vm:entry-point')
  static Future<Notification?> defaultOnNotificationClicked(
    String? notificationId,
  ) async {
    if (WidgetsBinding.instance.renderViewElement != null &&
        notificationId != null) {
      return NotificationsStorage.I.readNotification(notificationId);
    }
    return null;
  }

  @pragma('vm:entry-point')
  static Future<void> showKodasNotification() async {
    await initializeChurchAdmin();

    if (!AuthService.I.isSignedIn) return;

    final persons = await DatabaseService.I.persons.notificationsQueries
        .getPersonsKodasWarning(
      date: DateTime.now().subtract(const Duration(days: 7)),
    );

    if (persons.isNotEmpty || !kReleaseMode) {
      final notification = Notification(
        id: DateTime.now().toIso8601String(),
        senderUID: CANotificationsService.localNotificationSenderUID,
        body: persons.map((p) => p.name).join(', '),
        title: 'انذار حضور القداس',
        sentTime: DateTime.now(),
        type: NotificationType.local,
        additionalData: const {
          /* 'Query': QueryInfo(
            collection: CADatabaseRepository.I.collection('Persons'),
            fieldPath: 'LastKodas',
            operator: '<',
            queryValue: DateTime.now().truncateToDay(),
            order: true,
            orderBy: 'LastKodas',
            descending: false,
          ).toJson(), */
        },
      );

      await NotificationsStorage.I.writeNotification(notification);

      await CANotificationsService.I.show(
        notification,
        id: 4,
        notificationDetails: NotificationDetails(
          android: AndroidNotificationDetails(
            'Kodas',
            'إشعارات حضور القداس',
            channelDescription: 'إشعارات حضور القداس',
            icon: 'warning',
            autoCancel: false,
            category: AndroidNotificationCategory.reminder,
            visibility: NotificationVisibility.secret,
            showWhen: false,
            styleInformation: BigTextStyleInformation(
              notification.body,
            ),
          ),
        ),
      );
    }
  }

  @pragma('vm:entry-point')
  static Future<void> showMeetingNotification() async {
    await initializeChurchAdmin();

    if (!AuthService.I.isSignedIn) return;

    final persons = await DatabaseService.I.persons.notificationsQueries
        .getPersonsMeetingWarning(
      date: DateTime.now().subtract(const Duration(days: 7)),
    );

    if (persons.isNotEmpty || !kReleaseMode) {
      final notification = Notification(
        id: DateTime.now().toIso8601String(),
        senderUID: CANotificationsService.localNotificationSenderUID,
        body: persons.map((p) => p.name).join(', '),
        title: 'انذار حضور الاجتماع',
        sentTime: DateTime.now(),
        type: NotificationType.local,
        additionalData: const {
          /* 'Query': QueryInfo(
            collection: CADatabaseRepository.I.collection('Persons'),
            fieldPath: 'LastMeeting',
            operator: '<',
            queryValue: DateTime.now().truncateToDay(),
            order: true,
            orderBy: 'LastMeeting',
            descending: false,
          ).toJson(), */
        },
      );

      await NotificationsStorage.I.writeNotification(notification);

      await CANotificationsService.I.show(
        notification,
        id: 3,
        notificationDetails: NotificationDetails(
          android: AndroidNotificationDetails(
            'Meeting',
            'إشعارات حضور الاجتماع',
            channelDescription: 'إشعارات حضور الاجتماع',
            icon: 'warning',
            autoCancel: false,
            category: AndroidNotificationCategory.reminder,
            visibility: NotificationVisibility.secret,
            showWhen: false,
            styleInformation: BigTextStyleInformation(
              notification.body,
            ),
          ),
        ),
      );
    }
  }

  @pragma('vm:entry-point')
  static Future<void> showVisitNotification() async {
    await initializeChurchAdmin();

    if (!AuthService.I.isSignedIn) return;

    final persons = await DatabaseService.I.persons.notificationsQueries
        .getPersonsVisitWarning(
      date: DateTime.now().subtract(const Duration(days: 20)),
    );

    if (persons.isNotEmpty || !kReleaseMode) {
      final notification = Notification(
        id: DateTime.now().toIso8601String(),
        senderUID: CANotificationsService.localNotificationSenderUID,
        body: persons.map((p) => p.name).join(', '),
        title: 'انذار الافتقاد',
        sentTime: DateTime.now(),
        type: NotificationType.local,
        additionalData: const {
          /* 'Query': QueryInfo(
            collection: CADatabaseRepository.I.collection('Persons'),
            fieldPath: 'LastVisit',
            operator: '<',
            queryValue: DateTime.now().truncateToDay(),
            order: true,
            orderBy: 'LastVisit',
            descending: false,
          ).toJson(), */
        },
      );

      await NotificationsStorage.I.writeNotification(notification);

      await CANotificationsService.I.show(
        notification,
        id: 5,
        notificationDetails: NotificationDetails(
          android: AndroidNotificationDetails(
            'Visit',
            'إشعارات الافتقاد',
            channelDescription: 'إشعارات الافتقاد',
            icon: 'warning',
            autoCancel: false,
            category: AndroidNotificationCategory.reminder,
            visibility: NotificationVisibility.secret,
            showWhen: false,
            styleInformation: BigTextStyleInformation(
              notification.body,
            ),
          ),
        ),
      );
    }
  }

  @pragma('vm:entry-point')
  static Future<void> showConfessionNotification() async {
    await initializeChurchAdmin();

    if (!AuthService.I.isSignedIn) return;

    final persons = await DatabaseService.I.persons.notificationsQueries
        .getPersonsConfessionWarning(
      date: DateTime.now().subtract(const Duration(days: 7)),
    );

    if (persons.isNotEmpty || !kReleaseMode) {
      final notification = Notification(
        id: DateTime.now().toIso8601String(),
        senderUID: CANotificationsService.localNotificationSenderUID,
        body: persons.map((p) => p.name).join(', '),
        title: 'انذار الاعتراف',
        sentTime: DateTime.now(),
        type: NotificationType.local,
        additionalData: const {
          /* 'Query': QueryInfo(
            collection: CADatabaseRepository.I.collection('Persons'),
            fieldPath: 'LastConfession',
            operator: '<',
            queryValue: DateTime.now().truncateToDay(),
            order: true,
            orderBy: 'LastConfession',
            descending: false,
          ).toJson(), */
        },
      );

      await NotificationsStorage.I.writeNotification(notification);

      await CANotificationsService.I.show(
        notification,
        id: 0,
        notificationDetails: NotificationDetails(
          android: AndroidNotificationDetails(
            'Confession',
            'إشعارات الاعتراف',
            channelDescription: 'إشعارات الاعتراف',
            icon: 'warning',
            autoCancel: false,
            category: AndroidNotificationCategory.reminder,
            visibility: NotificationVisibility.secret,
            showWhen: false,
            styleInformation: BigTextStyleInformation(
              notification.body,
            ),
          ),
        ),
      );
    }
  }

  @pragma('vm:entry-point')
  static Future<void> showBirthDayNotification() async {
    await initializeChurchAdmin();

    if (!AuthService.I.isSignedIn) return;

    final persons = await DatabaseService.I.persons.notificationsQueries
        .getBirthdayPersons(date: DateTime.now());

    if (persons.isNotEmpty || !kReleaseMode) {
      final notification = Notification(
        id: DateTime.now().toIso8601String(),
        title: 'أعياد الميلاد',
        body: persons.map((p) => p.name).join(', '),
        senderUID: CANotificationsService.localNotificationSenderUID,
        sentTime: DateTime.now(),
        type: NotificationType.local,
        additionalData: const {
          /* 'Query': QueryInfo(
            collection: CADatabaseRepository.I.collection('Persons'),
            fieldPath: 'BirthDay',
            operator: '=',
            queryValue: DateTime.now().truncateToDay(),
            order: true,
            orderBy: 'BirthDay',
            descending: false,
          ).toJson(), */
        },
      );

      await NotificationsStorage.I.writeNotification(notification);

      await CANotificationsService.I.show(
        notification,
        id: 2,
        notificationDetails: NotificationDetails(
          android: AndroidNotificationDetails(
            'Birthday',
            'إشعارات أعياد الميلاد',
            channelDescription: 'إشعارات أعياد الميلاد',
            icon: 'birthday',
            autoCancel: false,
            category: AndroidNotificationCategory.reminder,
            visibility: NotificationVisibility.secret,
            showWhen: false,
            styleInformation: BigTextStyleInformation(
              notification.body,
            ),
          ),
        ),
      );
    }
  }
}
