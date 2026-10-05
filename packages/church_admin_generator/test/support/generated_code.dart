import 'package:analyzer/dart/analysis/utilities.dart';
import 'package:analyzer/dart/ast/ast.dart';
import 'package:dart_style/dart_style.dart';

final class GeneratedCode {
  static const _oneLineMaxWidth = 1_000_000;
  static const _bookkeepingFields = {
    '_instance',
    'allFields',
    'allFieldsByName',
  };

  static String _nameOf(FieldDeclaration field) =>
      field.fields.variables.single.name.lexeme;

  final String _source;
  final List<ClassDeclaration> _classes;

  List<String> get classNames =>
      _classes.map((c) => c.namePart.typeName.lexeme).toList();

  String get onlyQueryableField {
    final [fieldsClass] = _classes;
    final [queryableField] = _fieldsOf(
      fieldsClass,
    ).where((field) => !_bookkeepingFields.contains(_nameOf(field))).toList();

    return _sourceOf(queryableField);
  }

  factory GeneratedCode.parse(String generated) {
    final source = DartFormatter(
      languageVersion: DartFormatter.latestLanguageVersion,
      pageWidth: _oneLineMaxWidth,
    ).format(generated);

    return GeneratedCode._(
      source,
      parseString(
        content: source,
      ).unit.declarations.whereType<ClassDeclaration>().toList(),
    );
  }

  GeneratedCode._(this._source, this._classes);

  String? fieldSource(String className, String fieldName) =>
      switch (_field(className, fieldName)) {
        final field? => _sourceOf(field),
        null => null,
      };

  String? initializerOf(String className, String fieldName) => switch (_field(
    className,
    fieldName,
  )?.fields.variables.single.initializer) {
    final initializer? => _sourceOf(initializer),
    null => null,
  };

  FieldDeclaration? _field(String className, String fieldName) {
    final fieldsClass = _classes
        .where((c) => c.namePart.typeName.lexeme == className)
        .single;

    return _fieldsOf(
      fieldsClass,
    ).where((field) => _nameOf(field) == fieldName).singleOrNull;
  }

  Iterable<FieldDeclaration> _fieldsOf(ClassDeclaration declaration) =>
      switch (declaration.body) {
        BlockClassBody(:final members) => members.whereType(),
        _ => const [],
      };

  String _sourceOf(AstNode node) => _source.substring(node.offset, node.end);
}
