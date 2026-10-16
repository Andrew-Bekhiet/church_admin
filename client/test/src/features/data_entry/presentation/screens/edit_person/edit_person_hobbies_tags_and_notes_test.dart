import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../utils.dart';
import 'edit_person_screen_harness.dart';

void main() {
  const family = Family(id: 'family-id', name: 'أسرة');
  const drawing = Hobby(id: 'drawing', name: 'رسم');
  final person = Person(
    id: 'person-id',
    name: 'مينا',
    family: family,
    familyId: family.id,
  );

  late EditPersonScreenHarness harness;

  Future<void> chooseDrawing(WidgetTester tester) async {
    await harness.scrollTo(tester, find.text('الهوايات'));
    await tester.tap(find.text('الهوايات'));
    await tester.pumpAndSettle();
    await tester.tap(find.text(drawing.name));
    await tester.pumpAndSettle();
    await tester.tap(find.text('تم'));
    await tester.pumpAndSettle();
  }

  setUp(() {
    harness = EditPersonScreenHarness();
    harness.hobbies.hobbies = const [drawing];
    harness.install();
  });

  tearDown(defaultTearDown);

  testWidgets('a person without hobbies says so', (tester) async {
    await harness.open(tester, UpdatePerson(person: person));

    expect(find.text('لا يوجد هوايات'), findsOneWidget);
  });

  testWidgets('chosen hobbies are shown as chips', (tester) async {
    await harness.open(tester, UpdatePerson(person: person));

    await chooseDrawing(tester);

    expect(find.widgetWithText(Chip, drawing.name), findsOneWidget);
  });

  testWidgets('chosen hobbies are saved', (tester) async {
    await harness.open(tester, UpdatePerson(person: person));

    await chooseDrawing(tester);
    await harness.tapSave(tester);

    expect(harness.persons.updatedPeople.single.hobbies, [drawing]);
  });

  testWidgets('the notes are saved', (tester) async {
    await harness.open(tester, UpdatePerson(person: person));

    final notes = find.widgetWithText(TextField, 'ملاحظات');
    await harness.scrollTo(tester, notes);
    await tester.enterText(notes, 'يحب الرسم');
    await harness.tapSave(tester);

    expect(harness.persons.updatedPeople.single.notes, 'يحب الرسم');
  });

  testWidgets('clearing the color saves the person without one', (
    tester,
  ) async {
    await harness.open(
      tester,
      UpdatePerson(person: person.copyWith(color: Colors.teal)),
    );

    await harness.scrollTo(tester, find.byTooltip('حذف اللون'));
    await tester.tap(find.byTooltip('حذف اللون'));
    await tester.pumpAndSettle();
    await harness.tapSave(tester);

    expect(harness.persons.updatedPeople.single.color, isNull);
  });
}
