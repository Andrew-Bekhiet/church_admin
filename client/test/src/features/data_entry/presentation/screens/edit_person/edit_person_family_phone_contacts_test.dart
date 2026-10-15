import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../utils.dart';
import 'edit_person_screen_harness.dart';

void main() {
  const mother = PersonType(id: 'mother', name: 'الأم', isFamilyAdmin: true);
  const son = PersonType(id: 'son', name: 'ابن');
  const family = Family(id: 'family-id', name: 'أسرة');
  const otherFamily = Family(id: 'other-family-id', name: 'أسرة أخرى');
  const motherNumber = FamilyPhoneContact(
    contact: PhoneContact(id: 'mother-number', phone: '+201003333333'),
    role: mother,
    personId: 'the-mother',
  );
  final child = Person(
    id: 'person-id',
    name: 'مينا',
    family: family,
    familyId: family.id,
    personType: son,
    familyContacts: const [motherNumber],
  );

  late EditPersonScreenHarness harness;

  Finder motherNumberField() => find.byKey(
    PhoneContactDraftFieldKeys.phoneField(motherNumber.contact.id),
  );

  Finder familyItem(String id) => find.byWidgetPredicate(
    (widget) => switch (widget) {
      ViewableObjectWidget(object: ViewableWithID(id: final objectId)) =>
        objectId == id,
      _ => false,
    },
  );

  Future<void> chooseFamily(WidgetTester tester, Family chosen) async {
    await harness.scrollTo(tester, find.text('العائلة'));
    await tester.tap(find.text('العائلة'));
    await tester.pumpAndSettle();
    await tester.tap(familyItem(chosen.id));
    await tester.pumpAndSettle();
  }

  setUp(() {
    harness = EditPersonScreenHarness();
    harness.personTypes.familyRoles = const [mother];
    harness.families.families = const [family, otherFamily];
    harness.install();
  });

  tearDown(defaultTearDown);

  testWidgets("a person's family numbers are listed", (tester) async {
    await harness.open(tester, UpdatePerson(person: child));

    expect(motherNumberField(), findsOneWidget);
  });

  testWidgets("choosing another family stops listing the first family's "
      'numbers', (tester) async {
    await harness.open(tester, UpdatePerson(person: child));

    await chooseFamily(tester, otherFamily);

    expect(motherNumberField(), findsNothing);
  });

  testWidgets("choosing the first family again lists its numbers again", (
    tester,
  ) async {
    await harness.open(tester, UpdatePerson(person: child));
    await chooseFamily(tester, otherFamily);

    await chooseFamily(tester, family);

    expect(motherNumberField(), findsOneWidget);
  });
}
