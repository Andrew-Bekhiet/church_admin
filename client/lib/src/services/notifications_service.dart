import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/main.dart';
import 'package:churchdata_core/churchdata_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' hide Notification;
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get_it/get_it.dart';

class CANotificationsService extends NotificationsService {
  static CANotificationsService get instance =>
      GetIt.I<CANotificationsService>();
  static CANotificationsService get I => GetIt.I<CANotificationsService>();

  late final StreamSubscription<RemoteMessage> onMessageOpenedAppSubscription;

  @override
  void listenToFirebaseMessaging() {
    FirebaseMessaging.onBackgroundMessage(
        NotificationsService.onBackgroundMessageReceived);
    onForegroundMessageSubscription =
        FirebaseMessaging.onMessage.listen(onForegroundMessage);
    onMessageOpenedAppSubscription =
        FirebaseMessaging.onMessageOpenedApp.listen((message) {
      showNotificationContents(
        scaffoldMessengerKey.currentContext!,
        Notification.fromRemoteMessage(message),
      );
    });
  }

  @override
  Future<void> dispose() async {
    await super.dispose();
    await onMessageOpenedAppSubscription.cancel();
  }

  Future<void> onForegroundMessage(RemoteMessage message) async {
    await NotificationsService.storeNotification(message);

    scaffoldMessenger.showSnackBar(
      SnackBar(
        content: Text(message.notification!.body!),
        action: SnackBarAction(
          label: 'فتح الاشعارات',
          onPressed: () => Navigator.of(scaffoldMessengerKey.currentContext!)
              .pushNamed('Notifications'),
        ),
      ),
    );
  }

  //
  //Static callbacks
  //

  static Future<void> onNotificationClicked(String? payload) async {
    if (WidgetsBinding.instance.renderViewElement != null &&
        GetIt.I.isRegistered<CANotificationsService>() &&
        payload != null &&
        GetIt.I<CacheRepository>()
                .box<Notification>('Notifications')
                .get(payload) !=
            null) {
      await GetIt.I<CANotificationsService>().showNotificationContents(
        scaffoldMessengerKey.currentContext!,
        GetIt.I<CacheRepository>()
            .box<Notification>('Notifications')
            .get(payload)!,
      );
    }
  }

