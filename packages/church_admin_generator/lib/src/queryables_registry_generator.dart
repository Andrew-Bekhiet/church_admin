import 'package:build/build.dart';
import 'package:church_admin_generator/src/emitting/registry_class_builder.dart';
import 'package:church_admin_generator/src/reading/annotation_checkers.dart';
import 'package:church_admin_generator/src/reading/registry_entries_collector.dart';
import 'package:code_builder/code_builder.dart';
import 'package:source_gen/source_gen.dart';

final class QueryablesRegistryGenerator extends Generator {
  const QueryablesRegistryGenerator();

  @override
  String generate(LibraryReader library, BuildStep buildStep) {
    final registry = library
        .annotatedWith(AnnotationCheckers.queryablesRegistry)
        .singleOrNull;

    if (registry == null) return '';

    final registryName = registry.element.name;

    if (registryName == null) {
      throw InvalidGenerationSourceError(
        '@GenerateQueryablesRegistery must be on a named class',
        element: registry.element,
      );
    }

    final entries = RegistryEntriesCollector(
      buildStep.inputId.package,
    ).collectFrom(library.element);

    return RegistryClassBuilder(
      registryName,
      entries,
    ).build().accept(DartEmitter(useNullSafetySyntax: true)).toString();
  }
}
