import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../../utils.dart';
import 'edit_person_screen_harness.dart';

void main() {
  const savedNumber = PhoneContact(id: 'saved', phone: '+201001111111');
  const savedInput = '01001111111';
  const otherValidInput = '01002222222';
  const incompleteInput = '0100';
  const discardDialogTitle = EditPersonScreenHarness.discardDialogTitle;

  final person = Person(
    id: 'person-id',
    name: 'مينا',
    contacts: const [savedNumber],
  );

  late EditPersonScreenHarness harness;

  Finder phoneField(String draftKey) =>
      find.byKey(PhoneContactFieldKeys.phoneField(draftKey));

  setUp(() {
    harness = EditPersonScreenHarness()..install();
  });

  tearDown(defaultTearDown);

  Future<void> openPerson(
    WidgetTester tester, {
    bool membershipsLoaded = true,
  }) => harness.open(
    tester,
    UpdatePerson(person: person),
    membershipsLoaded: membershipsLoaded,
  );

  testWidgets('leaving after changing a number to another valid one asks '
      'to discard', (tester) async {
    await openPerson(tester);

    await harness.scrollTo(tester, phoneField(savedNumber.id));
    await tester.enterText(phoneField(savedNumber.id), otherValidInput);
    await harness.pressBack(tester);

    expect(find.text(discardDialogTitle), findsOneWidget);
  });

  testWidgets('leaving after typing an incomplete number asks to discard', (
    tester,
  ) async {
    await openPerson(tester);

    await harness.scrollTo(tester, phoneField(savedNumber.id));
    await tester.enterText(phoneField(savedNumber.id), incompleteInput);
    await harness.pressBack(tester);

    expect(find.text(discardDialogTitle), findsOneWidget);
  });

  testWidgets('leaving after adding an empty phone contact asks to discard', (
    tester,
  ) async {
    await openPerson(tester);

    await harness.scrollTo(
      tester,
      find.byKey(PhoneContactsEditorKeys.addButton),
    );
    await tester.tap(find.byKey(PhoneContactsEditorKeys.addButton));
    await tester.pumpAndSettle();
    await harness.pressBack(tester);

    expect(find.text(discardDialogTitle), findsOneWidget);
  });

  testWidgets(
    'leaving after typing an incomplete number into a new phone contact asks to discard',
    (tester) async {
      await openPerson(tester);

      await harness.scrollTo(
        tester,
        find.byKey(PhoneContactsEditorKeys.addButton),
      );
      await tester.tap(find.byKey(PhoneContactsEditorKeys.addButton));
      await tester.pumpAndSettle();
      final newContact = tester
          .widgetList<PhoneContactField>(find.byType(PhoneContactField))
          .singleWhere((field) => field.contact.key != savedNumber.id)
          .contact;
      final newField = phoneField(newContact.key);
      await tester.enterText(newField, incompleteInput);
      await harness.pressBack(tester);

      expect(find.text(discardDialogTitle), findsOneWidget);
    },
  );

  testWidgets('leaving after removing the number asks to discard', (
    tester,
  ) async {
    await openPerson(tester);

    final remove = find.byKey(
      PhoneContactFieldKeys.removeButton(savedNumber.id),
    );
    await harness.scrollTo(tester, remove);
    await tester.tap(remove);
    await tester.pumpAndSettle();
    await harness.pressBack(tester);

    expect(find.text(discardDialogTitle), findsOneWidget);
  });

  testWidgets('leaving after changing a number before the person has '
      'finished loading asks to discard', (tester) async {
    await openPerson(tester, membershipsLoaded: false);

    await tester.scrollUntilVisible(
      phoneField(savedNumber.id),
      100,
      scrollable: find.byType(Scrollable).first,
    );
    await tester.pump();
    await tester.enterText(phoneField(savedNumber.id), otherValidInput);
    harness.persons.respondWithSavedMemberships(null);
    await tester.pumpAndSettle();
    await harness.pressBack(tester);

    expect(find.text(discardDialogTitle), findsOneWidget);
  });

  testWidgets('leaving after typing the saved number back in does not ask', (
    tester,
  ) async {
    await openPerson(tester);

    await harness.scrollTo(tester, phoneField(savedNumber.id));
    await tester.enterText(phoneField(savedNumber.id), otherValidInput);
    await tester.enterText(phoneField(savedNumber.id), savedInput);
    await harness.pressBack(tester);

    expect(find.text(discardDialogTitle), findsNothing);
    expect(find.text('open'), findsOneWidget);
  });

  testWidgets('leaving without changing anything does not ask', (tester) async {
    await openPerson(tester);

    expect(find.byKey(EditPersonSaveButtonKeys.saveButton), findsOneWidget);
    await harness.pressBack(tester);

    expect(find.text(discardDialogTitle), findsNothing);
    expect(find.text('open'), findsOneWidget);
  });
}
