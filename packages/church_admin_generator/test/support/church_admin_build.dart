import 'package:build/build.dart';
import 'package:build_test/build_test.dart';
import 'package:church_admin_generator/church_admin_builder.dart';

import 'generated_code.dart';

abstract final class ChurchAdminBuild {
  static const _rootPackage = 'a';

  static Future<GeneratedCode> generatedFor(
    String library, {
    required Map<String, String> sources,
  }) async {
    final readerWriter = await _readerWriterWithAnnotations();

    await testBuilder(
      ChurchAdminBuilder.builder(BuilderOptions.empty),
      sources,
      rootPackage: _rootPackage,
      readerWriter: readerWriter,
      flattenOutput: true,
    );

    final [package, path] = library.split('|');

    return GeneratedCode.parse(
      readerWriter.testing.readString(
        AssetId(
          package,
          path.replaceFirst('.dart', '.church_admin_generator.g.part'),
        ),
      ),
    );
  }

  static Future<TestBuilderResult> run(Map<String, String> sources) async =>
      testBuilder(
        ChurchAdminBuilder.builder(BuilderOptions.empty),
        sources,
        rootPackage: _rootPackage,
        readerWriter: await _readerWriterWithAnnotations(),
      );

  static Future<TestReaderWriter> _readerWriterWithAnnotations() async {
    final readerWriter = TestReaderWriter(rootPackage: _rootPackage);
    await readerWriter.testing.loadIsolateSources();

    return readerWriter;
  }
}
