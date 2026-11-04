import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const translator = AshFilterTranslator();

  group('filtering by gender', () {
    test('a specific gender matches the database boolean', () {
      expect(
        translator.toFilterInput([
          Filter(PersonFields().gender, GenderOperator.is$, Gender.female),
        ]),
        {
          'gender': {'eq': false},
        },
      );
    });

    test('excluding a specific gender negates the database boolean', () {
      expect(
        translator.toFilterInput([
          Filter(
            ClassFields().serviceGender,
            GenderOperator.isNot,
            Gender.male,
          ),
        ]),
        {
          'serviceGender': {'notEq': true},
        },
      );
    });

    test('any gender matches rows that set no gender', () {
      expect(
        translator.toFilterInput([
          Filter(ClassFields().serviceGender, GenderOperator.is$, Gender.any),
        ]),
        {
          'serviceGender': {'isNil': true},
        },
      );
    });

    test(
      'a filter whose gender is not chosen yet matches rows without one',
      () {
        expect(
          translator.toFilterInput([
            Filter(ClassFields().serviceGender, GenderOperator.is$, null),
          ]),
          {
            'serviceGender': {'isNil': true},
          },
        );
      },
    );

    test('excluding any gender matches rows that set a gender', () {
      expect(
        translator.toFilterInput([
          Filter(ClassFields().serviceGender, GenderOperator.isNot, Gender.any),
        ]),
        {
          'serviceGender': {'isNil': false},
        },
      );
    });
  });

  group('a restored gender filter is the filter that was saved', () {
    for (final operator in GenderOperator.values) {
      for (final gender in [...Gender.values, null]) {
        test('${operator.name} ${gender?.name ?? 'unchosen'}', () {
          final Filter<Object> filter = Filter(
            ClassFields().serviceGender,
            operator,
            gender,
          );

          expect(Filter.fromJson(filter.toJson()), filter);
        });
      }
    }
  });

  test('a saved gender this version does not know restores as unchosen', () {
    expect(GenderOperator.is$.deserializeValue('unknown'), isNull);
  });
}
