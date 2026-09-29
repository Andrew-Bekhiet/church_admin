import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class PhoneContactsEditor extends StatelessWidget {
  final List<PhoneContact> contacts;
  final String ownerPersonId;
  final String? familyId;
  final bool hasFamilyOrAddress;
  final List<PersonType> familyAdminTypes;
  final ValueChanged<List<PhoneContact>> onChanged;
  final VoidCallback? onImportFromContacts;

  const PhoneContactsEditor({
    required this.contacts,
    required this.ownerPersonId,
    required this.familyId,
    required this.hasFamilyOrAddress,
    required this.familyAdminTypes,
    required this.onChanged,
    this.onImportFromContacts,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = TextTheme.of(context);

    return FormField<List<PhoneContact>>(
      initialValue: contacts,
      validator: (_) =>
          !hasFamilyOrAddress && contacts.any((c) => c.isFamilyRole)
          ? 'يجب تحديد العائلة أو العنوان لحفظ أرقام الأسرة'
          : null,
      builder: (state) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 8,
        children: [
          for (final contact in contacts)
            PhoneContactRow(
              key: ValueKey(contact.id),
              contact: contact,
              ownerPersonId: ownerPersonId,
              familyId: familyId,
              familyAdminTypes: familyAdminTypes,
              onChanged: (changed) => onChanged([
                for (final c in contacts) c.id == changed.id ? changed : c,
              ]),
              onMainToggled: () => onChanged([
                for (final c in contacts)
                  c.isOwn
                      ? c.copyWith(
                          isMainPhone: c.id == contact.id && !c.isMainPhone,
                        )
                      : c,
              ]),
              onDeleted: () =>
                  onChanged(contacts.where((c) => c.id != contact.id).toList()),
            ),
          if (state.errorText case final error?)
            Text(
              error,
              style: textTheme.bodySmall?.copyWith(
                color: ColorScheme.of(context).error,
              ),
            ),
          Row(
            spacing: 8,
            children: [
              Expanded(
                child: FilledButton.tonalIcon(
                  key: PhoneContactsEditorKeys.addButton,
                  icon: const Icon(Symbols.add),
                  label: const Text('إضافة رقم هاتف'),
                  onPressed: () => onChanged([
                    ...contacts,
                    PhoneContact.create(
                      phone: '',
                      isMainPhone: !contacts.any((c) => c.isOwn),
                    ),
                  ]),
                ),
              ),
              if (onImportFromContacts != null)
                IconButton(
                  key: PhoneContactsEditorKeys.importButton,
                  tooltip: 'اختيار من جهات الاتصال',
                  onPressed: onImportFromContacts,
                  icon: const Icon(Symbols.contacts),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

abstract final class PhoneContactsEditorKeys {
  static const Key addButton = ValueKey('phoneContactsEditor-add');
  static const Key importButton = ValueKey('phoneContactsEditor-import');
}
