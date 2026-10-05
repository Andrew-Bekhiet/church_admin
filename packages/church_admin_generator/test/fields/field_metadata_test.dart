import 'package:test/test.dart';

import '../support/model_fixture.dart';

void main() {
  test('a field is described by its name and label', () async {
    final field = await ModelFixture.generatedFieldFor(
      "@QueryableField(label: 'الاسم')\nlate final String name;",
    );

    expect(field, allOf(contains("name: 'name'"), contains("label: 'الاسم'")));
  });

  test('an annotated getter is queryable like a field', () async {
    final field = await ModelFixture.generatedFieldFor(
      "@QueryableField(label: 'Initial')\nString get initial => '';",
    );

    expect(field, contains('(obj) => obj is Model ? obj.initial : null'));
  });

  test(
    'a GraphQL name replaces the name while the Dart member is read',
    () async {
      final field = await ModelFixture.generatedFieldFor(
        "@QueryableField(label: 'Class', graphqlName: 'class')\n"
        r'late final Note class$;',
      );

      expect(
        field,
        allOf(contains(r'obj.class$'), contains("name: 'class'")),
      );
    },
  );

  test('a code-only field is hidden from the filter UI', () async {
    final field = await ModelFixture.generatedFieldFor(
      "@QueryableField(label: 'Hidden', codeOnly: true)\n"
      'late final bool isHidden;',
    );

    expect(field, contains('isCodeOnly: true'));
  });

  test(
    'a list is filtered by its element type and cannot be ordered',
    () async {
      final field = await ModelFixture.generatedFieldFor(
        "@QueryableField(label: 'Genders')\nlate final List<Gender> genders;",
      );

      expect(
        field,
        allOf(
          startsWith('final FieldMetadata<Gender> genders'),
          contains('isOrderable: false'),
        ),
      );
    },
  );

  test('a map keeps its own type instead of its values', () async {
    final field = await ModelFixture.generatedFieldFor(
      "@QueryableField(label: 'Tags')\nlate final Map<String, Tag> tagsByName;",
    );

    expect(field, startsWith('final FieldMetadata<Map<String, Tag>> '));
  });

  test(
    'self is the object itself, picked among objects of its class',
    () async {
      final field = await ModelFixture.generatedFieldFor(
        '@QueryableField.self()\nlate final String id;',
      );

      expect(
        field,
        allOf(
          startsWith('final FieldMetadata<Model> id'),
          contains("label: '='"),
          contains('operators: {...MultiSelectOperator.values}'),
        ),
      );
    },
  );

  test('the latest history entry cannot be ordered', () async {
    final field = await ModelFixture.generatedFieldFor(
      "@QueryableField.history(label: 'Last visit')\n"
      'late final Person lastVisitHistory;',
    );

    expect(field, contains('isOrderable: false'));
  });

  test(
    'an aggregate is code-only, labelled by its name and typed as asked',
    () async {
      final field = await ModelFixture.generatedFieldFor(
        '@QueryableField.aggregate(type: Summary)\n'
        'late final Note? visitsAggregate;',
      );

      expect(
        field,
        allOf(
          startsWith('final FieldMetadata<Summary> visitsAggregate'),
          contains("label: 'visitsAggregate'"),
          contains('isCodeOnly: true'),
        ),
      );
    },
  );
}
