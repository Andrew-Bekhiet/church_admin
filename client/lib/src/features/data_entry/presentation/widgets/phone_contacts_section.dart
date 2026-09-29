import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

class PhoneContactsSection extends StatelessWidget {
  final String title;
  final List<PhoneContact> contacts;
  final void Function(String) phoneCall;
  final void Function(String)? addToContacts;
  final bool showErrorIfEmpty;

  const PhoneContactsSection({
    required this.title,
    required this.contacts,
    required this.phoneCall,
    this.showErrorIfEmpty = false,
    this.addToContacts,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.only(start: 16, top: 8),
          child: Text(title, style: TextTheme.of(context).titleSmall),
        ),
        if (contacts.isEmpty && showErrorIfEmpty)
          PhoneNumberPropertyWidget(PhoneContact.defaultLabel, '', phoneCall),
        for (final contact in contacts.sortedBy<num>(
          (c) => c.isMainPhone ? 0 : 1,
        ))
          PhoneNumberPropertyWidget(
            contact.displayLabel,
            contact.phone,
            phoneCall,
            isMain: contact.isMainPhone,
            addToContacts: addToContacts,
            key: PhoneContactsSectionKeys.contact(contact.id),
          ),
      ],
    );
  }
}

abstract final class PhoneContactsSectionKeys {
  static Key contact(String id) => ValueKey('phoneContact-$id');
}
