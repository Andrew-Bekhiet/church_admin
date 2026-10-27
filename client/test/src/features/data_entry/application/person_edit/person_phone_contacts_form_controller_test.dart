import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const father = PersonType(id: 'father', name: 'الأب', isFamilyAdmin: true);
  const ownMain = PhoneContact(
    id: 'own-main',
    phone: '+201001111111',
    isMainPhone: true,
  );
  const fatherNumber = FamilyPhoneContact(
    contact: PhoneContact(id: 'father-number', phone: '+201003333333'),
    role: father,
    personId: 'the-father',
  );
  final person = Person(
    id: 'p',
    name: 'مينا',
    contacts: const [ownMain],
    familyContacts: const [fatherNumber],
  );

  PersonPhoneContactsFormController formFor() {
    final form = PersonPhoneContactsFormController(
      own: person.contacts,
      family: person.familyContacts,
      canHaveFamilyNumbers: () => true,
    );
    addTearDown(form.dispose);

    return form;
  }

  test('a person gets the own numbers left in the form', () {
    final form = formFor();
    form.remove(form.rows.fieldValue.first);

    expect(form.editedVersionOf(person).contacts, isEmpty);
  });

  test('a person gets the family numbers as edited in the form', () {
    final form = formFor();
    form.rows.fieldValue.last.phone.setValue('01007777777');

    expect(form.editedVersionOf(person).familyContacts, [
      fatherNumber.copyWith(
        contact: fatherNumber.contact.copyWith(phone: '+201007777777'),
      ),
    ]);
  });
}
