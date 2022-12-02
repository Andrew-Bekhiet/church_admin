import 'package:church_admin/src/models/notification.dart';
import 'package:hive_flutter/adapters.dart';

class NotificationsStorageImpl {
  final LazyBox<Notification> _box;

  NotificationsStorageImpl(this._box) : assert(_box.isOpen);

  Future<void> writeNotification(Notification notification) {
    return _box.put(notification.id, notification);
  }

  Future<Notification?> readNotification(String notificationId) {
    return _box.get(notificationId);
  }
}
