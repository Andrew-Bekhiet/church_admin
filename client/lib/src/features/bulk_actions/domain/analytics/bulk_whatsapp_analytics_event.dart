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
  final bool isAutoAdvance;
  final bool isStopped;

  @override
  String get objectAction => 'run_finish';

  @override
  Json get properties => {
    'recipient_count': recipientCount,
    'opened_count': openedCount,
    'skipped_count': skippedCount,
    'without_phone_count': withoutPhoneCount,
    'is_auto_advance': isAutoAdvance,
    'is_stopped': isStopped,
  };

  BulkWhatsappRunFinish(BulkWhatsappSending run, {required this.isStopped})
    : recipientCount = run.recipients.length,
      openedCount = run.countOf(WhatsappRecipientStatus.opened),
      skippedCount = run.countOf(WhatsappRecipientStatus.skipped),
      withoutPhoneCount = run.withoutPhone.length,
      isAutoAdvance = run.autoAdvance;
}
