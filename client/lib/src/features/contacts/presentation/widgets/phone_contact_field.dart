import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';

class PhoneContactField extends StatelessWidget {
  final PhoneContactFormController contact;
  final PhoneContactsFormController form;

  const PhoneContactField({
    required this.contact,
    required this.form,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      spacing: 4,
      children: [
        AdvancedFieldBuilder<PhoneContactLabel, PhoneContactError>(
          field: contact.label,
          builder: (context, label, _) => Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            spacing: 8,
            children: [
              Flexible(
                child: PhoneContactLabelPicker(
                  key: PhoneContactFieldKeys.labelPicker(contact.key),
                  label: label.value,
                  familyOnly: form.familyOnly,
                  onChanged: (label) => form.changeLabel(contact, label),
                ),
              ),
              if (contact.canBeMain)
                AdvancedFieldBuilder<bool, PhoneContactError>(
                  field: contact.isMainPhone,
                  builder: (context, isMainPhone, _) => FilterChip(
                    key: PhoneContactFieldKeys.mainChip(contact.key),
                    avatar: isMainPhone.value ? null : const Icon(Symbols.star),
                    label: const Text('أساسي'),
                    selected: isMainPhone.value,
                    onSelected: (_) => form.toggleMain(contact),
                  ),
                ),
            ],
          ),
        ),
        AdvancedTextInput<PhoneContactError>(
          key: PhoneContactFieldKeys.phoneField(contact.key),
          field: contact.phone,
          translateError: (error) => error.message,
          hintText: 'مثال: 01234...',
          prefixIcon: const Icon(Symbols.call),
          suffixIcon: IconButton(
            key: PhoneContactFieldKeys.removeButton(contact.key),
            tooltip: 'حذف الرقم',
            icon: const Icon(Symbols.delete),
            onPressed: () => form.remove(contact),
          ),
          keyboardType: TextInputType.phone,
          autofillHints: const [AutofillHints.telephoneNumber],
        ),
      ],
    );
  }
}

abstract final class PhoneContactFieldKeys {
  static Key phoneField(String contactKey) =>
      Key('phone_contacts_editor_phone_$contactKey');
  static Key labelPicker(String contactKey) =>
      Key('phone_contacts_editor_label_$contactKey');
  static Key mainChip(String contactKey) =>
      Key('phone_contacts_editor_main_$contactKey');
  static Key removeButton(String contactKey) =>
      Key('phone_contacts_editor_remove_$contactKey');
}
