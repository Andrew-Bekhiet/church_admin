import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_ui/material_ui.dart';

class MessageSummaryView extends StatelessWidget {
  final MessageRunFinished state;

  const MessageSummaryView({required this.state, super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Text(
          state.isStopped ? 'تم إيقاف الإرسال' : 'تم الانتهاء',
          style: theme.textTheme.titleLarge,
        ),
        MessageSummaryGroup(
          label: 'لم يتم الإرسال',
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
          label: 'تم التخطي',
          titleKey: MessageSummaryViewKeys.skippedTitle,
          rows: [
            for (final recipient in state.skipped)
              ListTile(
                key: MessageSummaryViewKeys.skippedFor(recipient.person),
                contentPadding: EdgeInsets.zero,
                title: Text(recipient.person.name),
              ),
          ],
        ),
        MessageSummaryGroup(
          label: 'المتبقون',
          titleKey: MessageSummaryViewKeys.remainingTitle,
          action: state.isStopped
              ? FilledButton.tonal(
                  key: MessageSummaryViewKeys.resumeButton,
                  onPressed: () => context.read<MessageRunCubit>().resume(),
                  child: const Text('استكمال'),
                )
              : null,
          rows: [
            for (final recipient in state.remaining)
              ListTile(
                key: MessageSummaryViewKeys.remainingFor(recipient.person),
                contentPadding: EdgeInsets.zero,
                title: Text(recipient.person.name),
              ),
          ],
        ),
        MessageSummaryGroup(
          label: 'بدون رقم هاتف',
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
          label: 'تم الإرسال',
          titleKey: MessageSummaryViewKeys.sentTitle,
          rows: [
            for (final recipient in state.sent)
              ListTile(
                key: MessageSummaryViewKeys.sentFor(recipient.person),
                contentPadding: EdgeInsets.zero,
                title: Text(recipient.person.name),
                trailing: TextButton(
                  key: MessageSummaryViewKeys.markNotSentFor(recipient.person),
                  onPressed: () => context
                      .read<MessageRunCubit>()
                      .markNotSentIfSent(recipient.person),
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

  static Key skippedFor(Person person) =>
      ValueKey((MessageSummaryViewKeys, #skippedFor, person.id));

  static Key remainingFor(Person person) =>
      ValueKey((MessageSummaryViewKeys, #remainingFor, person.id));

  static Key withoutPhoneFor(Person person) =>
      ValueKey((MessageSummaryViewKeys, #withoutPhoneFor, person.id));

  static Key sentFor(Person person) =>
      ValueKey((MessageSummaryViewKeys, #sentFor, person.id));

  static Key markNotSentFor(Person person) =>
      ValueKey((MessageSummaryViewKeys, #markNotSentFor, person.id));
}
