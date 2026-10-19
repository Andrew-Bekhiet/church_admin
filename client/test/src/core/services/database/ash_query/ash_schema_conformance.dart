import 'ash_schema_sdl.dart';

class AshSchemaConformance {
  final AshSchemaSdl schema;

  const AshSchemaConformance(this.schema);

  /// Server pieces missing for [value] to be accepted as the input [typeName].
  Iterable<String> missingForInput(String typeName, Object? value) sync* {
    final fieldTypes = schema.inputFieldTypes[typeName];
    final values = schema.enumValues[typeName];

    switch (value) {
      case final List<Object?> list:
        for (final element in list) {
          yield* missingForInput(typeName, element);
        }
      case Map<Object?, Object?>() when schema.scalarTypes.contains(typeName):
        break;
      case Map<Object?, Object?>() when fieldTypes == null:
        yield 'input type $typeName';
      case final Map<Object?, Object?> map:
        for (final MapEntry(:key, value: nested) in map.entries) {
          final fieldType = fieldTypes?[key];
          if (fieldType == null) {
            yield '$typeName.$key';
          } else {
            yield* missingForInput(fieldType, nested);
          }
        }
      case final String text when values != null && !values.contains(text):
        yield 'enum value $typeName.$text';
    }
  }

  /// The sort field enum values that the server has to define.
  Iterable<String> missingSortFields(String typeName, Iterable<String> names) {
    final values = schema.enumValues['${typeName}SortField'];
    if (values == null) return ['enum ${typeName}SortField'];

    return names
        .where((name) => !values.contains(name))
        .map((name) => '${typeName}SortField.$name');
  }

  /// Problems with the `Maximum N` the list queries state on their `first`.
  Iterable<String> paginationProblems() sync* {
    final maximums = <String, int>{};

    for (final MapEntry(key: query, value: field)
        in schema.queryFields.entries) {
      final first = field.args.where((arg) => arg.name.value == 'first');
      if (first.isEmpty) continue;

      final description = first.single.description?.value ?? '';
      final maximum = _statedMaximum.firstMatch(description)?.group(1);
      if (maximum == null) {
        yield 'query $query: the description of `first` does not state "Maximum N"';
      } else {
        maximums[query] = int.parse(maximum);
      }
    }

    if (maximums.values.toSet().length > 1) {
      yield 'list queries state different maximum page sizes: '
          '${maximums.entries.map((e) => '${e.key}=${e.value}').join(', ')}';
    }
  }

  static final RegExp _statedMaximum = RegExp(r'Maximum (\d+)');
}
