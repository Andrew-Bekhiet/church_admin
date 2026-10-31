import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class BulkWhatsappSummaryView extends StatelessWidget {
  final BulkWhatsappFinished state;

  const BulkWhatsappSummaryView({required this.state, super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final openedCount = state.withPhoneCountOf(WhatsappRecipientStatus.opened);
    final skippedCount = state.withPhoneCountOf(
      WhatsappRecipientStatus.skipped,
    );
    final withoutPhone = state.withoutPhone.toList();

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Text(
          state.isStopped ? 'تم إيقاف الإرسال' : 'تم الانتهاء',
          style: theme.textTheme.titleLarge,
        ),
        Text(
          'تم فتح $openedCount محادثة وتخطي $skippedCount',
          key: BulkWhatsappSummaryViewKeys.counts,
        ),
        if (withoutPhone.isNotEmpty) ...[
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Text('بدون رقم هاتف', style: theme.textTheme.titleMedium),
          ),
          for (final recipient in withoutPhone)
            ListTile(
              key: BulkWhatsappSummaryViewKeys.withoutPhoneFor(
                recipient.person,
              ),
              contentPadding: EdgeInsets.zero,
              title: Text(recipient.person.name),
            ),
        ],
        Padding(
          padding: const EdgeInsets.only(top: 16),
          child: FilledButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('تم'),
          ),
        ),
      ],
    );
  }
}

abstract final class BulkWhatsappSummaryViewKeys {
  static const Key counts = ValueKey('Bulk Whatsapp Summary Counts Key');

  static Key withoutPhoneFor(Person person) =>
      ValueKey('Bulk Whatsapp Summary Without Phone Key ${person.id}');
}
