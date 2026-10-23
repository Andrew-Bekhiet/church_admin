import 'dart:async';

import 'package:church_admin/church_admin.dart';

class FakeContactsService implements ContactsService {
  final List<Contact> insertedContacts = [];

  Completer<void>? insertGate;
  Exception? insertError;

  @override
  Future<Contact?> pickContact() async => null;

  @override
  Future<void> insertContact(Contact contact) async {
    await insertGate?.future;
    if (insertError case final error?) throw error;

    insertedContacts.add(contact);
  }
}
