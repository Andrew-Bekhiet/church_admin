import 'package:church_admin/church_admin.dart';
import 'package:meta/meta.dart';

/// The Ash list arguments a DAO derives from the feature's parameters:
/// `filter` and `sort` already in Ash's input shape, plus any other
/// variables of the list document.
@immutable
class ListQueryArguments {
  final Json? filter;
  final List<Json>? sort;
  final Json otherVariables;

  const ListQueryArguments({
    this.otherVariables = const {},
    this.filter,
    this.sort,
  });

  /// Translates the list's filters (or [defaultWhere] when it brings none),
  /// its search as a `name` match, and its order (or [defaultOrderBy]).
  factory ListQueryArguments.fromParameters(
    StreamableDAOParameters<Object?>? parameters, {
    List<Filter> defaultWhere = const [],
    List<OrderBy> defaultOrderBy = const [],
  }) {
    final where = parameters?.where ?? defaultWhere;
    final orderBy = parameters?.orderBy ?? defaultOrderBy;
    final conditions = [
      if (where.isNotEmpty) const AshFilterTranslator().toFilterInput(where),
      if (parameters?.search case final search? when search.isNotEmpty)
        {
          'name': {'ilike': '%$search%'},
        },
    ];

    return ListQueryArguments(
      filter: switch (conditions) {
        [] => null,
        [final only] => only,
        _ => {'and': conditions},
      },
      sort: orderBy.isEmpty
          ? null
          : const AshSortTranslator().toSortInput(orderBy),
    );
  }

  Json toVariables() => {
    ...otherVariables,
    'filter': ?filter,
    'sort': ?sort,
  };
}

typedef ListQueryArgumentsBuilder<T> = ListQueryArguments Function(
  StreamableDAOParameters<T>? parameters,
);
