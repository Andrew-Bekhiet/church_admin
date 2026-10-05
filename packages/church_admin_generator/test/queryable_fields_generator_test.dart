import 'package:test/test.dart';

import 'support/church_admin_build.dart';
import 'support/model_fixture.dart';

void main() {
  const named = "@QueryableField(label: 'Name')\nlate final String name;";

  test('a field without @QueryableField is left out', () async {
    final generated = await ModelFixture.generatedFor(
      '$named\nlate final String blurhash;',
    );

    expect(generated.fieldSource('ModelFields', 'blurhash'), isNull);
  });

  test('a queryable gets a shared singleton fields class', () async {
    final generated = await ModelFixture.generatedFor(named);

    expect(
      generated.fieldSource('ModelFields', '_instance'),
      'static final ModelFields _instance = ModelFields._();',
    );
  });

  test(
    'an extensible queryable leaves a private base class to extend',
    () async {
      final generated = await ModelFixture.generatedFor(
        named,
        annotation: "@Queryable(label: 'Models', extensible: true)",
      );

      expect(generated.classNames, ['_ModelFields']);
      expect(generated.fieldSource('_ModelFields', '_instance'), isNull);
    },
  );

  test('annotating a top-level variable fails the build', () async {
    final result = await ChurchAdminBuild.run({
      ModelFixture.library:
          '''
import 'package:church_admin_annotations/church_admin_annotations.dart';

part 'model.g.dart';

${ModelFixture.queryable}
const model = 0;
''',
    });

    expect(result.succeeded, isFalse);
  });
}
