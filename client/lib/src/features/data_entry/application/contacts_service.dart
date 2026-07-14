import 'package:church_admin/church_admin.dart';
import 'package:flutter_contacts/flutter_contacts.dart';

export 'package:flutter_contacts/flutter_contacts.dart'
    show Contact, Name, Phone;

class ContactsService {
  static ContactsService get I =>
      globalProviderContainer.read(contactsServiceProvider);

  const ContactsService();

  Future<Contact?> pickContact() async {
    return FlutterContacts.native.showPicker(
      properties: {ContactProperty.name, ContactProperty.phone},
    );
  }

  Future<void> insertContact(Contact contact) async {
    await FlutterContacts.create(contact);
  }
}
