import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'notifications_storage_impl_test.mocks.dart';

@GenerateNiceMocks([MockSpec<LazyBox<Notification>>()])
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
          when(mockLazyBox.isOpen).thenReturn(true);

          when(mockLazyBox.get('1'))
              .thenAnswer((_) async => expectedNotification);

          final unit = NotificationsStorageImpl(mockLazyBox);

          final actualNotification = await unit.readNotification('1');

          expect(actualNotification, expectedNotification);
        },
      );

      test('Write', () async {
        final mockLazyBox = MockLazyBox();
        when(mockLazyBox.isOpen).thenReturn(true);

        final unit = NotificationsStorageImpl(mockLazyBox);

        await unit.writeNotification(expectedNotification);

        verify(mockLazyBox.put('1', expectedNotification)).called(1);
      });
    },
  );
}
