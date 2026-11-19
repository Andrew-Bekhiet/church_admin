import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fakes/fake_box.dart';

void main() {
  group('NotificationsSettingsStorage', () {
    late FakeSyncKVStore<NotificationSetting> box;
    late NotificationsSettingsStorage storage;

    setUp(() {
      box = FakeSyncKVStore<NotificationSetting>();
      storage = NotificationsSettingsStorage(box);
    });

    const chosen = NotificationSetting(
      hours: 12,
      minutes: 30,
      intervalInDays: 3,
    );

    final settings =
        <
          String,
          ({
            Future<void> Function(NotificationSetting) set,
            NotificationSetting Function() read,
          })
        >{
          'birthday': (
            set: (setting) => storage.setBirthDayTime(setting),
            read: () => storage.birthDayTimeSetting,
          ),
          'kodas': (
            set: (setting) => storage.setKodasTime(setting),
            read: () => storage.kodasTimeSetting,
          ),
          'attendance': (
            set: (setting) => storage.setAttendanceTime(setting),
            read: () => storage.attendanceTimeSetting,
          ),
          'confession': (
            set: (setting) => storage.setConfessionTime(setting),
            read: () => storage.confessionTimeSetting,
          ),
        };

    for (final MapEntry(key: name, value: accessors) in settings.entries) {
      test('a chosen $name time is read back', () async {
        await accessors.set(chosen);

        expect(accessors.read(), chosen);
      });

      test('an unset $name time is 11:00 every 7 days', () {
        expect(
          accessors.read(),
          const NotificationSetting(hours: 11, minutes: 0, intervalInDays: 7),
        );
      });
    }

    test('settings are persisted under their stored key names', () async {
      const birthday = NotificationSetting(
        hours: 1,
        minutes: 0,
        intervalInDays: 1,
      );
      const kodas = NotificationSetting(
        hours: 2,
        minutes: 0,
        intervalInDays: 2,
      );
      const attendance = NotificationSetting(
        hours: 3,
        minutes: 0,
        intervalInDays: 3,
      );
      const confession = NotificationSetting(
        hours: 4,
        minutes: 0,
        intervalInDays: 4,
      );

      await storage.setBirthDayTime(birthday);
      await storage.setKodasTime(kodas);
      await storage.setAttendanceTime(attendance);
      await storage.setConfessionTime(confession);

      expect(box.toMap(), {
        'BirthDayTime': birthday,
        'KodasTime': kodas,
        'AttendanceTime': attendance,
        'ConfessionTime': confession,
      });
    });
  });
}
