import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart';

import '../core/services/database/graphql_response_projector.dart';
import 'ash_responses.dart';

/// One Ash resource as [FakeAshTablesLink] serves it: rows in the server's
/// field names, read by the list root `<listRoot>` and the get root
/// `<typename in lowerCamelCase>(id:)`, written by `create<typename>`, which
/// returns the row of the same name when one exists (upsert by name) and
/// otherwise stores the input over [createdPresets], by
/// `update<typename>(id:)`, which stores the input over the row, and by
/// `delete<typename>(id:)`. Input keys in [commandOnlyKeys] are consumed by
/// the command and never stored on the row; [calculations] answer the
/// filterable calculations that take an `input`. A row of a resource without
/// an `id` (a model that is not an [ID]) is paged by a keyset the table
/// assigns. With [projectsSelections], an answer about this resource carries
/// exactly the fields the document selects, so a field a document leaves out
/// reads as missing. [nestedFilterVariables] names, per relationship field a
/// row embeds, the query variable whose filter the document applies to that
/// relationship, as the real server does.
class FakeAshTable {
  final String typename;
  final String listRoot;
  final Json createdPresets;
  final Set<String> commandOnlyKeys;
  final Map<String, bool Function(Json row, Json input)> calculations;
  final bool projectsSelections;
  final Map<String, String> nestedFilterVariables;
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
    this.projectsSelections = false,
    this.nestedFilterVariables = const {},
  }) {
    rows.forEach(add);
  }

  void add(ToJson model) => rows.add({
    if (model case ID(:final id))
      'id': id
    else
      '__keyset': '$listRoot-${rows.length}',
    ...model.toJson(),
    '__typename': typename,
  });

  static String keysetOf(Json row) => (row['id'] ?? row['__keyset']) as String;

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

/// Answers the `result` of a mutation root the tables do not derive from
/// their typename, given the mutation's variables. Throwing a
/// [FakeAshRejection] answers the error the server answers for that code.
typedef FakeAshMutation = Json? Function(Json variables);

/// A domain rejection of a generic action, as AshGraphql reports it: an
/// error whose `extensions.code` names the reason.
class FakeAshRejection implements Exception {
  final String code;
  final String message;

  const FakeAshRejection(this.code, {this.message = 'rejected'});
}

typedef FakeAshAction = Object? Function(Json variables);

/// An Ash GraphQL server over [FakeAshTable]s. It applies the `filter`
/// operators the client sends (`and or not eq notEq in isNil ilike lessThan
/// lessThanOrEqual greaterThan greaterThanOrEqual`, and a nested filter on a
/// related row or list of rows), sorts by `sort` and then by id as Ash does,
/// and pages with `first`/`after`. A list field of a row that takes
/// `filter`/`sort` variables (`classes(filter: $classesFilter)`) is filtered
/// and sorted the same way.
/// Every request is kept in [sent]; setting [nextMutationRejectionCode] makes
/// the next mutation fail with the error code the real server raises. A root
/// named in [actions] is a generic action: its function answers with the root
/// field's value or throws a [FakeAshRejection].
class FakeAshTablesLink extends Link {
  static const _filterOperators = {
    'eq',
    'notEq',
    'in',
    'isNil',
    'ilike',
    'lessThan',
    'lessThanOrEqual',
    'greaterThan',
    'greaterThanOrEqual',
  };

  final List<FakeAshTable> tables;
  final Map<String, FakeAshMutation> mutations;
  final Map<String, FakeAshAction> actions;
  final List<SentRequest> sent = [];

  String? nextMutationRejectionCode;

  FakeAshTablesLink(
    this.tables, {
    this.mutations = const {},
    this.actions = const {},
  });

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

