import 'package:church_admin/src/models/notification.dart';
import 'package:get_it/get_it.dart';

abstract class NotificationsStorage {
  static NotificationsStorage get I => GetIt.I<NotificationsStorage>();

  Future<void> writeNotification(Notification notification);

  Future<Notification?> readNotification(String notificationId);
}
