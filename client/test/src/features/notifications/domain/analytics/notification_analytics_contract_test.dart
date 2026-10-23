import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  group('notification analytics contract', () {
    final notification = Notification(
      id: 'n1',
      title: 'تذكير',
      body: 'محتوى',
      sentTime: DateTime(2026, 10, 23),
      senderUID: 'u1',
      type: NotificationType.manualPushRemote,
      imageURL: 'https://example.com/image.png',
      additionalData: const {'query': '{}'},
    );

    final contracts = <(AnalyticsEvent, String, Json)>[
      (
        NotificationOpen(
          notification,
          source: NotificationOpenSource.fcmOpenedApp,
        ),
        'notification:notification_open',
        {
          'source': 'fcmOpenedApp',
          'notification_type': 'manualPushRemote',
          'has_image': true,
          'has_query': true,
        },
      ),
      (
        NotificationSearchResultsOpen(notification),
        'notification:search_results_open',
        {'notification_type': 'manualPushRemote'},
      ),
      (
        const NotificationPermissionRequest(
          previousPermissionStatus: PermissionStatus.denied,
          isGranted: true,
        ),
        'notification:permission_request',
        {'previous_permission_status': 'denied', 'is_granted': true},
      ),
      (
        const NotificationReminderFire(
          reminderType: 'kodas',
          personCount: 4,
          isSkippedEmpty: false,
        ),
        'notification:reminder_fire',
        {
          'reminder_type': 'kodas',
          'person_count': 4,
          'is_skipped_empty': false,
        },
      ),
    ];

    for (final (event, expectedName, expectedProperties) in contracts) {
      test('$expectedName sends ${expectedProperties.keys.join(', ')}', () {
        expect(event.name, expectedName);
        expect(event.properties, expectedProperties);
      });
    }

    test('opening a plain local notification reports no image or query', () {
      expect(
        NotificationOpen(
          Notification(
            id: 'n2',
            title: 'تذكير',
            body: 'محتوى',
            sentTime: DateTime(2026, 10, 23),
            senderUID: 'u1',
            type: NotificationType.local,
          ),
          source: NotificationOpenSource.localTap,
        ).properties,
        {
          'source': 'localTap',
          'notification_type': 'local',
          'has_image': false,
          'has_query': false,
        },
      );
    });
  });
}
