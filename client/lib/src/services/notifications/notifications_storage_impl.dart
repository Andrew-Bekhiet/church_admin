import 'package:church_admin/src/models/notification.dart';
import 'package:church_admin/src/services/notifications/notifications_storage.dart';
import 'package:hive_flutter/adapters.dart';

class NotificationsStorageImpl extends NotificationsStorage {
  final LazyBox<Notification> _box;

  NotificationsStorageImpl(this._box) : assert(_box.isOpen);

  @override
  Future<void> writeNotification(Notification notification) {
    return _box.put(notification.id, notification);
  }

  @override
  Future<Notification?> readNotification(String notificationId) {
    return _box.get(notificationId);
  }
}
