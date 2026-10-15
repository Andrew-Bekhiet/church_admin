import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
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

  tearDown(defaultTearDown);

  group('without the national id feature', () {
    setUp(() {
      harness = EditPersonScreenHarness()..install();
    });

    testWidgets('the national id is not asked for', (tester) async {
      await harness.open(tester, UpdatePerson(person: person));

      expect(find.text('الرقم القومي'), findsNothing);
      expect(find.text('الاسم'), findsOneWidget);
    });
  });

  group('with the national id feature', () {
    setUp(() {
      harness = EditPersonScreenHarness()
        ..enablePersonNationalId = true
        ..install();
    });

    testWidgets('the national id is asked for', (tester) async {
      await harness.open(tester, UpdatePerson(person: person));

      expect(find.text('الرقم القومي'), findsOneWidget);
    });

    testWidgets('an invalid national id refuses the save', (tester) async {
      await harness.open(tester, UpdatePerson(person: person));

      await tester.enterText(
        find.widgetWithText(TextField, 'الرقم القومي'),
        '123',
      );
      await harness.tapSave(tester);

      expect(harness.persons.updatedPeople, isEmpty);
      expect(find.text('برجاء إدخال رقم قومي صالح'), findsOneWidget);
    });

    testWidgets('a valid national id is saved', (tester) async {
      await harness.open(tester, UpdatePerson(person: person));

      await tester.enterText(
        find.widgetWithText(TextField, 'الرقم القومي'),
        '29901011234567',
      );
      await harness.tapSave(tester);

      expect(harness.persons.updatedPeople.single.nationalId, 29901011234567);
    });
  });

  group('names', () {
    setUp(() {
      harness = EditPersonScreenHarness()..install();
    });

    testWidgets('a blank name refuses the save and asks for it', (
      tester,
    ) async {
      await harness.open(tester, UpdatePerson(person: person));

      await tester.enterText(find.widgetWithText(TextField, 'مينا'), '  ');
      await harness.tapSave(tester);

      expect(harness.persons.updatedPeople, isEmpty);
      expect(find.text('برجاء إدخال الاسم'), findsOneWidget);
    });

    testWidgets('the birthdate is shown for a person who has one', (
      tester,
    ) async {
      await harness.open(
        tester,
        UpdatePerson(person: person.copyWith(birthdate: DateTime(2000, 5, 17))),
      );

      expect(find.text('2000/5/17'), findsOneWidget);
    });
  });
}
