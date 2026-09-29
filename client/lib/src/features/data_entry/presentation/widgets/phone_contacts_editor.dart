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
              familyAdminTypes: familyAdminTypes,
              onChanged: (changed) => onChanged(
                PhoneContactList(contacts).replace(changed).contacts,
              ),
              onRoleChanged: (role) => onChanged(
                switch (role) {
                  final role? => PhoneContactList(
                    contacts,
                  ).withRole(contact.id, role, familyId),
                  null => PhoneContactList(
                    contacts,
                  ).withoutRole(contact.id, ownerPersonId),
                }.contacts,
              ),
              onMainToggled: () => onChanged(
                PhoneContactList(contacts).toggleMain(contact.id).contacts,
              ),
              onDeleted: () => onChanged(
                PhoneContactList(contacts).remove(contact.id).contacts,
              ),
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
                  onPressed: () => onChanged(
                    PhoneContactList(contacts)
                        .add(
                          PhoneContact.create(
                            phone: '',
                            personId: ownerPersonId,
                          ),
                        )
                        .contacts,
                  ),
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
