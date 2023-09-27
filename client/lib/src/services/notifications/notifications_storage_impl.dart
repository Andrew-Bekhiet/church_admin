import 'package:church_admin/src/models/notification.dart';
import 'package:church_admin/src/services/notifications/notifications_storage.dart';
import 'package:hive_flutter/adapters.dart';

class NotificationsStorageImpl implements NotificationsStorage {
  final HiveInterface _hive;
  final String _boxName;

  NotificationsStorageImpl(this._hive, this._boxName);

  @override
  Future<void> writeNotification(Notification notification) async {
    final box = await _hive.openLazyBox<Notification>(_boxName);
    await box.put(notification.id, notification);

    await box.close();
  }

  @override
  Future<Notification?> readNotification(String notificationId) async {
    final box = await _hive.openLazyBox<Notification>(_boxName);
    final notification = await box.get(notificationId);
    await box.close();

    return notification;
  }
}
