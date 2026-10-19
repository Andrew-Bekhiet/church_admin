import '../../../../../../graphql/__generated__/schema.graphql.dart';
import 'fragments.graphql.dart';

import 'package:gql/ast.dart';

class Variables_Query_shammasLevels {
  factory Variables_Query_shammasLevels({
    Input_ShammasLevelFilterInput? filter,
    List<Input_ShammasLevelSortInput?>? sort,
    int? first,
    String? after,
  }) => Variables_Query_shammasLevels._({
    if (filter != null) r'filter': filter,
    if (sort != null) r'sort': sort,
    if (first != null) r'first': first,
    if (after != null) r'after': after,
  });

  Variables_Query_shammasLevels._(this._$data);

  factory Variables_Query_shammasLevels.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_ShammasLevelFilterInput.fromJson(
              (l$filter as Map<String, dynamic>),
            );
    }
    if (data.containsKey('sort')) {
      final l$sort = data['sort'];
      result$data['sort'] = (l$sort as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Input_ShammasLevelSortInput.fromJson(
                    (e as Map<String, dynamic>),
                  ),
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
    return Variables_Query_shammasLevels._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_ShammasLevelFilterInput? get filter =>
      (_$data['filter'] as Input_ShammasLevelFilterInput?);

  List<Input_ShammasLevelSortInput?>? get sort =>
      (_$data['sort'] as List<Input_ShammasLevelSortInput?>?);

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

  CopyWith_Variables_Query_shammasLevels<Variables_Query_shammasLevels>
  get copyWith => CopyWith_Variables_Query_shammasLevels(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_shammasLevels ||
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

abstract class CopyWith_Variables_Query_shammasLevels<TRes> {
  factory CopyWith_Variables_Query_shammasLevels(
    Variables_Query_shammasLevels instance,
    TRes Function(Variables_Query_shammasLevels) then,
  ) = _CopyWithImpl_Variables_Query_shammasLevels;

  factory CopyWith_Variables_Query_shammasLevels.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_shammasLevels;

  TRes call({
    Input_ShammasLevelFilterInput? filter,
    List<Input_ShammasLevelSortInput?>? sort,
    int? first,
    String? after,
  });
}

class _CopyWithImpl_Variables_Query_shammasLevels<TRes>
    implements CopyWith_Variables_Query_shammasLevels<TRes> {
  _CopyWithImpl_Variables_Query_shammasLevels(this._instance, this._then);

  final Variables_Query_shammasLevels _instance;

  final TRes Function(Variables_Query_shammasLevels) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? filter = _undefined,
    Object? sort = _undefined,
    Object? first = _undefined,
    Object? after = _undefined,
  }) => _then(
    Variables_Query_shammasLevels._({
      ..._instance._$data,
      if (filter != _undefined)
        'filter': (filter as Input_ShammasLevelFilterInput?),
      if (sort != _undefined)
        'sort': (sort as List<Input_ShammasLevelSortInput?>?),
      if (first != _undefined) 'first': (first as int?),
      if (after != _undefined) 'after': (after as String?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_shammasLevels<TRes>
    implements CopyWith_Variables_Query_shammasLevels<TRes> {
  _CopyWithStubImpl_Variables_Query_shammasLevels(this._res);

  TRes _res;

  call({
    Input_ShammasLevelFilterInput? filter,
    List<Input_ShammasLevelSortInput?>? sort,
    int? first,
    String? after,
  }) => _res;
}

class Query_shammasLevels {
  Query_shammasLevels({this.shammasLevels, this.$__typename = 'RootQueryType'});

  factory Query_shammasLevels.fromJson(Map<String, dynamic> json) {
    final l$shammasLevels = json['shammasLevels'];
    final l$$__typename = json['__typename'];
    return Query_shammasLevels(
      shammasLevels: l$shammasLevels == null
          ? null
          : Query_shammasLevels_shammasLevels.fromJson(
              (l$shammasLevels as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_shammasLevels_shammasLevels? shammasLevels;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$shammasLevels = shammasLevels;
    _resultData['shammasLevels'] = l$shammasLevels?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$shammasLevels = shammasLevels;
    final l$$__typename = $__typename;
    return Object.hashAll([l$shammasLevels, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_shammasLevels || runtimeType != other.runtimeType) {
      return false;
    }
    final l$shammasLevels = shammasLevels;
    final lOther$shammasLevels = other.shammasLevels;
    if (l$shammasLevels != lOther$shammasLevels) {
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

extension UtilityExtension_Query_shammasLevels on Query_shammasLevels {
  CopyWith_Query_shammasLevels<Query_shammasLevels> get copyWith =>
      CopyWith_Query_shammasLevels(this, (i) => i);
}

abstract class CopyWith_Query_shammasLevels<TRes> {
  factory CopyWith_Query_shammasLevels(
    Query_shammasLevels instance,
    TRes Function(Query_shammasLevels) then,
  ) = _CopyWithImpl_Query_shammasLevels;

  factory CopyWith_Query_shammasLevels.stub(TRes res) =
      _CopyWithStubImpl_Query_shammasLevels;

  TRes call({
    Query_shammasLevels_shammasLevels? shammasLevels,
    String? $__typename,
  });
  CopyWith_Query_shammasLevels_shammasLevels<TRes> get shammasLevels;
}

class _CopyWithImpl_Query_shammasLevels<TRes>
    implements CopyWith_Query_shammasLevels<TRes> {
  _CopyWithImpl_Query_shammasLevels(this._instance, this._then);

  final Query_shammasLevels _instance;

  final TRes Function(Query_shammasLevels) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? shammasLevels = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_shammasLevels(
      shammasLevels: shammasLevels == _undefined
          ? _instance.shammasLevels
          : (shammasLevels as Query_shammasLevels_shammasLevels?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Query_shammasLevels_shammasLevels<TRes> get shammasLevels {
    final local$shammasLevels = _instance.shammasLevels;
    return local$shammasLevels == null
        ? CopyWith_Query_shammasLevels_shammasLevels.stub(_then(_instance))
        : CopyWith_Query_shammasLevels_shammasLevels(
            local$shammasLevels,
            (e) => call(shammasLevels: e),
          );
  }
}

class _CopyWithStubImpl_Query_shammasLevels<TRes>
    implements CopyWith_Query_shammasLevels<TRes> {
  _CopyWithStubImpl_Query_shammasLevels(this._res);

  TRes _res;

  call({
    Query_shammasLevels_shammasLevels? shammasLevels,
    String? $__typename,
  }) => _res;

  CopyWith_Query_shammasLevels_shammasLevels<TRes> get shammasLevels =>
      CopyWith_Query_shammasLevels_shammasLevels.stub(_res);
}

const documentNodeQueryshammasLevels = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'shammasLevels'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'filter')),
          type: NamedTypeNode(
            name: NameNode(value: 'ShammasLevelFilterInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'sort')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'ShammasLevelSortInput'),
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
            name: NameNode(value: 'shammasLevels'),
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
                        name: NameNode(value: 'ShammasLevel'),
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
    fragmentDefinitionShammasLevel,
  ],
);

class Query_shammasLevels_shammasLevels {
  Query_shammasLevels_shammasLevels({
    this.count,
    this.endKeyset,
    this.results,
    this.$__typename = 'KeysetPageOfShammasLevel',
  });

  factory Query_shammasLevels_shammasLevels.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$count = json['count'];
    final l$endKeyset = json['endKeyset'];
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query_shammasLevels_shammasLevels(
      count: (l$count as int?),
      endKeyset: (l$endKeyset as String?),
      results: (l$results as List<dynamic>?)
          ?.map(
            (e) => Fragment_ShammasLevel.fromJson((e as Map<String, dynamic>)),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int? count;

  final String? endKeyset;

  final List<Fragment_ShammasLevel>? results;

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
    if (other is! Query_shammasLevels_shammasLevels ||
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

extension UtilityExtension_Query_shammasLevels_shammasLevels
    on Query_shammasLevels_shammasLevels {
  CopyWith_Query_shammasLevels_shammasLevels<Query_shammasLevels_shammasLevels>
  get copyWith => CopyWith_Query_shammasLevels_shammasLevels(this, (i) => i);
}

abstract class CopyWith_Query_shammasLevels_shammasLevels<TRes> {
  factory CopyWith_Query_shammasLevels_shammasLevels(
    Query_shammasLevels_shammasLevels instance,
    TRes Function(Query_shammasLevels_shammasLevels) then,
  ) = _CopyWithImpl_Query_shammasLevels_shammasLevels;

  factory CopyWith_Query_shammasLevels_shammasLevels.stub(TRes res) =
      _CopyWithStubImpl_Query_shammasLevels_shammasLevels;

  TRes call({
    int? count,
    String? endKeyset,
    List<Fragment_ShammasLevel>? results,
    String? $__typename,
  });
  TRes results(
    Iterable<Fragment_ShammasLevel>? Function(
      Iterable<CopyWith_Fragment_ShammasLevel<Fragment_ShammasLevel>>?,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_shammasLevels_shammasLevels<TRes>
    implements CopyWith_Query_shammasLevels_shammasLevels<TRes> {
  _CopyWithImpl_Query_shammasLevels_shammasLevels(this._instance, this._then);

  final Query_shammasLevels_shammasLevels _instance;

  final TRes Function(Query_shammasLevels_shammasLevels) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? endKeyset = _undefined,
    Object? results = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_shammasLevels_shammasLevels(
      count: count == _undefined ? _instance.count : (count as int?),
      endKeyset: endKeyset == _undefined
          ? _instance.endKeyset
          : (endKeyset as String?),
      results: results == _undefined
          ? _instance.results
          : (results as List<Fragment_ShammasLevel>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes results(
    Iterable<Fragment_ShammasLevel>? Function(
      Iterable<CopyWith_Fragment_ShammasLevel<Fragment_ShammasLevel>>?,
    )
    _fn,
  ) => call(
    results: _fn(
      _instance.results?.map(
        (e) => CopyWith_Fragment_ShammasLevel(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl_Query_shammasLevels_shammasLevels<TRes>
    implements CopyWith_Query_shammasLevels_shammasLevels<TRes> {
  _CopyWithStubImpl_Query_shammasLevels_shammasLevels(this._res);

  TRes _res;

  call({
    int? count,
    String? endKeyset,
    List<Fragment_ShammasLevel>? results,
    String? $__typename,
  }) => _res;

  results(_fn) => _res;
}
