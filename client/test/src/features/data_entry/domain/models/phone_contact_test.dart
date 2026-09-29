import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const father = PersonType(id: 'father-id', name: 'أب');

  test('a contact with its own label is shown under that label', () {
    const contact = PhoneContact(
      id: 'c1',
      phone: '+201001234567',
      label: 'رقم العمل',
      personType: father,
    );

    expect(contact.displayLabel, 'رقم العمل');
  });

  test('an unlabelled family contact is shown under its role', () {
    const contact = PhoneContact(
      id: 'c1',
      phone: '+201001234567',
      personType: father,
    );

    expect(contact.displayLabel, 'الأب');
  });

  test('a role name that already starts with the article is not doubled', () {
    const contact = PhoneContact(
      id: 'c1',
      phone: '+201001234567',
      personType: PersonType(id: 'p', name: 'الأم'),
    );

    expect(contact.displayLabel, 'الأم');
  });

  test('a blank label falls through to the role', () {
    const contact = PhoneContact(
      id: 'c1',
      phone: '+201001234567',
      label: '   ',
      personType: father,
    );

    expect(contact.displayLabel, 'الأب');
  });

  test('a contact with neither label nor role gets the default label', () {
    const contact = PhoneContact(id: 'c1', phone: '+201001234567');

    expect(contact.displayLabel, 'رقم الهاتف');
  });
}
