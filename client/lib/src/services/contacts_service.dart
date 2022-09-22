import 'package:flutter_contacts/flutter_contacts.dart';

export 'package:flutter_contacts/flutter_contacts.dart'
    show Contact, Address, Name, Phone;

class ContactsService {
  Future<Contact?> pickContact() => FlutterContacts.openExternalPick();
  Future<Contact> insertContact(Contact contact) =>
      FlutterContacts.insertContact(contact);
}
