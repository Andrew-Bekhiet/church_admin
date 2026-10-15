import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../utils.dart';
import 'edit_person_screen_harness.dart';

void main() {
  const discardDialogTitle = EditPersonScreenHarness.discardDialogTitle;
  final person = Person(id: 'person-id', name: 'مينا');

  late EditPersonScreenHarness harness;

  Future<void> renameAndPressBack(WidgetTester tester) async {
    await harness.open(tester, UpdatePerson(person: person));
    await tester.enterText(find.widgetWithText(TextField, 'مينا'), 'مينا جرجس');
    await harness.pressBack(tester);
  }

  setUp(() {
    harness = EditPersonScreenHarness()..install();
  });

  tearDown(defaultTearDown);

  testWidgets('leaving after changing the name asks to discard', (
    tester,
  ) async {
    await renameAndPressBack(tester);

    expect(find.text(discardDialogTitle), findsOneWidget);
  });

  testWidgets('choosing to stay keeps the screen and the edit', (tester) async {
    await renameAndPressBack(tester);

    await tester.tap(find.text('متابعة التعديل'));
    await tester.pumpAndSettle();

    expect(find.widgetWithText(TextField, 'مينا جرجس'), findsOneWidget);
  });

  testWidgets('choosing to discard leaves the screen', (tester) async {
    await renameAndPressBack(tester);

    await tester.tap(find.text('تجاهل'));
    await tester.pumpAndSettle();

    expect(find.byKey(EditPersonSaveButtonKeys.saveButton), findsNothing);
    expect(find.text('open'), findsOneWidget);
  });

  testWidgets('leaving after typing the name back does not ask', (
    tester,
  ) async {
    await harness.open(tester, UpdatePerson(person: person));
    final name = find.widgetWithText(TextField, 'الاسم');
    await tester.enterText(name, 'مينا جرجس');
    await tester.enterText(name, 'مينا');

    await harness.pressBack(tester);

    expect(find.text(discardDialogTitle), findsNothing);
    expect(find.text('open'), findsOneWidget);
  });
}
