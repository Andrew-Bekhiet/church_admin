import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import 'support/app_routing_harness.dart';

void main() {
  late AppRoutingHarness harness;

  setUp(() => harness = AppRoutingHarness());

  testWidgets(
    'tapping a notification shows its details over the open screen',
    (tester) async {
      final notification = Notification(
        id: 'notification-id',
        title: 'اجتماع الخدام',
        body: 'body',
        sentTime: DateTime(2026),
        senderUID: NotificationsService.localNotificationSenderUID,
      );
      harness.signIn(AppRoutingHarness.approvedUser());
      await harness.pump(tester);
      await harness.open(tester, const SettingsRoute());

      await harness.tapNotification(tester, notification);

      expect(
        find.descendant(
          of: find.byType(NotificationDetailsDialog),
          matching: find.text(notification.title),
        ),
        findsOneWidget,
      );
      expect(find.byType(SettingsScreen), findsOneWidget);
    },
  );
}
