import 'package:church_admin/church_admin.dart';
import 'package:hive_flutter/hive_flutter.dart';

class NotificationsSettingsStorage {
  static NotificationsSettingsStorage get I =>
      globalProviderContainer.read(notificationsSettingsProvider);

  static const _birthDayTimeKey = 'BirthDayTime';
  static const _kodasTimeKey = 'KodasTime';
  static const _meetingTimeKey = 'MeetingTime';
  static const _confessionTimeKey = 'ConfessionTime';

  static const NotificationSetting _defaultNotificationSetting =
      NotificationSetting(11, 0, 7);

  final Box<NotificationSetting> _box;

  NotificationsSettingsStorage(this._box) : assert(_box.isOpen);

  NotificationSetting get birthDayTimeSetting =>
      _box.get(_birthDayTimeKey) ?? _defaultNotificationSetting;

  NotificationSetting get kodasTimeSetting =>
      _box.get(_kodasTimeKey) ?? _defaultNotificationSetting;

  NotificationSetting get meetingTimeSetting =>
      _box.get(_meetingTimeKey) ?? _defaultNotificationSetting;

  NotificationSetting get confessionTimeSetting =>
      _box.get(_confessionTimeKey) ?? _defaultNotificationSetting;

  Future<void> setBirthDayTime(NotificationSetting setting) async {
    await _box.put(_birthDayTimeKey, setting);
  }

  Future<void> setKodasTime(NotificationSetting setting) async {
    await _box.put(_kodasTimeKey, setting);
  }

  Future<void> setMeetingTime(NotificationSetting setting) async {
    await _box.put(_meetingTimeKey, setting);
  }

  Future<void> setConfessionTime(NotificationSetting setting) async {
    await _box.put(_confessionTimeKey, setting);
  }
}
