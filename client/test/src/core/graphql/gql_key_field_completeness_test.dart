import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:gql/ast.dart';
import 'package:gql/language.dart';

import 'gql_key_field_checker.dart';

/// Guards the normalized cache: every selection of a keyed object type must
/// select all of its key fields, otherwise `normalize` silently embeds that
/// occurrence into its parent (a profiled jank source).
void main() {
  const rules = KeyFieldRules(
    exemptions: [],
    transientSuffixes: [
      'Aggregate',
      'AggregateFields',
      'AvgFields',
      'MaxFields',
      'MinFields',
      'SumFields',
      'StddevFields',
      'StddevPopFields',
      'StddevSampFields',
      'VarPopFields',
      'VarSampFields',
      'VarianceFields',
      'MutationResponse',
    ],
  );

  test('every keyed-type selection selects all of its key fields', () {
    const schemaPath = 'lib/src/core/graphql/schema.graphql';
    const operationsDir = 'lib/src/core/services/database/gql_definintions';

    final schema = GqlSchemaIndex.fromDocument(
      parseString(File(schemaPath).readAsStringSync()),
    );
    final fragments = <String, FragmentDefinitionNode>{};
    final operations = <OperationDefinitionNode>[];
    for (final file in _gqlFiles(operationsDir)) {
      for (final def in parseString(file.readAsStringSync()).definitions) {
        switch (def) {
          case FragmentDefinitionNode():
            fragments[def.name.value] = def;

          case OperationDefinitionNode():
            operations.add(def);
        }
      }
    }

    final visitor = KeyFieldCompletenessVisitor(
      schema: schema,
      fragments: fragments,
      rules: rules,
    );

    for (final operation in operations) {
      final rootType = schema.rootType(operation.type);
      expect(
        rootType,
        isNotNull,
        reason:
            'No root type for ${operation.type} '
            '(operation "${operation.name?.value ?? '<anonymous>'}").',
      );
      visitor.visitOperation(operation, rootType!);
    }

    final messages = visitor.violations.map((v) => v.message).toList();
    expect(messages, isEmpty, reason: '\n${messages.join('\n')}');
  });

  group('checker behavior', () {
    List<KeyFieldViolation> run(String schemaSource, String operationSource) {
      final schema = GqlSchemaIndex.fromDocument(parseString(schemaSource));
      final fragments = <String, FragmentDefinitionNode>{};
      final operations = <OperationDefinitionNode>[];
      for (final def in parseString(operationSource).definitions) {
        switch (def) {
          case FragmentDefinitionNode():
            fragments[def.name.value] = def;
          case OperationDefinitionNode():
            operations.add(def);
        }
      }
      final visitor = KeyFieldCompletenessVisitor(
        schema: schema,
        fragments: fragments,
        rules: rules,
      );
      for (final operation in operations) {
        visitor.visitOperation(operation, schema.rootType(operation.type)!);
      }
      return visitor.violations;
    }

    const schema = '''
      type query_root { rows: HistoryMeetingRoster, node: Node }
      type HistoryMeetingRoster { personId: Int, asServant: Boolean, meetingId: Int, name: String }
      type Node { name: String }
    ''';

    test('reports a keyed type missing a key field', () {
      final violations = run(
        schema,
        'query q { rows { personId asServant name } }',
      );
      expect(violations, hasLength(1));
      expect(violations.single.kind, ViolationKind.missingKeyFields);
      expect(violations.single.missingKeyFields, ['meetingId']);
    });

    test('passes when a keyed type selects all key fields', () {
      final violations = run(
        schema,
        'query q { rows { personId asServant meetingId } }',
      );
      expect(violations, isEmpty);
    });

    test('reports an unkeyed object selection with no id', () {
      final violations = run(schema, 'query q { node { name } }');
      expect(violations, hasLength(1));
      expect(violations.single.kind, ViolationKind.missingIdentity);
      expect(violations.single.type, 'Node');
    });

    test('passes an unkeyed object selection that includes id', () {
      const withId = '''
        type query_root { node: Node }
        type Node { id: ID, name: String }
      ''';
      expect(run(withId, 'query q { node { id name } }'), isEmpty);
    });
  });
}

Iterable<File> _gqlFiles(String dir) => Directory(dir)
    .listSync(recursive: true)
    .whereType<File>()
    .where((f) => f.path.endsWith('.gql') && !f.path.contains('__generated__'));
