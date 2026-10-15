import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../utils.dart';
import 'edit_person_screen_harness.dart';

void main() {
  const savedNumber = PhoneContact(id: 'saved', phone: '+201001111111');
  const otherNumber = '01002222222';
  const otherE164 = '+201002222222';
  const renamed = 'اسم جديد';

  final person = Person(
    id: 'person-id',
    name: 'مينا',
    family: const Family(id: 'person-family-id', name: 'أسرة مينا'),
    contacts: const [savedNumber],
  );

  late EditPersonScreenHarness harness;

  Finder phoneField(String draftKey) =>
      find.byKey(PhoneContactDraftFieldKeys.phoneField(draftKey));

  Future<void> openBeforeLoad(WidgetTester tester) => harness.open(
    tester,
    UpdatePerson(person: person),
    membershipsLoaded: false,
  );

  Future<void> finishLoadingAndSave(WidgetTester tester) async {
    harness.persons.respondWithSavedMemberships(null);
    await tester.pumpAndSettle();
    await harness.tapSave(tester);
  }

  setUp(() {
    harness = EditPersonScreenHarness()..install();
  });

  tearDown(defaultTearDown);

  testWidgets('the save button stays disabled while memberships load', (
    tester,
  ) async {
    await openBeforeLoad(tester);

    final saveButton = tester.widget<FloatingActionButton>(
      find.byKey(EditPersonSaveButtonKeys.saveButton),
    );

    expect(saveButton.onPressed, isNull);
  });

  testWidgets('a number changed before loading finishes is saved', (
    tester,
  ) async {
    await openBeforeLoad(tester);

    await tester.scrollUntilVisible(
      phoneField('saved'),
      100,
      scrollable: find.byType(Scrollable).first,
    );
    await tester.pump();
    await tester.enterText(phoneField('saved'), otherNumber);
    await finishLoadingAndSave(tester);

    expect(
      harness.persons.updatedPeople.single.contacts.map((c) => c.phone),
      [otherE164],
    );
  });

  testWidgets('a name changed before loading finishes is saved', (
    tester,
  ) async {
    await openBeforeLoad(tester);

    final field = find.widgetWithText(TextField, person.name);
    await tester.scrollUntilVisible(
      field,
      100,
      scrollable: find.byType(Scrollable).first,
    );
    await tester.pump();
    await tester.enterText(field, renamed);
    await finishLoadingAndSave(tester);

    expect(harness.persons.updatedPeople.single.name, renamed);
  });
}
