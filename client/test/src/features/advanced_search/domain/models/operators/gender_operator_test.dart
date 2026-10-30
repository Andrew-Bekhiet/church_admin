import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('filtering by gender', () {
    test('a specific gender matches the database boolean', () {
      expect(
        Filter(
          PersonFields().gender,
          GenderOperator.is$,
          Gender.female,
        ).queryToJson(),
        {
          'gender': {'_eq': false},
        },
      );
    });

    test('excluding a specific gender negates the database boolean', () {
      expect(
        Filter(
          ClassFields().serviceGender,
          GenderOperator.isNot,
          Gender.male,
        ).queryToJson(),
        {
          'serviceGender': {'_neq': true},
        },
      );
    });

    test('any gender matches rows that set no gender', () {
      expect(
        Filter(
          ClassFields().serviceGender,
          GenderOperator.is$,
          Gender.any,
        ).queryToJson(),
        {
          'serviceGender': {'_isNull': true},
        },
      );
    });
  });
}
