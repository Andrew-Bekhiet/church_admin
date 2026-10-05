import 'package:build_test/build_test.dart';

import 'church_admin_build.dart';
import 'generated_code.dart';

abstract final class ModelFixture {
  static const library = 'a|lib/model.dart';
  static const queryable = "@Queryable(label: 'Models')";

  static String source(String members, {String annotation = queryable}) =>
      '''
import 'package:church_admin_annotations/church_admin_annotations.dart';

part 'model.g.dart';

abstract interface class ID {}
class Person implements ID {}
class Note {}
class Tag {}
class Summary {}
class PersonsTags {}
enum Gender { male, female }

$annotation
class Model implements ID {
$members
}
''';

  static Future<GeneratedCode> generatedFor(
    String members, {
    String annotation = queryable,
  }) => ChurchAdminBuild.generatedFor(
    library,
    sources: {library: source(members, annotation: annotation)},
  );

  static Future<String> generatedFieldFor(String declaration) async =>
      (await generatedFor(declaration)).onlyQueryableField;

  static Future<TestBuilderResult> build(String members) =>
      ChurchAdminBuild.run({library: source(members)});
}
