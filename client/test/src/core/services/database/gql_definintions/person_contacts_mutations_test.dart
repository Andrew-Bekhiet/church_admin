import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/persons/person_insert_helper.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/persons/person_update_helper.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const personId = '00000000-0000-0000-0000-000000000001';
  const familyId = '00000000-0000-0000-0000-0000000000f1';
  const otherFamilyId = '00000000-0000-0000-0000-0000000000f2';
  const father = PersonType(
    id: '00000000-0000-0000-0000-0000000000a1',
    name: 'الأب',
    isFamilyAdmin: true,
  );

  const fatherNumber = FamilyPhoneContact(
    contact: PhoneContact(
      id: '00000000-0000-0000-0000-00000000c001',
      phone: '+201003333333',
    ),
    role: father,
  );
  const newFatherNumber = FamilyPhoneContact(
    contact: PhoneContact(
      id: '00000000-0000-0000-0000-00000000c002',
      phone: '+201004444444',
    ),
    role: father,
  );

  final person = Person(
    id: personId,
    name: 'مينا',
    family: const Family(id: familyId, name: 'العائلة'),
    familyContacts: const [fatherNumber],
  );

  test("moving a person to another family leaves the old family's numbers "
      'alone', () {
    final variables = PersonUpdateHelper(
      oldPerson: person,
      newPerson: person.copyWith(
        family: const Family(id: otherFamilyId, name: 'أخرى'),
        familyContacts: const [newFatherNumber],
      ),
    ).variables;

    expect(variables.deleteContacts, isFalse);
  });

  test('a number typed for the new family is added to that family', () {
    final variables = PersonUpdateHelper(
      oldPerson: person,
      newPerson: person.copyWith(
        family: const Family(id: otherFamilyId, name: 'أخرى'),
        familyContacts: const [newFatherNumber],
      ),
    ).variables;

    expect(
      variables.newContacts?.map((c) => (c.familyId?.uuid, c.phone)),
      [(otherFamilyId, '+201004444444')],
    );
  });

  test(
    'family numbers of a new person without a family go with the family '
    'created from their address',
    () {
      final input = Person(
        id: personId,
        name: 'مينا جرجس',
        address: const Address(),
        familyContacts: const [newFatherNumber],
      ).toInsertInput();

      expect(
        input.family?.data.unclaimedContacts?.data.map((c) => c.phone),
        ['+201004444444'],
      );
    },
  );

  test("family numbers of a new person in an existing family are added to "
      'that family', () {
    final variables = PersonInsertHelper(
      newPerson: Person(
        id: personId,
        name: 'مينا',
        family: const Family(id: familyId, name: 'العائلة'),
        familyContacts: const [newFatherNumber],
      ),
    ).variables;

    expect(
      variables.familyContacts?.map((c) => (c.familyId?.uuid, c.phone)),
      [(familyId, '+201004444444')],
    );
  });
}
