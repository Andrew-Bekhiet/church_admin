import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import 'person_form_controller_fixture.dart';

void main() {
  const shubraAddress = Address(
    area: PersonFormControllerFixture.shubra,
    street: PersonFormControllerFixture.nileStreet,
    houseCode: '4',
  );
  const maadiAddress = Address(
    area: PersonFormControllerFixture.maadi,
    houseCode: '9',
  );
  const personAddress = Address(
    area: PersonFormControllerFixture.shubra,
    houseCode: '4',
  );
  const startingFamily = Family(
    id: 'starting',
    name: 'عائلة شبرا',
    address: shubraAddress,
  );
  const otherFamily = Family(
    id: 'other',
    name: 'عائلة المعادي',
    address: maadiAddress,
  );

  late PersonFormControllerFixture fixture;

  setUp(() => fixture = PersonFormControllerFixture());

  PersonFormController updateOfStartingFamilyMember() =>
      fixture.controllerOfUpdate(
        Person(
          id: 'p',
          name: 'مينا',
          family: startingFamily,
          address: personAddress,
        ),
      );

  group('choosing another family', () {
    test('carries that family address to the person', () {
      final controller = updateOfStartingFamilyMember();

      controller.household.family.setValue(otherFamily);

      expect(controller.household.editedAddress, maadiAddress);
    });

    test('shows that family address in the address form', () {
      final controller = updateOfStartingFamilyMember();

      controller.household.family.setValue(otherFamily);

      expect(controller.household.address.toAddress(), maadiAddress);
    });

    test('makes the address read-only', () {
      final controller = updateOfStartingFamilyMember();

      controller.household.family.setValue(otherFamily);

      expect(controller.household.canEditFamilyAddress, isFalse);
      expect(controller.household.address.street.value.readOnly, isTrue);
    });

    test('forgets the saved family contacts', () {
      final controller = fixture.controllerOfUpdate(
        Person(
          id: 'p',
          name: 'مينا',
          family: startingFamily,
          familyContacts: const [
            FamilyPhoneContact(
              contact: PhoneContact(id: 'c', phone: '0100'),
              role: PersonType(id: 'father', name: 'أب'),
            ),
          ],
        ),
      );

      controller.household.family.setValue(otherFamily);

      expect(controller.household.savedFamilyContacts, isEmpty);
    });
  });

  group('choosing the family the person started with again', () {
    PersonFormController controllerAfterLeavingStartingFamily() {
      final controller = fixture.controllerOfUpdate(
        Person(
          id: 'p',
          name: 'مينا',
          family: startingFamily,
          address: personAddress,
          familyContacts: const [
            FamilyPhoneContact(
              contact: PhoneContact(id: 'c', phone: '0100'),
              role: PersonType(id: 'father', name: 'أب'),
            ),
          ],
        ),
      );
      controller.household.family.setValue(otherFamily);
      controller.household.family.setValue(startingFamily);

      return controller;
    }

    test('restores the address the person had', () {
      final controller = controllerAfterLeavingStartingFamily();

      expect(controller.household.editedAddress, personAddress);
    });

    test('makes the address editable again', () {
      final controller = controllerAfterLeavingStartingFamily();

      expect(controller.household.canEditFamilyAddress, isTrue);
      expect(controller.household.address.street.value.readOnly, isFalse);
    });

    test('restores the saved family contacts', () {
      final controller = controllerAfterLeavingStartingFamily();

      expect(controller.household.savedFamilyContacts, hasLength(1));
    });
  });

  group('creating a person', () {
    test('lets the address be edited while there is no family', () {
      final controller = fixture.controllerFor(const CreateBlankPerson());

      expect(controller.household.canEditFamilyAddress, isTrue);
    });

    test('keeps the preset family when it is chosen again', () {
      final controller = fixture.controllerFor(
        const CreatePersonInFamily(family: startingFamily),
      );

      controller.household.family.setValue(otherFamily);
      controller.household.family.setValue(startingFamily);

      expect(controller.household.family.fieldValue, startingFamily);
    });

    test('keeps the last family address after the family is cleared', () {
      final controller = fixture.controllerFor(
        const CreatePersonInFamily(family: startingFamily),
      );
      controller.household.family.setValue(otherFamily);

      controller.household.family.setValue(null);

      expect(controller.household.editedAddress, maadiAddress);
      expect(controller.household.canEditFamilyAddress, isTrue);
    });

    test('shows the address form even without a family', () {
      final controller = fixture.controllerFor(const CreateBlankPerson());

      expect(controller.household.showsAddress, isTrue);
    });
  });

  group('updating a person', () {
    test('hides the address form while there is no family', () {
      final controller = fixture.controllerOfUpdate(
        Person(id: 'p', name: 'مينا', address: personAddress),
      );

      expect(controller.household.showsAddress, isFalse);
    });

    test('allows family numbers only with a family', () {
      final controller = fixture.controllerOfUpdate(
        Person(id: 'p', name: 'مينا', address: personAddress),
      );
      expect(controller.household.canHaveFamilyNumbers, isFalse);

      controller.household.family.setValue(otherFamily);

      expect(controller.household.canHaveFamilyNumbers, isTrue);
    });
  });

  group('creating a person without a family', () {
    test('allows family numbers once an address is there', () {
      final controller = fixture.controllerFor(
        const CreatePersonOnStreet(
          street: PersonFormControllerFixture.nileStreet,
        ),
      );

      expect(controller.household.canHaveFamilyNumbers, isTrue);
    });
  });
}
