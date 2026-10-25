import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../utils.dart';
import 'edit_person_screen_harness.dart';

void main() {
  const father = PersonType(id: 'father', name: 'الأب', isFamilyAdmin: true);
  const mother = PersonType(id: 'mother', name: 'الأم', isFamilyAdmin: true);
  const son = PersonType(id: 'son', name: 'ابن');
  const family = Family(id: 'family-id', name: 'أسرة');
  const ownNumber = PhoneContact(id: 'own', phone: '+201001111111');
  const motherNumber = FamilyPhoneContact(
    contact: PhoneContact(id: 'mother-number', phone: '+201003333333'),
    role: mother,
    personId: 'the-mother',
  );

  late EditPersonScreenHarness harness;

  Person personOfType(PersonType type) => Person(
    id: 'person-id',
    name: 'مينا',
    family: family,
    familyId: family.id,
    personType: type,
    contacts: const [ownNumber],
    familyContacts: const [motherNumber],
  );

  Future<void> openEditor(WidgetTester tester, Person person) async {
    await harness.open(tester, UpdatePerson(person: person));
    await harness.scrollTo(
      tester,
      find.byKey(PhoneContactsEditorKeys.addButton),
    );
  }

  Future<void> openOwnNumberLabelPicker(WidgetTester tester) async {
    final labelPicker = find.byKey(
      PhoneContactRowFieldKeys.labelPicker(ownNumber.id),
    );
    await tester.ensureVisible(labelPicker);
    await tester.pumpAndSettle();
    await tester.tap(labelPicker);
    await tester.pumpAndSettle();
  }

  setUp(() {
    harness = EditPersonScreenHarness();
    harness.personTypes.familyRoles = const [father, mother];
    harness.install();
  });

  tearDown(defaultTearDown);

  testWidgets("a family admin's form does not list the other admins' "
      'numbers', (tester) async {
    await openEditor(tester, personOfType(father));

    expect(
      find.byKey(
        PhoneContactRowFieldKeys.phoneField(motherNumber.contact.id),
      ),
      findsNothing,
    );
  });

  testWidgets("a family admin's numbers cannot be labelled as a relative's", (
    tester,
  ) async {
    await openEditor(tester, personOfType(father));

    await openOwnNumberLabelPicker(tester);

    expect(
      find.byKey(PhoneContactLabelPickerKeys.roleItem(mother.id)),
      findsNothing,
    );
  });

  testWidgets("a child's form lists the family admins' numbers", (
    tester,
  ) async {
    await openEditor(tester, personOfType(son));

    expect(
      find.byKey(
        PhoneContactRowFieldKeys.phoneField(motherNumber.contact.id),
      ),
      findsOneWidget,
    );
  });

  testWidgets("a child's numbers can be labelled as a family admin's", (
    tester,
  ) async {
    await openEditor(tester, personOfType(son));

    await openOwnNumberLabelPicker(tester);

    expect(
      find.byKey(PhoneContactLabelPickerKeys.roleItem(mother.id)),
      findsOneWidget,
    );
  });
}
