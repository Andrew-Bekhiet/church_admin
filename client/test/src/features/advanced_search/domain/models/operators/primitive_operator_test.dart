import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('an empty related object matches rows without a related row', () {
    expect(
      Filter(
        PersonFields().church,
        PrimitiveOperator.isNull,
        null,
      ).queryToJson(),
      {
        '_not': {'church': <String, Object?>{}},
      },
    );
  });

  test('a non-empty related object matches rows with a related row', () {
    expect(
      Filter(
        PersonFields().church,
        PrimitiveOperator.isNotNull,
        null,
      ).queryToJson(),
      {'church': <String, Object?>{}},
    );
  });

  test(
    'an empty object reached through another object checks the last hop',
    () {
      expect(
        Filter(
          PersonFields().area,
          PrimitiveOperator.isNull,
          null,
        ).queryToJson(),
        {
          '_not': {
            'address': {'area': <String, Object?>{}},
          },
        },
      );
    },
  );

  test('an empty column checks the column for null', () {
    expect(
      Filter(
        PersonFields().birthdate,
        PrimitiveOperator.isNull,
        null,
      ).queryToJson(),
      {
        'birthdate': {'_isNull': true},
      },
    );
  });
}
