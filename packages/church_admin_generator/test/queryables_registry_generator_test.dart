import 'package:test/test.dart';

import 'support/church_admin_build.dart';
import 'support/generated_code.dart';

void main() {
  const registryLibrary = 'a|lib/registry.dart';
  const annotationsImport =
      "import 'package:church_admin_annotations/church_admin_annotations.dart';";

  String queryable(String declaration, {required String label}) =>
      "$annotationsImport\n@Queryable(classLabel: '$label')\n$declaration";

  final person = queryable('class Person {}', label: 'People');
  final gender = queryable('enum Gender { male }', label: 'Genders');

  Future<GeneratedCode> registryOfPackageExporting(
    Map<String, String> librariesByAsset,
  ) {
    final exports = librariesByAsset.keys.map((asset) {
      final [package, path] = asset.split('|');

      return "export 'package:$package/${path.replaceFirst('lib/', '')}';";
    });

    return ChurchAdminBuild.generatedFor(
      registryLibrary,
      sources: {
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
      },
    );
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
}
