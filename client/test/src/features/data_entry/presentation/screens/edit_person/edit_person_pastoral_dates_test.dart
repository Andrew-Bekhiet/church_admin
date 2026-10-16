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
  const okLabel = 'حسنًا';

  late EditPersonScreenHarness harness;

  Future<void> pickDate(WidgetTester tester, String label) async {
    await harness.scrollTo(tester, find.text(label));
    await tester.tap(find.text(label));
    await tester.pumpAndSettle();
    await tester.tap(find.text(okLabel));
    await tester.pumpAndSettle();
  }

  setUp(() {
    harness = EditPersonScreenHarness()..install();
  });

  tearDown(defaultTearDown);

  testWidgets('the last communion is picked as a date only', (tester) async {
    await harness.open(tester, UpdatePerson(person: person));

    await pickDate(tester, 'أخر تناول');

    expect(find.byType(TimePickerDialog), findsNothing);
  });

  testWidgets('the last visit is picked as a date and a time', (tester) async {
    await harness.open(tester, UpdatePerson(person: person));

    await pickDate(tester, 'أخر افتقاد');

    expect(find.byType(TimePickerDialog), findsOneWidget);
  });

  testWidgets('a picked last communion is saved as recorded by the user', (
    tester,
  ) async {
    await harness.open(tester, UpdatePerson(person: person));

    await pickDate(tester, 'أخر تناول');
    await harness.tapSave(tester);

    expect(
      harness.persons.updatedPeople.single.lastKodas?.recordedBy,
      EditPersonScreenHarness.userWhoWritesEverything.uid,
    );
  });

  testWidgets('a picked last visit is saved once its time is confirmed', (
    tester,
  ) async {
    await harness.open(tester, UpdatePerson(person: person));

    await pickDate(tester, 'أخر افتقاد');
    await tester.tap(find.text(okLabel));
    await tester.pumpAndSettle();
    await harness.tapSave(tester);

    expect(harness.persons.updatedPeople.single.lastVisit, isNotNull);
  });

  testWidgets('a person with no recorded dates is saved without any', (
    tester,
  ) async {
    await harness.open(tester, UpdatePerson(person: person));

    await harness.tapSave(tester);

    expect(harness.persons.updatedPeople.single.lastCall, isNull);
  });
}
