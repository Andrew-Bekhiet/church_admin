import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' hide Notification;
import 'package:flutter_local_notifications/flutter_local_notifications.dart'
    hide Person;

import 'notifications_storage.dart';

class NotificationsServiceCallbacks {
  @pragma('vm:entry-point')
  static Future<Notification?> defaultOnNotificationClicked(
    String? notificationId,
  ) async {
    if (WidgetsBinding.instance.isRootWidgetAttached &&
        notificationId != null) {
      return NotificationsStorage.I.readNotification(notificationId);
    }
    return null;
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

      await NotificationsService.I.show(
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

  @pragma('vm:entry-point')
  static Future<void> showKodasNotification() {
    return showNotification(
      channelId: 'Kodas',
      channelName: 'إشعارات القداس',
      channelDescription: 'إشعارات القداس',
      title: 'إشعارات القداس',
      type: LocalNotificationType.kodas,
      additionalData: const {},
      getPersons: () =>
          DatabaseService.I.persons.notificationsQueries.getPersonsKodasWarning(
        date: DateTime.now().subtract(const Duration(days: 7)),
      ),
    );
  }

  @pragma('vm:entry-point')
  static Future<void> showMeetingNotification() {
    return showNotification(
      channelId: 'Meeting',
      channelName: 'إشعارات حضور الاجتماع',
      channelDescription: 'إشعارات حضور الاجتماع',
      title: 'انذار حضور الاجتماع',
      type: LocalNotificationType.meeting,
      additionalData: const {},
      getPersons: () => DatabaseService.I.persons.notificationsQueries
          .getPersonsMeetingWarning(
        date: DateTime.now().subtract(const Duration(days: 7)),
      ),
    );
  }

  @pragma('vm:entry-point')
  static Future<void> showVisitNotification() {
    return showNotification(
      channelId: 'Visit',
      channelName: 'إشعارات الافتقاد',
      channelDescription: 'إشعارات الافتقاد',
      title: 'انذار الافتقاد',
      type: LocalNotificationType.visit,
      additionalData: const {},
      getPersons: () =>
          DatabaseService.I.persons.notificationsQueries.getPersonsVisitWarning(
        date: DateTime.now().subtract(const Duration(days: 20)),
      ),
    );
  }

  @pragma('vm:entry-point')
  static Future<void> showConfessionNotification() {
    return showNotification(
      channelId: 'Confession',
      channelName: 'إشعارات الاعتراف',
      channelDescription: 'إشعارات الاعتراف',
      title: 'انذار الاعتراف',
      type: LocalNotificationType.confession,
      additionalData: const {},
      getPersons: () => DatabaseService.I.persons.notificationsQueries
          .getPersonsConfessionWarning(
        date: DateTime.now().subtract(const Duration(days: 7)),
      ),
    );
  }

  @pragma('vm:entry-point')
  static Future<void> showBirthDayNotification() {
    return showNotification(
      channelId: 'Birthday',
      channelName: 'إشعارات أعياد الميلاد',
      channelDescription: 'إشعارات أعياد الميلاد',
      title: 'أعياد الميلاد',
      type: LocalNotificationType.birthday,
      additionalData: const {},
      getPersons: () => DatabaseService.I.persons.notificationsQueries
          .getBirthdayPersons(date: DateTime.now()),
    );
  }
}

enum LocalNotificationType {
  birthday,
  kodas,
  meeting,
  confession,
  visit,
}
