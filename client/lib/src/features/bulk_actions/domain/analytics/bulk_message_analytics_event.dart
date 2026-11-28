part of 'package:church_admin/src/core/analytics/domain/models/analytics_event.dart';

sealed class BulkMessageAnalyticsEvent extends AnalyticsEvent {
  @override
  String get category => 'bulk_message';

  const BulkMessageAnalyticsEvent();
}

final class BulkMessageRunFinish extends BulkMessageAnalyticsEvent {
  final MessageChannel channel;
  final MessageRunLoaded run;
  final int passCount;

  @override
  String get objectAction => 'run_finish';

  @override
  Json get properties => {
    'channel': switch (channel) {
      WhatsappMessageChannel() => 'whatsapp',
    },
    'recipient_count': run.recipients.length,
    'sent_count': run.sent.length,
    'not_sent_count': _countOf(RecipientStatus.notSent),
    'open_failed_count': _countOf(RecipientStatus.openFailed),
    'skipped_count': run.skipped.length,
    'remaining_count': run.remaining.length,
    'without_phone_count': run.withoutPhone.length,
    'pass_count': passCount,
    'opens_next_chat_on_return': run.opensNextChatOnReturn,
  };

  const BulkMessageRunFinish({
    required this.channel,
    required this.run,
    required this.passCount,
  });

  int _countOf(RecipientStatus status) =>
      run.recipients.where((recipient) => recipient.status == status).length;
}
