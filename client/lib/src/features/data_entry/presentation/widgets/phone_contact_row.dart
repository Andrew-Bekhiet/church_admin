import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class PhoneContactRow extends StatelessWidget {
  final PhoneContact contact;
  final String ownerPersonId;
  final String? familyId;
  final List<PersonType> familyAdminTypes;
  final ValueChanged<PhoneContact> onChanged;
  final VoidCallback onMainToggled;
  final VoidCallback onDeleted;

  const PhoneContactRow({
    required this.contact,
    required this.ownerPersonId,
    required this.familyId,
    required this.familyAdminTypes,
    required this.onChanged,
    required this.onMainToggled,
    required this.onDeleted,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      spacing: 8,
      children: [
        Row(
          spacing: 8,
          children: [
            Expanded(
              child: TextFormField(
                key: PhoneContactRowKeys.phoneField(contact.id),
                decoration: InputDecoration(labelText: contact.displayLabel),
                initialValue: PhoneNumberService.I.display(contact.phone),
                keyboardType: TextInputType.phone,
                autofillHints: const [AutofillHints.telephoneNumber],
                onChanged: (value) => onChanged(
                  contact.copyWith(
                    phone: PhoneNumberService.I.toE164(value) ?? value,
                  ),
                ),
                validator: (value) =>
                    PhoneNumberService.I.toE164(value ?? '') == null
                    ? 'برجاء ادخال رقم هاتف صالح'
                    : null,
              ),
            ),
            IconButton(
              key: PhoneContactRowKeys.deleteButton(contact.id),
              icon: const Icon(Symbols.delete),
              tooltip: 'حذف الرقم',
              onPressed: onDeleted,
            ),
          ],
        ),
        if (contact.isOwn)
          TextFormField(
            decoration: const InputDecoration(labelText: 'اسم الرقم (اختياري)'),
            initialValue: contact.label,
            onChanged: (value) => onChanged(contact.copyWith(label: value)),
          ),
        Wrap(
          spacing: 8,
          children: [
            if (contact.isOwn)
              FilterChip(
                key: PhoneContactRowKeys.mainChip(contact.id),
                label: const Text('أساسي'),
                selected: contact.isMainPhone,
                onSelected: (_) => onMainToggled(),
              ),
            for (final type in familyAdminTypes)
              ChoiceChip(
                key: PhoneContactRowKeys.roleChip(contact.id, type.id),
                label: Text(PhoneContact.roleLabel(type.name)),
                selected: contact.personTypeId == type.id,
                onSelected: (selected) => onChanged(
                  selected
                      ? contact.withRole(type, familyId)
                      : contact.ownedBy(ownerPersonId),
                ),
              ),
          ],
        ),
      ],
    );
  }
}

abstract final class PhoneContactRowKeys {
  static Key phoneField(String id) => ValueKey('phoneContactRow-phone-$id');
  static Key mainChip(String id) => ValueKey('phoneContactRow-main-$id');
  static Key deleteButton(String id) => ValueKey('phoneContactRow-delete-$id');
  static Key roleChip(String id, String personTypeId) =>
      ValueKey('phoneContactRow-role-$id-$personTypeId');
}
