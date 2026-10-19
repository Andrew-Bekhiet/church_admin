import 'package:gql/ast.dart';
import 'package:gql/language.dart';

import 'ash_schema_sdl.dart';

class AshDocumentValidity {
  final Map<String, Map<String, FieldDefinitionNode>> _objectFields;
  final Set<String> _leafTypes;

  factory AshDocumentValidity.ofSchema() {
    final definitions = parseString(AshSchemaSdl.readSource()).definitions;

    return AshDocumentValidity._(
      {
        for (final object in definitions.whereType<ObjectTypeDefinitionNode>())
          object.name.value: {
            for (final field in object.fields) field.name.value: field,
          },
      },
      {
        for (final scalar in definitions.whereType<ScalarTypeDefinitionNode>())
          scalar.name.value,
        for (final enumType in definitions.whereType<EnumTypeDefinitionNode>())
          enumType.name.value,
        'ID',
        'String',
        'Int',
        'Float',
        'Boolean',
      },
    );
  }

  const AshDocumentValidity._(this._objectFields, this._leafTypes);

  /// Fields the query selects that the schema lacks, and selections made
  /// inside a scalar.
  List<String> problemsOf(DocumentNode document) => [
    for (final operation
        in document.definitions.whereType<OperationDefinitionNode>())
      ..._problemsInSelections(
        'RootQueryType',
        operation.selectionSet.selections,
      ),
  ];

  Iterable<String> _problemsInSelections(
    String typeName,
    List<SelectionNode> selections,
  ) sync* {
    for (final field in selections.whereType<FieldNode>()) {
      final name = field.name.value;
      if (name == '__typename') continue;

      final definition = _objectFields[typeName]?[name];
      if (definition == null) {
        yield '$typeName.$name does not exist';
        continue;
      }

      final fieldType = AshSchemaSdl.namedTypeOf(definition.type);
      final selectionSet = field.selectionSet;
      if (_leafTypes.contains(fieldType)) {
        if (selectionSet != null) yield '$typeName.$name is a $fieldType';
      } else if (selectionSet == null) {
        yield '$typeName.$name needs a selection';
      } else {
        yield* _problemsInSelections(fieldType, selectionSet.selections);
      }
    }
  }
}
