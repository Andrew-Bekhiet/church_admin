import 'package:church_admin/church_admin.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';

class MessageQueueView extends StatelessWidget {
  final MessageRunSending state;
  final Widget channelIcon;
  final ValueChanged<Person> onMarkNotSent;
  final VoidCallback onCancelNextChatCountdown;
  final ValueChanged<PhoneContact> onSelectPhone;
  final ValueChanged<String> onEditMessage;
  final VoidCallback onStop;
  final VoidCallback onSkip;
  final VoidCallback onOpenChat;
  final VoidCallback onReturnFromChat;

  const MessageQueueView({
    required this.state,
    required this.channelIcon,
    required this.onMarkNotSent,
    required this.onCancelNextChatCountdown,
    required this.onSelectPhone,
    required this.onEditMessage,
    required this.onStop,
    required this.onSkip,
    required this.onOpenChat,
    required this.onReturnFromChat,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final current = state.current;
    final withPhoneCount = state.withPhone.length;

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        if (state.sentToConfirm case final person?)
          MaterialBanner(
            key: MessageQueueViewKeys.sentConfirmation,
            margin: const EdgeInsetsDirectional.only(bottom: 16),
            backgroundColor: theme.colorScheme.tertiaryContainer,
            forceActionsBelow: true,
            leading: Icon(
              Symbols.mark_chat_read,
              color: theme.colorScheme.onTertiaryContainer,
            ),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              spacing: 4,
              children: [
                Text(
                  person.name,
                  key: MessageQueueViewKeys.sentConfirmationName,
                  style: theme.textTheme.titleMedium,
                ),
                const Text('هل تم إرسال الرسالة؟'),
                if (state.secondsBeforeNextChat case final seconds?)
                  Wrap(
                    spacing: 4,
                    children: [
                      const Text('فتح المحادثة التالية'),
                      Text(
                        _nextChatCountdownLabel(seconds),
                        key: MessageQueueViewKeys.sentConfirmationCountdown,
                      ),
                    ],
                  ),
              ],
            ),
            actions: [
              TextButton(
                key: MessageQueueViewKeys.markNotSent,
                onPressed: () {
                  onCancelNextChatCountdown();
                  onMarkNotSent(person);
                },
                child: const Text('لم يتم الإرسال'),
              ),
            ],
          ),
        Text(
          '${state.currentPositionAmongWithPhone} / $withPhoneCount',
          key: MessageQueueViewKeys.progress,
          style: theme.textTheme.titleMedium,
          textAlign: TextAlign.center,
        ),
        LinearProgressIndicator(
          value: state.currentPositionAmongWithPhone / withPhoneCount,
        ),
        Card.filled(
          color: theme.colorScheme.surfaceContainerHigh,
          margin: const EdgeInsets.symmetric(vertical: 16),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              spacing: 8,
              children: [
                Text(
                  current.person.name,
                  key: MessageQueueViewKeys.currentName,
                  style: theme.textTheme.titleLarge,
                ),
                if (current.phones.length > 1)
                  DropdownButtonFormField<PhoneContact>(
                    key: MessageQueueViewKeys.phonePickerFor(
                      current.person,
                    ),
                    initialValue: current.selectedPhone,
                    isExpanded: true,
                    decoration: const InputDecoration(labelText: 'رقم الهاتف'),
                    items: [
                      for (final phone in current.phones)
                        DropdownMenuItem(
                          value: phone,
                          child: Text(
                            phone.maybeLabelledPhone,
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                    ],
                    onTap: onCancelNextChatCountdown,
                    onChanged: (phone) =>
                        phone != null ? onSelectPhone(phone) : null,
                  )
                else if (current.selectedPhone case final phone?)
                  Text(
                    phone.maybeLabelledPhone,
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.end,
                    style: theme.textTheme.bodyLarge,
                  ),
                Listener(
                  onPointerDown: (_) => onCancelNextChatCountdown(),
                  child: TextFormField(
                    key: MessageQueueViewKeys.messageFieldFor(current.person),
                    initialValue: current.message,
                    readOnly: state.isAwaitingReturn,
                    maxLines: null,
                    decoration: const InputDecoration(labelText: 'الرسالة'),
                    onChanged: onEditMessage,
                  ),
                ),
              ],
            ),
          ),
        ),
        if (state.hasCurrentOpenFailed)
          Text(
            'تعذر فتح واتساب',
            key: MessageQueueViewKeys.openFailed,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.error,
            ),
          ),
        OpensNextChatOnReturnCheckboxTile(value: state.opensNextChatOnReturn),
        Row(
          spacing: 8,
          children: [
            TextButton(
              key: MessageQueueViewKeys.stopButton,
              onPressed: onStop,
              child: const Text('إيقاف'),
            ),
            TextButton(
              key: MessageQueueViewKeys.skipButton,
              onPressed: state.isAwaitingReturn ? null : onSkip,
              child: const Text('تخطي'),
            ),
            Expanded(
              child: state.isAwaitingReturn
                  ? FilledButton(
                      key: MessageQueueViewKeys.nextButton,
                      onPressed: onReturnFromChat,
                      child: const Text('التالي'),
                    )
                  : FilledButton.icon(
                      key: MessageQueueViewKeys.openChatButton,
                      icon: channelIcon,
                      label: const Text('فتح المحادثة'),
                      onPressed: onOpenChat,
                    ),
            ),
          ],
        ),
      ],
    );
  }

  String _nextChatCountdownLabel(int seconds) => switch (seconds) {
    1 => 'خلال ثانية',
    2 => 'خلال ثانيتين',
    _ => 'خلال $seconds ثوانٍ',
  };
}

abstract final class MessageQueueViewKeys extends WidgetKeys {
  static const Key progress = ValueKey((MessageQueueViewKeys, #progress));
  static const Key currentName = ValueKey((MessageQueueViewKeys, #currentName));
  static const Key openFailed = ValueKey((MessageQueueViewKeys, #openFailed));
  static const Key stopButton = ValueKey((MessageQueueViewKeys, #stopButton));
  static const Key skipButton = ValueKey((MessageQueueViewKeys, #skipButton));
  static const Key nextButton = ValueKey((MessageQueueViewKeys, #nextButton));
  static const Key openChatButton = ValueKey((
    MessageQueueViewKeys,
    #openChatButton,
  ));
  static const Key sentConfirmation = ValueKey((
    MessageQueueViewKeys,
    #sentConfirmation,
  ));
  static const Key sentConfirmationName = ValueKey((
    MessageQueueViewKeys,
    #sentConfirmationName,
  ));
  static const Key sentConfirmationCountdown = ValueKey((
    MessageQueueViewKeys,
    #sentConfirmationCountdown,
  ));
  static const Key markNotSent = ValueKey((MessageQueueViewKeys, #markNotSent));

  static Key phonePickerFor(Person person) =>
      ValueKey((MessageQueueViewKeys, #phonePickerFor, person.id));

  static Key messageFieldFor(Person person) =>
      ValueKey((MessageQueueViewKeys, #messageFieldFor, person.id));
}
