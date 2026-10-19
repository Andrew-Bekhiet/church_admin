import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:graphql/client.dart';

import 'ash_responses.dart';

/// One Ash resource as [FakeAshTablesLink] serves it: rows in the server's
/// field names, read by the list root `<listRoot>` and the get root
/// `<typename in lowerCamelCase>(id:)`, written by `create<typename>`, which
/// returns the row of the same name when one exists (upsert by name) and
/// otherwise stores the input over [createdPresets], by
/// `update<typename>(id:)`, which stores the input over the row, and by
/// `delete<typename>(id:)`. Input keys in [commandOnlyKeys] are consumed by
/// the command and never stored on the row; [calculations] answer the
/// filterable calculations that take an `input`.
class FakeAshTable {
  final String typename;
  final String listRoot;
  final Json createdPresets;
  final Set<String> commandOnlyKeys;
  final Map<String, bool Function(Json row, Json input)> calculations;
  final List<Json> rows = [];

  int _createdCount = 0;

  String get getRoot => '${typename[0].toLowerCase()}${typename.substring(1)}';

  String get createRoot => 'create$typename';

  String get updateRoot => 'update$typename';

  String get deleteRoot => 'delete$typename';

  FakeAshTable({
    required this.typename,
    required this.listRoot,
    Iterable<ToJson> rows = const [],
    this.createdPresets = const {},
    this.commandOnlyKeys = const {},
    this.calculations = const {},
  }) {
    rows.forEach(add);
  }

  void add(ToJson model) => rows.add({
    if (model case ID(:final id)) 'id': id,
    ...model.toJson(),
    '__typename': typename,
  });

  Json createOrReturnByName(Json input) {
    if (rows.firstWhereOrNull((row) => row['name'] == input['name'])
        case final existing?) {
      return existing;
    }

    final created = {
      ...createdPresets,
      ..._storable(input),
      'id': '$listRoot-created-${++_createdCount}',
      '__typename': typename,
    };
    rows.add(created);

    return created;
  }

  Json? updateById(String id, Json input) {
    final row = rows.firstWhereOrNull((row) => row['id'] == id);
    if (row == null) return null;

    return row..addAll(_storable(input));
  }

  Json? deleteById(String id) {
    final row = rows.firstWhereOrNull((row) => row['id'] == id);
    if (row != null) rows.remove(row);

    return row;
  }

  Json _storable(Json input) => {
    for (final entry in input.entries)
      if (!commandOnlyKeys.contains(entry.key)) entry.key: entry.value,
  };
}

class SentRequest {
  final String root;
  final Json variables;

  const SentRequest(this.root, this.variables);
}

/// An Ash GraphQL server over [FakeAshTable]s. It applies the `filter`
/// operators the client sends (`and or not eq notEq in isNil ilike`), sorts
/// by `sort` and then by id as Ash does, and pages with `first`/`after`.
/// Every request is kept in [sent]; setting [nextMutationRejectionCode] makes
/// the next mutation fail with the error code the real server raises.
class FakeAshTablesLink extends Link {
  final List<FakeAshTable> tables;
  final List<SentRequest> sent = [];

  String? nextMutationRejectionCode;

  FakeAshTablesLink(this.tables);

  Iterable<SentRequest> sentTo(String root) =>
      sent.where((request) => request.root == root);

  FakeAshTable table(String typename) =>
      tables.singleWhere((table) => table.typename == typename);

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    sent.add(
      SentRequest(
        AshResultParser.rootFieldOf(request.operation.document),
        request.variables,
      ),
    );

    if (request.isMutation && nextMutationRejectionCode != null) {
      final code = nextMutationRejectionCode!;
      nextMutationRejectionCode = null;

      return Stream.value(
        Response(
          errors: [
            GraphQLError(
              message: 'rejected: $code',
              extensions: {'code': code},
            ),
          ],
          response: const {},
        ),
      );
    }

