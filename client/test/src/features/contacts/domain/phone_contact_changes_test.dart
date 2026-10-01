import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const father = PersonType(id: 'father', name: 'الأب', isFamilyAdmin: true);
  const mother = PersonType(id: 'mother', name: 'الأم', isFamilyAdmin: true);

  const ownMain = PhoneContact(
    id: 'own-main',
    phone: '+201001111111',
    isMainPhone: true,
  );
  const ownWork = PhoneContact(
    id: 'own-work',
    phone: '+201002222222',
    label: 'عمل',
  );
  const fatherNumber = FamilyPhoneContact(
    contact: PhoneContact(
      id: 'father-number',
      phone: '+201003333333',
      isMainPhone: true,
    ),
    role: father,
    personId: 'the-father',
  );

  PhoneContactChanges changesTo({
    List<PhoneContact> own = const [ownMain, ownWork],
    List<FamilyPhoneContact> family = const [fatherNumber],
  }) => PhoneContactChanges.between(
    initialOwn: const [ownMain, ownWork],
    desiredOwn: own,
    initialFamily: const [fatherNumber],
    desiredFamily: family,
  );

  test('leaving every number as it was changes nothing', () {
    expect(changesTo().isEmpty, isTrue);
  });

  test('a new own number is inserted for the person', () {
    const home = PhoneContact(id: 'new', phone: '+201004444444');

    expect(changesTo(own: [ownMain, ownWork, home]).ownInserts, [home]);
  });

  test('a new family number is inserted for its role', () {
    const motherNumber = FamilyPhoneContact(
      contact: PhoneContact(id: 'new', phone: '+201005555555'),
      role: mother,
    );

    expect(
      changesTo(family: [fatherNumber, motherNumber]).familyInserts,
      [motherNumber],
    );
  });

  test('removing a number deletes it', () {
    expect(changesTo(own: [ownMain], family: []).deletedIds, [
      'own-work',
      'father-number',
    ]);
  });

  test('editing an own number updates it in place', () {
    final edited = ownWork.copyWith(phone: '+201006666666');

    expect(changesTo(own: [ownMain, edited]).updates, [edited]);
  });

  test(
    "editing a family number keeps its main flag and the relative it belongs "
    'to',
    () {
      final edited = fatherNumber.copyWith(
        contact: fatherNumber.contact.copyWith(phone: '+201007777777'),
      );

      expect(changesTo(family: [edited]).updates, [edited.contact]);
    },
  );

  test("moving a family number to another role re-creates it under the new "
      'role', () {
    final asMother = FamilyPhoneContact(
      contact: fatherNumber.contact,
      role: mother,
    );

    expect(
      changesTo(family: [asMother]),
      PhoneContactChanges(
        deletedIds: const ['father-number'],
        familyInserts: [asMother],
      ),
    );
  });

  test("turning an own number into a family number moves it to the family", () {
    const asFather = FamilyPhoneContact(contact: ownWork, role: father);

    expect(
      changesTo(own: [ownMain], family: [fatherNumber, asFather]),
      const PhoneContactChanges(
        deletedIds: ['own-work'],
        familyInserts: [asFather],
      ),
    );
  });

  test("turning a family number into an own number moves it to the person", () {
    expect(
      changesTo(own: [ownMain, ownWork, fatherNumber.contact], family: []),
      PhoneContactChanges(
        deletedIds: const ['father-number'],
        ownInserts: [fatherNumber.contact],
      ),
    );
  });
}
