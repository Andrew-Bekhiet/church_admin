import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';
import 'package:flutter_test/flutter_test.dart';

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

  Finder nameField() => find.widgetWithText(TextField, 'الاسم');

  Future<void> createNamedPersonInFamily(WidgetTester tester) async {
    await harness.open(tester, const CreatePersonInFamily(family: family));
    await tester.enterText(nameField(), 'جرجس');
    await harness.tapSave(tester);
    await tester.pumpAndSettle();
  }

  setUp(() {
    harness = EditPersonScreenHarness()..install();
  });

  tearDown(defaultTearDown);

  testWidgets('saving a new person creates it with the entered name', (
    tester,
  ) async {
    await createNamedPersonInFamily(tester);

    expect(harness.persons.createdPeople.single.name, 'جرجس');
  });

  testWidgets('saving a new person opens its details', (tester) async {
    await createNamedPersonInFamily(tester);

    expect(
      find.text('viewing ${harness.persons.createdPeople.single.id}'),
      findsOneWidget,
    );
  });

  testWidgets('saving an existing person goes back to the previous screen', (
    tester,
  ) async {
    await harness.open(tester, UpdatePerson(person: person));

    await tester.enterText(nameField(), 'مينا جرجس');
    await harness.tapSave(tester);
    await tester.pumpAndSettle();

    expect(harness.persons.updatedPeople.single.name, 'مينا جرجس');
    expect(find.text('open'), findsOneWidget);
  });

  testWidgets('a successful save announces it', (tester) async {
    await harness.open(tester, UpdatePerson(person: person));

    await tester.enterText(nameField(), 'مينا جرجس');
    await harness.tapSave(tester);

    expect(find.text('تم بنجاح'), findsOneWidget);
  });

  testWidgets('while saving the message says so and the button is disabled', (
    tester,
  ) async {
    final gate = harness.persons.saveGate = Completer<void>();
    await harness.open(tester, UpdatePerson(person: person));

    await harness.tapSave(tester);

    expect(find.text('جار الحفظ ...'), findsOneWidget);
    expect(
      tester
          .widget<FloatingActionButton>(
            find.byKey(EditPersonSaveButtonKeys.saveButton),
          )
          .onPressed,
      isNull,
    );

    gate.complete();
    await tester.pumpAndSettle();
  });

  testWidgets('a failed save shows the error and keeps the screen', (
    tester,
  ) async {
    harness.persons.saveError = Exception('connection lost');
    await harness.open(tester, UpdatePerson(person: person));

    await harness.tapSave(tester);
    await tester.pumpAndSettle();

    expect(find.byType(CAErrorDialog), findsOneWidget);
    expect(find.byKey(EditPersonSaveButtonKeys.saveButton), findsOneWidget);
  });

  testWidgets('a failed save is reported with the person that was sent', (
    tester,
  ) async {
    harness.persons.saveError = Exception('connection lost');
    await harness.open(tester, UpdatePerson(person: person));

    await harness.tapSave(tester);
    await tester.pumpAndSettle();

    expect(
      harness.logging.reportedErrors.single.data?['newObject'],
      containsPair('id', person.id),
    );
  });
}
