import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const fatherType = PersonType(id: 'father', name: 'الاب');

  const mainPhone = PhoneContact(
    id: 'c1',
    phone: '01000000001',
    isMainPhone: true,
  );
  const otherPhone = PhoneContact(id: 'c2', phone: '01000000002');
  const familyPhone = PhoneContact(id: 'c3', phone: '01000000003');

  Person personWith({
    List<PhoneContact> contacts = const [],
    List<FamilyPhoneContact> familyContacts = const [],
  }) => Person(
    id: 'p1',
    name: 'مينا',
    contacts: contacts,
    familyContacts: familyContacts,
  );

  test('the main phone is chosen even when listed after another', () {
    final recipient = WhatsappRecipient.of(
      personWith(contacts: [otherPhone, mainPhone]),
    );

    expect(recipient.selectedPhone, mainPhone);
  });

  test('without a main phone the first own phone is chosen', () {
    final recipient = WhatsappRecipient.of(
      personWith(contacts: [otherPhone, familyPhone]),
    );

    expect(recipient.selectedPhone, otherPhone);
  });

  test('a person without own phones falls back to a family phone', () {
    final recipient = WhatsappRecipient.of(
      personWith(
        familyContacts: [
          const FamilyPhoneContact(contact: familyPhone, role: fatherType),
        ],
      ),
    );

    expect(recipient.selectedPhone, familyPhone);
  });

  test('own phones are offered before family phones', () {
    final recipient = WhatsappRecipient.of(
      personWith(
        contacts: [otherPhone, mainPhone],
        familyContacts: [
          const FamilyPhoneContact(contact: familyPhone, role: fatherType),
        ],
      ),
    );

    expect(recipient.phones, [mainPhone, otherPhone, familyPhone]);
  });

  test('a family phone that is the same number is offered once', () {
    final recipient = WhatsappRecipient.of(
      personWith(
        contacts: [mainPhone],
        familyContacts: [
          FamilyPhoneContact(
            contact: PhoneContact(id: 'c9', phone: mainPhone.phone),
            role: fatherType,
          ),
        ],
      ),
    );

    expect(recipient.phones, [mainPhone]);
  });

  test('a person with no phone at all has none chosen', () {
    final recipient = WhatsappRecipient.of(personWith());

    expect(recipient.selectedPhone, isNull);
  });
}
