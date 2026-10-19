import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:graphql/client.dart';

import 'ash_responses.dart';

/// One Ash resource as [FakeAshTablesLink] serves it: rows in the server's
/// field names, read by the list root `<listRoot>` and the get root
/// `<typename in lowerCamelCase>(id:)`, written by `create<typename>`, which
/// returns the row of the same name when one exists (upsert by name) and
/// otherwise stores the input over [createdPresets].
class FakeAshTable {
  final String typename;
  final String listRoot;
  final Json createdPresets;
  final List<Json> rows = [];

  int _createdCount = 0;

  String get getRoot => '${typename[0].toLowerCase()}${typename.substring(1)}';

  String get createRoot => 'create$typename';

  FakeAshTable({
    required this.typename,
    required this.listRoot,
    Iterable<ToJson> rows = const [],
    this.createdPresets = const {},
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
      ...input,
      'id': '$listRoot-created-${++_createdCount}',
      '__typename': typename,
    };
    rows.add(created);

    return created;
  }
}

/// A domain rejection of a generic action, as AshGraphql reports it: an
/// error whose `extensions.code` names the reason.
class FakeAshRejection implements Exception {
  final String code;
  final String message;

  const FakeAshRejection(this.code, {this.message = 'rejected'});
}

typedef FakeAshAction = Object? Function(Json variables);

/// An Ash GraphQL server over [FakeAshTable]s. It applies the `filter`
/// operators the client sends (`and or not eq notEq in isNil ilike`), sorts
/// by `sort` and then by id as Ash does, and pages with `first`/`after`.
/// A root named in [actions] is a generic action: its function answers with
/// the root field's value or throws a [FakeAshRejection].
class FakeAshTablesLink extends Link {
  final List<FakeAshTable> tables;
  final Map<String, FakeAshAction> actions;

  FakeAshTablesLink(this.tables, {this.actions = const {}});

  FakeAshTable table(String typename) =>
      tables.singleWhere((table) => table.typename == typename);

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    try {
      return Stream.value(Response(data: _answer(request), response: const {}));
    } on FakeAshRejection catch (rejection) {
      return Stream.value(
        Response(
          errors: [
            GraphQLError(
              message: rejection.message,
              extensions: {'code': rejection.code},
            ),
          ],
          response: const {},
        ),
      );
    }
  }

  Json _answer(Request request) {
    final root = AshResultParser.rootFieldOf(request.operation.document);
    final variables = request.variables;

    if (actions[root] case final action?) {
      return {
        '__typename': request.isMutation ? 'Mutation' : 'Query',
        root: action(variables),
      };
    }

    if (request.isMutation) {
      final table = tables.singleWhere((table) => table.createRoot == root);
      final input = (variables['input'] as Map).cast<String, dynamic>();

      return {
        '__typename': 'Mutation',
        root: AshResponses.mutationResult(table.createOrReturnByName(input)),
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

  Json _page(FakeAshTable table, Json variables) {
    final matching = table.rows
        .where((row) => _matches(row, variables['filter'] as Map?))
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

  bool _matches(Json row, Map? filter) =>
      filter == null ||
      filter.entries.every(
        (entry) => switch (entry) {
          MapEntry(key: 'and', :final List value) => value.every(
            (part) => _matches(row, part as Map),
          ),
          MapEntry(key: 'or', :final List value) => value.any(
            (part) => _matches(row, part as Map),
          ),
          MapEntry(key: 'not', :final List value) => !value.every(
            (part) => _matches(row, part as Map),
          ),
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
