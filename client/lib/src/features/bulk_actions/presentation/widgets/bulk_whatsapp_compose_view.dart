import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';

class BulkWhatsappComposeView extends StatelessWidget {
  final BulkWhatsappComposing state;
  final MessageTemplateEditingController templateController;

  const BulkWhatsappComposeView({
    required this.state,
    required this.templateController,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final previewRecipient = state.withPhone.firstOrNull;
    final withPhoneCount = state.withPhone.length;
    final withoutPhoneCount = state.withoutPhone.length;

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        MessageTemplateField(controller: templateController),
        if (previewRecipient != null)
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
                    'معاينة: ${previewRecipient.person.name}',
                    style: theme.textTheme.titleMedium,
                  ),
                  MessageBubble(
                    child: ListenableBuilder(
                      listenable: templateController,
                      builder: (context, _) => Text(
                        templateController.template.renderFor(
                          previewRecipient.person,
                        ),
                        key: BulkWhatsappComposeViewKeys.preview,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        Text(
          'سيتم فتح محادثة مع $withPhoneCount من ${state.recipients.length}',
          style: theme.textTheme.titleMedium,
        ),
        if (withoutPhoneCount > 0)
          Text(
            '$withoutPhoneCount بدون رقم هاتف',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.error,
            ),
          ),
        OpensNextChatOnReturnCheckboxTile(value: state.opensNextChatOnReturn),
        ListenableBuilder(
          listenable: templateController,
          builder: (context, _) {
            final canStart =
                withPhoneCount > 0 &&
                templateController.template.text.trim().isNotEmpty;

            return FilledButton.icon(
              key: BulkWhatsappComposeViewKeys.startButton,
              style: theme.largeFilledButtonStyle,
              icon: const Icon(Symbols.send),
              label: const Text('ابدأ'),
              onPressed: canStart
                  ? () => context
                        .read<BulkWhatsappMessageCubit>()
                        .saveTextAndStart(
                          templateController.template,
                        )
                  : null,
            );
          },
        ),
      ],
    );
  }
}

abstract final class BulkWhatsappComposeViewKeys {
  static const Key preview = ValueKey('Bulk Whatsapp Preview Key');
  static const Key startButton = ValueKey('Bulk Whatsapp Start Key');
}
