import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'notifications_storage_impl_test.mocks.dart';

@GenerateNiceMocks(
  [MockSpec<HiveInterface>(), MockSpec<LazyBox<Notification>>()],
)
void main() {
  group(
    'NotificationsStorageImpl =>',
    () {
      final expectedNotification = Notification(
        id: '1',
        title: 'title',
        body: 'body',
        senderUID: 'senderUID',
        sentTime: DateTime.now(),
      );

      test(
        'Read',
        () async {
          final mockLazyBox = MockLazyBox();
          when(mockLazyBox.get('1'))
              .thenAnswer((_) async => expectedNotification);

          final mockHive = MockHiveInterface();
          when(mockHive.openLazyBox<Notification>('notifications'))
              .thenAnswer((_) async => mockLazyBox);

          final unit = NotificationsStorageImpl(mockHive, 'notifications');

          final actualNotification = await unit.readNotification('1');

          expect(actualNotification, expectedNotification);

          verifyInOrder([
            mockHive.openLazyBox<Notification>('notifications'),
            mockLazyBox.get('1'),
            mockLazyBox.close(),
          ]);
        },
      );

      test('Write', () async {
        final mockLazyBox = MockLazyBox();
        when(mockLazyBox.get('1'))
            .thenAnswer((_) async => expectedNotification);

        final mockHive = MockHiveInterface();
        when(mockHive.openLazyBox<Notification>('notifications'))
            .thenAnswer((_) async => mockLazyBox);

        final unit = NotificationsStorageImpl(mockHive, 'notifications');

        await unit.writeNotification(expectedNotification);

        verifyInOrder([
          mockHive.openLazyBox<Notification>('notifications'),
          mockLazyBox.put('1', expectedNotification),
          mockLazyBox.close(),
        ]);
      });
    },
  );
}
