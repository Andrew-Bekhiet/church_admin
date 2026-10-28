import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_ui/material_ui.dart';

class BulkWhatsappQueueView extends StatelessWidget {
  final BulkWhatsappSending state;

  const BulkWhatsappQueueView({required this.state, super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cubit = context.read<BulkWhatsappMessageCubit>();
    final current = state.current;
    final reachableCount = state.reachable.length;

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Text(
          '${state.currentPosition} / $reachableCount',
          key: BulkWhatsappQueueViewKeys.progress,
          style: theme.textTheme.titleMedium,
          textAlign: TextAlign.center,
        ),
        LinearProgressIndicator(value: state.currentPosition / reachableCount),
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
                  key: BulkWhatsappQueueViewKeys.currentName,
                  style: theme.textTheme.titleLarge,
                ),
                if (current.phones.length > 1)
                  DropdownButtonFormField<PhoneContact>(
                    key: ValueKey(current.person.id),
                    initialValue: current.selectedPhone,
                    isExpanded: true,
                    decoration: const InputDecoration(labelText: 'رقم الهاتف'),
                    items: [
                      for (final phone in current.phones)
                        DropdownMenuItem(
                          value: phone,
                          child: Text(
                            phone.labelledPhone,
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                    ],
                    onChanged: (phone) =>
                        phone != null ? cubit.selectPhone(phone) : null,
                  )
                else if (current.selectedPhone case final phone?)
                  Text(
                    phone.labelledPhone,
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.end,
                    style: theme.textTheme.bodyLarge,
                  ),
                MessageBubble(child: Text(state.currentMessage)),
              ],
            ),
          ),
        ),
        if (state.hasOpenFailed)
          Text(
            'تعذر فتح واتساب',
            key: BulkWhatsappQueueViewKeys.openFailed,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.error,
            ),
          ),
        AutoAdvanceCheckboxTile(value: state.autoAdvance),
        Row(
          spacing: 8,
          children: [
            TextButton(
              key: BulkWhatsappQueueViewKeys.stopButton,
              onPressed: cubit.stop,
              child: const Text('ايقاف'),
            ),
            TextButton(
              key: BulkWhatsappQueueViewKeys.skipButton,
              onPressed: cubit.skipCurrent,
              child: const Text('تخطي'),
            ),
            Expanded(
              child: state.isAwaitingReturn
                  ? FilledButton(
                      key: BulkWhatsappQueueViewKeys.nextButton,
                      onPressed: () =>
                          unawaited(cubit.continueAfterOpenedChat()),
                      child: const Text('التالي'),
                    )
                  : FilledButton.icon(
                      key: BulkWhatsappQueueViewKeys.openChatButton,
                      icon: const ImageIcon(AssetImage('assets/whatsapp.png')),
                      label: const Text('فتح المحادثة'),
                      onPressed: () => unawaited(cubit.openCurrentChat()),
                    ),
            ),
          ],
        ),
      ],
    );
  }
}

abstract final class BulkWhatsappQueueViewKeys {
  static const Key progress = ValueKey('Bulk Whatsapp Progress Key');
  static const Key currentName = ValueKey('Bulk Whatsapp Current Name Key');
  static const Key openFailed = ValueKey('Bulk Whatsapp Open Failed Key');
  static const Key stopButton = ValueKey('Bulk Whatsapp Stop Key');
  static const Key skipButton = ValueKey('Bulk Whatsapp Skip Key');
  static const Key nextButton = ValueKey('Bulk Whatsapp Next Key');
  static const Key openChatButton = ValueKey('Bulk Whatsapp Open Chat Key');
}
