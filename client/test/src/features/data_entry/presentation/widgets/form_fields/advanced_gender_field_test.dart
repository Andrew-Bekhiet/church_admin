import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../../material_ui_test_app.dart';

void main() {
  late AdvancedFieldController<bool?, String> field;

  setUp(
    () => field = AdvancedFieldController<bool?, String>(initialValue: null),
  );

  tearDown(() => field.dispose());

  Future<void> showField(WidgetTester tester) => tester.pumpWidget(
    MaterialUiTestApp.withThemeAndLocale(
      child: Scaffold(
        body: AdvancedGenderField<String>(field: field, bothLabel: 'الكل'),
      ),
    ),
  );

  testWidgets('choosing a gender sets the value', (tester) async {
    await showField(tester);

    await tester.tap(find.byType(Radio<bool?>).last);
    await tester.pump();

    expect(field.fieldValue, isFalse);
  });

  testWidgets('a read-only field shows its choices disabled', (tester) async {
    field.markReadOnly();
    await showField(tester);

    for (final radio in find.byType(Radio<bool?>).evaluate()) {
      expect((radio.widget as Radio<bool?>).enabled, isFalse);
    }
  });
}
