import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class PhoneBookCard extends StatelessWidget {
  final List<PhoneContact> own;
  final List<FamilyPhoneContact> family;
  final void Function(String phone) onCall;
  final void Function(String phone)? onAddToContacts;

  const PhoneBookCard({
    required this.onCall,
    this.own = const [],
    this.family = const [],
    this.onAddToContacts,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final phones = PhoneNumberService.I;

    return Card.filled(
      key: PhoneBookCardKeys.card,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: theme.colorScheme.surfaceContainerHigh,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ListTile(
              leading: Icon(
                Symbols.contact_phone,
                color: theme.colorScheme.primary,
              ),
              title: Text('أرقام التواصل', style: theme.textTheme.titleMedium),
            ),
            if (own.isEmpty && family.isEmpty)
              const ListTile(
                key: PhoneBookCardKeys.empty,
                leading: Icon(Symbols.warning),
                title: Text('لا توجد أرقام هاتف'),
              ),
            for (final contact in own)
              PhoneNumberPropertyWidget(
                key: PhoneBookCardKeys.contact(contact.id),
                [
                  contact.label ?? 'رقم الهاتف',
                  if (contact.isMainPhone) '(أساسي)',
                ].join(' '),
                phones.toDisplay(contact.phone),
                onCall,
                addToContacts: onAddToContacts,
              ),
            if (own.isNotEmpty && family.isNotEmpty) const Divider(),
            if (family.isNotEmpty)
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 16, top: 8),
                child: Text(
                  'أرقام الأسرة',
                  style: theme.textTheme.titleSmall?.copyWith(
                    color: theme.colorScheme.primary,
                  ),
                ),
              ),
            for (final relative in family)
              PhoneNumberPropertyWidget(
                key: PhoneBookCardKeys.contact(relative.contact.id),
                relative.roleLabel,
                phones.toDisplay(relative.contact.phone),
                onCall,
                addToContacts: onAddToContacts,
              ),
          ],
        ),
      ),
    );
  }
}

abstract final class PhoneBookCardKeys {
  static const Key card = Key('phone_book_card');
  static const Key empty = Key('phone_book_card_empty');

  static Key contact(String contactId) =>
      Key('phone_book_card_contact_$contactId');
}
