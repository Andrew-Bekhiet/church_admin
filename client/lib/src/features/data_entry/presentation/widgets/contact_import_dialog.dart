import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart' show Contact;

class ContactImportDialog extends StatefulWidget {
  final Contact contact;

  const ContactImportDialog({required this.contact, super.key});

  @override
  State<ContactImportDialog> createState() => _ContactImportDialogState();
}

class _ContactImportDialogState extends State<ContactImportDialog> {
  bool _useContactName = false;
  final _numbersToImport = <({String label, String number})>{};

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('اختيار العناصر'),
      content: SizedBox(
        width: MediaQuery.sizeOf(context).width * 0.8,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CheckboxListTile(
              title: const Text('الاسم'),
              subtitle: Text(widget.contact.displayName ?? ''),
              value: _useContactName,
              onChanged: (value) => setState(() => _useContactName = value!),
            ),
            ...widget.contact.phones
                .where(
                  (phone) =>
                      (phone.normalizedNumber?.isNotEmpty ?? false) ||
                      phone.number.isNotEmpty,
                )
                .map((phone) {
                  final label =
                      phone.label.customLabel ?? phone.label.label.name;
                  final value = phone.normalizedNumber ?? phone.number;

                  return CheckboxListTile(
                    title: Text(label),
                    subtitle: Text(value),
                    value: _numbersToImport.contains((
                      label: label,
                      number: value,
                    )),
                    onChanged: (selected) => setState(
                      () => selected ?? false
                          ? _numbersToImport.add((label: label, number: value))
                          : _numbersToImport.remove((
                              label: label,
                              number: value,
                            )),
                    ),
                  );
                }),
          ],
        ),
      ),
      actions: [
        OutlinedButton(
          onPressed: () => Navigator.of(context).pop((
            useContactName: _useContactName,
            numbers: _numbersToImport,
          )),
          child: const Text('تم'),
        ),
      ],
    );
  }
}
