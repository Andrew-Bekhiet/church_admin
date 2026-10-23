import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const translator = AshFilterTranslator();

  test('an empty related object matches rows without a related row', () {
    expect(
      translator.toFilterInput([
        Filter(PersonFields().church, PrimitiveOperator.isNull, null),
      ]),
      {
        'not': [
          {
            'church': {
              'id': {'isNil': false},
            },
          },
        ],
      },
    );
  });

  test('a non-empty related object matches rows with a related row', () {
    expect(
      translator.toFilterInput([
        Filter(PersonFields().church, PrimitiveOperator.isNotNull, null),
      ]),
      {
        'church': {
          'id': {'isNil': false},
        },
      },
    );
  });

  test(
    'an empty object reached through another object checks the last hop',
    () {
      expect(
        translator.toFilterInput([
          Filter(PersonFields().area, PrimitiveOperator.isNull, null),
        ]),
        {
          'not': [
            {
              'address': {
                'area': {
                  'id': {'isNil': false},
                },
              },
            },
          ],
        },
      );
    },
  );

  test('an empty column checks the column for nil', () {
    expect(
      translator.toFilterInput([
        Filter(PersonFields().birthdate, PrimitiveOperator.isNull, null),
      ]),
      {
        'birthdate': {'isNil': true},
      },
    );
  });
}
