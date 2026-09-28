import 'dart:io';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gql/ast.dart';
import 'package:gql/language.dart';
import 'package:mocktail/mocktail.dart';

import 'gql_key_field_checker.dart';

class _MockDBGraphQLClient extends Mock implements DBGraphQLClient {}

/// Guards the selections added at runtime to sort a list and show its second
/// line: every related object they select must be identifiable exactly like
/// the generated selections, or the cache stores it as a link and as copied
/// fields at once and the list can no longer be read back.
void main() {
  const rules = KeyFieldRules(
    exemptions: [],
    transientSuffixes: KeyFieldRules.hasuraTransientSuffixes,
    requireTypename: true,
  );

  final schema = GqlSchemaIndex.fromDocument(
    parseString(
      File('lib/src/core/graphql/schema.graphql').readAsStringSync(),
    ),
  );
  final database = DatabaseService(_MockDBGraphQLClient());
  final metadata = AdvancedQueriesMetadata();

  for (final MapEntry(key: type, value: dao) in database.daosByType.entries) {
    if (dao is! StreamableDAO) continue;

    final listType = metadata.allQueryablesByType[type];
    if (listType == null) continue;

    test(
      'sorting ${listType.name} by any field selects the identity of every '
      'related object',
      () {
        final messages = [
          for (final field in listType.fieldsMetadata.where(
            (f) => f.isOrderable,
          ))
            for (final violation in _violations(
              SortedListDocument(
                dao.baseStreamAllConfig.document,
              ).sortedBy([OrderBy(field: field)]),
              schema,
              rules,
            ))
              'sorted by ${field.name}: ${violation.message}',
        ];

        expect(messages, isEmpty, reason: '\n${messages.join('\n')}');
      },
    );
  }
}

List<KeyFieldViolation> _violations(
  DocumentNode document,
  GqlSchemaIndex schema,
  KeyFieldRules rules,
) {
  final visitor = KeyFieldCompletenessVisitor(
    schema: schema,
    fragments: {
      for (final fragment
          in document.definitions.whereType<FragmentDefinitionNode>())
        fragment.name.value: fragment,
    },
    rules: rules,
  );

  for (final operation
      in document.definitions.whereType<OperationDefinitionNode>()) {
    visitor.visitOperation(operation, schema.rootType(operation.type)!);
  }

  return visitor.violations;
}
