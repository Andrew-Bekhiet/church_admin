import 'package:church_admin/church_admin.dart';
import 'package:meta/meta.dart';

class NotificationsSettingsStorage {
  static NotificationsSettingsStorage get I =>
      globalProviderContainer.read(notificationsSettingsProvider);

  @visibleForTesting
  static const String birthDayTimeKey = 'BirthDayTime';
  @visibleForTesting
  static const String kodasTimeKey = 'KodasTime';
  @visibleForTesting
  static const String meetingTimeKey = 'MeetingTime';
  @visibleForTesting
  static const String confessionTimeKey = 'ConfessionTime';

  static const NotificationSetting _defaultNotificationSetting =
      NotificationSetting(
    hours: 11,
    minutes: 0,
    intervalInDays: 7,
  );

  final SyncKVStore<NotificationSetting> _box;

  NotificationsSettingsStorage(this._box);

  NotificationSetting get birthDayTimeSetting =>
      _box.get(birthDayTimeKey) ?? _defaultNotificationSetting;

  NotificationSetting get kodasTimeSetting =>
      _box.get(kodasTimeKey) ?? _defaultNotificationSetting;

  NotificationSetting get meetingTimeSetting =>
      _box.get(meetingTimeKey) ?? _defaultNotificationSetting;

  NotificationSetting get confessionTimeSetting =>
      _box.get(confessionTimeKey) ?? _defaultNotificationSetting;

  Future<void> setBirthDayTime(NotificationSetting setting) async {
    await _box.put(birthDayTimeKey, setting);
  }

  Future<void> setKodasTime(NotificationSetting setting) async {
    await _box.put(kodasTimeKey, setting);
  }

  Future<void> setMeetingTime(NotificationSetting setting) async {
    await _box.put(meetingTimeKey, setting);
  }

  Future<void> setConfessionTime(NotificationSetting setting) async {
    await _box.put(confessionTimeKey, setting);
  }
}
