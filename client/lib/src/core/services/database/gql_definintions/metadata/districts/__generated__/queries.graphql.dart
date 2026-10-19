import '../../../../../../graphql/__generated__/schema.graphql.dart';
import 'fragments.graphql.dart';

import 'package:gql/ast.dart';

class Variables_Query_districts {
  factory Variables_Query_districts({
    Input_DistrictFilterInput? filter,
    List<Input_DistrictSortInput?>? sort,
    int? first,
    String? after,
  }) => Variables_Query_districts._({
    if (filter != null) r'filter': filter,
    if (sort != null) r'sort': sort,
    if (first != null) r'first': first,
    if (after != null) r'after': after,
  });

  Variables_Query_districts._(this._$data);

  factory Variables_Query_districts.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_DistrictFilterInput.fromJson(
              (l$filter as Map<String, dynamic>),
            );
    }
    if (data.containsKey('sort')) {
      final l$sort = data['sort'];
      result$data['sort'] = (l$sort as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Input_DistrictSortInput.fromJson((e as Map<String, dynamic>)),
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
    return Variables_Query_districts._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_DistrictFilterInput? get filter =>
      (_$data['filter'] as Input_DistrictFilterInput?);

  List<Input_DistrictSortInput?>? get sort =>
      (_$data['sort'] as List<Input_DistrictSortInput?>?);

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

  CopyWith_Variables_Query_districts<Variables_Query_districts> get copyWith =>
      CopyWith_Variables_Query_districts(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_districts ||
        runtimeType != other.runtimeType) {
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

abstract class CopyWith_Variables_Query_districts<TRes> {
  factory CopyWith_Variables_Query_districts(
    Variables_Query_districts instance,
    TRes Function(Variables_Query_districts) then,
  ) = _CopyWithImpl_Variables_Query_districts;

  factory CopyWith_Variables_Query_districts.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_districts;

  TRes call({
    Input_DistrictFilterInput? filter,
    List<Input_DistrictSortInput?>? sort,
    int? first,
    String? after,
  });
}

class _CopyWithImpl_Variables_Query_districts<TRes>
    implements CopyWith_Variables_Query_districts<TRes> {
  _CopyWithImpl_Variables_Query_districts(this._instance, this._then);

  final Variables_Query_districts _instance;

  final TRes Function(Variables_Query_districts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? filter = _undefined,
    Object? sort = _undefined,
    Object? first = _undefined,
    Object? after = _undefined,
  }) => _then(
    Variables_Query_districts._({
      ..._instance._$data,
      if (filter != _undefined)
        'filter': (filter as Input_DistrictFilterInput?),
      if (sort != _undefined) 'sort': (sort as List<Input_DistrictSortInput?>?),
      if (first != _undefined) 'first': (first as int?),
      if (after != _undefined) 'after': (after as String?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_districts<TRes>
    implements CopyWith_Variables_Query_districts<TRes> {
  _CopyWithStubImpl_Variables_Query_districts(this._res);

  TRes _res;

  call({
    Input_DistrictFilterInput? filter,
    List<Input_DistrictSortInput?>? sort,
    int? first,
    String? after,
  }) => _res;
}

class Query_districts {
  Query_districts({this.districts, this.$__typename = 'RootQueryType'});

  factory Query_districts.fromJson(Map<String, dynamic> json) {
    final l$districts = json['districts'];
    final l$$__typename = json['__typename'];
    return Query_districts(
      districts: l$districts == null
          ? null
          : Query_districts_districts.fromJson(
              (l$districts as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_districts_districts? districts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$districts = districts;
    _resultData['districts'] = l$districts?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$districts = districts;
    final l$$__typename = $__typename;
    return Object.hashAll([l$districts, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_districts || runtimeType != other.runtimeType) {
      return false;
    }
    final l$districts = districts;
    final lOther$districts = other.districts;
    if (l$districts != lOther$districts) {
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

extension UtilityExtension_Query_districts on Query_districts {
  CopyWith_Query_districts<Query_districts> get copyWith =>
      CopyWith_Query_districts(this, (i) => i);
}

abstract class CopyWith_Query_districts<TRes> {
  factory CopyWith_Query_districts(
    Query_districts instance,
    TRes Function(Query_districts) then,
  ) = _CopyWithImpl_Query_districts;

  factory CopyWith_Query_districts.stub(TRes res) =
      _CopyWithStubImpl_Query_districts;

  TRes call({Query_districts_districts? districts, String? $__typename});
  CopyWith_Query_districts_districts<TRes> get districts;
}

class _CopyWithImpl_Query_districts<TRes>
    implements CopyWith_Query_districts<TRes> {
  _CopyWithImpl_Query_districts(this._instance, this._then);

  final Query_districts _instance;

  final TRes Function(Query_districts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? districts = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_districts(
      districts: districts == _undefined
          ? _instance.districts
          : (districts as Query_districts_districts?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Query_districts_districts<TRes> get districts {
    final local$districts = _instance.districts;
    return local$districts == null
        ? CopyWith_Query_districts_districts.stub(_then(_instance))
        : CopyWith_Query_districts_districts(
            local$districts,
            (e) => call(districts: e),
          );
  }
}

class _CopyWithStubImpl_Query_districts<TRes>
    implements CopyWith_Query_districts<TRes> {
  _CopyWithStubImpl_Query_districts(this._res);

  TRes _res;

  call({Query_districts_districts? districts, String? $__typename}) => _res;

  CopyWith_Query_districts_districts<TRes> get districts =>
      CopyWith_Query_districts_districts.stub(_res);
}

const documentNodeQuerydistricts = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'districts'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'filter')),
          type: NamedTypeNode(
            name: NameNode(value: 'DistrictFilterInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'sort')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'DistrictSortInput'),
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
            name: NameNode(value: 'districts'),
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
                        name: NameNode(value: 'District'),
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
    fragmentDefinitionDistrict,
  ],
);

class Query_districts_districts {
  Query_districts_districts({
    this.count,
    this.endKeyset,
    this.results,
    this.$__typename = 'KeysetPageOfDistrict',
  });

  factory Query_districts_districts.fromJson(Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$endKeyset = json['endKeyset'];
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query_districts_districts(
      count: (l$count as int?),
      endKeyset: (l$endKeyset as String?),
      results: (l$results as List<dynamic>?)
          ?.map((e) => Fragment_District.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int? count;

  final String? endKeyset;

  final List<Fragment_District>? results;

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
    if (other is! Query_districts_districts ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension_Query_districts_districts
    on Query_districts_districts {
  CopyWith_Query_districts_districts<Query_districts_districts> get copyWith =>
      CopyWith_Query_districts_districts(this, (i) => i);
}

abstract class CopyWith_Query_districts_districts<TRes> {
  factory CopyWith_Query_districts_districts(
    Query_districts_districts instance,
    TRes Function(Query_districts_districts) then,
  ) = _CopyWithImpl_Query_districts_districts;

  factory CopyWith_Query_districts_districts.stub(TRes res) =
      _CopyWithStubImpl_Query_districts_districts;

  TRes call({
    int? count,
    String? endKeyset,
    List<Fragment_District>? results,
    String? $__typename,
  });
  TRes results(
    Iterable<Fragment_District>? Function(
      Iterable<CopyWith_Fragment_District<Fragment_District>>?,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_districts_districts<TRes>
    implements CopyWith_Query_districts_districts<TRes> {
  _CopyWithImpl_Query_districts_districts(this._instance, this._then);

  final Query_districts_districts _instance;

  final TRes Function(Query_districts_districts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? endKeyset = _undefined,
    Object? results = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_districts_districts(
      count: count == _undefined ? _instance.count : (count as int?),
      endKeyset: endKeyset == _undefined
          ? _instance.endKeyset
          : (endKeyset as String?),
      results: results == _undefined
          ? _instance.results
          : (results as List<Fragment_District>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes results(
    Iterable<Fragment_District>? Function(
      Iterable<CopyWith_Fragment_District<Fragment_District>>?,
    )
    _fn,
  ) => call(
    results: _fn(
      _instance.results?.map((e) => CopyWith_Fragment_District(e, (i) => i)),
    )?.toList(),
  );
}

class _CopyWithStubImpl_Query_districts_districts<TRes>
    implements CopyWith_Query_districts_districts<TRes> {
  _CopyWithStubImpl_Query_districts_districts(this._res);

  TRes _res;

  call({
    int? count,
    String? endKeyset,
    List<Fragment_District>? results,
    String? $__typename,
  }) => _res;

  results(_fn) => _res;
}
