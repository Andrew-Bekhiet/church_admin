import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fakes/fake_address_form_services.dart';
import '../../../../fakes/in_memory_families_dao.dart';

void main() {
  const shubra = Area(id: 'shubra', name: 'شبرا');
  const nile = Street(id: 'nile', name: 'شارع النيل');
  const parent = Family(id: 'parent', name: 'عائلة الأب');
  const child = Family(id: 'child', name: 'عائلة الابن');
  const storedFamily = Family(
    id: 'family',
    name: 'عائلة',
    address: Address(id: 'address', area: shubra, street: nile),
    status: MartialStatus.widowed,
    deceasedSpouseName: 'مينا',
  );

  FamilyFormController controllerFor(FamilyEditIntent intent) {
    final controller = FamilyFormController(
      intent: intent,
      families: InMemoryFamiliesDAO(),
      addressServices: FakeAddressFormServices.withNothingToSuggest(),
      recordedByUserId: 'me',
    );
    addTearDown(() {
      if (!controller.isDisposed) controller.dispose();
    });

    return controller;
  }

  FamilyFormController controllerOfStoredFamily() =>
      controllerFor(const UpdateFamily(family: storedFamily));

  test('an untouched family is saved unchanged', () {
    expect(controllerOfStoredFamily().toObject(), storedFamily);
  });

  test('a family cannot be saved without an area and a street', () async {
    final controller = controllerFor(const CreateBlankFamily());
    controller.name.setValue('عائلة');

    expect(await controller.validate(), isFalse);
  });

  test('a family cannot be its own parent', () async {
    final controller = controllerOfStoredFamily();

    controller.parents.setValue({storedFamily});

    expect(await controller.validate(), isFalse);
    expect(controller.parents.error, ObjectEditError.familyIsItsOwnParent);
  });

  test('a family cannot be its own child', () async {
    final controller = controllerOfStoredFamily();

    controller.children.setValue({storedFamily});

    expect(await controller.validate(), isFalse);
    expect(controller.children.error, ObjectEditError.familyIsItsOwnChild);
  });

  group("the deceased spouse's name", () {
    test('is saved without surrounding spaces', () {
      final controller = controllerOfStoredFamily();

      controller.deceasedSpouseName.setValue('  جرجس ');

      expect(controller.toObject().deceasedSpouseName, 'جرجس');
    });

    test('is asked for only while the family is widowed', () {
      final controller = controllerOfStoredFamily();

      controller.status.setValue(MartialStatus.married);

      expect(controller.isWidowed, isFalse);
    });
  });

  test("the father's visit is recorded as a father's visit", () {
    final controller = controllerOfStoredFamily();
    final visitedAt = DateTime(2026, 10);

    controller.lastFatherVisit.setValue(visitedAt);

    expect(
      controller.toObject().lastFatherVisit,
      LastRecordedByInfo(
        time: visitedAt,
        recordedBy: 'me',
        isFatherVisit: true,
      ),
    );
  });

  test('the phone numbers from the contacts editor are saved', () {
    final controller = controllerOfStoredFamily();
    const contacts = [
      FamilyPhoneContact(
        contact: PhoneContact(id: 'c', phone: '+201001111111'),
        role: PersonType(id: 'father', name: 'الأب'),
      ),
    ];

    controller.contacts.setValue(contacts);

    expect(controller.toObject().contacts, contacts);
  });

  group('loading the saved relatives', () {
    const loaded = Family(
      id: 'family',
      name: 'عائلة',
      parents: [parent],
      children: [child],
    );

    test('shows them in untouched fields', () {
      final controller = controllerOfStoredFamily()..useLoadedRelatives(loaded);

      expect(controller.parents.fieldValue, {parent});
      expect(controller.children.fieldValue, {child});
    });

    test('does not count as an edit', () {
      final controller = controllerOfStoredFamily()..useLoadedRelatives(loaded);

      expect(controller.wasModified, isFalse);
    });

    test('keeps relatives the user chose before the load finished', () {
      final controller = controllerOfStoredFamily();
      const chosen = Family(id: 'other', name: 'أخرى');
      controller.parents.setValue({chosen});

      controller.useLoadedRelatives(loaded);

      expect(controller.parents.fieldValue, {chosen});
    });

    test('lets a removed relative be saved as removed', () {
      final controller = controllerOfStoredFamily()..useLoadedRelatives(loaded);

      controller.parents.setValue({});

      expect(controller.savedObject?.parents, [parent]);
      expect(controller.toObject().parents, isEmpty);
    });
  });
}
