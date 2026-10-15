import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../utils.dart';

void main() {
  testWidgets('picking a date after the field was disposed raises nothing', (
    tester,
  ) async {
    final field = AdvancedFieldController<DateTime?, String>(
      initialValue: null,
    );
    await tester.pumpWidget(
      materialAppWithThemeAndLocale()(
        Scaffold(
          body: AdvancedDateField<String>(
            field: field,
            label: 'التاريخ',
            translateError: (error) => error,
          ),
        ),
      ),
    );
    await tester.tap(find.byType(TappableInputField<DateTime?>));
    await tester.pumpAndSettle();
    field.dispose();

    await tester.tap(find.byType(TextButton).last);
    await tester.pumpAndSettle();

    expect(tester.takeException(), isNull);
  });
}
