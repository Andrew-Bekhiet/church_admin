import '../../../../../graphql/__generated__/schema.graphql.dart';
import 'fragments.graphql.dart';

import 'package:gql/ast.dart';

class Variables_Query_areas {
  factory Variables_Query_areas({
    Input_AreaFilterInput? filter,
    List<Input_AreaSortInput?>? sort,
    int? first,
    String? after,
  }) => Variables_Query_areas._({
    if (filter != null) r'filter': filter,
    if (sort != null) r'sort': sort,
    if (first != null) r'first': first,
    if (after != null) r'after': after,
  });

  Variables_Query_areas._(this._$data);

  factory Variables_Query_areas.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_AreaFilterInput.fromJson((l$filter as Map<String, dynamic>));
    }
    if (data.containsKey('sort')) {
      final l$sort = data['sort'];
      result$data['sort'] = (l$sort as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Input_AreaSortInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    return Variables_Query_areas._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_AreaFilterInput? get filter =>
      (_$data['filter'] as Input_AreaFilterInput?);

  List<Input_AreaSortInput?>? get sort =>
      (_$data['sort'] as List<Input_AreaSortInput?>?);

  int? get first => (_$data['first'] as int?);

  String? get after => (_$data['after'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    if (_$data.containsKey('sort')) {
      final l$sort = sort;
      result$data['sort'] = l$sort?.map((e) => e?.toJson()).toList();
    }
    if (_$data.containsKey('first')) {
      final l$first = first;
      result$data['first'] = l$first;
    }
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
    }
    return result$data;
  }

  CopyWith_Variables_Query_areas<Variables_Query_areas> get copyWith =>
      CopyWith_Variables_Query_areas(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_areas || runtimeType != other.runtimeType) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (_$data.containsKey('filter') != other._$data.containsKey('filter')) {
      return false;
    }
    if (l$filter != lOther$filter) {
      return false;
    }
    final l$sort = sort;
    final lOther$sort = other.sort;
    if (_$data.containsKey('sort') != other._$data.containsKey('sort')) {
      return false;
    }
    if (l$sort != null && lOther$sort != null) {
      if (l$sort.length != lOther$sort.length) {
        return false;
      }
      for (int i = 0; i < l$sort.length; i++) {
        final l$sort$entry = l$sort[i];
        final lOther$sort$entry = lOther$sort[i];
        if (l$sort$entry != lOther$sort$entry) {
          return false;
        }
      }
    } else if (l$sort != lOther$sort) {
      return false;
    }
    final l$first = first;
    final lOther$first = other.first;
    if (_$data.containsKey('first') != other._$data.containsKey('first')) {
      return false;
    }
    if (l$first != lOther$first) {
      return false;
    }
    final l$after = after;
    final lOther$after = other.after;
    if (_$data.containsKey('after') != other._$data.containsKey('after')) {
      return false;
    }
    if (l$after != lOther$after) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$filter = filter;
    final l$sort = sort;
    final l$first = first;
    final l$after = after;
    return Object.hashAll([
      _$data.containsKey('filter') ? l$filter : const {},
      _$data.containsKey('sort')
          ? l$sort == null
                ? null
                : Object.hashAll(l$sort.map((v) => v))
          : const {},
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('after') ? l$after : const {},
    ]);
  }
}

abstract class CopyWith_Variables_Query_areas<TRes> {
  factory CopyWith_Variables_Query_areas(
    Variables_Query_areas instance,
    TRes Function(Variables_Query_areas) then,
  ) = _CopyWithImpl_Variables_Query_areas;

  factory CopyWith_Variables_Query_areas.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_areas;

  TRes call({
    Input_AreaFilterInput? filter,
    List<Input_AreaSortInput?>? sort,
    int? first,
    String? after,
  });
}

