import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class MessageSummaryView extends StatelessWidget {
  final MessageRunPassEnded state;
  final VoidCallback onResume;
  final ValueChanged<Person> onMarkNotSent;

  const MessageSummaryView({
    required this.state,
    required this.onResume,
    required this.onMarkNotSent,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Text(
          state.hasRemaining ? 'تم إيقاف الإرسال' : 'تم الانتهاء',
          style: theme.textTheme.titleLarge,
        ),
        MessageSummaryGroup(
          title: 'لم يتم الإرسال أو تعذر الفتح',
          titleKey: MessageSummaryViewKeys.notSentOrOpenFailedTitle,
          rows: [
            for (final recipient in state.notSentOrOpenFailed)
              ListTile(
                key: MessageSummaryViewKeys.notSentOrOpenFailedFor(
                  recipient.person,
                ),
                contentPadding: EdgeInsets.zero,
                title: Text(recipient.person.name),
                subtitle: recipient.status == RecipientStatus.openFailed
                    ? Text(
                        'تعذر فتح التطبيق',
                        key: MessageSummaryViewKeys.openFailedFor(
                          recipient.person,
                        ),
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: theme.colorScheme.error,
                        ),
                      )
                    : null,
              ),
          ],
        ),
        MessageSummaryGroup(
          title: 'تم التخطي',
          titleKey: MessageSummaryViewKeys.skippedTitle,
          rows: [
            for (final recipient in state.skipped)
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(recipient.person.name),
              ),
          ],
        ),
        MessageSummaryGroup(
          title: 'المتبقون',
          titleKey: MessageSummaryViewKeys.remainingTitle,
          action: FilledButton.tonal(
            key: MessageSummaryViewKeys.resumeButton,
            onPressed: onResume,
            child: const Text('استكمال'),
          ),
          rows: [
            for (final recipient in state.remaining)
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(recipient.person.name),
              ),
          ],
        ),
        MessageSummaryGroup(
          title: 'بدون رقم هاتف',
          titleKey: MessageSummaryViewKeys.withoutPhoneTitle,
          rows: [
            for (final recipient in state.withoutPhone)
              ListTile(
                key: MessageSummaryViewKeys.withoutPhoneFor(recipient.person),
                contentPadding: EdgeInsets.zero,
                title: Text(recipient.person.name),
                onTap: () => unawaited(
                  ViewPersonRoute(
                    id: recipient.person.id,
                    person: recipient.person,
                  ).push(context),
                ),
              ),
          ],
        ),
        MessageSummaryGroup(
          title: 'تم الإرسال',
          titleKey: MessageSummaryViewKeys.sentTitle,
          rows: [
            for (final recipient in state.sent)
              ListTile(
                key: MessageSummaryViewKeys.sentFor(recipient.person),
                contentPadding: EdgeInsets.zero,
                title: Text(recipient.person.name),
                trailing: TextButton(
                  key: MessageSummaryViewKeys.markNotSentFor(recipient.person),
                  onPressed: () => onMarkNotSent(recipient.person),
                  child: const Text('لم يتم الإرسال'),
                ),
              ),
          ],
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(top: 16),
          child: FilledButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('تم'),
          ),
        ),
      ],
    );
  }
}

abstract final class MessageSummaryViewKeys extends WidgetKeys {
  static const Key notSentOrOpenFailedTitle = ValueKey((
    MessageSummaryViewKeys,
    #notSentOrOpenFailedTitle,
  ));
  static const Key skippedTitle = ValueKey((
    MessageSummaryViewKeys,
    #skippedTitle,
  ));
  static const Key remainingTitle = ValueKey((
    MessageSummaryViewKeys,
    #remainingTitle,
  ));
  static const Key withoutPhoneTitle = ValueKey((
    MessageSummaryViewKeys,
    #withoutPhoneTitle,
  ));
  static const Key sentTitle = ValueKey((MessageSummaryViewKeys, #sentTitle));
  static const Key resumeButton = ValueKey((
    MessageSummaryViewKeys,
    #resumeButton,
  ));

  static Key notSentOrOpenFailedFor(Person person) =>
      ValueKey((MessageSummaryViewKeys, #notSentOrOpenFailedFor, person.id));

  static Key openFailedFor(Person person) =>
      ValueKey((MessageSummaryViewKeys, #openFailedFor, person.id));

  static Key withoutPhoneFor(Person person) =>
      ValueKey((MessageSummaryViewKeys, #withoutPhoneFor, person.id));

  static Key sentFor(Person person) =>
      ValueKey((MessageSummaryViewKeys, #sentFor, person.id));

  static Key markNotSentFor(Person person) =>
      ValueKey((MessageSummaryViewKeys, #markNotSentFor, person.id));
}
