import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import './notifications_settings_storage_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<SyncKVStore>(),
])
void main() {
  group('NotificationsSettingsStorage', () {
    late MockSyncKVStore<NotificationSetting> mockBox;
    late NotificationsSettingsStorage storage;

    setUp(() {
      mockBox = MockSyncKVStore<NotificationSetting>();

      storage = NotificationsSettingsStorage(mockBox);
    });

    test('birthDayTimeSetting', () async {
      const setting = NotificationSetting(
        hours: 12,
        minutes: 0,
        intervalInDays: 7,
      );

      when(
        mockBox.get(NotificationsSettingsStorage.birthDayTimeKey),
      ).thenReturn(setting);
      expect(storage.birthDayTimeSetting, setting);

      await storage.setBirthDayTime(setting);
      verify(mockBox.put('BirthDayTime', setting)).called(1);
    });

    test('kodasTimeSetting', () async {
      const setting = NotificationSetting(
        hours: 13,
        minutes: 0,
        intervalInDays: 7,
      );

      when(
        mockBox.get(NotificationsSettingsStorage.kodasTimeKey),
      ).thenReturn(setting);
      expect(storage.kodasTimeSetting, setting);

      await storage.setKodasTime(setting);
      verify(
        mockBox.put(NotificationsSettingsStorage.kodasTimeKey, setting),
      ).called(1);
    });

    test('attendanceTimeSetting', () async {
      const setting = NotificationSetting(
        hours: 14,
        minutes: 0,
        intervalInDays: 7,
      );

      when(
        mockBox.get(NotificationsSettingsStorage.attendanceTimeKey),
      ).thenReturn(setting);
      expect(storage.attendanceTimeSetting, setting);

      await storage.setAttendanceTime(setting);
      verify(
        mockBox.put(NotificationsSettingsStorage.attendanceTimeKey, setting),
      ).called(1);
    });

    test('confessionTimeSetting', () async {
      const setting = NotificationSetting(
        hours: 15,
        minutes: 0,
        intervalInDays: 7,
      );

      when(
        mockBox.get(NotificationsSettingsStorage.confessionTimeKey),
      ).thenReturn(setting);
      expect(storage.confessionTimeSetting, setting);

      await storage.setConfessionTime(setting);
      verify(
        mockBox.put(
          NotificationsSettingsStorage.confessionTimeKey,
          setting,
        ),
      ).called(1);
    });
  });
}
