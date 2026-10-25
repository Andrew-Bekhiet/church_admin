import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../../utils.dart';
import 'edit_person_screen_harness.dart';

void main() {
  const family = Family(id: 'family-id', name: 'أسرة');
  final person = Person(
    id: 'person-id',
    name: 'مينا',
    family: family,
    familyId: family.id,
  );

  late EditPersonScreenHarness harness;

  Future<void> addNumberAndSave(WidgetTester tester, String typed) async {
    await harness.open(tester, UpdatePerson(person: person));
    final add = find.byKey(PhoneContactsEditorKeys.addButton);
    await harness.scrollTo(tester, add);
    await tester.tap(add);
    await tester.pumpAndSettle();
    await tester.enterText(
      find.descendant(
        of: find.byType(PhoneContactRowField),
        matching: find.byType(TextField),
      ),
      typed,
    );
    await harness.tapSave(tester);
    await tester.pumpAndSettle();
  }

  setUp(() {
    harness = EditPersonScreenHarness()..install();
  });

  tearDown(defaultTearDown);

  testWidgets('an added number starting with 011 is saved', (tester) async {
    await addNumberAndSave(tester, '01112345678');

    expect(
      harness.persons.updatedPeople.single.contacts.map((c) => c.phone),
      ['+201112345678'],
    );
  });

  group('an added invalid number', () {
    testWidgets('is not saved', (tester) async {
      await addNumberAndSave(tester, '0100');

      expect(harness.persons.updatedPeople, isEmpty);
    });

    testWidgets('says why', (tester) async {
      await addNumberAndSave(tester, '0100');

      expect(
        find.text(PhoneContactError.invalidPhone.message),
        findsOneWidget,
      );
    });
  });
}
