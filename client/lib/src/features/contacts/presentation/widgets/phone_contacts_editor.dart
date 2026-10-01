import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class PhoneContactsEditor extends StatelessWidget {
  final VoidCallback? onImportFromContacts;

  const PhoneContactsEditor({this.onImportFromContacts, super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<PhoneContactsEditorCubit>();
    final theme = Theme.of(context);

    return BlocBuilder<PhoneContactsEditorCubit, PhoneContactsEditorState>(
      builder: (context, state) => Card.filled(
        margin: const EdgeInsets.symmetric(vertical: 8),
        color: theme.colorScheme.surfaceContainerHigh,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 12,
            children: [
              Row(
                spacing: 8,
                children: [
                  Icon(Symbols.contact_phone, color: theme.colorScheme.primary),
                  Text(
                    state.familyOnly ? 'أرقام الأسرة' : 'أرقام الهاتف',
                    style: theme.textTheme.titleMedium,
                  ),
                ],
              ),
              if (state.drafts.isEmpty)
                Text(
                  state.familyOnly
                      ? 'أضف أرقام الأب والأم وباقي مسؤولي الأسرة'
                      : 'أضف رقم الشخص وأرقام والديه',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
              for (final draft in state.drafts)
                PhoneContactDraftField(key: ValueKey(draft.key), draft: draft),
              if (state.familyOnly)
                const FamilyPhoneContactMenuButton(label: 'إضافة رقم')
              else
                Row(
                  spacing: 8,
                  children: [
                    Expanded(
                      child: FilledButton.tonalIcon(
                        key: PhoneContactsEditorKeys.addButton,
                        style: theme.filledTonalButtonStyleWorkaround,
                        icon: const Icon(Symbols.add),
                        label: const Text('رقم جديد'),
                        onPressed: () =>
                            cubit.add(const FreePhoneContactLabel(null)),
                      ),
                    ),
                    const Expanded(
                      child: FamilyPhoneContactMenuButton(label: 'رقم للأسرة'),
                    ),
                  ],
                ),
              if (onImportFromContacts != null)
                OutlinedButton.icon(
                  key: PhoneContactsEditorKeys.importButton,
                  icon: const Icon(Symbols.contacts),
                  label: const Text('استيراد من جهات الاتصال'),
                  onPressed: onImportFromContacts,
                ),
            ],
          ),
        ),
      ),
    );
  }
}

abstract final class PhoneContactsEditorKeys {
  static const Key addButton = Key('phone_contacts_editor_add');
  static const Key importButton = Key('phone_contacts_editor_import');
}
