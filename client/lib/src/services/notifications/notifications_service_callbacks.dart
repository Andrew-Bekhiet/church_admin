import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/main.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart'
    hide Person;

import 'notifications_storage.dart';

class NotificationsServiceCallbacks {
  @pragma('vm:entry-point')
  static Future<void> onBackgroundMessageReceived(RemoteMessage message) async {
    await InitializationService.I.initialize();

    final notification = Notification.fromRemoteMessage(message);

    await NotificationsStorage.I.writeNotification(notification);

    if (notification.type == NotificationType.manualPushRemote) {
      await NotificationsService.I.notify(
        notification,
        notificationDetails:
            await NotificationsService.notificationsDetailsFor(notification),
      );
    }
  }

  @pragma('vm:entry-point')
  static void onBackgroundNotificationTap(_) {
    main();
  }

  @pragma('vm:entry-point')
  static Future<void> onForegroundNotificationTap(
    NotificationResponse response,
  ) async {
    final notificationId = response.payload;

    if (notificationId == null) return;

    final notification =
        await NotificationsStorage.I.readNotification(notificationId);

    if (notification == null) return;

    NotificationsService.I.addForegroundNotificationTap(notification);
  }

  @visibleForTesting
  static Future<void> showNotification({
    required String channelId,
    required String channelName,
    required String channelDescription,
    required String title,
    required LocalNotificationType type,
    required Map<String, dynamic> additionalData,
    required Future<Iterable<Person>> Function() getPersons,
  }) async {
    await InitializationService.I.initialize();

    if (!AuthService.I.isSignedIn) return;

    final persons = await getPersons();

    if (persons.isNotEmpty || !kReleaseMode) {
      final notification = makeNotificationWith(
        persons: persons,
        title: title,
        additionalData: additionalData,
      );

      await NotificationsStorage.I.writeNotification(notification);

      await NotificationsService.I.notify(
        notification,
        id: type.index,
        notificationDetails: NotificationDetails(
          android: androidNotificationDetailsFor(
            channelId,
            channelName,
            channelDescription: channelDescription,
            body: notification.body,
          ),
        ),
      );
    }
  }

  @visibleForTesting
  static Notification makeNotificationWith({
    required String title,
    required Iterable<Person> persons,
    Map<String, dynamic>? additionalData,
  }) {
    return Notification(
      id: DateTime.now().toIso8601String(),
      senderUID: NotificationsService.localNotificationSenderUID,
      body: persons.map((p) => p.name).join(', '),
      title: title,
      sentTime: DateTime.now(),
      type: NotificationType.local,
      additionalData: additionalData,
    );
  }

  @visibleForTesting
  static AndroidNotificationDetails androidNotificationDetailsFor(
    String channelId,
    String channelName, {
    required String channelDescription,
    required String body,
    String icon = 'warning',
  }) {
    return AndroidNotificationDetails(
      channelId,
      channelName,
      channelDescription: channelDescription,
      icon: icon,
      autoCancel: false,
      category: AndroidNotificationCategory.reminder,
      visibility: NotificationVisibility.secret,
      showWhen: false,
      styleInformation: BigTextStyleInformation(body),
    );
  }

  static AdvancedQuery _createAdvQueryWith({
    required String name,
    required String field,
    required DateTime value,
  }) {
    return AdvancedQuery(
      name: name,
      conditions: [
        Condition(
          type: Person,
          field: field,
          operator: Operator.lt,
          value: value,
        ),
      ],
      orderBy: [
        OrderBy(field: field),
        const OrderBy(field: 'name'),
      ],
    );
  }

  @pragma('vm:entry-point')
  static Future<void> showKodasNotification() {
    final date = DateTime.now().subtract(const Duration(days: 7));

    return showNotification(
      channelId: 'Kodas',
      channelName: 'إشعارات القداس',
      channelDescription: 'إشعارات القداس',
      title: 'إشعارات القداس',
      type: LocalNotificationType.kodas,
      additionalData: {
        'query': _createAdvQueryWith(
          name: 'إشعارات القداس',
          field: 'lastKodas',
          value: date,
        ).toJson(),
      },
      getPersons: () =>
          DatabaseService.I.persons.notificationsQueries.getPersonsKodasWarning(
        date: date,
      ),
    );
  }

  @pragma('vm:entry-point')
  static Future<void> showMeetingNotification() {
    final date = DateTime.now().subtract(const Duration(days: 7));

    return showNotification(
      channelId: 'Meeting',
      channelName: 'إشعارات حضور الاجتماع',
      channelDescription: 'إشعارات حضور الاجتماع',
      title: 'إنذار حضور الاجتماع',
      type: LocalNotificationType.meeting,
      additionalData: {
        'query': _createAdvQueryWith(
          name: 'إنذار حضور الاجتماع',
          field: 'lastMeeting',
          value: date,
        ).toJson(),
      },
      getPersons: () => DatabaseService.I.persons.notificationsQueries
          .getPersonsMeetingWarning(
        date: date,
      ),
    );
  }

  @pragma('vm:entry-point')
  static Future<void> showVisitNotification() {
    final date = DateTime.now().subtract(const Duration(days: 20));

    return showNotification(
      channelId: 'Visit',
      channelName: 'إشعارات الافتقاد',
      channelDescription: 'إشعارات الافتقاد',
      title: 'إنذار الافتقاد',
      type: LocalNotificationType.visit,
      additionalData: {
        'query': _createAdvQueryWith(
          name: 'إنذار الافتقاد',
          field: 'lastVisit',
          value: date,
        ).toJson(),
      },
      getPersons: () => DatabaseService.I.persons.notificationsQueries
          .getPersonsVisitWarning(date: date),
    );
  }

  @pragma('vm:entry-point')
  static Future<void> showConfessionNotification() {
    final date = DateTime.now().subtract(const Duration(days: 7));

    return showNotification(
      channelId: 'Confession',
      channelName: 'إشعارات الاعتراف',
      channelDescription: 'إشعارات الاعتراف',
      title: 'إنذار الاعتراف',
      type: LocalNotificationType.confession,
      additionalData: {
        'query': _createAdvQueryWith(
          name: 'إنذار الاعتراف',
          field: 'lastConfession',
          value: date,
        ).toJson(),
      },
      getPersons: () => DatabaseService.I.persons.notificationsQueries
          .getPersonsConfessionWarning(date: date),
    );
  }

  @pragma('vm:entry-point')
  static Future<void> showBirthDayNotification() {
    final now = DateTime.now();

    return showNotification(
      channelId: 'Birthday',
      channelName: 'إشعارات أعياد الميلاد',
      channelDescription: 'إشعارات أعياد الميلاد',
      title: 'أعياد الميلاد',
      type: LocalNotificationType.birthday,
      additionalData: {
        'query': AdvancedQuery(
          name: 'أعياد الميلاد',
          conditions: [
            Condition(
              type: Person,
              field: 'birthday',
              operator: Operator.eq,
              value: now.month.toString() + '-' + now.day.toString(),
            ),
          ],
          orderBy: const [
            OrderBy(field: 'birthdate'),
            OrderBy(field: 'name'),
          ],
        ).toJson(),
      },
      getPersons: () => DatabaseService.I.persons.notificationsQueries
          .getBirthdayPersons(date: now),
    );
  }
}

@visibleForTesting
enum LocalNotificationType {
  birthday,
  kodas,
  meeting,
  confession,
  visit,
}
