import '../../../../../graphql/__generated__/schema.graphql.dart';
import '../../gql/__generated__/fragments.graphql.dart';
import 'fragments.graphql.dart';

import 'package:gql/ast.dart';

class Variables_Query_edits {
  factory Variables_Query_edits({
    Input_EditFilterInput? filter,
    List<Input_EditSortInput?>? sort,
    int? first,
    String? after,
  }) => Variables_Query_edits._({
    if (filter != null) r'filter': filter,
    if (sort != null) r'sort': sort,
    if (first != null) r'first': first,
    if (after != null) r'after': after,
  });

  Variables_Query_edits._(this._$data);

  factory Variables_Query_edits.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_EditFilterInput.fromJson((l$filter as Map<String, dynamic>));
    }
    if (data.containsKey('sort')) {
      final l$sort = data['sort'];
      result$data['sort'] = (l$sort as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Input_EditSortInput.fromJson((e as Map<String, dynamic>)),
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
    return Variables_Query_edits._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_EditFilterInput? get filter =>
      (_$data['filter'] as Input_EditFilterInput?);

  List<Input_EditSortInput?>? get sort =>
      (_$data['sort'] as List<Input_EditSortInput?>?);

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

  CopyWith_Variables_Query_edits<Variables_Query_edits> get copyWith =>
      CopyWith_Variables_Query_edits(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_edits || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Variables_Query_edits<TRes> {
  factory CopyWith_Variables_Query_edits(
    Variables_Query_edits instance,
    TRes Function(Variables_Query_edits) then,
  ) = _CopyWithImpl_Variables_Query_edits;

  factory CopyWith_Variables_Query_edits.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_edits;

  TRes call({
    Input_EditFilterInput? filter,
    List<Input_EditSortInput?>? sort,
    int? first,
    String? after,
  });
}

class _CopyWithImpl_Variables_Query_edits<TRes>
    implements CopyWith_Variables_Query_edits<TRes> {
  _CopyWithImpl_Variables_Query_edits(this._instance, this._then);

  final Variables_Query_edits _instance;

  final TRes Function(Variables_Query_edits) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? filter = _undefined,
    Object? sort = _undefined,
    Object? first = _undefined,
    Object? after = _undefined,
  }) => _then(
    Variables_Query_edits._({
      ..._instance._$data,
      if (filter != _undefined) 'filter': (filter as Input_EditFilterInput?),
      if (sort != _undefined) 'sort': (sort as List<Input_EditSortInput?>?),
      if (first != _undefined) 'first': (first as int?),
      if (after != _undefined) 'after': (after as String?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_edits<TRes>
    implements CopyWith_Variables_Query_edits<TRes> {
  _CopyWithStubImpl_Variables_Query_edits(this._res);

  TRes _res;

  call({
    Input_EditFilterInput? filter,
    List<Input_EditSortInput?>? sort,
    int? first,
    String? after,
  }) => _res;
}

class Query_edits {
  Query_edits({this.edits, this.$__typename = 'RootQueryType'});

  factory Query_edits.fromJson(Map<String, dynamic> json) {
    final l$edits = json['edits'];
    final l$$__typename = json['__typename'];
    return Query_edits(
      edits: l$edits == null
          ? null
          : Query_edits_edits.fromJson((l$edits as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_edits_edits? edits;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$edits = edits;
    _resultData['edits'] = l$edits?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$edits = edits;
    final l$$__typename = $__typename;
    return Object.hashAll([l$edits, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_edits || runtimeType != other.runtimeType) {
      return false;
    }
    final l$edits = edits;
    final lOther$edits = other.edits;
    if (l$edits != lOther$edits) {
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

extension UtilityExtension_Query_edits on Query_edits {
  CopyWith_Query_edits<Query_edits> get copyWith =>
      CopyWith_Query_edits(this, (i) => i);
}

abstract class CopyWith_Query_edits<TRes> {
  factory CopyWith_Query_edits(
    Query_edits instance,
    TRes Function(Query_edits) then,
  ) = _CopyWithImpl_Query_edits;

  factory CopyWith_Query_edits.stub(TRes res) = _CopyWithStubImpl_Query_edits;

  TRes call({Query_edits_edits? edits, String? $__typename});
  CopyWith_Query_edits_edits<TRes> get edits;
}

class _CopyWithImpl_Query_edits<TRes> implements CopyWith_Query_edits<TRes> {
  _CopyWithImpl_Query_edits(this._instance, this._then);

  final Query_edits _instance;

  final TRes Function(Query_edits) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? edits = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query_edits(
          edits: edits == _undefined
              ? _instance.edits
              : (edits as Query_edits_edits?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Query_edits_edits<TRes> get edits {
    final local$edits = _instance.edits;
    return local$edits == null
        ? CopyWith_Query_edits_edits.stub(_then(_instance))
        : CopyWith_Query_edits_edits(local$edits, (e) => call(edits: e));
  }
}

class _CopyWithStubImpl_Query_edits<TRes>
    implements CopyWith_Query_edits<TRes> {
  _CopyWithStubImpl_Query_edits(this._res);

  TRes _res;

  call({Query_edits_edits? edits, String? $__typename}) => _res;

  CopyWith_Query_edits_edits<TRes> get edits =>
      CopyWith_Query_edits_edits.stub(_res);
}

const documentNodeQueryedits = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'edits'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'filter')),
          type: NamedTypeNode(
            name: NameNode(value: 'EditFilterInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'sort')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'EditSortInput'),
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
            name: NameNode(value: 'edits'),
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
                        name: NameNode(value: 'Edit'),
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
    fragmentDefinitionEdit,
    fragmentDefinitionUser,
  ],
);

class Query_edits_edits {
  Query_edits_edits({
    this.count,
    this.endKeyset,
    this.results,
    this.$__typename = 'KeysetPageOfEdit',
  });

  factory Query_edits_edits.fromJson(Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$endKeyset = json['endKeyset'];
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query_edits_edits(
      count: (l$count as int?),
      endKeyset: (l$endKeyset as String?),
      results: (l$results as List<dynamic>?)
          ?.map((e) => Fragment_Edit.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int? count;

  final String? endKeyset;

  final List<Fragment_Edit>? results;

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
    if (other is! Query_edits_edits || runtimeType != other.runtimeType) {
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

extension UtilityExtension_Query_edits_edits on Query_edits_edits {
  CopyWith_Query_edits_edits<Query_edits_edits> get copyWith =>
      CopyWith_Query_edits_edits(this, (i) => i);
}

abstract class CopyWith_Query_edits_edits<TRes> {
  factory CopyWith_Query_edits_edits(
    Query_edits_edits instance,
    TRes Function(Query_edits_edits) then,
  ) = _CopyWithImpl_Query_edits_edits;

  factory CopyWith_Query_edits_edits.stub(TRes res) =
      _CopyWithStubImpl_Query_edits_edits;

  TRes call({
    int? count,
    String? endKeyset,
    List<Fragment_Edit>? results,
    String? $__typename,
  });
  TRes results(
    Iterable<Fragment_Edit>? Function(
      Iterable<CopyWith_Fragment_Edit<Fragment_Edit>>?,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_edits_edits<TRes>
    implements CopyWith_Query_edits_edits<TRes> {
  _CopyWithImpl_Query_edits_edits(this._instance, this._then);

  final Query_edits_edits _instance;

  final TRes Function(Query_edits_edits) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? endKeyset = _undefined,
    Object? results = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_edits_edits(
      count: count == _undefined ? _instance.count : (count as int?),
      endKeyset: endKeyset == _undefined
          ? _instance.endKeyset
          : (endKeyset as String?),
      results: results == _undefined
          ? _instance.results
          : (results as List<Fragment_Edit>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes results(
    Iterable<Fragment_Edit>? Function(
      Iterable<CopyWith_Fragment_Edit<Fragment_Edit>>?,
    )
    _fn,
  ) => call(
    results: _fn(
      _instance.results?.map((e) => CopyWith_Fragment_Edit(e, (i) => i)),
    )?.toList(),
  );
}

class _CopyWithStubImpl_Query_edits_edits<TRes>
    implements CopyWith_Query_edits_edits<TRes> {
  _CopyWithStubImpl_Query_edits_edits(this._res);

  TRes _res;

  call({
    int? count,
    String? endKeyset,
    List<Fragment_Edit>? results,
    String? $__typename,
  }) => _res;

  results(_fn) => _res;
}

class Variables_Query_visits {
  factory Variables_Query_visits({
    Input_VisitFilterInput? filter,
    List<Input_VisitSortInput?>? sort,
    int? first,
    String? after,
  }) => Variables_Query_visits._({
    if (filter != null) r'filter': filter,
    if (sort != null) r'sort': sort,
    if (first != null) r'first': first,
    if (after != null) r'after': after,
  });

  Variables_Query_visits._(this._$data);

  factory Variables_Query_visits.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_VisitFilterInput.fromJson((l$filter as Map<String, dynamic>));
    }
    if (data.containsKey('sort')) {
      final l$sort = data['sort'];
      result$data['sort'] = (l$sort as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Input_VisitSortInput.fromJson((e as Map<String, dynamic>)),
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
    return Variables_Query_visits._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_VisitFilterInput? get filter =>
      (_$data['filter'] as Input_VisitFilterInput?);

  List<Input_VisitSortInput?>? get sort =>
      (_$data['sort'] as List<Input_VisitSortInput?>?);

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

  CopyWith_Variables_Query_visits<Variables_Query_visits> get copyWith =>
      CopyWith_Variables_Query_visits(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_visits || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Variables_Query_visits<TRes> {
  factory CopyWith_Variables_Query_visits(
    Variables_Query_visits instance,
    TRes Function(Variables_Query_visits) then,
  ) = _CopyWithImpl_Variables_Query_visits;

  factory CopyWith_Variables_Query_visits.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_visits;

  TRes call({
    Input_VisitFilterInput? filter,
    List<Input_VisitSortInput?>? sort,
    int? first,
    String? after,
  });
}

class _CopyWithImpl_Variables_Query_visits<TRes>
    implements CopyWith_Variables_Query_visits<TRes> {
  _CopyWithImpl_Variables_Query_visits(this._instance, this._then);

  final Variables_Query_visits _instance;

  final TRes Function(Variables_Query_visits) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? filter = _undefined,
    Object? sort = _undefined,
    Object? first = _undefined,
    Object? after = _undefined,
  }) => _then(
    Variables_Query_visits._({
      ..._instance._$data,
      if (filter != _undefined) 'filter': (filter as Input_VisitFilterInput?),
      if (sort != _undefined) 'sort': (sort as List<Input_VisitSortInput?>?),
      if (first != _undefined) 'first': (first as int?),
      if (after != _undefined) 'after': (after as String?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_visits<TRes>
    implements CopyWith_Variables_Query_visits<TRes> {
  _CopyWithStubImpl_Variables_Query_visits(this._res);

  TRes _res;

  call({
    Input_VisitFilterInput? filter,
    List<Input_VisitSortInput?>? sort,
    int? first,
    String? after,
  }) => _res;
}

class Query_visits {
  Query_visits({this.visits, this.$__typename = 'RootQueryType'});

  factory Query_visits.fromJson(Map<String, dynamic> json) {
    final l$visits = json['visits'];
    final l$$__typename = json['__typename'];
    return Query_visits(
      visits: l$visits == null
          ? null
          : Query_visits_visits.fromJson((l$visits as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_visits_visits? visits;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$visits = visits;
    _resultData['visits'] = l$visits?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$visits = visits;
    final l$$__typename = $__typename;
    return Object.hashAll([l$visits, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_visits || runtimeType != other.runtimeType) {
      return false;
    }
    final l$visits = visits;
    final lOther$visits = other.visits;
    if (l$visits != lOther$visits) {
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

extension UtilityExtension_Query_visits on Query_visits {
  CopyWith_Query_visits<Query_visits> get copyWith =>
      CopyWith_Query_visits(this, (i) => i);
}

abstract class CopyWith_Query_visits<TRes> {
  factory CopyWith_Query_visits(
    Query_visits instance,
    TRes Function(Query_visits) then,
  ) = _CopyWithImpl_Query_visits;

  factory CopyWith_Query_visits.stub(TRes res) = _CopyWithStubImpl_Query_visits;

  TRes call({Query_visits_visits? visits, String? $__typename});
  CopyWith_Query_visits_visits<TRes> get visits;
}

class _CopyWithImpl_Query_visits<TRes> implements CopyWith_Query_visits<TRes> {
  _CopyWithImpl_Query_visits(this._instance, this._then);

  final Query_visits _instance;

  final TRes Function(Query_visits) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? visits = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query_visits(
          visits: visits == _undefined
              ? _instance.visits
              : (visits as Query_visits_visits?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Query_visits_visits<TRes> get visits {
    final local$visits = _instance.visits;
    return local$visits == null
        ? CopyWith_Query_visits_visits.stub(_then(_instance))
        : CopyWith_Query_visits_visits(local$visits, (e) => call(visits: e));
  }
}

class _CopyWithStubImpl_Query_visits<TRes>
    implements CopyWith_Query_visits<TRes> {
  _CopyWithStubImpl_Query_visits(this._res);

  TRes _res;

  call({Query_visits_visits? visits, String? $__typename}) => _res;

  CopyWith_Query_visits_visits<TRes> get visits =>
      CopyWith_Query_visits_visits.stub(_res);
}

const documentNodeQueryvisits = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'visits'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'filter')),
          type: NamedTypeNode(
            name: NameNode(value: 'VisitFilterInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'sort')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'VisitSortInput'),
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
            name: NameNode(value: 'visits'),
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
                        name: NameNode(value: 'Visit'),
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
    fragmentDefinitionVisit,
    fragmentDefinitionUser,
  ],
);

class Query_visits_visits {
  Query_visits_visits({
    this.count,
    this.endKeyset,
    this.results,
    this.$__typename = 'KeysetPageOfVisit',
  });

  factory Query_visits_visits.fromJson(Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$endKeyset = json['endKeyset'];
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query_visits_visits(
      count: (l$count as int?),
      endKeyset: (l$endKeyset as String?),
      results: (l$results as List<dynamic>?)
          ?.map((e) => Fragment_Visit.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int? count;

  final String? endKeyset;

  final List<Fragment_Visit>? results;

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
    if (other is! Query_visits_visits || runtimeType != other.runtimeType) {
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

extension UtilityExtension_Query_visits_visits on Query_visits_visits {
  CopyWith_Query_visits_visits<Query_visits_visits> get copyWith =>
      CopyWith_Query_visits_visits(this, (i) => i);
}

abstract class CopyWith_Query_visits_visits<TRes> {
  factory CopyWith_Query_visits_visits(
    Query_visits_visits instance,
    TRes Function(Query_visits_visits) then,
  ) = _CopyWithImpl_Query_visits_visits;

  factory CopyWith_Query_visits_visits.stub(TRes res) =
      _CopyWithStubImpl_Query_visits_visits;

  TRes call({
    int? count,
    String? endKeyset,
    List<Fragment_Visit>? results,
    String? $__typename,
  });
  TRes results(
    Iterable<Fragment_Visit>? Function(
      Iterable<CopyWith_Fragment_Visit<Fragment_Visit>>?,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_visits_visits<TRes>
    implements CopyWith_Query_visits_visits<TRes> {
  _CopyWithImpl_Query_visits_visits(this._instance, this._then);

  final Query_visits_visits _instance;

  final TRes Function(Query_visits_visits) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? endKeyset = _undefined,
    Object? results = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_visits_visits(
      count: count == _undefined ? _instance.count : (count as int?),
      endKeyset: endKeyset == _undefined
          ? _instance.endKeyset
          : (endKeyset as String?),
      results: results == _undefined
          ? _instance.results
          : (results as List<Fragment_Visit>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes results(
    Iterable<Fragment_Visit>? Function(
      Iterable<CopyWith_Fragment_Visit<Fragment_Visit>>?,
    )
    _fn,
  ) => call(
    results: _fn(
      _instance.results?.map((e) => CopyWith_Fragment_Visit(e, (i) => i)),
    )?.toList(),
  );
}

class _CopyWithStubImpl_Query_visits_visits<TRes>
    implements CopyWith_Query_visits_visits<TRes> {
  _CopyWithStubImpl_Query_visits_visits(this._res);

  TRes _res;

  call({
    int? count,
    String? endKeyset,
    List<Fragment_Visit>? results,
    String? $__typename,
  }) => _res;

  results(_fn) => _res;
}

class Variables_Query_calls {
  factory Variables_Query_calls({
    Input_CallFilterInput? filter,
    List<Input_CallSortInput?>? sort,
    int? first,
    String? after,
  }) => Variables_Query_calls._({
    if (filter != null) r'filter': filter,
    if (sort != null) r'sort': sort,
    if (first != null) r'first': first,
    if (after != null) r'after': after,
  });

  Variables_Query_calls._(this._$data);

  factory Variables_Query_calls.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_CallFilterInput.fromJson((l$filter as Map<String, dynamic>));
    }
    if (data.containsKey('sort')) {
      final l$sort = data['sort'];
      result$data['sort'] = (l$sort as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Input_CallSortInput.fromJson((e as Map<String, dynamic>)),
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
    return Variables_Query_calls._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_CallFilterInput? get filter =>
      (_$data['filter'] as Input_CallFilterInput?);

  List<Input_CallSortInput?>? get sort =>
      (_$data['sort'] as List<Input_CallSortInput?>?);

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

  CopyWith_Variables_Query_calls<Variables_Query_calls> get copyWith =>
      CopyWith_Variables_Query_calls(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_calls || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Variables_Query_calls<TRes> {
  factory CopyWith_Variables_Query_calls(
    Variables_Query_calls instance,
    TRes Function(Variables_Query_calls) then,
  ) = _CopyWithImpl_Variables_Query_calls;

  factory CopyWith_Variables_Query_calls.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_calls;

  TRes call({
    Input_CallFilterInput? filter,
    List<Input_CallSortInput?>? sort,
    int? first,
    String? after,
  });
}

class _CopyWithImpl_Variables_Query_calls<TRes>
    implements CopyWith_Variables_Query_calls<TRes> {
  _CopyWithImpl_Variables_Query_calls(this._instance, this._then);

  final Variables_Query_calls _instance;

  final TRes Function(Variables_Query_calls) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? filter = _undefined,
    Object? sort = _undefined,
    Object? first = _undefined,
    Object? after = _undefined,
  }) => _then(
    Variables_Query_calls._({
      ..._instance._$data,
      if (filter != _undefined) 'filter': (filter as Input_CallFilterInput?),
      if (sort != _undefined) 'sort': (sort as List<Input_CallSortInput?>?),
      if (first != _undefined) 'first': (first as int?),
      if (after != _undefined) 'after': (after as String?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_calls<TRes>
    implements CopyWith_Variables_Query_calls<TRes> {
  _CopyWithStubImpl_Variables_Query_calls(this._res);

  TRes _res;

  call({
    Input_CallFilterInput? filter,
    List<Input_CallSortInput?>? sort,
    int? first,
    String? after,
  }) => _res;
}

class Query_calls {
  Query_calls({this.calls, this.$__typename = 'RootQueryType'});

  factory Query_calls.fromJson(Map<String, dynamic> json) {
    final l$calls = json['calls'];
    final l$$__typename = json['__typename'];
    return Query_calls(
      calls: l$calls == null
          ? null
          : Query_calls_calls.fromJson((l$calls as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_calls_calls? calls;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$calls = calls;
    _resultData['calls'] = l$calls?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$calls = calls;
    final l$$__typename = $__typename;
    return Object.hashAll([l$calls, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_calls || runtimeType != other.runtimeType) {
      return false;
    }
    final l$calls = calls;
    final lOther$calls = other.calls;
    if (l$calls != lOther$calls) {
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

extension UtilityExtension_Query_calls on Query_calls {
  CopyWith_Query_calls<Query_calls> get copyWith =>
      CopyWith_Query_calls(this, (i) => i);
}

abstract class CopyWith_Query_calls<TRes> {
  factory CopyWith_Query_calls(
    Query_calls instance,
    TRes Function(Query_calls) then,
  ) = _CopyWithImpl_Query_calls;

  factory CopyWith_Query_calls.stub(TRes res) = _CopyWithStubImpl_Query_calls;

  TRes call({Query_calls_calls? calls, String? $__typename});
  CopyWith_Query_calls_calls<TRes> get calls;
}

class _CopyWithImpl_Query_calls<TRes> implements CopyWith_Query_calls<TRes> {
  _CopyWithImpl_Query_calls(this._instance, this._then);

  final Query_calls _instance;

  final TRes Function(Query_calls) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? calls = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query_calls(
          calls: calls == _undefined
              ? _instance.calls
              : (calls as Query_calls_calls?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Query_calls_calls<TRes> get calls {
    final local$calls = _instance.calls;
    return local$calls == null
        ? CopyWith_Query_calls_calls.stub(_then(_instance))
        : CopyWith_Query_calls_calls(local$calls, (e) => call(calls: e));
  }
}

class _CopyWithStubImpl_Query_calls<TRes>
    implements CopyWith_Query_calls<TRes> {
  _CopyWithStubImpl_Query_calls(this._res);

  TRes _res;

  call({Query_calls_calls? calls, String? $__typename}) => _res;

  CopyWith_Query_calls_calls<TRes> get calls =>
      CopyWith_Query_calls_calls.stub(_res);
}

const documentNodeQuerycalls = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'calls'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'filter')),
          type: NamedTypeNode(
            name: NameNode(value: 'CallFilterInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'sort')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'CallSortInput'),
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
            name: NameNode(value: 'calls'),
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
                        name: NameNode(value: 'Call'),
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
    fragmentDefinitionCall,
    fragmentDefinitionUser,
  ],
);

class Query_calls_calls {
  Query_calls_calls({
    this.count,
    this.endKeyset,
    this.results,
    this.$__typename = 'KeysetPageOfCall',
  });

  factory Query_calls_calls.fromJson(Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$endKeyset = json['endKeyset'];
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query_calls_calls(
      count: (l$count as int?),
      endKeyset: (l$endKeyset as String?),
      results: (l$results as List<dynamic>?)
          ?.map((e) => Fragment_Call.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int? count;

  final String? endKeyset;

  final List<Fragment_Call>? results;

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
    if (other is! Query_calls_calls || runtimeType != other.runtimeType) {
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

extension UtilityExtension_Query_calls_calls on Query_calls_calls {
  CopyWith_Query_calls_calls<Query_calls_calls> get copyWith =>
      CopyWith_Query_calls_calls(this, (i) => i);
}

abstract class CopyWith_Query_calls_calls<TRes> {
  factory CopyWith_Query_calls_calls(
    Query_calls_calls instance,
    TRes Function(Query_calls_calls) then,
  ) = _CopyWithImpl_Query_calls_calls;

  factory CopyWith_Query_calls_calls.stub(TRes res) =
      _CopyWithStubImpl_Query_calls_calls;

  TRes call({
    int? count,
    String? endKeyset,
    List<Fragment_Call>? results,
    String? $__typename,
  });
  TRes results(
    Iterable<Fragment_Call>? Function(
      Iterable<CopyWith_Fragment_Call<Fragment_Call>>?,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_calls_calls<TRes>
    implements CopyWith_Query_calls_calls<TRes> {
  _CopyWithImpl_Query_calls_calls(this._instance, this._then);

  final Query_calls_calls _instance;

  final TRes Function(Query_calls_calls) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? endKeyset = _undefined,
    Object? results = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_calls_calls(
      count: count == _undefined ? _instance.count : (count as int?),
      endKeyset: endKeyset == _undefined
          ? _instance.endKeyset
          : (endKeyset as String?),
      results: results == _undefined
          ? _instance.results
          : (results as List<Fragment_Call>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes results(
    Iterable<Fragment_Call>? Function(
      Iterable<CopyWith_Fragment_Call<Fragment_Call>>?,
    )
    _fn,
  ) => call(
    results: _fn(
      _instance.results?.map((e) => CopyWith_Fragment_Call(e, (i) => i)),
    )?.toList(),
  );
}

class _CopyWithStubImpl_Query_calls_calls<TRes>
    implements CopyWith_Query_calls_calls<TRes> {
  _CopyWithStubImpl_Query_calls_calls(this._res);

  TRes _res;

  call({
    int? count,
    String? endKeyset,
    List<Fragment_Call>? results,
    String? $__typename,
  }) => _res;

  results(_fn) => _res;
}

class Variables_Query_confessions {
  factory Variables_Query_confessions({
    Input_ConfessionFilterInput? filter,
    List<Input_ConfessionSortInput?>? sort,
    int? first,
    String? after,
  }) => Variables_Query_confessions._({
    if (filter != null) r'filter': filter,
    if (sort != null) r'sort': sort,
    if (first != null) r'first': first,
    if (after != null) r'after': after,
  });

  Variables_Query_confessions._(this._$data);

  factory Variables_Query_confessions.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_ConfessionFilterInput.fromJson(
              (l$filter as Map<String, dynamic>),
            );
    }
    if (data.containsKey('sort')) {
      final l$sort = data['sort'];
      result$data['sort'] = (l$sort as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Input_ConfessionSortInput.fromJson(
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
    return Variables_Query_confessions._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_ConfessionFilterInput? get filter =>
      (_$data['filter'] as Input_ConfessionFilterInput?);

  List<Input_ConfessionSortInput?>? get sort =>
      (_$data['sort'] as List<Input_ConfessionSortInput?>?);

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

  CopyWith_Variables_Query_confessions<Variables_Query_confessions>
  get copyWith => CopyWith_Variables_Query_confessions(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_confessions ||
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

abstract class CopyWith_Variables_Query_confessions<TRes> {
  factory CopyWith_Variables_Query_confessions(
    Variables_Query_confessions instance,
    TRes Function(Variables_Query_confessions) then,
  ) = _CopyWithImpl_Variables_Query_confessions;

  factory CopyWith_Variables_Query_confessions.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_confessions;

  TRes call({
    Input_ConfessionFilterInput? filter,
    List<Input_ConfessionSortInput?>? sort,
    int? first,
    String? after,
  });
}

class _CopyWithImpl_Variables_Query_confessions<TRes>
    implements CopyWith_Variables_Query_confessions<TRes> {
  _CopyWithImpl_Variables_Query_confessions(this._instance, this._then);

  final Variables_Query_confessions _instance;

  final TRes Function(Variables_Query_confessions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? filter = _undefined,
    Object? sort = _undefined,
    Object? first = _undefined,
    Object? after = _undefined,
  }) => _then(
    Variables_Query_confessions._({
      ..._instance._$data,
      if (filter != _undefined)
        'filter': (filter as Input_ConfessionFilterInput?),
      if (sort != _undefined)
        'sort': (sort as List<Input_ConfessionSortInput?>?),
      if (first != _undefined) 'first': (first as int?),
      if (after != _undefined) 'after': (after as String?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_confessions<TRes>
    implements CopyWith_Variables_Query_confessions<TRes> {
  _CopyWithStubImpl_Variables_Query_confessions(this._res);

  TRes _res;

  call({
    Input_ConfessionFilterInput? filter,
    List<Input_ConfessionSortInput?>? sort,
    int? first,
    String? after,
  }) => _res;
}

class Query_confessions {
  Query_confessions({this.confessions, this.$__typename = 'RootQueryType'});

  factory Query_confessions.fromJson(Map<String, dynamic> json) {
    final l$confessions = json['confessions'];
    final l$$__typename = json['__typename'];
    return Query_confessions(
      confessions: l$confessions == null
          ? null
          : Query_confessions_confessions.fromJson(
              (l$confessions as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_confessions_confessions? confessions;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$confessions = confessions;
    _resultData['confessions'] = l$confessions?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$confessions = confessions;
    final l$$__typename = $__typename;
    return Object.hashAll([l$confessions, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_confessions || runtimeType != other.runtimeType) {
      return false;
    }
    final l$confessions = confessions;
    final lOther$confessions = other.confessions;
    if (l$confessions != lOther$confessions) {
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

extension UtilityExtension_Query_confessions on Query_confessions {
  CopyWith_Query_confessions<Query_confessions> get copyWith =>
      CopyWith_Query_confessions(this, (i) => i);
}

abstract class CopyWith_Query_confessions<TRes> {
  factory CopyWith_Query_confessions(
    Query_confessions instance,
    TRes Function(Query_confessions) then,
  ) = _CopyWithImpl_Query_confessions;

  factory CopyWith_Query_confessions.stub(TRes res) =
      _CopyWithStubImpl_Query_confessions;

  TRes call({Query_confessions_confessions? confessions, String? $__typename});
  CopyWith_Query_confessions_confessions<TRes> get confessions;
}

class _CopyWithImpl_Query_confessions<TRes>
    implements CopyWith_Query_confessions<TRes> {
  _CopyWithImpl_Query_confessions(this._instance, this._then);

  final Query_confessions _instance;

  final TRes Function(Query_confessions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? confessions = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_confessions(
      confessions: confessions == _undefined
          ? _instance.confessions
          : (confessions as Query_confessions_confessions?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Query_confessions_confessions<TRes> get confessions {
    final local$confessions = _instance.confessions;
    return local$confessions == null
        ? CopyWith_Query_confessions_confessions.stub(_then(_instance))
        : CopyWith_Query_confessions_confessions(
            local$confessions,
            (e) => call(confessions: e),
          );
  }
}

class _CopyWithStubImpl_Query_confessions<TRes>
    implements CopyWith_Query_confessions<TRes> {
  _CopyWithStubImpl_Query_confessions(this._res);

  TRes _res;

  call({Query_confessions_confessions? confessions, String? $__typename}) =>
      _res;

  CopyWith_Query_confessions_confessions<TRes> get confessions =>
      CopyWith_Query_confessions_confessions.stub(_res);
}

const documentNodeQueryconfessions = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'confessions'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'filter')),
          type: NamedTypeNode(
            name: NameNode(value: 'ConfessionFilterInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'sort')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'ConfessionSortInput'),
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
            name: NameNode(value: 'confessions'),
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
                        name: NameNode(value: 'Confession'),
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
    fragmentDefinitionConfession,
    fragmentDefinitionUser,
  ],
);

class Query_confessions_confessions {
  Query_confessions_confessions({
    this.count,
    this.endKeyset,
    this.results,
    this.$__typename = 'KeysetPageOfConfession',
  });

  factory Query_confessions_confessions.fromJson(Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$endKeyset = json['endKeyset'];
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query_confessions_confessions(
      count: (l$count as int?),
      endKeyset: (l$endKeyset as String?),
      results: (l$results as List<dynamic>?)
          ?.map(
            (e) => Fragment_Confession.fromJson((e as Map<String, dynamic>)),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int? count;

  final String? endKeyset;

  final List<Fragment_Confession>? results;

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
    if (other is! Query_confessions_confessions ||
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

extension UtilityExtension_Query_confessions_confessions
    on Query_confessions_confessions {
  CopyWith_Query_confessions_confessions<Query_confessions_confessions>
  get copyWith => CopyWith_Query_confessions_confessions(this, (i) => i);
}

abstract class CopyWith_Query_confessions_confessions<TRes> {
  factory CopyWith_Query_confessions_confessions(
    Query_confessions_confessions instance,
    TRes Function(Query_confessions_confessions) then,
  ) = _CopyWithImpl_Query_confessions_confessions;

  factory CopyWith_Query_confessions_confessions.stub(TRes res) =
      _CopyWithStubImpl_Query_confessions_confessions;

  TRes call({
    int? count,
    String? endKeyset,
    List<Fragment_Confession>? results,
    String? $__typename,
  });
  TRes results(
    Iterable<Fragment_Confession>? Function(
      Iterable<CopyWith_Fragment_Confession<Fragment_Confession>>?,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_confessions_confessions<TRes>
    implements CopyWith_Query_confessions_confessions<TRes> {
  _CopyWithImpl_Query_confessions_confessions(this._instance, this._then);

  final Query_confessions_confessions _instance;

  final TRes Function(Query_confessions_confessions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? endKeyset = _undefined,
    Object? results = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_confessions_confessions(
      count: count == _undefined ? _instance.count : (count as int?),
      endKeyset: endKeyset == _undefined
          ? _instance.endKeyset
          : (endKeyset as String?),
      results: results == _undefined
          ? _instance.results
          : (results as List<Fragment_Confession>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes results(
    Iterable<Fragment_Confession>? Function(
      Iterable<CopyWith_Fragment_Confession<Fragment_Confession>>?,
    )
    _fn,
  ) => call(
    results: _fn(
      _instance.results?.map((e) => CopyWith_Fragment_Confession(e, (i) => i)),
    )?.toList(),
  );
}

class _CopyWithStubImpl_Query_confessions_confessions<TRes>
    implements CopyWith_Query_confessions_confessions<TRes> {
  _CopyWithStubImpl_Query_confessions_confessions(this._res);

  TRes _res;

  call({
    int? count,
    String? endKeyset,
    List<Fragment_Confession>? results,
    String? $__typename,
  }) => _res;

  results(_fn) => _res;
}

class Variables_Query_kodases {
  factory Variables_Query_kodases({
    Input_KodasFilterInput? filter,
    List<Input_KodasSortInput?>? sort,
    int? first,
    String? after,
  }) => Variables_Query_kodases._({
    if (filter != null) r'filter': filter,
    if (sort != null) r'sort': sort,
    if (first != null) r'first': first,
    if (after != null) r'after': after,
  });

  Variables_Query_kodases._(this._$data);

  factory Variables_Query_kodases.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_KodasFilterInput.fromJson((l$filter as Map<String, dynamic>));
    }
    if (data.containsKey('sort')) {
      final l$sort = data['sort'];
      result$data['sort'] = (l$sort as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Input_KodasSortInput.fromJson((e as Map<String, dynamic>)),
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
    return Variables_Query_kodases._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_KodasFilterInput? get filter =>
      (_$data['filter'] as Input_KodasFilterInput?);

  List<Input_KodasSortInput?>? get sort =>
      (_$data['sort'] as List<Input_KodasSortInput?>?);

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

  CopyWith_Variables_Query_kodases<Variables_Query_kodases> get copyWith =>
      CopyWith_Variables_Query_kodases(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_kodases || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Variables_Query_kodases<TRes> {
  factory CopyWith_Variables_Query_kodases(
    Variables_Query_kodases instance,
    TRes Function(Variables_Query_kodases) then,
  ) = _CopyWithImpl_Variables_Query_kodases;

  factory CopyWith_Variables_Query_kodases.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_kodases;

  TRes call({
    Input_KodasFilterInput? filter,
    List<Input_KodasSortInput?>? sort,
    int? first,
    String? after,
  });
}

class _CopyWithImpl_Variables_Query_kodases<TRes>
    implements CopyWith_Variables_Query_kodases<TRes> {
  _CopyWithImpl_Variables_Query_kodases(this._instance, this._then);

  final Variables_Query_kodases _instance;

  final TRes Function(Variables_Query_kodases) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? filter = _undefined,
    Object? sort = _undefined,
    Object? first = _undefined,
    Object? after = _undefined,
  }) => _then(
    Variables_Query_kodases._({
      ..._instance._$data,
      if (filter != _undefined) 'filter': (filter as Input_KodasFilterInput?),
      if (sort != _undefined) 'sort': (sort as List<Input_KodasSortInput?>?),
      if (first != _undefined) 'first': (first as int?),
      if (after != _undefined) 'after': (after as String?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_kodases<TRes>
    implements CopyWith_Variables_Query_kodases<TRes> {
  _CopyWithStubImpl_Variables_Query_kodases(this._res);

  TRes _res;

  call({
    Input_KodasFilterInput? filter,
    List<Input_KodasSortInput?>? sort,
    int? first,
    String? after,
  }) => _res;
}

class Query_kodases {
  Query_kodases({this.kodases, this.$__typename = 'RootQueryType'});

  factory Query_kodases.fromJson(Map<String, dynamic> json) {
    final l$kodases = json['kodases'];
    final l$$__typename = json['__typename'];
    return Query_kodases(
      kodases: l$kodases == null
          ? null
          : Query_kodases_kodases.fromJson((l$kodases as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_kodases_kodases? kodases;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$kodases = kodases;
    _resultData['kodases'] = l$kodases?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$kodases = kodases;
    final l$$__typename = $__typename;
    return Object.hashAll([l$kodases, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_kodases || runtimeType != other.runtimeType) {
      return false;
    }
    final l$kodases = kodases;
    final lOther$kodases = other.kodases;
    if (l$kodases != lOther$kodases) {
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

extension UtilityExtension_Query_kodases on Query_kodases {
  CopyWith_Query_kodases<Query_kodases> get copyWith =>
      CopyWith_Query_kodases(this, (i) => i);
}

abstract class CopyWith_Query_kodases<TRes> {
  factory CopyWith_Query_kodases(
    Query_kodases instance,
    TRes Function(Query_kodases) then,
  ) = _CopyWithImpl_Query_kodases;

  factory CopyWith_Query_kodases.stub(TRes res) =
      _CopyWithStubImpl_Query_kodases;

  TRes call({Query_kodases_kodases? kodases, String? $__typename});
  CopyWith_Query_kodases_kodases<TRes> get kodases;
}

class _CopyWithImpl_Query_kodases<TRes>
    implements CopyWith_Query_kodases<TRes> {
  _CopyWithImpl_Query_kodases(this._instance, this._then);

  final Query_kodases _instance;

  final TRes Function(Query_kodases) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? kodases = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query_kodases(
          kodases: kodases == _undefined
              ? _instance.kodases
              : (kodases as Query_kodases_kodases?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Query_kodases_kodases<TRes> get kodases {
    final local$kodases = _instance.kodases;
    return local$kodases == null
        ? CopyWith_Query_kodases_kodases.stub(_then(_instance))
        : CopyWith_Query_kodases_kodases(
            local$kodases,
            (e) => call(kodases: e),
          );
  }
}

class _CopyWithStubImpl_Query_kodases<TRes>
    implements CopyWith_Query_kodases<TRes> {
  _CopyWithStubImpl_Query_kodases(this._res);

  TRes _res;

  call({Query_kodases_kodases? kodases, String? $__typename}) => _res;

  CopyWith_Query_kodases_kodases<TRes> get kodases =>
      CopyWith_Query_kodases_kodases.stub(_res);
}

const documentNodeQuerykodases = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'kodases'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'filter')),
          type: NamedTypeNode(
            name: NameNode(value: 'KodasFilterInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'sort')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'KodasSortInput'),
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
            name: NameNode(value: 'kodases'),
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
                        name: NameNode(value: 'Kodas'),
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
    fragmentDefinitionKodas,
    fragmentDefinitionUser,
  ],
);

class Query_kodases_kodases {
  Query_kodases_kodases({
    this.count,
    this.endKeyset,
    this.results,
    this.$__typename = 'KeysetPageOfKodas',
  });

  factory Query_kodases_kodases.fromJson(Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$endKeyset = json['endKeyset'];
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query_kodases_kodases(
      count: (l$count as int?),
      endKeyset: (l$endKeyset as String?),
      results: (l$results as List<dynamic>?)
          ?.map((e) => Fragment_Kodas.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int? count;

  final String? endKeyset;

  final List<Fragment_Kodas>? results;

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
    if (other is! Query_kodases_kodases || runtimeType != other.runtimeType) {
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

extension UtilityExtension_Query_kodases_kodases on Query_kodases_kodases {
  CopyWith_Query_kodases_kodases<Query_kodases_kodases> get copyWith =>
      CopyWith_Query_kodases_kodases(this, (i) => i);
}

abstract class CopyWith_Query_kodases_kodases<TRes> {
  factory CopyWith_Query_kodases_kodases(
    Query_kodases_kodases instance,
    TRes Function(Query_kodases_kodases) then,
  ) = _CopyWithImpl_Query_kodases_kodases;

  factory CopyWith_Query_kodases_kodases.stub(TRes res) =
      _CopyWithStubImpl_Query_kodases_kodases;

  TRes call({
    int? count,
    String? endKeyset,
    List<Fragment_Kodas>? results,
    String? $__typename,
  });
  TRes results(
    Iterable<Fragment_Kodas>? Function(
      Iterable<CopyWith_Fragment_Kodas<Fragment_Kodas>>?,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_kodases_kodases<TRes>
    implements CopyWith_Query_kodases_kodases<TRes> {
  _CopyWithImpl_Query_kodases_kodases(this._instance, this._then);

  final Query_kodases_kodases _instance;

  final TRes Function(Query_kodases_kodases) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? endKeyset = _undefined,
    Object? results = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_kodases_kodases(
      count: count == _undefined ? _instance.count : (count as int?),
      endKeyset: endKeyset == _undefined
          ? _instance.endKeyset
          : (endKeyset as String?),
      results: results == _undefined
          ? _instance.results
          : (results as List<Fragment_Kodas>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes results(
    Iterable<Fragment_Kodas>? Function(
      Iterable<CopyWith_Fragment_Kodas<Fragment_Kodas>>?,
    )
    _fn,
  ) => call(
    results: _fn(
      _instance.results?.map((e) => CopyWith_Fragment_Kodas(e, (i) => i)),
    )?.toList(),
  );
}

class _CopyWithStubImpl_Query_kodases_kodases<TRes>
    implements CopyWith_Query_kodases_kodases<TRes> {
  _CopyWithStubImpl_Query_kodases_kodases(this._res);

  TRes _res;

  call({
    int? count,
    String? endKeyset,
    List<Fragment_Kodas>? results,
    String? $__typename,
  }) => _res;

  results(_fn) => _res;
}

class Variables_Query_dayKodases {
  factory Variables_Query_dayKodases({
    Input_KodasFilterInput? filter,
    int? first,
  }) => Variables_Query_dayKodases._({
    if (filter != null) r'filter': filter,
    if (first != null) r'first': first,
  });

  Variables_Query_dayKodases._(this._$data);

  factory Variables_Query_dayKodases.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_KodasFilterInput.fromJson((l$filter as Map<String, dynamic>));
    }
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    return Variables_Query_dayKodases._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_KodasFilterInput? get filter =>
      (_$data['filter'] as Input_KodasFilterInput?);

  int? get first => (_$data['first'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    if (_$data.containsKey('first')) {
      final l$first = first;
      result$data['first'] = l$first;
    }
    return result$data;
  }

  CopyWith_Variables_Query_dayKodases<Variables_Query_dayKodases>
  get copyWith => CopyWith_Variables_Query_dayKodases(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_dayKodases ||
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
    final l$first = first;
    final lOther$first = other.first;
    if (_$data.containsKey('first') != other._$data.containsKey('first')) {
      return false;
    }
    if (l$first != lOther$first) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$filter = filter;
    final l$first = first;
    return Object.hashAll([
      _$data.containsKey('filter') ? l$filter : const {},
      _$data.containsKey('first') ? l$first : const {},
    ]);
  }
}

abstract class CopyWith_Variables_Query_dayKodases<TRes> {
  factory CopyWith_Variables_Query_dayKodases(
    Variables_Query_dayKodases instance,
    TRes Function(Variables_Query_dayKodases) then,
  ) = _CopyWithImpl_Variables_Query_dayKodases;

  factory CopyWith_Variables_Query_dayKodases.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_dayKodases;

  TRes call({Input_KodasFilterInput? filter, int? first});
}

class _CopyWithImpl_Variables_Query_dayKodases<TRes>
    implements CopyWith_Variables_Query_dayKodases<TRes> {
  _CopyWithImpl_Variables_Query_dayKodases(this._instance, this._then);

  final Variables_Query_dayKodases _instance;

  final TRes Function(Variables_Query_dayKodases) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? filter = _undefined, Object? first = _undefined}) => _then(
    Variables_Query_dayKodases._({
      ..._instance._$data,
      if (filter != _undefined) 'filter': (filter as Input_KodasFilterInput?),
      if (first != _undefined) 'first': (first as int?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_dayKodases<TRes>
    implements CopyWith_Variables_Query_dayKodases<TRes> {
  _CopyWithStubImpl_Variables_Query_dayKodases(this._res);

  TRes _res;

  call({Input_KodasFilterInput? filter, int? first}) => _res;
}

class Query_dayKodases {
  Query_dayKodases({this.kodases, this.$__typename = 'RootQueryType'});

  factory Query_dayKodases.fromJson(Map<String, dynamic> json) {
    final l$kodases = json['kodases'];
    final l$$__typename = json['__typename'];
    return Query_dayKodases(
      kodases: l$kodases == null
          ? null
          : Query_dayKodases_kodases.fromJson(
              (l$kodases as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_dayKodases_kodases? kodases;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$kodases = kodases;
    _resultData['kodases'] = l$kodases?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$kodases = kodases;
    final l$$__typename = $__typename;
    return Object.hashAll([l$kodases, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_dayKodases || runtimeType != other.runtimeType) {
      return false;
    }
    final l$kodases = kodases;
    final lOther$kodases = other.kodases;
    if (l$kodases != lOther$kodases) {
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

extension UtilityExtension_Query_dayKodases on Query_dayKodases {
  CopyWith_Query_dayKodases<Query_dayKodases> get copyWith =>
      CopyWith_Query_dayKodases(this, (i) => i);
}

abstract class CopyWith_Query_dayKodases<TRes> {
  factory CopyWith_Query_dayKodases(
    Query_dayKodases instance,
    TRes Function(Query_dayKodases) then,
  ) = _CopyWithImpl_Query_dayKodases;

  factory CopyWith_Query_dayKodases.stub(TRes res) =
      _CopyWithStubImpl_Query_dayKodases;

  TRes call({Query_dayKodases_kodases? kodases, String? $__typename});
  CopyWith_Query_dayKodases_kodases<TRes> get kodases;
}

class _CopyWithImpl_Query_dayKodases<TRes>
    implements CopyWith_Query_dayKodases<TRes> {
  _CopyWithImpl_Query_dayKodases(this._instance, this._then);

  final Query_dayKodases _instance;

  final TRes Function(Query_dayKodases) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? kodases = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query_dayKodases(
          kodases: kodases == _undefined
              ? _instance.kodases
              : (kodases as Query_dayKodases_kodases?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Query_dayKodases_kodases<TRes> get kodases {
    final local$kodases = _instance.kodases;
    return local$kodases == null
        ? CopyWith_Query_dayKodases_kodases.stub(_then(_instance))
        : CopyWith_Query_dayKodases_kodases(
            local$kodases,
            (e) => call(kodases: e),
          );
  }
}

class _CopyWithStubImpl_Query_dayKodases<TRes>
    implements CopyWith_Query_dayKodases<TRes> {
  _CopyWithStubImpl_Query_dayKodases(this._res);

  TRes _res;

  call({Query_dayKodases_kodases? kodases, String? $__typename}) => _res;

  CopyWith_Query_dayKodases_kodases<TRes> get kodases =>
      CopyWith_Query_dayKodases_kodases.stub(_res);
}

const documentNodeQuerydayKodases = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'dayKodases'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'filter')),
          type: NamedTypeNode(
            name: NameNode(value: 'KodasFilterInput'),
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
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'kodases'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'filter'),
                value: VariableNode(name: NameNode(value: 'filter')),
              ),
              ArgumentNode(
                name: NameNode(value: 'first'),
                value: VariableNode(name: NameNode(value: 'first')),
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
                        name: NameNode(value: 'KodasDayRecord'),
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
    fragmentDefinitionKodasDayRecord,
  ],
);

class Query_dayKodases_kodases {
  Query_dayKodases_kodases({
    this.count,
    this.endKeyset,
    this.results,
    this.$__typename = 'KeysetPageOfKodas',
  });

  factory Query_dayKodases_kodases.fromJson(Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$endKeyset = json['endKeyset'];
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query_dayKodases_kodases(
      count: (l$count as int?),
      endKeyset: (l$endKeyset as String?),
      results: (l$results as List<dynamic>?)
          ?.map(
            (e) =>
                Fragment_KodasDayRecord.fromJson((e as Map<String, dynamic>)),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int? count;

  final String? endKeyset;

  final List<Fragment_KodasDayRecord>? results;

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
    if (other is! Query_dayKodases_kodases ||
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

extension UtilityExtension_Query_dayKodases_kodases
    on Query_dayKodases_kodases {
  CopyWith_Query_dayKodases_kodases<Query_dayKodases_kodases> get copyWith =>
      CopyWith_Query_dayKodases_kodases(this, (i) => i);
}

abstract class CopyWith_Query_dayKodases_kodases<TRes> {
  factory CopyWith_Query_dayKodases_kodases(
    Query_dayKodases_kodases instance,
    TRes Function(Query_dayKodases_kodases) then,
  ) = _CopyWithImpl_Query_dayKodases_kodases;

  factory CopyWith_Query_dayKodases_kodases.stub(TRes res) =
      _CopyWithStubImpl_Query_dayKodases_kodases;

  TRes call({
    int? count,
    String? endKeyset,
    List<Fragment_KodasDayRecord>? results,
    String? $__typename,
  });
  TRes results(
    Iterable<Fragment_KodasDayRecord>? Function(
      Iterable<CopyWith_Fragment_KodasDayRecord<Fragment_KodasDayRecord>>?,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_dayKodases_kodases<TRes>
    implements CopyWith_Query_dayKodases_kodases<TRes> {
  _CopyWithImpl_Query_dayKodases_kodases(this._instance, this._then);

  final Query_dayKodases_kodases _instance;

  final TRes Function(Query_dayKodases_kodases) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? endKeyset = _undefined,
    Object? results = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_dayKodases_kodases(
      count: count == _undefined ? _instance.count : (count as int?),
      endKeyset: endKeyset == _undefined
          ? _instance.endKeyset
          : (endKeyset as String?),
      results: results == _undefined
          ? _instance.results
          : (results as List<Fragment_KodasDayRecord>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes results(
    Iterable<Fragment_KodasDayRecord>? Function(
      Iterable<CopyWith_Fragment_KodasDayRecord<Fragment_KodasDayRecord>>?,
    )
    _fn,
  ) => call(
    results: _fn(
      _instance.results?.map(
        (e) => CopyWith_Fragment_KodasDayRecord(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl_Query_dayKodases_kodases<TRes>
    implements CopyWith_Query_dayKodases_kodases<TRes> {
  _CopyWithStubImpl_Query_dayKodases_kodases(this._res);

  TRes _res;

  call({
    int? count,
    String? endKeyset,
    List<Fragment_KodasDayRecord>? results,
    String? $__typename,
  }) => _res;

  results(_fn) => _res;
}
