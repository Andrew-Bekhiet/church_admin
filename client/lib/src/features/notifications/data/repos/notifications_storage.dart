import 'package:church_admin/church_admin.dart';

abstract interface class NotificationsStorage {
  static NotificationsStorage get I =>
      globalProviderContainer.read(notificationsStorageProvider);

  Future<void> writeNotification(Notification notification);

  Future<Notification?> readNotification(String notificationId);

  Future<void> clear();
}
