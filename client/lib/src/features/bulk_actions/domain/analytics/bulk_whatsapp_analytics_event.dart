part of 'package:church_admin/src/core/analytics/domain/models/analytics_event.dart';

sealed class BulkWhatsappAnalyticsEvent extends AnalyticsEvent {
  @override
  String get category => 'bulk_whatsapp';

  const BulkWhatsappAnalyticsEvent();
}

final class BulkWhatsappRunFinish extends BulkWhatsappAnalyticsEvent {
  final int recipientCount;
  final int openedCount;
  final int skippedCount;
  final int withoutPhoneCount;
  final bool opensNextChatOnReturn;
  final bool isStopped;

  @override
  String get objectAction => 'run_finish';

  @override
  Json get properties => {
    'recipient_count': recipientCount,
    'opened_count': openedCount,
    'skipped_count': skippedCount,
    'without_phone_count': withoutPhoneCount,
    'opens_next_chat_on_return': opensNextChatOnReturn,
    'is_stopped': isStopped,
  };

  const BulkWhatsappRunFinish({
    required this.recipientCount,
    required this.openedCount,
    required this.skippedCount,
    required this.withoutPhoneCount,
    required this.opensNextChatOnReturn,
    required this.isStopped,
  });
}
