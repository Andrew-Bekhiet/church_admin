part of 'package:church_admin/src/core/analytics/domain/models/analytics_event.dart';

sealed class BulkMessageAnalyticsEvent extends AnalyticsEvent {
  @override
  String get category => 'bulk_message';

  const BulkMessageAnalyticsEvent();
}

final class BulkMessageRunFinish extends BulkMessageAnalyticsEvent {
  final MessageChannel channel;
  final List<Recipient> recipients;
  final int passCount;
  final bool opensNextChatOnReturn;

  @override
  String get objectAction => 'run_finish';

  @override
  Json get properties => {
    'channel': switch (channel) {
      WhatsappMessageChannel() => 'whatsapp',
    },
    'recipient_count': recipients.length,
    'sent_count': _countOf(RecipientStatus.sent),
    'not_sent_count': _countOf(RecipientStatus.notSent),
    'open_failed_count': _countOf(RecipientStatus.openFailed),
    'skipped_count': _countOf(RecipientStatus.skipped),
    'remaining_count': recipients
        .where((recipient) => recipient.isRemaining)
        .length,
    'without_phone_count': recipients
        .whereNot((recipient) => recipient.hasPhone)
        .length,
    'pass_count': passCount,
    'opens_next_chat_on_return': opensNextChatOnReturn,
  };

  const BulkMessageRunFinish({
    required this.channel,
    required this.recipients,
    required this.passCount,
    required this.opensNextChatOnReturn,
  });

  int _countOf(RecipientStatus status) =>
      recipients.where((recipient) => recipient.status == status).length;
}
