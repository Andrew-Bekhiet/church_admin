import 'package:test/test.dart';

import 'support/church_admin_build.dart';
import 'support/generated_code.dart';

void main() {
  const registryLibrary = 'a|lib/registry.dart';
  const annotationsImport =
      "import 'package:church_admin_annotations/church_admin_annotations.dart';";

  String queryable(
    String declaration, {
    required String label,
    String options = '',
  }) => "$annotationsImport\n@Queryable(label: '$label'$options)\n$declaration";

  final person = queryable('class Person {}', label: 'People');
  final gender = queryable('enum Gender { male }', label: 'Genders');

  Map<String, String> sourcesOfPackageExporting(
    Map<String, String> librariesByAsset,
  ) {
    final exports = librariesByAsset.keys.map((asset) {
      final [package, path] = asset.split('|');

      return "export 'package:$package/${path.replaceFirst('lib/', '')}';";
    });

    return {
      ...librariesByAsset,
      'a|lib/a.dart': exports.join('\n'),
      registryLibrary:
          '''
$annotationsImport
import 'package:a/a.dart';

part 'registry.g.dart';

@GenerateQueryablesRegistery()
class Registry {}
''',
    };
  }

  Future<GeneratedCode> registryOfPackageExporting(
    Map<String, String> librariesByAsset,
  ) => ChurchAdminBuild.generatedFor(
    registryLibrary,
    sources: sourcesOfPackageExporting(librariesByAsset),
  );

  Future<String?> registrationOfNote(
    String declaration, {
    String options = '',
  }) async {
    final generated = await registryOfPackageExporting({
      'a|lib/src/note.dart': queryable(
        declaration,
        label: 'Notes',
        options: options,
      ),
    });

    return generated.initializerOf(r'_$Registry', 'note');
  }

  test('the registry lists every queryable the package exports', () async {
    final generated = await registryOfPackageExporting({
      'a|lib/src/person.dart': person,
      'a|lib/src/gender.dart': gender,
    });

    expect(
      generated.initializerOf(r'_$Registry', 'allQueryablesByType'),
      '<Type, QueryableType<Object>>{Person: person, Gender: gender}',
    );
  });

  test('queryables exported from another package are left out', () async {
    final generated = await registryOfPackageExporting({
      'a|lib/src/person.dart': person,
      'b|lib/b.dart': queryable('class Note {}', label: 'Notes'),
    });

    expect(
      generated.initializerOf(r'_$Registry', 'allQueryablesByType'),
      '<Type, QueryableType<Object>>{Person: person}',
    );
  });

  test('an enum queryable is registered by its values', () async {
    final generated = await registryOfPackageExporting({
      'a|lib/src/gender.dart': gender,
    });

    expect(
      generated.initializerOf(r'_$Registry', 'gender'),
      r"QueryableType<Gender>.enum$(name: 'Gender', label: 'Genders', "
      'byName: Gender.byName, enumValues: Gender.values)',
    );
  });

  test(
    'a class queryable is registered with its fields and JSON parser',
    () async {
      final generated = await registryOfPackageExporting({
        'a|lib/src/person.dart': person,
      });

      expect(
        generated.initializerOf(r'_$Registry', 'person'),
        "QueryableType<Person>(name: 'Person', label: 'People', "
        'fieldsMetadata: PersonFields().allFields, '
        'fieldsMetadataByName: PersonFields().allFieldsByName, '
        'fromJson: Person.fromJson)',
      );
    },
  );

  test(
    'a class queryable is keyed by its id field unless it names another',
    () async {
      final registration = await registrationOfNote(
        'class Note {\n'
        '  @QueryableField.self()\n'
        '  late final String id;\n'
        '}',
      );

      expect(registration, contains('keyField: NoteFields().id'));
    },
  );

  test(
    'a key field is named by its field name, not its GraphQL name',
    () async {
      final registration = await registrationOfNote(
        'class Note {\n'
        "  @QueryableField(label: 'Code', graphqlName: 'note_code')\n"
        '  late final String code;\n'
        '}',
        options: ", keyField: 'code'",
      );

      expect(registration, contains('keyField: NoteFields().code'));
    },
  );

  test('a key field that names no queryable field fails the build', () async {
    final result = await ChurchAdminBuild.run(
      sourcesOfPackageExporting({
        'a|lib/src/note.dart': queryable(
          'class Note {}',
          label: 'Notes',
          options: ", keyField: 'code'",
        ),
      }),
    );

    expect(result.errors, contains(contains("keyField: 'code'")));
  });

  test('a key field that names a relationship fails the build', () async {
    final result = await ChurchAdminBuild.run(
      sourcesOfPackageExporting({
        'a|lib/src/note.dart': queryable(
          'class Note {\n'
          "  @QueryableField(label: 'Area')\n"
          '  late final Area area;\n'
          '}\n\n'
          'class Area {}',
          label: 'Notes',
          options: ", keyField: 'area'",
        ),
      }),
    );

    expect(result.errors, contains(contains('not a scalar or enum')));
  });

  test(
    'an extensible queryable is keyed by a field of its hand-written fields '
    'class',
    () async {
      final registration = await registrationOfNote(
        'class Note {}\n\n'
        'class FieldMetadata<T> {}\n\n'
        'class NoteFields {\n'
        '  FieldMetadata<Note> get id => FieldMetadata();\n'
        '}',
        options: ', extensible: true',
      );

      expect(registration, contains('keyField: NoteFields().id'));
    },
  );

  test(
    'a hand-written key field that holds a relationship fails the build',
    () async {
      final result = await ChurchAdminBuild.run(
        sourcesOfPackageExporting({
          'a|lib/src/note.dart': queryable(
            'class Note {}\n\n'
            'class Area {}\n\n'
            'class FieldMetadata<T> {}\n\n'
            'class NoteFields {\n'
            '  FieldMetadata<Area> get area => FieldMetadata();\n'
            '}',
            label: 'Notes',
            options: ", keyField: 'area', extensible: true",
          ),
        }),
      );

      expect(result.errors, contains(contains('not a scalar or enum')));
    },
  );
}
