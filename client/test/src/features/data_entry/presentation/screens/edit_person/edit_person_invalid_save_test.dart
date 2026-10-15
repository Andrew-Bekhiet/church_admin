import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../utils.dart';
import 'edit_person_screen_harness.dart';

void main() {
  late EditPersonScreenHarness harness;

  Finder nameInput() => find.descendant(
    of: find.widgetWithText(TextField, 'الاسم'),
    matching: find.byType(EditableText),
  );

  setUp(() {
    harness = EditPersonScreenHarness()..install();
  });

  tearDown(defaultTearDown);

  testWidgets('saving without a name moves focus to the name field', (
    tester,
  ) async {
    await harness.open(tester, const CreateBlankPerson());

    await harness.tapSave(tester);
    await tester.pumpAndSettle();

    expect(tester.widget<EditableText>(nameInput()).focusNode.hasFocus, isTrue);
  });
}
