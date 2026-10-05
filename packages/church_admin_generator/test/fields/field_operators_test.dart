import 'package:test/test.dart';

import '../support/model_fixture.dart';

void main() {
  group('a field is filtered with the operators of its type:', () {
    final cases = <({String type, String operators})>[
      (type: 'bool', operators: '{...BooleanOperator.values}'),
      (type: 'int', operators: '{...PrimitiveOperator.values}'),
      (type: 'String', operators: '{...StringOperator.values}'),
      (
        type: 'DateTime',
        operators: '{...DateTimeOperator.values, ...DateRangeOperator.values}',
      ),
      (type: 'Gender', operators: '{...MultiSelectOperator.values}'),
      (type: 'Person', operators: '{...MultiSelectOperator.values}'),
    ];

    for (final (:type, :operators) in cases) {
      test('$type offers $operators', () async {
        final field = await ModelFixture.generatedFieldFor(
          "@QueryableField(label: 'Value')\nlate final $type value;",
        );

        expect(field, contains('operators: $operators'));
      });
    }
  });

  test('a nullable field can also be filtered for missing values', () async {
    final field = await ModelFixture.generatedFieldFor(
      "@QueryableField(label: 'Nickname')\nlate final String? nickname;",
    );

    expect(
      field,
      contains(
        'operators: {...StringOperator.values, '
        'PrimitiveOperator.isNull, PrimitiveOperator.isNotNull}',
      ),
    );
  });

  test('a field of a type with no operators cannot be filtered', () async {
    final field = await ModelFixture.generatedFieldFor(
      "@QueryableField(label: 'Note')\nlate final Note note;",
    );

    expect(field, isNot(contains('operators:')));
  });

  test('a birthday is filtered by day and month', () async {
    final field = await ModelFixture.generatedFieldFor(
      "@QueryableField.birthday(label: 'Birthday')\nlate final String birthday;",
    );

    expect(field, contains('operators: {...BirthdayOperator.values}'));
  });
}
