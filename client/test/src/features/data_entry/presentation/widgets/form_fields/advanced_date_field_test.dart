import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';
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

  testWidgets('opening the picker on a future date raises nothing', (
    tester,
  ) async {
    final field = AdvancedFieldController<DateTime?, String>(
      initialValue: DateTime.now().add(const Duration(days: 30)),
    );
    addTearDown(field.dispose);
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

    expect(tester.takeException(), isNull);
  });

  testWidgets('a time with single digit minutes shows them padded', (
    tester,
  ) async {
    final field = AdvancedFieldController<DateTime?, PersonEditError>(
      initialValue: DateTime(2024, 1, 2, 3, 5),
    );
    addTearDown(field.dispose);

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: AdvancedDateField<PersonEditError>(
            field: field,
            label: 'التاريخ',
            translateError: (error) => '$error',
            withTime: true,
          ),
        ),
      ),
    );

    expect(find.textContaining('3:05'), findsOneWidget);
  });
}