  static Future<void> showKodasNotification() async {
    await initializeChurchAdmin();

    if (CAAuthRepository.I.currentUser == null) return;

    final persons = await CADatabaseRepository.I.persons.getPersonsKodasWarning(
      date: DateTime.now().subtract(const Duration(days: 7)),
    );

    if (persons.parsedData!.persons.isNotEmpty || !kReleaseMode) {
      final notification = Notification(
        body: persons.parsedData!.persons.map((p) => p.name).join(', '),
        title: 'انذار حضور القداس',
        sentTime: DateTime.now(),
        type: NotificationType.LocalNotification,
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

      final key = DateTime.now().toIso8601String();
      await GetIt.I<CacheRepository>()
          .box<Notification>('Notifications')
          .put(key, notification);

      await FlutterLocalNotificationsPlugin().show(
        4,
        notification.title,
        notification.body,
        NotificationDetails(
          android: AndroidNotificationDetails(
            'Kodas',
            'إشعارات حضور القداس',
            channelDescription: 'إشعارات حضور القداس',
            icon: 'warning',
            autoCancel: false,
            visibility: NotificationVisibility.secret,
            showWhen: false,
            styleInformation: BigTextStyleInformation(
              notification.body,
            ),
          ),
        ),
        payload: key,
      );
    }
  }

  static Future<void> showMeetingNotification() async {
    await initializeChurchAdmin();

    if (CAAuthRepository.I.currentUser == null) return;

    final persons =
        await CADatabaseRepository.I.persons.getPersonsMeetingWarning(
      date: DateTime.now().subtract(const Duration(days: 7)),
    );

    if (persons.parsedData!.persons.isNotEmpty || !kReleaseMode) {
      final notification = Notification(
        body: persons.parsedData!.persons.map((p) => p.name).join(', '),
        title: 'انذار حضور الاجتماع',
        sentTime: DateTime.now(),
        type: NotificationType.LocalNotification,
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

      final key = DateTime.now().toIso8601String();
      await GetIt.I<CacheRepository>()
          .box<Notification>('Notifications')
          .put(key, notification);

      await FlutterLocalNotificationsPlugin().show(
        3,
        notification.title,
        notification.body,
        NotificationDetails(
          android: AndroidNotificationDetails(
            'Meeting',
            'إشعارات حضور الاجتماع',
            channelDescription: 'إشعارات حضور الاجتماع',
            icon: 'warning',
            autoCancel: false,
            visibility: NotificationVisibility.secret,
            showWhen: false,
            styleInformation: BigTextStyleInformation(
              notification.body,
            ),
          ),
        ),
        payload: key,
      );
    }
  }

  static Future<void> showVisitNotification() async {
    await initializeChurchAdmin();

    if (CAAuthRepository.I.currentUser == null) return;

    final persons = await CADatabaseRepository.I.persons.getPersonsVisitWarning(
      date: DateTime.now().subtract(const Duration(days: 20)),
    );

    if (persons.parsedData!.persons.isNotEmpty || !kReleaseMode) {
      final notification = Notification(
        body: persons.parsedData!.persons.map((p) => p.name).join(', '),
        title: 'انذار الافتقاد',
        sentTime: DateTime.now(),
        type: NotificationType.LocalNotification,
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

      final key = DateTime.now().toIso8601String();
      await GetIt.I<CacheRepository>()
          .box<Notification>('Notifications')
          .put(key, notification);

      await FlutterLocalNotificationsPlugin().show(
        5,
        notification.title,
        notification.body,
        NotificationDetails(
          android: AndroidNotificationDetails(
            'Visit',
            'إشعارات الافتقاد',
            channelDescription: 'إشعارات الافتقاد',
            icon: 'warning',
            autoCancel: false,
            visibility: NotificationVisibility.secret,
            showWhen: false,
            styleInformation: BigTextStyleInformation(
              notification.body,
            ),
          ),
        ),
        payload: key,
      );
    }
  }

  static Future<void> showConfessionNotification() async {
    await initializeChurchAdmin();

    if (CAAuthRepository.I.currentUser == null) return;

    final persons =
        await CADatabaseRepository.I.persons.getPersonsConfessionWarning(
      date: DateTime.now().subtract(const Duration(days: 7)),
    );

    if (persons.parsedData!.persons.isNotEmpty || !kReleaseMode) {
      final notification = Notification(
        body: persons.parsedData!.persons.map((p) => p.name).join(', '),
        title: 'انذار الاعتراف',
        sentTime: DateTime.now(),
        type: NotificationType.LocalNotification,
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

      final key = DateTime.now().toIso8601String();
      await GetIt.I<CacheRepository>()
          .box<Notification>('Notifications')
          .put(key, notification);

      await FlutterLocalNotificationsPlugin().show(
        0,
        notification.title,
        notification.body,
        NotificationDetails(
          android: AndroidNotificationDetails(
            'Confession',
            'إشعارات الاعتراف',
            channelDescription: 'إشعارات الاعتراف',
            icon: 'warning',
            autoCancel: false,
            visibility: NotificationVisibility.secret,
            showWhen: false,
            styleInformation: BigTextStyleInformation(
              notification.body,
            ),
          ),
        ),
        payload: key,
      );
    }
  }

  static Future<void> showBirthDayNotification() async {
    await initializeChurchAdmin();

    if (CAAuthRepository.I.currentUser == null) return;

    final persons = await CADatabaseRepository.I.persons
        .getBirthdayPersons(date: DateTime.now());

    if (persons.parsedData!.persons.isNotEmpty || !kReleaseMode) {
      final notification = Notification(
        body: persons.parsedData!.persons.map((p) => p.name).join(', '),
        title: 'أعياد الميلاد',
        sentTime: DateTime.now(),
        type: NotificationType.LocalNotification,
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

      final key = DateTime.now().toIso8601String();
      await GetIt.I<CacheRepository>()
          .box<Notification>('Notifications')
          .put(key, notification);

      await FlutterLocalNotificationsPlugin().show(
        2,
        notification.title,
        notification.body,
        NotificationDetails(
          android: AndroidNotificationDetails(
            'Birthday',
            'إشعارات أعياد الميلاد',
            channelDescription: 'إشعارات أعياد الميلاد',
            icon: 'birthday',
            autoCancel: false,
            visibility: NotificationVisibility.secret,
            showWhen: false,
            styleInformation: BigTextStyleInformation(
              notification.body,
            ),
          ),
        ),
        payload: key,
      );
    }
  }
}
