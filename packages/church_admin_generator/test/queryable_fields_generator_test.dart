import 'package:test/test.dart';

import 'support/church_admin_build.dart';
import 'support/generated_code.dart';

void main() {
  const modelLibrary = 'a|lib/model.dart';
  const queryable = "@Queryable(classLabel: 'Models')";

  Future<GeneratedCode> generatedFor(
    String members, {
    String annotation = queryable,
  }) => ChurchAdminBuild.generatedFor(
    modelLibrary,
    sources: {
      modelLibrary:
          '''
import 'package:church_admin_annotations/church_admin_annotations.dart';

part 'model.g.dart';

abstract interface class ID {}
class Person implements ID {}
class Note {}
class Tag {}
class PersonsTags {}
enum Gender { male, female }

$annotation
class Model {
$members
}
''',
    },
  );

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
        final generated = await generatedFor('late final $type value;');

        expect(
          generated.initializerOf('ModelFields', 'value'),
          contains('operators: $operators'),
        );
      });
    }
  });

  test('a nullable field can also be filtered for missing values', () async {
    final generated = await generatedFor('late final String? nickname;');

    expect(
      generated.initializerOf('ModelFields', 'nickname'),
      contains(
        'operators: {...StringOperator.values, '
        'PrimitiveOperator.isNull, PrimitiveOperator.isNotNull}',
      ),
    );
  });

  test('a field of a type with no operators cannot be filtered', () async {
    final generated = await generatedFor('late final Note note;');

    expect(
      generated.initializerOf('ModelFields', 'note'),
      isNot(contains('operators:')),
    );
  });

  test(
    'a list field is filtered by its element type and cannot be ordered',
    () async {
      final generated = await generatedFor('late final List<Gender> genders;');

      expect(
        generated.fieldSource('ModelFields', 'genders'),
        allOf(
          startsWith('final FieldMetadata<Gender> genders'),
          contains('isOrderable: false'),
          contains('operators: {...MultiSelectOperator.values}'),
        ),
      );
    },
  );

  test('a map field keeps its own type instead of its values', () async {
    final generated = await generatedFor(
      'late final Map<String, Tag> tagsByName;',
    );

    expect(
      generated.fieldSource('ModelFields', 'tagsByName'),
      startsWith('final FieldMetadata<Map<String, Tag>> tagsByName'),
    );
  });

  test(
    'a many-to-many field is filtered through its relationship class',
    () async {
      final generated = await generatedFor(
        '@QueryableField(manyToManyRelType: PersonsTags)\n'
        'late final List<Tag> tags;',
      );

      expect(
        generated.initializerOf('ModelFields', 'tags'),
        'tagsRel.redirectTo(PersonsTagsFields().tag, '
        'isExpandable: false, isOrderable: false)',
      );
    },
  );

  test('a queryable gets a shared singleton fields class', () async {
    final generated = await generatedFor('late final String name;');

    expect(
      generated.fieldSource('ModelFields', '_instance'),
      'static final ModelFields _instance = ModelFields._();',
    );
  });

  test(
    'an extensible queryable leaves a private base class to extend',
    () async {
      final generated = await generatedFor(
        'late final String name;',
        annotation: "@Queryable(classLabel: 'Models', allowExtension: true)",
      );

      expect(generated.classNames, ['_ModelFields']);
      expect(generated.fieldSource('_ModelFields', '_instance'), isNull);
    },
  );

  test('annotating a top-level variable fails the build', () async {
    final result = await ChurchAdminBuild.run({
      modelLibrary:
          '''
import 'package:church_admin_annotations/church_admin_annotations.dart';

part 'model.g.dart';

$queryable
const model = 0;
''',
    });

    expect(result.succeeded, isFalse);
  });
}
