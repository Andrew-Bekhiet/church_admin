import 'dart:io';

import 'package:gql/ast.dart';
import 'package:gql/language.dart';

class AshSchemaSdl {
  static const String path = 'lib/src/core/graphql/schema.graphql';

  final Map<String, Map<String, String>> inputFieldTypes;
  final Map<String, Set<String>> enumValues;
  final Map<String, FieldDefinitionNode> queryFields;
  final Set<String> objectTypes;
  final Set<String> scalarTypes;

  bool get hasPersonType => objectTypes.contains('Person');

  factory AshSchemaSdl.read() =>
      AshSchemaSdl.parse(File(path).readAsStringSync());

  factory AshSchemaSdl.parse(String sdl) {
    final definitions = parseString(sdl).definitions;
    final objects = definitions.whereType<ObjectTypeDefinitionNode>().toList();

    return AshSchemaSdl._(
      inputFieldTypes: {
        for (final input
            in definitions.whereType<InputObjectTypeDefinitionNode>())
          input.name.value: {
            for (final field in input.fields)
              field.name.value: namedTypeOf(field.type),
          },
      },
      enumValues: {
        for (final enumType in definitions.whereType<EnumTypeDefinitionNode>())
          enumType.name.value: {
            for (final value in enumType.values) value.name.value,
          },
      },
      queryFields: {
        for (final field
            in objects
                .where((object) => object.name.value == 'RootQueryType')
                .expand((object) => object.fields))
          field.name.value: field,
      },
      objectTypes: {for (final object in objects) object.name.value},
      scalarTypes: {
        for (final scalar in definitions.whereType<ScalarTypeDefinitionNode>())
          scalar.name.value,
      },
    );
  }

  const AshSchemaSdl._({
    required this.inputFieldTypes,
    required this.enumValues,
    required this.queryFields,
    required this.objectTypes,
    required this.scalarTypes,
  });

  static String namedTypeOf(TypeNode type) => switch (type) {
    NamedTypeNode(:final name) => name.value,
    ListTypeNode(:final type) => namedTypeOf(type),
    _ => throw ArgumentError('Unsupported type node $type'),
  };
}
