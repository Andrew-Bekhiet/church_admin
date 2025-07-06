import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/main.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart'
    hide Person;

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
  static Future<void> onBackgroundNotificationTap(
    NotificationResponse response,
  ) async {
    await main();
    await onForegroundNotificationTap(response);
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
    required AdvancedQuery query,
  }) async {
    await InitializationService.I.initialize();

    await AuthBloc.I.loaded;

    if (!AuthBloc.I.isSignedIn) return;

    final persons = await DatabaseService.I.advancedQueryParser
        .createPaginatableStream(query)
        .first;

    if (persons.isNotEmpty || !kReleaseMode) {
      final notification = makeNotificationWith(
        persons: persons,
        title: title,
        additionalData: {
          'query': query.toJson(),
        },
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
            icon: type == LocalNotificationType.birthday
                ? 'birthday'
                : 'warning_notification',
          ),
        ),
      );
    }
  }

  @visibleForTesting
  static Notification makeNotificationWith({
    required String title,
    required Iterable<Viewable> persons,
    Map<String, dynamic>? additionalData,
  }) {
    return Notification(
      id: DateTime.now().toIso8601String(),
      senderUID: NotificationsService.localNotificationSenderUID,
      body: persons.map((p) => p.name).join('، '),
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
    String icon = 'warning_notification',
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
    required FieldMetadata field,
    required FieldMetadata aggField,
    required DateTime value,
  }) {
    return AdvancedQuery(
      name: name,
      queryableType: AdvancedQueriesMetadata().person,
      filters: [
        Filter(
          field,
          LogicalOperator.and,
          [
            Filter(
              LastRecordedByInfoFields().time,
              PrimitiveOperator.isNull,
              false,
            ),
            Filter(
              LastRecordedByInfoFields().time,
              DateTimeOperator.isBefore,
              value,
            ),
          ],
        ),
      ],
      orderBy: [
        OrderBy(
          field: aggField.redirectTo(AggregateDataFields()
              .max
              .redirectTo(LastRecordedByInfoFields().time)),
          value: OrderByValue.desc,
        ),
        OrderBy(field: LastRecordedByInfoFields().time),
      ],
    );
  }

  @pragma('vm:entry-point')
  static Future<void> showKodasNotification() {
    final date = DateTime.now().subtract(const Duration(days: 7));

    final query = _createAdvQueryWith(
      name: 'إشعارات القداس',
      field: PersonFields().kodasHistory,
      aggField: PersonFields().kodasHistoryAggregate,
      value: date,
    );

    return showNotification(
      channelId: 'Kodas',
      channelName: 'إشعارات القداس',
      channelDescription: 'إشعارات القداس',
      title: 'إشعارات القداس',
      type: LocalNotificationType.kodas,
      query: query,
    );
  }

  @pragma('vm:entry-point')
  static Future<void> showAttendanceNotification() {
    final query = _createAdvQueryWith(
      name: 'إنذار حضور الاجتماع',
      field: PersonFields().attendanceHistory,
      aggField: PersonFields().attendanceHistoryAggregate,
      value: DateTime.now().subtract(const Duration(days: 7)),
    );

    return showNotification(
      channelId: 'Attendance',
      channelName: 'إشعارات حضور الاجتماع',
      channelDescription: 'إشعارات حضور الاجتماع',
      title: 'إنذار حضور الاجتماع',
      type: LocalNotificationType.attendance,
      query: query,
    );
  }

  @pragma('vm:entry-point')
  static Future<void> showVisitNotification() {
    final date = DateTime.now().subtract(const Duration(days: 20));

    final query = _createAdvQueryWith(
      name: 'إنذار الافتقاد',
      field: PersonFields().visitHistory,
      aggField: PersonFields().visitHistoryAggregate,
      value: date,
    );

    return showNotification(
      channelId: 'Visit',
      channelName: 'إشعارات الافتقاد',
      channelDescription: 'إشعارات الافتقاد',
      title: 'إنذار الافتقاد',
      type: LocalNotificationType.visit,
      query: query,
    );
  }

  @pragma('vm:entry-point')
  static Future<void> showConfessionNotification() {
    final query = _createAdvQueryWith(
      name: 'إنذار الاعتراف',
      field: PersonFields().confessionHistory,
      aggField: PersonFields().confessionHistoryAggregate,
      value: DateTime.now().subtract(const Duration(days: 7)),
    );

    return showNotification(
      channelId: 'Confession',
      channelName: 'إشعارات الاعتراف',
      channelDescription: 'إشعارات الاعتراف',
      title: 'إنذار الاعتراف',
      type: LocalNotificationType.confession,
      query: query,
    );
  }

  @pragma('vm:entry-point')
  static Future<void> showBirthDayNotification() {
    final now = DateTime.now();

    final query = AdvancedQuery(
      name: 'أعياد الميلاد',
      queryableType: AdvancedQueriesMetadata().person,
      filters: [
        Filter(
          PersonFields().birthday,
          BirthdayOperator.equals,
          '${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}',
        ),
      ],
      orderBy: [
        OrderBy(field: PersonFields().birthdate),
        OrderBy(field: PersonFields().name),
      ],
    );

    return showNotification(
      channelId: 'Birthday',
      channelName: 'إشعارات أعياد الميلاد',
      channelDescription: 'إشعارات أعياد الميلاد',
      title: 'أعياد الميلاد',
      type: LocalNotificationType.birthday,
      query: query,
    );
  }
}

@visibleForTesting
enum LocalNotificationType {
  birthday,
  kodas,
  attendance,
  confession,
  visit,
}
