import 'package:analyzer/dart/analysis/utilities.dart';
import 'package:analyzer/dart/ast/ast.dart';
import 'package:dart_style/dart_style.dart';

final class GeneratedCode {
  static const _onOneLine = 1000000;

  final String _source;
  final List<ClassDeclaration> _classes;

  List<String> get classNames =>
      _classes.map((c) => c.namePart.typeName.lexeme).toList();

  factory GeneratedCode.parse(String generated) {
    final source = DartFormatter(
      languageVersion: DartFormatter.latestLanguageVersion,
      pageWidth: _onOneLine,
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
      _sourceOf(_field(className, fieldName));

  String? initializerOf(String className, String fieldName) => _sourceOf(
    _field(className, fieldName)?.fields.variables.single.initializer,
  );

  FieldDeclaration? _field(String className, String fieldName) {
    final classBody = _classes
        .where((c) => c.namePart.typeName.lexeme == className)
        .single
        .body;
    final members = classBody is BlockClassBody
        ? classBody.members
        : const <ClassMember>[];

    return members
        .whereType<FieldDeclaration>()
        .where(
          (field) => field.fields.variables.single.name.lexeme == fieldName,
        )
        .singleOrNull;
  }

  String? _sourceOf(AstNode? node) =>
      node == null ? null : _source.substring(node.offset, node.end);
}
