import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import 'ash_schema_conformance.dart';
import 'ash_schema_sdl.dart';
import 'sample_filters.dart';
import 'server_todo.dart';

void main() {
  const filterTranslator = AshFilterTranslator();
  const sortTranslator = AshSortTranslator();

  final schema = AshSchemaSdl.read();
  final conformance = AshSchemaConformance(schema);
  final String? skipUntilResourcesExist = schema.hasPersonType
      ? null
      : '${AshSchemaSdl.path} has no Person object type yet: the Ash '
            'resources are still being built';

  test(
    'every filter the client can build resolves in the server filter inputs',
    skip: skipUntilResourcesExist,
    () {
      final todo = ServerTodo('Filter inputs the server has to provide');

      for (final queryable in SampleFilters.entityQueryables) {
        for (final sample in SampleFilters.ofQueryable(queryable)) {
          todo.addAll(
            conformance.missingForInput(
              '${queryable.name}FilterInput',
              filterTranslator.toFilterInput([sample.filter]),
            ),
            sample.origin,
          );
        }
      }

      todo.failIfAny();
    },
  );

  test(
    'every orderable field resolves in the server sort fields',
    skip: skipUntilResourcesExist,
    () {
      final todo = ServerTodo('Sort fields the server has to provide');

      for (final queryable in SampleFilters.entityQueryables) {
        final orderable = queryable.fieldsMetadata.where(
          (field) => field.isOrderable && !field.isCodeOnly,
        );

        for (final field in orderable) {
          final sortField = sortTranslator.toSortInput([
            OrderBy(field: field),
          ]).single['field'];

          todo.addAll(
            conformance.missingSortFields(queryable.name, [
              sortField as String,
            ]),
            '${queryable.name}.${field.name}',
          );
        }
      }

      todo.failIfAny();
    },
  );

  test(
    'every list query states the maximum page size of its first argument',
    skip: skipUntilResourcesExist,
    () {
      ServerTodo('List queries the server has to describe')
        ..addAll(conformance.paginationProblems(), 'client pagination')
        ..failIfAny();
    },
  );
}
