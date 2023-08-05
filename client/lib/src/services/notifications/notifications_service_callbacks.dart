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

  static Notification _getNotificationFor({
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

  static AndroidNotificationDetails _androidNotificationDetailsFor(
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
  static Future<void> showKodasNotification() async {
    await InitializationService.I.initialize();

    if (!AuthService.I.isSignedIn) return;

    final persons = await DatabaseService.I.persons.notificationsQueries
        .getPersonsKodasWarning(
      date: DateTime.now().subtract(const Duration(days: 7)),
    );

    if (persons.isNotEmpty || !kReleaseMode) {
      final notification = _getNotificationFor(
        persons: persons,
        title: 'انذار حضور القداس',
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

      await NotificationsService.I.show(
        notification,
        id: 4,
        notificationDetails: NotificationDetails(
          android: _androidNotificationDetailsFor(
            'Kodas',
            'إشعارات حضور القداس',
            channelDescription: 'إشعارات حضور القداس',
            body: notification.body,
          ),
        ),
      );
    }
  }

  @pragma('vm:entry-point')
  static Future<void> showMeetingNotification() async {
    await InitializationService.I.initialize();

    if (!AuthService.I.isSignedIn) return;

    final persons = await DatabaseService.I.persons.notificationsQueries
        .getPersonsMeetingWarning(
      date: DateTime.now().subtract(const Duration(days: 7)),
    );

    if (persons.isNotEmpty || !kReleaseMode) {
      final notification = _getNotificationFor(
        persons: persons,
        title: 'انذار حضور الاجتماع',
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

      await NotificationsService.I.show(
        notification,
        id: 3,
        notificationDetails: NotificationDetails(
          android: _androidNotificationDetailsFor(
            'Meeting',
            'إشعارات حضور الاجتماع',
            channelDescription: 'إشعارات حضور الاجتماع',
            body: notification.body,
          ),
        ),
      );
    }
  }

  @pragma('vm:entry-point')
  static Future<void> showVisitNotification() async {
    await InitializationService.I.initialize();

    if (!AuthService.I.isSignedIn) return;

    final persons = await DatabaseService.I.persons.notificationsQueries
        .getPersonsVisitWarning(
      date: DateTime.now().subtract(const Duration(days: 20)),
    );

    if (persons.isNotEmpty || !kReleaseMode) {
      final notification = _getNotificationFor(
        persons: persons,
        title: 'انذار الافتقاد',
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

      await NotificationsService.I.show(
        notification,
        id: 5,
        notificationDetails: NotificationDetails(
          android: _androidNotificationDetailsFor(
            'Visit',
            'إشعارات الافتقاد',
            channelDescription: 'إشعارات الافتقاد',
            body: notification.body,
          ),
        ),
      );
    }
  }

  @pragma('vm:entry-point')
  static Future<void> showConfessionNotification() async {
    await InitializationService.I.initialize();

    if (!AuthService.I.isSignedIn) return;

    final persons = await DatabaseService.I.persons.notificationsQueries
        .getPersonsConfessionWarning(
      date: DateTime.now().subtract(const Duration(days: 7)),
    );

    if (persons.isNotEmpty || !kReleaseMode) {
      final notification = _getNotificationFor(
        persons: persons,
        title: 'انذار الاعتراف',
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

      await NotificationsService.I.show(
        notification,
        id: 0,
        notificationDetails: NotificationDetails(
          android: _androidNotificationDetailsFor(
            'Confession',
            'إشعارات الاعتراف',
            channelDescription: 'إشعارات الاعتراف',
            body: notification.body,
          ),
        ),
      );
    }
  }

  @pragma('vm:entry-point')
  static Future<void> showBirthDayNotification() async {
    await InitializationService.I.initialize();

    if (!AuthService.I.isSignedIn) return;

    final persons = await DatabaseService.I.persons.notificationsQueries
        .getBirthdayPersons(date: DateTime.now());

    if (persons.isNotEmpty || !kReleaseMode) {
      final notification = _getNotificationFor(
        title: 'أعياد الميلاد',
        persons: persons,
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

      await NotificationsService.I.show(
        notification,
        id: 2,
        notificationDetails: NotificationDetails(
          android: _androidNotificationDetailsFor(
            'Birthday',
            'إشعارات أعياد الميلاد',
            channelDescription: 'إشعارات أعياد الميلاد',
            icon: 'birthday',
            body: notification.body,
          ),
        ),
      );
    }
  }
}
