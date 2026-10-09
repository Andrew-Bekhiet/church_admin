import 'package:test/test.dart';

import '../support/model_fixture.dart';

void main() {
  test(
    'a many-to-many field is filtered through its relationship class',
    () async {
      final generated = await ModelFixture.generatedFor(
        '@QueryableField.manyToMany(through: PersonsTags)\n'
        'late final List<Tag> tags;',
      );

      expect(
        generated.initializerOf('ModelFields', 'tags'),
        'tagsRel.redirectTo(PersonsTagsFields().tag, '
        'isExpandable: false, isOrderable: false)',
      );
    },
  );

  test('a many-to-many label replaces the target field label', () async {
    final generated = await ModelFixture.generatedFor(
      "@QueryableField.manyToMany(through: PersonsTags, label: 'Tags')\n"
      'late final List<Tag> tags;',
    );

    expect(
      generated.initializerOf('ModelFields', 'tags'),
      contains("label: 'Tags'"),
    );
  });

  test('a many-to-many annotation on a single value fails the build', () async {
    final result = await ModelFixture.build(
      '@QueryableField.manyToMany(through: PersonsTags)\nlate final Tag tag;',
    );

    expect(result.succeeded, isFalse);
  });
}
