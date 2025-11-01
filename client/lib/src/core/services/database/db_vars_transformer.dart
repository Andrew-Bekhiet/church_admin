import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';

class DBVarsTransformer {
  const DBVarsTransformer();

  Json transformrequestForPagination<T extends ViewableWithID>(
    PaginatableStreamRequest<T, StreamableDAOParameters<T>?> request, {
    List<Filter>? overrideWhere,
    List<OrderBy>? overrideOrderBy,
  }) {
    final PaginatableStreamRequest(:param, :cursor, :pageSize) = request;

    final search = param?.search;
    final where =
        (param?.where ?? overrideWhere)?.map((o) => o.queryToJson()).toList() ??
        [];
    final orderBy = _maybeAddIdOrder(
      (param?.orderBy ??
              overrideOrderBy ??
              [
                OrderBy(
                  field: FieldMetadata<String>(
                    getValue: (o) => o is Viewable ? o.name : null,
                    label: '',
                    name: 'name',
                    parentType: ViewableWithID,
                    operators: {},
                  ),
                ),
              ])
          .toList(),
    );

    return {
      'where': [
        ...where,
        if (search != null && search.isNotEmpty) _nameSearch(search),
        if (cursor != null) _whereConditionsForPagination(orderBy, cursor),
      ],
      'orderBy': orderBy.map((o) => o.toSearchJson()).toList(),
      'limit': pageSize + 1,
    };
  }

  List<OrderBy> _maybeAddIdOrder(List<OrderBy> orderBy) {
    final hasIdOrder = orderBy.last.field.name == 'id';

    if (hasIdOrder) {
      return orderBy;
    }

    return [
      ...orderBy,
      OrderBy(
        field: FieldMetadata<String>(
          getValue: (o) => o is ID ? o.id : null,
          label: '',
          name: 'id',
          parentType: ID,
        ),
      ),
    ];
  }

  Json _nameSearch(String search) => {
    'name': {'_ilike': '%$search%'},
  };

  Json _whereConditionsForPagination(
    List<OrderBy> orderBy,
    ViewableWithID cursor,
  ) {
    final List<OrderBy> accumulatedClauses = [];

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
    OrderBy orderByClause,
    String operator,
    ViewableWithID object,
  ) {
    final orderByJson = orderByClause.toSearchJson();

    return orderByJson.replaceLeafWith(
      {operator: _getValueByPath(orderByJson, object)},
    );
  }

  dynamic _getValueByPath(Json orderByClause, ViewableWithID object) =>
      orderByClause.keys.single == 'id'
      ? object.id
      : (object as ToJson).toJson().followKeysPath(orderByClause);

  String _getOperatorByDirection(OrderBy orderByClause) {
    return orderByClause.value == OrderByValue.asc ? '_gt' : '_lt';
  }
}

extension _FollowKeysPath<T> on Map<T, dynamic> {
  dynamic followKeysPath(Json path) {
    if (path.length != 1) {
      throw StateError('Path must have exactly one key');
    }

    final value = this[path.keys.single];
    return value is Map<T, dynamic> && path.values.single is Map
        ? value.followKeysPath(path.values.single)
        : value;
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
