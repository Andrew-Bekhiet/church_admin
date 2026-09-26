import 'package:church_admin/church_admin.dart';

class NotificationsStorageImpl implements NotificationsStorage {
  final KVStore<Notification> _store;

  NotificationsStorageImpl(this._store) {
    UserDataWiper.I.register(clear);
  }

  @override
  Future<void> writeNotification(Notification notification) async {
    await _store.put(notification.id, notification);
  }

  @override
  Future<Notification?> readNotification(String notificationId) async =>
      _store.get(notificationId);

  @override
  Future<void> clear() => _store.clear();
}
