import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';

class PhoneContactsEditor extends StatelessWidget {
  final PhoneContactsFormController form;
  final VoidCallback? onImportFromContacts;

  const PhoneContactsEditor({
    required this.form,
    this.onImportFromContacts,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AdvancedFieldBuilder<
      List<PhoneContactFormController>,
      PhoneContactError
    >(
      field: form.contacts,
      builder: (context, contacts, _) => Card.filled(
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
                    form.familyOnly ? 'أرقام الأسرة' : 'أرقام الهاتف',
                    style: theme.textTheme.titleMedium,
                  ),
                ],
              ),
              if (contacts.value.isEmpty)
                Text(
                  form.familyOnly
                      ? 'أضف أرقام الأب والأم وباقي مسؤولي الأسرة'
                      : 'أضف رقم الشخص وأرقام والديه',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
              for (final contact in contacts.value)
                PhoneContactField(
                  key: ValueKey(contact.key),
                  contact: contact,
                  form: form,
                ),
              if (form.familyOnly)
                FamilyPhoneContactMenuButton(form: form, label: 'إضافة رقم')
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
                            form.add(const FreePhoneContactLabel(null)),
                      ),
                    ),
                    Expanded(
                      child: FamilyPhoneContactMenuButton(
                        form: form,
                        label: 'رقم للأسرة',
                      ),
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
