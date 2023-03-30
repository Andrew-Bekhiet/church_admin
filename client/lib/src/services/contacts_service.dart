import 'package:church_admin/church_admin.dart';
import 'package:flutter_contacts/flutter_contacts.dart';

export 'package:flutter_contacts/flutter_contacts.dart'
    show Address, Contact, Name, Phone;

class ContactsService {
  static ContactsService get I =>
      globalProviderContainer.read(contactsServiceProvider);

  const ContactsService();

  Future<Contact?> pickContact() => FlutterContacts.openExternalPick();
  Future<Contact> insertContact(Contact contact) =>
      FlutterContacts.insertContact(contact);
}
