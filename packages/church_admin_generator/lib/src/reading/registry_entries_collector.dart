import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:church_admin_generator/src/model/queryable_field.dart';
import 'package:church_admin_generator/src/model/registry_entry.dart';
import 'package:church_admin_generator/src/reading/annotation_checkers.dart';
import 'package:church_admin_generator/src/reading/queryable_field_collector.dart';
import 'package:collection/collection.dart';
import 'package:source_gen/source_gen.dart';

final class RegistryEntriesCollector {
  static bool _isScalarOrEnum(DartType? type) =>
      type is InterfaceType &&
      (type.isDartCoreString ||
          type.isDartCoreNum ||
          type.isDartCoreInt ||
          type.isDartCoreDouble ||
          type.isDartCoreBool ||
          type.element is EnumElement);

  static InvalidGenerationSourceError _notALeafFieldError(
    ClassElement element,
    String keyFieldName,
    String memberName,
  ) => InvalidGenerationSourceError(
    "@Queryable(keyField: '$keyFieldName') names $memberName of "
    '${element.displayName}, which is not a scalar or enum field',
    element: element,
  );

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
              label: queryable.annotation.read('label').stringValue,
              isEnum: queryable.element is EnumElement,
              keyFieldMemberName: switch (queryable.element) {
                final ClassElement element => _keyFieldMemberName(
                  element,
                  queryable.annotation,
                ),
                _ => null,
              },
            ),
          ),
    );
  }

  String? _keyFieldMemberName(
    ClassElement element,
    ConstantReader annotation,
  ) {
    final keyField = annotation.peek('keyField')?.stringValue;
    final keyFieldName = keyField ?? 'id';
    final keyFieldMember =
        _annotatedKeyFieldMemberName(element, keyFieldName) ??
        _handWrittenKeyFieldMemberName(element, annotation, keyFieldName);

    if (keyFieldMember != null) return keyFieldMember;

    if (keyField != null) {
      throw InvalidGenerationSourceError(
        "@Queryable(keyField: '$keyField') names no @QueryableField of "
        '${element.displayName} nor a field of its hand-written fields class',
        element: element,
      );
    }

    return null;
  }

  String? _annotatedKeyFieldMemberName(
    ClassElement element,
    String keyFieldName,
  ) {
    final collector = QueryableFieldCollector(element.thisType);

    element.accept(collector);

    final annotatedKeyField = collector.fields.firstWhereOrNull(
      (field) => field.name == keyFieldName,
    );

    if (annotatedKeyField == null) return null;

    final isLeafField =
        annotatedKeyField is DirectField &&
        _isScalarOrEnum(element.getField(annotatedKeyField.memberName)?.type);

    if (!isLeafField) {
      throw _notALeafFieldError(
        element,
        keyFieldName,
        annotatedKeyField.memberName,
      );
    }

    return annotatedKeyField.memberName;
  }

  String? _handWrittenKeyFieldMemberName(
    ClassElement element,
    ConstantReader annotation,
    String keyFieldName,
  ) {
    final isExtensible = annotation.read('extensible').boolValue;

    if (!isExtensible) return null;

    final getter = element.library
        .getClass('${element.displayName}Fields')
        ?.getGetter(keyFieldName);

    if (getter == null) return null;

    final valueType = switch (getter.returnType) {
      InterfaceType(typeArguments: [final valueType]) => valueType,
      _ => null,
    };
    final isLeafField =
        valueType == element.thisType || _isScalarOrEnum(valueType);

    if (!isLeafField) {
      throw _notALeafFieldError(element, keyFieldName, getter.displayName);
    }

    return getter.name;
  }
}