      return Stream.value(_rejection(code, 'rejected: $code'));
    }

    try {
      return Stream.value(
        Response(
          data: _projected(request, _answer(request)),
          response: const {},
        ),
      );
    } on FakeAshRejection catch (rejection) {
      return Stream.value(_rejection(rejection.code, rejection.message));
    }
  }

  Response _rejection(String code, String message) => Response(
    errors: [
      GraphQLError(message: message, extensions: {'code': code}),
    ],
    response: const {},
  );

  Json _projected(Request request, Json answer) {
    final root = AshResultParser.rootFieldOf(request.operation.document);
    final table = tables.firstWhereOrNull(
      (table) => {
        table.listRoot,
        table.getRoot,
        table.createRoot,
        table.updateRoot,
        table.deleteRoot,
      }.contains(root),
    );

    return table?.projectsSelections ?? false
        ? GraphQLResponseProjector(request.operation.document).respond(answer)
        : answer;
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
      if (mutations[root] case final mutation?) {
        return {
          '__typename': 'Mutation',
          root: AshResponses.mutationResult(mutation(variables)),
        };
      }

      return {
        '__typename': 'Mutation',
        root: AshResponses.mutationResult(_write(root, variables)),
      };
    }

    if (tables.firstWhereOrNull((table) => table.getRoot == root)
        case final table?) {
      return {
        '__typename': 'Query',
        root: switch (table.rows.firstWhereOrNull(
          (row) => row['id'] == variables['id'],
        )) {
          final row? => _withNestedLists(
            table,
            row,
            _rootSelections(request.operation.document),
            variables,
          ),
          null => null,
        },
      };
    }

    final table = tables.singleWhere((table) => table.listRoot == root);

    return {
      '__typename': 'Query',
      root: _page(table, variables, request.operation.document),
    };
  }

  List<SelectionNode> _rootSelections(DocumentNode document) =>
      document.definitions
          .whereType<OperationDefinitionNode>()
          .first
          .rootField
          .selectionSet
          ?.selections ??
      const [];

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

  Json _page(FakeAshTable table, Json variables, DocumentNode document) {
    final matching = table.rows
        .where((row) => _matches(table, row, variables['filter'] as Map?))
        .toList();
    mergeSort(matching, compare: _comparator(variables['sort'] as List?));
    final after = variables['after'] as String?;
    final start = after == null
        ? 0
        : matching.indexWhere((row) => FakeAshTable.keysetOf(row) == after) + 1;
    final first = variables['first'] as int? ?? matching.length;

    final rowSelections = [
      for (final field in _rootSelections(document).whereType<FieldNode>())
        if (field.name.value == 'results') ...?field.selectionSet?.selections,
    ];
    final results = [
      for (final row in matching.skip(start).take(first))
        _withNestedLists(
          table,
          _withFilteredRelationships(table, row, variables),
          rowSelections,
          variables,
        ),
    ];

    return AshResponses.page(
      results,
      typename: 'KeysetPageOf${table.typename}',
      count: matching.length,
      endKeyset: results.isEmpty ? null : FakeAshTable.keysetOf(results.last),
    );
  }

  Json _withFilteredRelationships(
    FakeAshTable table,
    Json row,
    Json variables,
  ) => {
    ...row,
    for (final MapEntry(key: field, value: variable)
        in table.nestedFilterVariables.entries)
      if (row[field] case final List related)
        field: [
          for (final item in related)
            if (_matches(
              table,
              (item as Map).cast(),
              variables[variable] as Map?,
            ))
              item,
        ],
  };

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
          MapEntry(:final String key, :final Map value) => _fieldMatches(
            table,
            row[key],
            value,
          ),
          _ => throw UnsupportedError('Unsupported filter entry $entry'),
        },
      );

  bool _fieldMatches(FakeAshTable table, Object? fieldValue, Map conditions) =>
      switch (conditions.keys.every(_filterOperators.contains)) {
        true => conditions.entries.every(
          (operator) => _satisfies(fieldValue, operator),
        ),
        false => switch (fieldValue) {
          final List related => related.any(
            (relatedRow) =>
                _matches(table, (relatedRow as Map).cast(), conditions),
          ),
          final Map related => _matches(table, related.cast(), conditions),
          _ => false,
        },
      };

  Json _withNestedLists(
    FakeAshTable table,
    Json row,
    List<SelectionNode> selections,
    Json variables,
  ) => {
    ...row,
    for (final field in selections.whereType<FieldNode>())
      if (row[field.name.value] case final List related
          when field.arguments.any(
            (argument) =>
                const {'filter', 'sort'}.contains(argument.name.value),
          ))
        field.name.value: _arrangedList(
          table,
          related,
          field.arguments,
          variables,
        ),
  };

  List<Json> _arrangedList(
    FakeAshTable table,
    List related,
    List<ArgumentNode> arguments,
    Json variables,
  ) {
    Object? variableOf(String argument) => switch (arguments
        .firstWhereOrNull((node) => node.name.value == argument)
        ?.value) {
      VariableNode(:final name) => variables[name.value],
      _ => null,
    };

    final arranged = [
      for (final relatedRow in related)
        if (_matches(
          table,
          (relatedRow as Map).cast(),
          variableOf('filter') as Map?,
        ))
          relatedRow.cast<String, dynamic>(),
    ];
    mergeSort(arranged, compare: _comparator(variableOf('sort') as List?));

    return arranged;
  }

  bool _satisfies(Object? fieldValue, MapEntry<Object?, Object?> operator) =>
      switch (operator) {
        MapEntry(key: 'eq', :final value) => fieldValue == value,
        MapEntry(key: 'notEq', :final value) => fieldValue != value,
        MapEntry(key: 'in', :final List value) => value.contains(fieldValue),
        MapEntry(key: 'isNil', :final value) => (fieldValue == null) == value,
        MapEntry(key: 'lessThan', :final value?) =>
          fieldValue != null && _compareValues(fieldValue, value) < 0,
        MapEntry(key: 'lessThanOrEqual', :final value?) =>
          fieldValue != null && _compareValues(fieldValue, value) <= 0,
        MapEntry(key: 'greaterThan', :final value?) =>
          fieldValue != null && _compareValues(fieldValue, value) > 0,
        MapEntry(key: 'greaterThanOrEqual', :final value?) =>
          fieldValue != null && _compareValues(fieldValue, value) >= 0,
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

    return FakeAshTable.keysetOf(a).compareTo(FakeAshTable.keysetOf(b));
  };

  int _compareValues(Object a, Object b) => switch ((a, b)) {
    (final bool a, final bool b) => a == b ? 0 : (a ? 1 : -1),
    (final Comparable<Object> a, _) => a.compareTo(b),
    _ => throw UnsupportedError('Cannot sort $a against $b'),
  };
}
