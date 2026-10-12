import 'package:test/test.dart';

import 'support/church_admin_build.dart';
import 'support/generated_code.dart';

void main() {
  const registryLibrary = 'a|lib/registry.dart';
  const annotationsImport =
      "import 'package:church_admin_annotations/church_admin_annotations.dart';";

  String queryable(String declaration, {required String label}) =>
      "$annotationsImport\n@Queryable(label: '$label')\n$declaration";

  final person = queryable('class Person {}', label: 'People');
  final gender = queryable('enum Gender { male }', label: 'Genders');

  Map<String, String> packageExporting(Map<String, String> librariesByAsset) {
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
    sources: packageExporting(librariesByAsset),
  );

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

  test('a class queryable is registered with the key field it names', () async {
    final generated = await registryOfPackageExporting({
      'a|lib/src/note.dart':
          """
$annotationsImport
@Queryable(label: 'Notes', keyField: 'note_code')
class Note {
  @QueryableField(label: 'Code', graphqlName: 'note_code')
  late final String code;
}
""",
    });

    expect(
      generated.initializerOf(r'_$Registry', 'note'),
      "QueryableType<Note>(name: 'Note', label: 'Notes', "
      'fieldsMetadata: NoteFields().allFields, '
      'fieldsMetadataByName: NoteFields().allFieldsByName, '
      'fromJson: Note.fromJson, keyField: NoteFields().code)',
    );
  });

  test('a key field that names no queryable field fails the build', () async {
    final result = await ChurchAdminBuild.run(
      packageExporting({
        'a|lib/src/note.dart':
            """
$annotationsImport
@Queryable(label: 'Notes', keyField: 'code')
class Note {}
""",
      }),
    );

    expect(result.succeeded, isFalse);
  });

  test(
    'an extensible queryable is keyed by a field of its hand-written fields '
    'class',
    () async {
      final generated = await registryOfPackageExporting({
        'a|lib/src/note.dart':
            """
$annotationsImport
@Queryable(label: 'Notes', extensible: true)
class Note {}

class NoteFields {
  Object get id => 0;
}
""",
      });

      expect(
        generated.initializerOf(r'_$Registry', 'note'),
        endsWith('keyField: NoteFields().id)'),
      );
    },
  );
}
