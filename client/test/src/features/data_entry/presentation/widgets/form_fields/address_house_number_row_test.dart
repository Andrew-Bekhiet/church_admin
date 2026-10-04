import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/features/data_entry/presentation/widgets/form_fields/address_house_number_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(
    'AddressHouseNumberRow =>',
    () {
      final houseCodeField = find.byType(EditableText).last;

      Future<List<String?>> pumpRow(WidgetTester tester) async {
        final enteredHouseCodes = <String?>[];

        await tester.pumpWidget(
          MaterialApp(
            home: Material(
              child: AddressHouseNumberRow(
                address: const Address(),
                enabled: true,
                onSubstreetNameChanged: (_) {},
                onHouseCodeChanged: enteredHouseCodes.add,
              ),
            ),
          ),
        );

        return enteredHouseCodes;
      }

      testWidgets(
        'accepts letters alongside digits in the house code',
        (tester) async {
          final enteredHouseCodes = await pumpRow(tester);

          await tester.enterText(houseCodeField, '12أ');

          expect(enteredHouseCodes.last, '12أ');
        },
      );

      testWidgets(
        'stops the house code at five characters',
        (tester) async {
          final enteredHouseCodes = await pumpRow(tester);

          await tester.enterText(houseCodeField, '123AB67');

          expect(enteredHouseCodes.last, '123AB');
        },
      );

      testWidgets(
        'clearing the house code reports it as empty',
        (tester) async {
          final enteredHouseCodes = await pumpRow(tester);

          await tester.enterText(houseCodeField, '12');
          await tester.enterText(houseCodeField, '');

          expect(enteredHouseCodes.last, isNull);
        },
      );
    },
  );
}
