import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import './notifications_settings_storage_test.mocks.dart';

@GenerateNiceMocks([MockSpec<Box>()])
void main() {
  group('NotificationsSettingsStorage', () {
    late MockBox<NotificationSetting> mockBox;
    late NotificationsSettingsStorage storage;

    setUp(() {
      mockBox = MockBox<NotificationSetting>();

      when(mockBox.isOpen).thenReturn(true);

      storage = NotificationsSettingsStorage(mockBox);
    });

    test('birthDayTimeSetting', () async {
      const setting = NotificationSetting(12, 0, 7);

      when(mockBox.get(NotificationsSettingsStorage.birthDayTimeKey))
          .thenReturn(setting);
      expect(storage.birthDayTimeSetting, setting);

      await storage.setBirthDayTime(setting);
      verify(mockBox.put('BirthDayTime', setting)).called(1);
    });

    test('kodasTimeSetting', () async {
      const setting = NotificationSetting(13, 0, 7);

      when(mockBox.get(NotificationsSettingsStorage.kodasTimeKey))
          .thenReturn(setting);
      expect(storage.kodasTimeSetting, setting);

      await storage.setKodasTime(setting);
      verify(mockBox.put(NotificationsSettingsStorage.kodasTimeKey, setting))
          .called(1);
    });

    test('meetingTimeSetting', () async {
      const setting = NotificationSetting(14, 0, 7);

      when(mockBox.get(NotificationsSettingsStorage.meetingTimeKey))
          .thenReturn(setting);
      expect(storage.meetingTimeSetting, setting);

      await storage.setMeetingTime(setting);
      verify(mockBox.put(NotificationsSettingsStorage.meetingTimeKey, setting))
          .called(1);
    });

    test('confessionTimeSetting', () async {
      const setting = NotificationSetting(15, 0, 7);

      when(mockBox.get(NotificationsSettingsStorage.confessionTimeKey))
          .thenReturn(setting);
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
