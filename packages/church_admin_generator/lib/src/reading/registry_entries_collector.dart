import 'package:analyzer/dart/element/element.dart';
import 'package:church_admin_generator/src/model/registry_entry.dart';
import 'package:church_admin_generator/src/reading/annotation_checkers.dart';
import 'package:source_gen/source_gen.dart';

final class RegistryEntriesCollector {
  final String _package;
  final Set<Uri> _visited = {};
  final List<RegistryEntry> _entries = [];

  RegistryEntriesCollector(this._package);

  List<RegistryEntry> collectFrom(LibraryElement registryLibrary) {
    registryLibrary.fragments
        .expand((fragment) => fragment.importedLibraries)
        .forEach(_visitExportsThenLibrary);

    return List.unmodifiable(_entries);
  }

  void _visitExportsThenLibrary(LibraryElement library) {
    final isInPackage =
        library.uri.isScheme('package') &&
        library.uri.pathSegments.first == _package;

    if (!isInPackage || !_visited.add(library.uri)) return;

    library.exportedLibraries.forEach(_visitExportsThenLibrary);

    _entries.addAll(
      LibraryReader(library)
          .annotatedWith(AnnotationCheckers.queryable)
          .map(
            (queryable) => RegistryEntry(
              typeName: queryable.element.displayName,
              label: queryable.annotation.read('classLabel').stringValue,
              isEnum: queryable.element is EnumElement,
            ),
          ),
    );
  }
}
