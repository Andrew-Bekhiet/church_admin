import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('A single filter edit', () {
    final birthday = Filter(
      PersonFields().birthday,
      BirthdayOperator.equals,
      '01-01',
    );
    final storey = Filter(
      AddressFields().storeyNumber,
      PrimitiveOperator.eq,
      5,
    );

    test('picking another birthday is tracked as setting the value', () {
      expect(
        AdvancedSearchFilterEdit.eventForSingleEdit(
          [birthday],
          [birthday.copyWith(value: '05-12')],
        ),
        isA<AdvancedSearchFilterValueSet>(),
      );
    });

    test('a birthday on any day of the month is tracked as such', () {
      expect(
        AdvancedSearchFilterEdit.eventForSingleEdit(
          [birthday],
          [birthday.copyWith(value: '05-%')],
        )?.properties,
        containsPair('is_any_day', true),
      );
    });

    test('changing a number is tracked as setting the value', () {
      expect(
        AdvancedSearchFilterEdit.eventForSingleEdit(
          [storey],
          [storey.copyWith(value: 7)],
        ),
        isA<AdvancedSearchFilterValueSet>().having(
          (event) => event.isFreeText,
          'isFreeText',
          isFalse,
        ),
      );
    });
  });
}
