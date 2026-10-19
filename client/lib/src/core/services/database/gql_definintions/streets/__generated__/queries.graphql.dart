import '../../../../../graphql/__generated__/schema.graphql.dart';
import '../../areas/__generated__/fragments.graphql.dart';
import '../../gql/__generated__/fragments.graphql.dart';
import 'fragments.graphql.dart';

import 'package:gql/ast.dart';

class Variables_Query_streets {
  factory Variables_Query_streets({
    Input_StreetFilterInput? filter,
    List<Input_StreetSortInput?>? sort,
    int? first,
    String? after,
  }) => Variables_Query_streets._({
    if (filter != null) r'filter': filter,
    if (sort != null) r'sort': sort,
    if (first != null) r'first': first,
    if (after != null) r'after': after,
  });

  Variables_Query_streets._(this._$data);

  factory Variables_Query_streets.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_StreetFilterInput.fromJson(
              (l$filter as Map<String, dynamic>),
            );
    }
    if (data.containsKey('sort')) {
      final l$sort = data['sort'];
      result$data['sort'] = (l$sort as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Input_StreetSortInput.fromJson((e as Map<String, dynamic>)),
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
    return Variables_Query_streets._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_StreetFilterInput? get filter =>
      (_$data['filter'] as Input_StreetFilterInput?);

  List<Input_StreetSortInput?>? get sort =>
      (_$data['sort'] as List<Input_StreetSortInput?>?);

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

  CopyWith_Variables_Query_streets<Variables_Query_streets> get copyWith =>
      CopyWith_Variables_Query_streets(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_streets || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Variables_Query_streets<TRes> {
  factory CopyWith_Variables_Query_streets(
    Variables_Query_streets instance,
    TRes Function(Variables_Query_streets) then,
  ) = _CopyWithImpl_Variables_Query_streets;

  factory CopyWith_Variables_Query_streets.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_streets;

  TRes call({
    Input_StreetFilterInput? filter,
    List<Input_StreetSortInput?>? sort,
    int? first,
    String? after,
  });
}

class _CopyWithImpl_Variables_Query_streets<TRes>
    implements CopyWith_Variables_Query_streets<TRes> {
  _CopyWithImpl_Variables_Query_streets(this._instance, this._then);

  final Variables_Query_streets _instance;

  final TRes Function(Variables_Query_streets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? filter = _undefined,
    Object? sort = _undefined,
    Object? first = _undefined,
    Object? after = _undefined,
  }) => _then(
    Variables_Query_streets._({
      ..._instance._$data,
      if (filter != _undefined) 'filter': (filter as Input_StreetFilterInput?),
      if (sort != _undefined) 'sort': (sort as List<Input_StreetSortInput?>?),
      if (first != _undefined) 'first': (first as int?),
      if (after != _undefined) 'after': (after as String?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_streets<TRes>
    implements CopyWith_Variables_Query_streets<TRes> {
  _CopyWithStubImpl_Variables_Query_streets(this._res);

  TRes _res;

  call({
    Input_StreetFilterInput? filter,
    List<Input_StreetSortInput?>? sort,
    int? first,
    String? after,
  }) => _res;
}

class Query_streets {
  Query_streets({this.streets, this.$__typename = 'RootQueryType'});

  factory Query_streets.fromJson(Map<String, dynamic> json) {
    final l$streets = json['streets'];
    final l$$__typename = json['__typename'];
    return Query_streets(
      streets: l$streets == null
          ? null
          : Query_streets_streets.fromJson((l$streets as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_streets_streets? streets;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$streets = streets;
    _resultData['streets'] = l$streets?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$streets = streets;
    final l$$__typename = $__typename;
    return Object.hashAll([l$streets, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_streets || runtimeType != other.runtimeType) {
      return false;
    }
    final l$streets = streets;
    final lOther$streets = other.streets;
    if (l$streets != lOther$streets) {
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

extension UtilityExtension_Query_streets on Query_streets {
  CopyWith_Query_streets<Query_streets> get copyWith =>
      CopyWith_Query_streets(this, (i) => i);
}

abstract class CopyWith_Query_streets<TRes> {
  factory CopyWith_Query_streets(
    Query_streets instance,
    TRes Function(Query_streets) then,
  ) = _CopyWithImpl_Query_streets;

  factory CopyWith_Query_streets.stub(TRes res) =
      _CopyWithStubImpl_Query_streets;

  TRes call({Query_streets_streets? streets, String? $__typename});
  CopyWith_Query_streets_streets<TRes> get streets;
}

class _CopyWithImpl_Query_streets<TRes>
    implements CopyWith_Query_streets<TRes> {
  _CopyWithImpl_Query_streets(this._instance, this._then);

  final Query_streets _instance;

  final TRes Function(Query_streets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? streets = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query_streets(
          streets: streets == _undefined
              ? _instance.streets
              : (streets as Query_streets_streets?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Query_streets_streets<TRes> get streets {
    final local$streets = _instance.streets;
    return local$streets == null
        ? CopyWith_Query_streets_streets.stub(_then(_instance))
        : CopyWith_Query_streets_streets(
            local$streets,
            (e) => call(streets: e),
          );
  }
}

class _CopyWithStubImpl_Query_streets<TRes>
    implements CopyWith_Query_streets<TRes> {
  _CopyWithStubImpl_Query_streets(this._res);

  TRes _res;

  call({Query_streets_streets? streets, String? $__typename}) => _res;

  CopyWith_Query_streets_streets<TRes> get streets =>
      CopyWith_Query_streets_streets.stub(_res);
}

const documentNodeQuerystreets = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'streets'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'filter')),
          type: NamedTypeNode(
            name: NameNode(value: 'StreetFilterInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'sort')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'StreetSortInput'),
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
            name: NameNode(value: 'streets'),
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
                        name: NameNode(value: 'StreetWithLine'),
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
    fragmentDefinitionStreetWithLine,
    fragmentDefinitionStreet,
  ],
);

class Query_streets_streets {
  Query_streets_streets({
    this.count,
    this.endKeyset,
    this.results,
    this.$__typename = 'KeysetPageOfStreet',
  });

  factory Query_streets_streets.fromJson(Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$endKeyset = json['endKeyset'];
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query_streets_streets(
      count: (l$count as int?),
      endKeyset: (l$endKeyset as String?),
      results: (l$results as List<dynamic>?)
          ?.map(
            (e) =>
                Fragment_StreetWithLine.fromJson((e as Map<String, dynamic>)),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int? count;

  final String? endKeyset;

  final List<Fragment_StreetWithLine>? results;

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
    if (other is! Query_streets_streets || runtimeType != other.runtimeType) {
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

extension UtilityExtension_Query_streets_streets on Query_streets_streets {
  CopyWith_Query_streets_streets<Query_streets_streets> get copyWith =>
      CopyWith_Query_streets_streets(this, (i) => i);
}

abstract class CopyWith_Query_streets_streets<TRes> {
  factory CopyWith_Query_streets_streets(
    Query_streets_streets instance,
    TRes Function(Query_streets_streets) then,
  ) = _CopyWithImpl_Query_streets_streets;

  factory CopyWith_Query_streets_streets.stub(TRes res) =
      _CopyWithStubImpl_Query_streets_streets;

  TRes call({
    int? count,
    String? endKeyset,
    List<Fragment_StreetWithLine>? results,
    String? $__typename,
  });
  TRes results(
    Iterable<Fragment_StreetWithLine>? Function(
      Iterable<CopyWith_Fragment_StreetWithLine<Fragment_StreetWithLine>>?,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_streets_streets<TRes>
    implements CopyWith_Query_streets_streets<TRes> {
  _CopyWithImpl_Query_streets_streets(this._instance, this._then);

  final Query_streets_streets _instance;

  final TRes Function(Query_streets_streets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? endKeyset = _undefined,
    Object? results = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_streets_streets(
      count: count == _undefined ? _instance.count : (count as int?),
      endKeyset: endKeyset == _undefined
          ? _instance.endKeyset
          : (endKeyset as String?),
      results: results == _undefined
          ? _instance.results
          : (results as List<Fragment_StreetWithLine>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes results(
    Iterable<Fragment_StreetWithLine>? Function(
      Iterable<CopyWith_Fragment_StreetWithLine<Fragment_StreetWithLine>>?,
    )
    _fn,
  ) => call(
    results: _fn(
      _instance.results?.map(
        (e) => CopyWith_Fragment_StreetWithLine(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl_Query_streets_streets<TRes>
    implements CopyWith_Query_streets_streets<TRes> {
  _CopyWithStubImpl_Query_streets_streets(this._res);

  TRes _res;

  call({
    int? count,
    String? endKeyset,
    List<Fragment_StreetWithLine>? results,
    String? $__typename,
  }) => _res;

  results(_fn) => _res;
}

class Variables_Query_street {
  factory Variables_Query_street({required String id}) =>
      Variables_Query_street._({r'id': id});

  Variables_Query_street._(this._$data);

  factory Variables_Query_street.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables_Query_street._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith_Variables_Query_street<Variables_Query_street> get copyWith =>
      CopyWith_Variables_Query_street(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_street || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Variables_Query_street<TRes> {
  factory CopyWith_Variables_Query_street(
    Variables_Query_street instance,
    TRes Function(Variables_Query_street) then,
  ) = _CopyWithImpl_Variables_Query_street;

  factory CopyWith_Variables_Query_street.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_street;

  TRes call({String? id});
}

class _CopyWithImpl_Variables_Query_street<TRes>
    implements CopyWith_Variables_Query_street<TRes> {
  _CopyWithImpl_Variables_Query_street(this._instance, this._then);

  final Variables_Query_street _instance;

  final TRes Function(Variables_Query_street) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables_Query_street._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_street<TRes>
    implements CopyWith_Variables_Query_street<TRes> {
  _CopyWithStubImpl_Variables_Query_street(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query_street {
  Query_street({this.street, this.$__typename = 'RootQueryType'});

  factory Query_street.fromJson(Map<String, dynamic> json) {
    final l$street = json['street'];
    final l$$__typename = json['__typename'];
    return Query_street(
      street: l$street == null
          ? null
          : Fragment_StreetDetails.fromJson((l$street as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_StreetDetails? street;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$street = street;
    _resultData['street'] = l$street?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$street = street;
    final l$$__typename = $__typename;
    return Object.hashAll([l$street, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_street || runtimeType != other.runtimeType) {
      return false;
    }
    final l$street = street;
    final lOther$street = other.street;
    if (l$street != lOther$street) {
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

extension UtilityExtension_Query_street on Query_street {
  CopyWith_Query_street<Query_street> get copyWith =>
      CopyWith_Query_street(this, (i) => i);
}

abstract class CopyWith_Query_street<TRes> {
  factory CopyWith_Query_street(
    Query_street instance,
    TRes Function(Query_street) then,
  ) = _CopyWithImpl_Query_street;

  factory CopyWith_Query_street.stub(TRes res) = _CopyWithStubImpl_Query_street;

  TRes call({Fragment_StreetDetails? street, String? $__typename});
  CopyWith_Fragment_StreetDetails<TRes> get street;
}

class _CopyWithImpl_Query_street<TRes> implements CopyWith_Query_street<TRes> {
  _CopyWithImpl_Query_street(this._instance, this._then);

  final Query_street _instance;

  final TRes Function(Query_street) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? street = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query_street(
          street: street == _undefined
              ? _instance.street
              : (street as Fragment_StreetDetails?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_StreetDetails<TRes> get street {
    final local$street = _instance.street;
    return local$street == null
        ? CopyWith_Fragment_StreetDetails.stub(_then(_instance))
        : CopyWith_Fragment_StreetDetails(local$street, (e) => call(street: e));
  }
}

class _CopyWithStubImpl_Query_street<TRes>
    implements CopyWith_Query_street<TRes> {
  _CopyWithStubImpl_Query_street(this._res);

  TRes _res;

  call({Fragment_StreetDetails? street, String? $__typename}) => _res;

  CopyWith_Fragment_StreetDetails<TRes> get street =>
      CopyWith_Fragment_StreetDetails.stub(_res);
}

const documentNodeQuerystreet = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'street'),
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
            name: NameNode(value: 'street'),
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
                  name: NameNode(value: 'StreetDetails'),
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
    fragmentDefinitionStreetDetails,
    fragmentDefinitionStreetWithLine,
    fragmentDefinitionStreet,
    fragmentDefinitionArea,
    fragmentDefinitionLatestEdit,
    fragmentDefinitionUser,
    fragmentDefinitionLatestVisit,
  ],
);
