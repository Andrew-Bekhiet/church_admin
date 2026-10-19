import '../../../../../../graphql/__generated__/schema.graphql.dart';
import 'fragments.graphql.dart';

import 'package:gql/ast.dart';

class Variables_Query_churches {
  factory Variables_Query_churches({
    Input_ChurchFilterInput? filter,
    List<Input_ChurchSortInput?>? sort,
    int? first,
    String? after,
  }) => Variables_Query_churches._({
    if (filter != null) r'filter': filter,
    if (sort != null) r'sort': sort,
    if (first != null) r'first': first,
    if (after != null) r'after': after,
  });

  Variables_Query_churches._(this._$data);

  factory Variables_Query_churches.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_ChurchFilterInput.fromJson(
              (l$filter as Map<String, dynamic>),
            );
    }
    if (data.containsKey('sort')) {
      final l$sort = data['sort'];
      result$data['sort'] = (l$sort as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Input_ChurchSortInput.fromJson((e as Map<String, dynamic>)),
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
    return Variables_Query_churches._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_ChurchFilterInput? get filter =>
      (_$data['filter'] as Input_ChurchFilterInput?);

  List<Input_ChurchSortInput?>? get sort =>
      (_$data['sort'] as List<Input_ChurchSortInput?>?);

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

  CopyWith_Variables_Query_churches<Variables_Query_churches> get copyWith =>
      CopyWith_Variables_Query_churches(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_churches ||
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

abstract class CopyWith_Variables_Query_churches<TRes> {
  factory CopyWith_Variables_Query_churches(
    Variables_Query_churches instance,
    TRes Function(Variables_Query_churches) then,
  ) = _CopyWithImpl_Variables_Query_churches;

  factory CopyWith_Variables_Query_churches.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_churches;

  TRes call({
    Input_ChurchFilterInput? filter,
    List<Input_ChurchSortInput?>? sort,
    int? first,
    String? after,
  });
}

class _CopyWithImpl_Variables_Query_churches<TRes>
    implements CopyWith_Variables_Query_churches<TRes> {
  _CopyWithImpl_Variables_Query_churches(this._instance, this._then);

  final Variables_Query_churches _instance;

  final TRes Function(Variables_Query_churches) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? filter = _undefined,
    Object? sort = _undefined,
    Object? first = _undefined,
    Object? after = _undefined,
  }) => _then(
    Variables_Query_churches._({
      ..._instance._$data,
      if (filter != _undefined) 'filter': (filter as Input_ChurchFilterInput?),
      if (sort != _undefined) 'sort': (sort as List<Input_ChurchSortInput?>?),
      if (first != _undefined) 'first': (first as int?),
      if (after != _undefined) 'after': (after as String?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_churches<TRes>
    implements CopyWith_Variables_Query_churches<TRes> {
  _CopyWithStubImpl_Variables_Query_churches(this._res);

  TRes _res;

  call({
    Input_ChurchFilterInput? filter,
    List<Input_ChurchSortInput?>? sort,
    int? first,
    String? after,
  }) => _res;
}

class Query_churches {
  Query_churches({this.churches, this.$__typename = 'RootQueryType'});

  factory Query_churches.fromJson(Map<String, dynamic> json) {
    final l$churches = json['churches'];
    final l$$__typename = json['__typename'];
    return Query_churches(
      churches: l$churches == null
          ? null
          : Query_churches_churches.fromJson(
              (l$churches as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_churches_churches? churches;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$churches = churches;
    _resultData['churches'] = l$churches?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$churches = churches;
    final l$$__typename = $__typename;
    return Object.hashAll([l$churches, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_churches || runtimeType != other.runtimeType) {
      return false;
    }
    final l$churches = churches;
    final lOther$churches = other.churches;
    if (l$churches != lOther$churches) {
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

extension UtilityExtension_Query_churches on Query_churches {
  CopyWith_Query_churches<Query_churches> get copyWith =>
      CopyWith_Query_churches(this, (i) => i);
}

abstract class CopyWith_Query_churches<TRes> {
  factory CopyWith_Query_churches(
    Query_churches instance,
    TRes Function(Query_churches) then,
  ) = _CopyWithImpl_Query_churches;

  factory CopyWith_Query_churches.stub(TRes res) =
      _CopyWithStubImpl_Query_churches;

  TRes call({Query_churches_churches? churches, String? $__typename});
  CopyWith_Query_churches_churches<TRes> get churches;
}

class _CopyWithImpl_Query_churches<TRes>
    implements CopyWith_Query_churches<TRes> {
  _CopyWithImpl_Query_churches(this._instance, this._then);

  final Query_churches _instance;

  final TRes Function(Query_churches) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? churches = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_churches(
      churches: churches == _undefined
          ? _instance.churches
          : (churches as Query_churches_churches?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Query_churches_churches<TRes> get churches {
    final local$churches = _instance.churches;
    return local$churches == null
        ? CopyWith_Query_churches_churches.stub(_then(_instance))
        : CopyWith_Query_churches_churches(
            local$churches,
            (e) => call(churches: e),
          );
  }
}

class _CopyWithStubImpl_Query_churches<TRes>
    implements CopyWith_Query_churches<TRes> {
  _CopyWithStubImpl_Query_churches(this._res);

  TRes _res;

  call({Query_churches_churches? churches, String? $__typename}) => _res;

  CopyWith_Query_churches_churches<TRes> get churches =>
      CopyWith_Query_churches_churches.stub(_res);
}

const documentNodeQuerychurches = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'churches'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'filter')),
          type: NamedTypeNode(
            name: NameNode(value: 'ChurchFilterInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'sort')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'ChurchSortInput'),
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
            name: NameNode(value: 'churches'),
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
                        name: NameNode(value: 'Church'),
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
    fragmentDefinitionChurch,
  ],
);

class Query_churches_churches {
  Query_churches_churches({
    this.count,
    this.endKeyset,
    this.results,
    this.$__typename = 'KeysetPageOfChurch',
  });

  factory Query_churches_churches.fromJson(Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$endKeyset = json['endKeyset'];
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query_churches_churches(
      count: (l$count as int?),
      endKeyset: (l$endKeyset as String?),
      results: (l$results as List<dynamic>?)
          ?.map((e) => Fragment_Church.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int? count;

  final String? endKeyset;

  final List<Fragment_Church>? results;

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
    if (other is! Query_churches_churches || runtimeType != other.runtimeType) {
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

extension UtilityExtension_Query_churches_churches on Query_churches_churches {
  CopyWith_Query_churches_churches<Query_churches_churches> get copyWith =>
      CopyWith_Query_churches_churches(this, (i) => i);
}

abstract class CopyWith_Query_churches_churches<TRes> {
  factory CopyWith_Query_churches_churches(
    Query_churches_churches instance,
    TRes Function(Query_churches_churches) then,
  ) = _CopyWithImpl_Query_churches_churches;

  factory CopyWith_Query_churches_churches.stub(TRes res) =
      _CopyWithStubImpl_Query_churches_churches;

  TRes call({
    int? count,
    String? endKeyset,
    List<Fragment_Church>? results,
    String? $__typename,
  });
  TRes results(
    Iterable<Fragment_Church>? Function(
      Iterable<CopyWith_Fragment_Church<Fragment_Church>>?,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_churches_churches<TRes>
    implements CopyWith_Query_churches_churches<TRes> {
  _CopyWithImpl_Query_churches_churches(this._instance, this._then);

  final Query_churches_churches _instance;

  final TRes Function(Query_churches_churches) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? endKeyset = _undefined,
    Object? results = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_churches_churches(
      count: count == _undefined ? _instance.count : (count as int?),
      endKeyset: endKeyset == _undefined
          ? _instance.endKeyset
          : (endKeyset as String?),
      results: results == _undefined
          ? _instance.results
          : (results as List<Fragment_Church>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes results(
    Iterable<Fragment_Church>? Function(
      Iterable<CopyWith_Fragment_Church<Fragment_Church>>?,
    )
    _fn,
  ) => call(
    results: _fn(
      _instance.results?.map((e) => CopyWith_Fragment_Church(e, (i) => i)),
    )?.toList(),
  );
}

class _CopyWithStubImpl_Query_churches_churches<TRes>
    implements CopyWith_Query_churches_churches<TRes> {
  _CopyWithStubImpl_Query_churches_churches(this._res);

  TRes _res;

  call({
    int? count,
    String? endKeyset,
    List<Fragment_Church>? results,
    String? $__typename,
  }) => _res;

  results(_fn) => _res;
}