class _CopyWithImpl_Variables_Query_areas<TRes>
    implements CopyWith_Variables_Query_areas<TRes> {
  _CopyWithImpl_Variables_Query_areas(this._instance, this._then);

  final Variables_Query_areas _instance;

  final TRes Function(Variables_Query_areas) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? filter = _undefined,
    Object? sort = _undefined,
    Object? first = _undefined,
    Object? after = _undefined,
  }) => _then(
    Variables_Query_areas._({
      ..._instance._$data,
      if (filter != _undefined) 'filter': (filter as Input_AreaFilterInput?),
      if (sort != _undefined) 'sort': (sort as List<Input_AreaSortInput?>?),
      if (first != _undefined) 'first': (first as int?),
      if (after != _undefined) 'after': (after as String?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_areas<TRes>
    implements CopyWith_Variables_Query_areas<TRes> {
  _CopyWithStubImpl_Variables_Query_areas(this._res);

  TRes _res;

  call({
    Input_AreaFilterInput? filter,
    List<Input_AreaSortInput?>? sort,
    int? first,
    String? after,
  }) => _res;
}

class Query_areas {
  Query_areas({this.areas, this.$__typename = 'RootQueryType'});

  factory Query_areas.fromJson(Map<String, dynamic> json) {
    final l$areas = json['areas'];
    final l$$__typename = json['__typename'];
    return Query_areas(
      areas: l$areas == null
          ? null
          : Query_areas_areas.fromJson((l$areas as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_areas_areas? areas;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$areas = areas;
    _resultData['areas'] = l$areas?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$areas = areas;
    final l$$__typename = $__typename;
    return Object.hashAll([l$areas, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_areas || runtimeType != other.runtimeType) {
      return false;
    }
    final l$areas = areas;
    final lOther$areas = other.areas;
    if (l$areas != lOther$areas) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_areas on Query_areas {
  CopyWith_Query_areas<Query_areas> get copyWith =>
      CopyWith_Query_areas(this, (i) => i);
}

abstract class CopyWith_Query_areas<TRes> {
  factory CopyWith_Query_areas(
    Query_areas instance,
    TRes Function(Query_areas) then,
  ) = _CopyWithImpl_Query_areas;

  factory CopyWith_Query_areas.stub(TRes res) = _CopyWithStubImpl_Query_areas;

  TRes call({Query_areas_areas? areas, String? $__typename});
  CopyWith_Query_areas_areas<TRes> get areas;
}

class _CopyWithImpl_Query_areas<TRes> implements CopyWith_Query_areas<TRes> {
  _CopyWithImpl_Query_areas(this._instance, this._then);

  final Query_areas _instance;

  final TRes Function(Query_areas) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? areas = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query_areas(
          areas: areas == _undefined
              ? _instance.areas
              : (areas as Query_areas_areas?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Query_areas_areas<TRes> get areas {
    final local$areas = _instance.areas;
    return local$areas == null
        ? CopyWith_Query_areas_areas.stub(_then(_instance))
        : CopyWith_Query_areas_areas(local$areas, (e) => call(areas: e));
  }
}

class _CopyWithStubImpl_Query_areas<TRes>
    implements CopyWith_Query_areas<TRes> {
  _CopyWithStubImpl_Query_areas(this._res);

  TRes _res;

  call({Query_areas_areas? areas, String? $__typename}) => _res;

  CopyWith_Query_areas_areas<TRes> get areas =>
      CopyWith_Query_areas_areas.stub(_res);
}

const documentNodeQueryareas = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'areas'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'filter')),
          type: NamedTypeNode(
            name: NameNode(value: 'AreaFilterInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'sort')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'AreaSortInput'),
              isNonNull: false,
            ),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'first')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'after')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'areas'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'filter'),
                value: VariableNode(name: NameNode(value: 'filter')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: VariableNode(name: NameNode(value: 'sort')),
              ),
              ArgumentNode(
                name: NameNode(value: 'first'),
                value: VariableNode(name: NameNode(value: 'first')),
              ),
              ArgumentNode(
                name: NameNode(value: 'after'),
                value: VariableNode(name: NameNode(value: 'after')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'count'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'endKeyset'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'results'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'AreaWithBounds'),
                        directives: [],
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ],
            ),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
    fragmentDefinitionAreaWithBounds,
    fragmentDefinitionArea,
  ],
);

class Query_areas_areas {
  Query_areas_areas({
    this.count,
    this.endKeyset,
    this.results,
    this.$__typename = 'KeysetPageOfArea',
  });

  factory Query_areas_areas.fromJson(Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$endKeyset = json['endKeyset'];
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query_areas_areas(
      count: (l$count as int?),
      endKeyset: (l$endKeyset as String?),
      results: (l$results as List<dynamic>?)
          ?.map(
            (e) =>
                Fragment_AreaWithBounds.fromJson((e as Map<String, dynamic>)),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int? count;

  final String? endKeyset;

  final List<Fragment_AreaWithBounds>? results;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$endKeyset = endKeyset;
    _resultData['endKeyset'] = l$endKeyset;
    final l$results = results;
    _resultData['results'] = l$results?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$endKeyset = endKeyset;
    final l$results = results;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$endKeyset,
      l$results == null ? null : Object.hashAll(l$results.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_areas_areas || runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$endKeyset = endKeyset;
    final lOther$endKeyset = other.endKeyset;
    if (l$endKeyset != lOther$endKeyset) {
      return false;
    }
    final l$results = results;
    final lOther$results = other.results;
    if (l$results != null && lOther$results != null) {
      if (l$results.length != lOther$results.length) {
        return false;
      }
      for (int i = 0; i < l$results.length; i++) {
        final l$results$entry = l$results[i];
        final lOther$results$entry = lOther$results[i];
        if (l$results$entry != lOther$results$entry) {
          return false;
        }
      }
    } else if (l$results != lOther$results) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_areas_areas on Query_areas_areas {
  CopyWith_Query_areas_areas<Query_areas_areas> get copyWith =>
      CopyWith_Query_areas_areas(this, (i) => i);
}

abstract class CopyWith_Query_areas_areas<TRes> {
  factory CopyWith_Query_areas_areas(
    Query_areas_areas instance,
    TRes Function(Query_areas_areas) then,
  ) = _CopyWithImpl_Query_areas_areas;

  factory CopyWith_Query_areas_areas.stub(TRes res) =
      _CopyWithStubImpl_Query_areas_areas;

  TRes call({
    int? count,
    String? endKeyset,
    List<Fragment_AreaWithBounds>? results,
    String? $__typename,
  });
  TRes results(
    Iterable<Fragment_AreaWithBounds>? Function(
      Iterable<CopyWith_Fragment_AreaWithBounds<Fragment_AreaWithBounds>>?,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_areas_areas<TRes>
    implements CopyWith_Query_areas_areas<TRes> {
  _CopyWithImpl_Query_areas_areas(this._instance, this._then);

  final Query_areas_areas _instance;

  final TRes Function(Query_areas_areas) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? endKeyset = _undefined,
    Object? results = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_areas_areas(
      count: count == _undefined ? _instance.count : (count as int?),
      endKeyset: endKeyset == _undefined
          ? _instance.endKeyset
          : (endKeyset as String?),
      results: results == _undefined
          ? _instance.results
          : (results as List<Fragment_AreaWithBounds>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes results(
    Iterable<Fragment_AreaWithBounds>? Function(
      Iterable<CopyWith_Fragment_AreaWithBounds<Fragment_AreaWithBounds>>?,
    )
    _fn,
  ) => call(
    results: _fn(
      _instance.results?.map(
        (e) => CopyWith_Fragment_AreaWithBounds(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl_Query_areas_areas<TRes>
    implements CopyWith_Query_areas_areas<TRes> {
  _CopyWithStubImpl_Query_areas_areas(this._res);

  TRes _res;

  call({
    int? count,
    String? endKeyset,
    List<Fragment_AreaWithBounds>? results,
    String? $__typename,
  }) => _res;

  results(_fn) => _res;
}

class Variables_Query_area {
  factory Variables_Query_area({required String id}) =>
      Variables_Query_area._({r'id': id});

  Variables_Query_area._(this._$data);

  factory Variables_Query_area.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables_Query_area._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith_Variables_Query_area<Variables_Query_area> get copyWith =>
      CopyWith_Variables_Query_area(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_area || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith_Variables_Query_area<TRes> {
  factory CopyWith_Variables_Query_area(
    Variables_Query_area instance,
    TRes Function(Variables_Query_area) then,
  ) = _CopyWithImpl_Variables_Query_area;

  factory CopyWith_Variables_Query_area.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_area;

  TRes call({String? id});
}

class _CopyWithImpl_Variables_Query_area<TRes>
    implements CopyWith_Variables_Query_area<TRes> {
  _CopyWithImpl_Variables_Query_area(this._instance, this._then);

  final Variables_Query_area _instance;

  final TRes Function(Variables_Query_area) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables_Query_area._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_area<TRes>
    implements CopyWith_Variables_Query_area<TRes> {
  _CopyWithStubImpl_Variables_Query_area(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query_area {
  Query_area({this.area, this.$__typename = 'RootQueryType'});

  factory Query_area.fromJson(Map<String, dynamic> json) {
    final l$area = json['area'];
    final l$$__typename = json['__typename'];
    return Query_area(
      area: l$area == null
          ? null
          : Fragment_AreaDetails.fromJson((l$area as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_AreaDetails? area;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$area = area;
    _resultData['area'] = l$area?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$area = area;
    final l$$__typename = $__typename;
    return Object.hashAll([l$area, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_area || runtimeType != other.runtimeType) {
      return false;
    }
    final l$area = area;
    final lOther$area = other.area;
    if (l$area != lOther$area) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_area on Query_area {
  CopyWith_Query_area<Query_area> get copyWith =>
      CopyWith_Query_area(this, (i) => i);
}

abstract class CopyWith_Query_area<TRes> {
  factory CopyWith_Query_area(
    Query_area instance,
    TRes Function(Query_area) then,
  ) = _CopyWithImpl_Query_area;

  factory CopyWith_Query_area.stub(TRes res) = _CopyWithStubImpl_Query_area;

  TRes call({Fragment_AreaDetails? area, String? $__typename});
  CopyWith_Fragment_AreaDetails<TRes> get area;
}

class _CopyWithImpl_Query_area<TRes> implements CopyWith_Query_area<TRes> {
  _CopyWithImpl_Query_area(this._instance, this._then);

  final Query_area _instance;

  final TRes Function(Query_area) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? area = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query_area(
          area: area == _undefined
              ? _instance.area
              : (area as Fragment_AreaDetails?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_AreaDetails<TRes> get area {
    final local$area = _instance.area;
    return local$area == null
        ? CopyWith_Fragment_AreaDetails.stub(_then(_instance))
        : CopyWith_Fragment_AreaDetails(local$area, (e) => call(area: e));
  }
}

class _CopyWithStubImpl_Query_area<TRes> implements CopyWith_Query_area<TRes> {
  _CopyWithStubImpl_Query_area(this._res);

  TRes _res;

  call({Fragment_AreaDetails? area, String? $__typename}) => _res;

  CopyWith_Fragment_AreaDetails<TRes> get area =>
      CopyWith_Fragment_AreaDetails.stub(_res);
}

const documentNodeQueryarea = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'area'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'id')),
          type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'area'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'id')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'AreaDetails'),
                  directives: [],
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ],
            ),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
    fragmentDefinitionAreaDetails,
    fragmentDefinitionAreaWithBounds,
    fragmentDefinitionArea,
    fragmentDefinitionPlaceLatestEdit,
    fragmentDefinitionPlaceUser,
  ],
);
