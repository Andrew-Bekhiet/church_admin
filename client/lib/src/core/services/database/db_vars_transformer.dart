import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';

class DBVarsTransformer {
  const DBVarsTransformer();

  Json transformrequestForPagination<T extends ViewableWithID>(
    PaginatableStreamRequest<T, StreamableDAOParameters<T, dynamic, dynamic>?>
        request, {
    List<Json>? overrideWhere,
    List<Json>? overrideOrderBy,
  }) {
    final PaginatableStreamRequest(:param, :cursor, :pageSize) = request;

    final search = param?.search;
    final where = param?.where?.map((o) => o.toJson() as Json).toList() ??
        overrideWhere ??
        [];
    final orderBy = param?.orderBy?.map((o) => o.toJson() as Json).toList() ??
        overrideOrderBy ??
        [
          {'name': 'ASC'},
        ];

    return {
      'where': [
        ...where,
        if (search != null && search.isNotEmpty) _nameSearch(search),
        if (cursor != null) _whereConditionsForPagination(orderBy, cursor),
      ],
      'orderBy': orderBy,
      'limit': pageSize + 1,
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
      orderByClause.getLeaf() == 'ASC' ? '_gte' : '_lte';
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
