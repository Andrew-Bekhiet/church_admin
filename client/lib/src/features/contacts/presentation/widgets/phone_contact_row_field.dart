import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';

class PhoneContactRowField extends StatelessWidget {
  final PhoneContactRowFormController row;
  final PhoneContactsFormController form;

  const PhoneContactRowField({
    required this.row,
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
          field: row.label,
          builder: (context, label, _) => Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            spacing: 8,
            children: [
              Flexible(
                child: PhoneContactLabelPicker(
                  key: PhoneContactRowFieldKeys.labelPicker(row.key),
                  label: label.value,
                  familyOnly: form.familyOnly,
                  onChanged: (label) => form.changeLabel(row, label),
                ),
              ),
              if (row.canBeMain)
                AdvancedFieldBuilder<bool, PhoneContactError>(
                  field: row.isMainPhone,
                  builder: (context, isMainPhone, _) => FilterChip(
                    key: PhoneContactRowFieldKeys.mainChip(row.key),
                    avatar: isMainPhone.value ? null : const Icon(Symbols.star),
                    label: const Text('أساسي'),
                    selected: isMainPhone.value,
                    onSelected: (_) => form.toggleMain(row),
                  ),
                ),
            ],
          ),
        ),
        AdvancedTextInput<PhoneContactError>(
          key: PhoneContactRowFieldKeys.phoneField(row.key),
          field: row.phone,
          translateError: (error) => error.message,
          hintText: 'مثال: 01234...',
          prefixIcon: const Icon(Symbols.call),
          suffixIcon: IconButton(
            key: PhoneContactRowFieldKeys.removeButton(row.key),
            tooltip: 'حذف الرقم',
            icon: const Icon(Symbols.delete),
            onPressed: () => form.remove(row),
          ),
          keyboardType: TextInputType.phone,
          autofillHints: const [AutofillHints.telephoneNumber],
        ),
      ],
    );
  }
}

abstract final class PhoneContactRowFieldKeys {
  static Key phoneField(String rowKey) =>
      Key('phone_contacts_editor_phone_$rowKey');
  static Key labelPicker(String rowKey) =>
      Key('phone_contacts_editor_label_$rowKey');
  static Key mainChip(String rowKey) =>
      Key('phone_contacts_editor_main_$rowKey');
  static Key removeButton(String rowKey) =>
      Key('phone_contacts_editor_remove_$rowKey');
}
