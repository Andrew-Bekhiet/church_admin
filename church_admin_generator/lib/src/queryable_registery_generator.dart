import 'dart:async';

import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:church_admin/annotations.dart';
import 'package:source_gen/source_gen.dart';

class QueryableRegisteryGenerator extends Generator {
  const QueryableRegisteryGenerator();

  @override
  FutureOr<String> generate(LibraryReader library, BuildStep buildStep) async {
    final registry = library
        .annotatedWith(
          const TypeChecker.typeNamed(GenerateQueryablesRegistery),
        )
        .singleOrNull;

    if (registry == null) return '';

    final queryables = _collectAllQueryablesFromExportedLibraries(
      library.element.fragments.expand((f) => f.importedLibraries).firstWhere(
            (l) => l.identifier == 'package:church_admin/church_admin.dart',
          ),
    );

    return _writeQueryablesRegistry(
      registry.element.name!,
      queryables.toList(),
    );
  }

  Iterable<AnnotatedElement> _collectAllQueryablesFromExportedLibraries(
    LibraryElement library, [
    Set<String> visited = const {},
  ]) {
    if (!library.identifier.startsWith('package:church_admin') ||
        visited.contains(library.identifier)) {
      return [];
    }

    return library.exportedLibraries
        .expand(
          (e) => _collectAllQueryablesFromExportedLibraries(
            e,
            {library.identifier, ...visited},
          ),
        )
        .followedBy(
          LibraryReader(library)
              .annotatedWith(const TypeChecker.typeNamed(Queryable)),
        )
        .toList();
  }

  String _writeQueryablesRegistry(
    String className,
    List<AnnotatedElement> queryables,
  ) {
    final stringBuffer = StringBuffer()
      ..writeln('abstract final class _\$$className {')
      ..writeln('_\$$className();')
      ..writeAll(_writeRegisteryFields(queryables))
      ..writeln(_writeAllQueryablesFields(queryables))
      ..writeln('}');

    return stringBuffer.toString();
  }

  Iterable<String> _writeRegisteryFields(
    List<AnnotatedElement> queryables,
  ) sync* {
    for (final queryable in queryables) {
      final type = queryable.element.displayName;
      final String typeLowerFirst = type.toLowerFirst();

      final classLabel = queryable.annotation.read('classLabel').stringValue;

      if (queryable.element is EnumElement) {
        yield '''

  final $typeLowerFirst = QueryableType<$type>.enum\$(
    name: '$type',
    label: '$classLabel',
    byName: $type.byName,
    enumValues: $type.values,
  );
''';
      } else {
        yield '''

  final $typeLowerFirst = QueryableType<$type>(
    name: '$type',
    label: '$classLabel',
    fieldsMetadata: ${type}Fields().allFields,
    fieldsMetadataByName: ${type}Fields().allFieldsByName,
    fromJson: $type.fromJson,
  );
''';
      }
    }
  }

  String _writeAllQueryablesFields(List<AnnotatedElement> queryables) {
    return '''

late final allQueryables = <QueryableType<Object>>[
    ${queryables.map((e) => e.element.displayName.toLowerFirst()).join(',\n')}
  ];
  late final allQueryablesByType = <Type, QueryableType<Object>>{
    ${queryables.map((e) => "${e.element.displayName}: ${e.element.displayName.toLowerFirst()}").join(',\n')}
  };''';
  }
}

extension on String {
  String toLowerFirst() {
    String result = this[0].toLowerCase() + substring(1);

    if (result == 'class') {
      result = r'$class';
    }

    return result;
  }
}
