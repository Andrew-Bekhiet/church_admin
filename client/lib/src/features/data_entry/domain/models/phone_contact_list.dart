import 'package:church_admin/church_admin.dart';

class PhoneContactList {
  final List<PhoneContact> contacts;

  const PhoneContactList(this.contacts);

  PhoneContactList add(PhoneContact contact) =>
      PhoneContactList([...contacts, _mainIfOwnerHasNone(contact)]);

  PhoneContactList replace(PhoneContact changed) => PhoneContactList([
    for (final c in contacts) c.id == changed.id ? changed : c,
  ]);

  PhoneContactList remove(String id) =>
      PhoneContactList(contacts.where((c) => c.id != id).toList());

  PhoneContactList toggleMain(String id) {
    final target = contacts.firstWhere((c) => c.id == id);

    return PhoneContactList([
      for (final c in contacts)
        c.owner == target.owner
            ? c.copyWith(isMainPhone: c.id == id && !c.isMainPhone)
            : c,
    ]);
  }

  PhoneContactList withRole(String id, PersonType role, String? familyId) =>
      _reassign(id, (c) => c.withRole(role, familyId));

  PhoneContactList withoutRole(String id, String personId) =>
      _reassign(id, (c) => c.ownedBy(personId));

  PhoneContactList _reassign(
    String id,
    PhoneContact Function(PhoneContact) to,
  ) {
    final target = contacts.firstWhere((c) => c.id == id);

    return replace(_mainIfOwnerHasNone(to(target)));
  }

  PhoneContact _mainIfOwnerHasNone(PhoneContact contact) {
    final ownerHasMain = contacts.any(
      (c) => c.id != contact.id && c.owner == contact.owner && c.isMainPhone,
    );

    return ownerHasMain ? contact : contact.copyWith(isMainPhone: true);
  }
}
