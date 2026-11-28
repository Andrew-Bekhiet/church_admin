import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fakes/mock_launcher_service.dart';

void main() {
  group('bulk message analytics contract', () {
    const phone = PhoneContact(id: 'c1', phone: '01000000001');

    List<Recipient> recipientsWith(
      RecipientStatus status, {
      required int count,
      bool hasPhone = true,
    }) => List.generate(
      count,
      (index) => Recipient.of(
        Person(
          id: '${status.name}-$hasPhone-$index',
          name: 'شخص $index',
          contacts: hasPhone ? const [phone] : const [],
        ),
      ).copyWith(status: status),
    );

    final runFinish = BulkMessageRunFinish(
      channel: WhatsappMessageChannel(
        launcherService: MockLauncherService(),
        phoneNumberService: const PhoneNumberService(),
      ),
      run: MessageRunPassEnded(
        recipients: [
          ...recipientsWith(RecipientStatus.sent, count: 1),
          ...recipientsWith(RecipientStatus.notSent, count: 2),
          ...recipientsWith(RecipientStatus.openFailed, count: 3),
          ...recipientsWith(RecipientStatus.skipped, count: 4),
          ...recipientsWith(RecipientStatus.pending, count: 5),
          ...recipientsWith(RecipientStatus.pending, count: 6, hasPhone: false),
        ],
        opensNextChatOnReturn: true,
      ),
      passCount: 2,
    );

    final contracts = <(AnalyticsEvent, String, Json)>[
      (
        runFinish,
        'bulk_message:run_finish',
        {
          'channel': 'whatsapp',
          'recipient_count': 21,
          'sent_count': 1,
          'not_sent_count': 2,
          'open_failed_count': 3,
          'skipped_count': 4,
          'remaining_count': 5,
          'without_phone_count': 6,
          'pass_count': 2,
          'opens_next_chat_on_return': true,
        },
      ),
    ];

    for (final (event, expectedName, expectedProperties) in contracts) {
      final sentKeys = expectedProperties.isEmpty
          ? 'no properties'
          : expectedProperties.keys.join(', ');

      test('$expectedName sends $sentKeys', () {
        expect(event.name, expectedName);
        expect(event.properties, expectedProperties);
      });
    }
  });
}