    return Stream.value(Response(data: _answer(request), response: const {}));
  }

  Json _answer(Request request) {
    final root = AshResultParser.rootFieldOf(request.operation.document);
    final variables = request.variables;

    if (request.isMutation) {
      return {
        '__typename': 'Mutation',
        root: AshResponses.mutationResult(_write(root, variables)),
      };
    }

    if (tables.firstWhereOrNull((table) => table.getRoot == root)
        case final table?) {
      return {
        '__typename': 'Query',
        root: table.rows.firstWhereOrNull(
          (row) => row['id'] == variables['id'],
        ),
      };
    }

    final table = tables.singleWhere((table) => table.listRoot == root);

    return {'__typename': 'Query', root: _page(table, variables)};
  }

  Json? _write(String root, Json variables) {
    final input = (variables['input'] as Map?)?.cast<String, dynamic>();
    final id = variables['id'] as String?;

    if (tables.firstWhereOrNull((table) => table.createRoot == root)
        case final table?) {
      return table.createOrReturnByName(input!);
    }
    if (tables.firstWhereOrNull((table) => table.updateRoot == root)
        case final table?) {
      return table.updateById(id!, input ?? const {});
    }

    return tables
        .singleWhere((table) => table.deleteRoot == root)
        .deleteById(id!);
  }

  Json _page(FakeAshTable table, Json variables) {
    final matching = table.rows
        .where((row) => _matches(table, row, variables['filter'] as Map?))
        .toList();
    mergeSort(matching, compare: _comparator(variables['sort'] as List?));
    final after = variables['after'] as String?;
    final start = after == null
        ? 0
        : matching.indexWhere((row) => row['id'] == after) + 1;
    final first = variables['first'] as int? ?? matching.length;

    return AshResponses.page(
      matching.skip(start).take(first).toList(),
      typename: 'KeysetPageOf${table.typename}',
      count: matching.length,
    );
  }

  bool _matches(FakeAshTable table, Json row, Map? filter) =>
      filter == null ||
      filter.entries.every(
        (entry) => switch (entry) {
          MapEntry(key: 'and', :final List value) => value.every(
            (part) => _matches(table, row, part as Map),
          ),
          MapEntry(key: 'or', :final List value) => value.any(
            (part) => _matches(table, row, part as Map),
          ),
          MapEntry(key: 'not', :final List value) => !value.every(
            (part) => _matches(table, row, part as Map),
          ),
          MapEntry(:final String key, :final Map value)
              when value.containsKey('input') =>
            table.calculations[key]!(row, (value['input'] as Map).cast()) ==
                value['eq'],
          MapEntry(:final String key, :final Map value) => value.entries.every(
            (operator) => _satisfies(row[key], operator),
          ),
          _ => throw UnsupportedError('Unsupported filter entry $entry'),
        },
      );

  bool _satisfies(Object? fieldValue, MapEntry<Object?, Object?> operator) =>
      switch (operator) {
        MapEntry(key: 'eq', :final value) => fieldValue == value,
        MapEntry(key: 'notEq', :final value) => fieldValue != value,
        MapEntry(key: 'in', :final List value) => value.contains(fieldValue),
        MapEntry(key: 'isNil', :final value) => (fieldValue == null) == value,
        MapEntry(key: 'ilike', :final String value) => RegExp(
          '^${value.split('%').map(RegExp.escape).join('.*')}\$',
          caseSensitive: false,
        ).hasMatch(fieldValue as String? ?? ''),
        _ => throw UnsupportedError('Unsupported filter operator $operator'),
      };

  int Function(Json, Json) _comparator(List? sort) => (a, b) {
    for (final input in (sort ?? const []).cast<Map>()) {
      final key = AshNaming.camelJoin(
        (input['field'] as String).toLowerCase().split('_'),
      );
      final descending =
          (input['order'] as String?)?.startsWith('DESC') ?? false;
      final compared = switch ((a[key], b[key])) {
        (null, null) => 0,
        (null, _) => 1,
        (_, null) => -1,
        (final x?, final y?) =>
          descending ? _compareValues(y, x) : _compareValues(x, y),
      };
      if (compared != 0) return compared;
    }

    return (a['id'] as String).compareTo(b['id'] as String);
  };

  int _compareValues(Object a, Object b) => switch ((a, b)) {
    (final bool a, final bool b) => a == b ? 0 : (a ? 1 : -1),
    (final Comparable<Object> a, _) => a.compareTo(b),
    _ => throw UnsupportedError('Cannot sort $a against $b'),
  };
}
