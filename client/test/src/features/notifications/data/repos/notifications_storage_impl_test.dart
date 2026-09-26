import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'notifications_storage_impl_test.mocks.dart';

@GenerateNiceMocks([MockSpec<KVStore>()])
void main() {
  tearDown(resetGlobalProviderContainer);

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
          final mockLazyBox = MockKVStore<Notification>();
          when(
            mockLazyBox.get('1'),
          ).thenAnswer((_) async => expectedNotification);

          final unit = NotificationsStorageImpl(
            mockLazyBox,
            userDataWiper: _MockUserDataWiper(),
          );

          final actualNotification = await unit.readNotification('1');

          expect(actualNotification, expectedNotification);

          verify(
            mockLazyBox.get('1'),
          );
        },
      );

      test('Write', () async {
        final mockLazyBox = MockKVStore<Notification>();
        when(
          mockLazyBox.get('1'),
        ).thenAnswer((_) async => expectedNotification);

        final unit = NotificationsStorageImpl(
          mockLazyBox,
          userDataWiper: _MockUserDataWiper(),
        );

        await unit.writeNotification(expectedNotification);

        verify(
          mockLazyBox.put('1', expectedNotification),
        );
      });
    },
  );
}

final class _MockUserDataWiper extends Mock implements UserDataWiper {}
