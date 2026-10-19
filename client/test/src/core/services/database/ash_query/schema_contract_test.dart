import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import 'ash_schema_conformance.dart';
import 'ash_schema_sdl.dart';
import 'sample_filters.dart';
import 'server_todo.dart';

/// Each entity port adds its name here once the Ash resource serves it.
const Set<String> portedEntities = {
  'Area',
  'Call',
  'Church',
  'Class',
  'College',
  'Confession',
  'District',
  'Edit',
  'Father',
  'Group',
  'Hobby',
  'Job',
  'Kodas',
  'PersonState',
  'PersonType',
  'Qualification',
  'School',
  'Service',
  'ShammasLevel',
  'Store',
  'Street',
  'StudyYear',
  'Tag',
  'Visit',
};

void main() {
  const filterTranslator = AshFilterTranslator();
  const sortTranslator = AshSortTranslator();

  final schema = AshSchemaSdl.read();
  final conformance = AshSchemaConformance(schema);
  final checkedQueryables = SampleFilters.entityQueryables.where(
    (queryable) => portedEntities.contains(queryable.name),
  );

  test(
    'every filter the client can build resolves in the server filter inputs',
    () {
      final todo = ServerTodo('Filter inputs the server has to provide');

      for (final queryable in checkedQueryables) {
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

  test('every orderable field resolves in the server sort fields', () {
    final todo = ServerTodo('Sort fields the server has to provide');

    for (final queryable in checkedQueryables) {
      final orderable = queryable.fieldsMetadata.where(
        (field) => field.isOrderable && !field.isCodeOnly,
      );

      for (final field in orderable) {
        final sortField = sortTranslator.toSortInput([
          OrderBy(field: field),
        ]).single['field'];

        todo.addAll(
          conformance.missingSortFields(queryable.name, [sortField as String]),
          '${queryable.name}.${field.name}',
        );
      }
    }

    todo.failIfAny();
  });

  test(
    'every list query states the maximum page size of its first argument',
    () {
      ServerTodo('List queries the server has to describe')
        ..addAll(
          conformance.paginationProblems(onlyEntities: portedEntities),
          'client pagination',
        )
        ..failIfAny();
    },
  );
}
