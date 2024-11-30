import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';

class DBVarsTransformer {
  const DBVarsTransformer();

  Json transformVariablesForPagination<T extends ViewableWithID>(
    GQLPaginatableStreamEvent<T> event, {
    List<Json> where = const [],
    List<Json> orderBy = const [
      {'name': 'ASC'},
    ],
  }) {
    final search = event.search;
    final lastSearch = event.lastSearch;

    final paginatableStreamInstance = event.instance;
    final cursor = lastSearch == search
        ? paginatableStreamInstance.getCursorForOffset(event.offset - 1)
        : null;

    return {
      'where': [
        ...where,
        if (search != null && search.isNotEmpty) _nameSearch(search),
        if (lastSearch == search && cursor != null)
          _whereConditionsForPagination(orderBy, cursor),
      ],
      'orderBy': orderBy,
      'limit': paginatableStreamInstance.limit + 1,
    };
  }

  Json _nameSearch(String search) => {
        'name': {'_ilike': '%$search%'},
      };

  Json _whereConditionsForPagination(
    List<Json> orderBy,
    ViewableWithID cursor,
  ) {
    final List<Json> accumulatedClauses = [];

    return {
      '_or': orderBy.mapIndexed(
        (i, currentClause) {
          if (i != 0) accumulatedClauses.add(orderBy[i - 1]);

          return {
            '_and': [
              ...accumulatedClauses.map(
                (accumulatedClause) => _replaceWithCondition(
                  accumulatedClause,
                  '_eq',
                  cursor,
                ),
              ),
              _replaceWithCondition(
                currentClause,
                _getOperatorByDirection(currentClause),
                cursor,
              ),
            ],
          };
        },
      ).toList(),
    };
  }

  Json _replaceWithCondition(
    Json orderByClause,
    String operator,
    ViewableWithID object,
  ) =>
      orderByClause.replaceLeafWith(
        {operator: _getValueByPath(orderByClause, object)},
      );

  dynamic _getValueByPath(Json orderByClause, ViewableWithID object) =>
      orderByClause.keys.single == 'id'
          ? object.id
          : (object as ToJson).toJson().followKeysPath(orderByClause);

  String _getOperatorByDirection(Json orderByClause) =>
      orderByClause.getLeaf() == 'ASC' ? '_gt' : '_lt';
}

extension _FollowKeysPath<T> on Map<T, dynamic> {
  dynamic followKeysPath(Json path) {
    if (path.length != 1) {
      throw StateError('Path must have exactly one key');
    }

    if (path.isEmpty) return this;
    if (path.length == 1) return this[path.keys.single];

    return (this[path.keys.single] as Map<T, dynamic>)
        .followKeysPath(path.values.single);
  }
}

extension _ReplaceLeafWith on Json {
  Json replaceLeafWith(Object value) {
    if (length != 1) throw StateError('The map must have exactly one key');

    return values.single is Json
        ? {
            keys.single: (values.single as Json).replaceLeafWith(value),
          }
        : {keys.single: value};
  }
}

extension _GetLeaf on Json {
  dynamic getLeaf() {
    if (length != 1) throw StateError('The map must have exactly one key');

    return values.single is Json
        ? (values.single as Json).getLeaf()
        : values.single;
  }
}
