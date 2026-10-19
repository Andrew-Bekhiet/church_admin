import '../../../../../graphql/__generated__/schema.graphql.dart';
import '../../areas/__generated__/fragments.graphql.dart';
import '../../data_checks/__generated__/fragments.graphql.dart';
import '../../metadata/person_types/__generated__/fragments.graphql.dart';
import '../../streets/__generated__/fragments.graphql.dart';
import 'fragments.graphql.dart';

import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Query_families {
  factory Variables_Query_families({
    Input_FamilyFilterInput? filter,
    List<Input_FamilySortInput?>? sort,
    int? first,
    String? after,
  }) => Variables_Query_families._({
    if (filter != null) r'filter': filter,
    if (sort != null) r'sort': sort,
    if (first != null) r'first': first,
    if (after != null) r'after': after,
  });

  Variables_Query_families._(this._$data);

  factory Variables_Query_families.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_FamilyFilterInput.fromJson(
              (l$filter as Map<String, dynamic>),
            );
    }
    if (data.containsKey('sort')) {
      final l$sort = data['sort'];
      result$data['sort'] = (l$sort as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Input_FamilySortInput.fromJson((e as Map<String, dynamic>)),
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
    return Variables_Query_families._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_FamilyFilterInput? get filter =>
      (_$data['filter'] as Input_FamilyFilterInput?);

  List<Input_FamilySortInput?>? get sort =>
      (_$data['sort'] as List<Input_FamilySortInput?>?);

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

  CopyWith_Variables_Query_families<Variables_Query_families> get copyWith =>
      CopyWith_Variables_Query_families(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_families ||
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

abstract class CopyWith_Variables_Query_families<TRes> {
  factory CopyWith_Variables_Query_families(
    Variables_Query_families instance,
    TRes Function(Variables_Query_families) then,
  ) = _CopyWithImpl_Variables_Query_families;

  factory CopyWith_Variables_Query_families.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_families;

  TRes call({
    Input_FamilyFilterInput? filter,
    List<Input_FamilySortInput?>? sort,
    int? first,
    String? after,
  });
}

class _CopyWithImpl_Variables_Query_families<TRes>
    implements CopyWith_Variables_Query_families<TRes> {
  _CopyWithImpl_Variables_Query_families(this._instance, this._then);

  final Variables_Query_families _instance;

  final TRes Function(Variables_Query_families) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? filter = _undefined,
    Object? sort = _undefined,
    Object? first = _undefined,
    Object? after = _undefined,
  }) => _then(
    Variables_Query_families._({
      ..._instance._$data,
      if (filter != _undefined) 'filter': (filter as Input_FamilyFilterInput?),
      if (sort != _undefined) 'sort': (sort as List<Input_FamilySortInput?>?),
      if (first != _undefined) 'first': (first as int?),
      if (after != _undefined) 'after': (after as String?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_families<TRes>
    implements CopyWith_Variables_Query_families<TRes> {
  _CopyWithStubImpl_Variables_Query_families(this._res);

  TRes _res;

  call({
    Input_FamilyFilterInput? filter,
    List<Input_FamilySortInput?>? sort,
    int? first,
    String? after,
  }) => _res;
}

class Query_families {
  Query_families({this.families, this.$__typename = 'RootQueryType'});

  factory Query_families.fromJson(Map<String, dynamic> json) {
    final l$families = json['families'];
    final l$$__typename = json['__typename'];
    return Query_families(
      families: l$families == null
          ? null
          : Query_families_families.fromJson(
              (l$families as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_families_families? families;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$families = families;
    _resultData['families'] = l$families?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$families = families;
    final l$$__typename = $__typename;
    return Object.hashAll([l$families, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_families || runtimeType != other.runtimeType) {
      return false;
    }
    final l$families = families;
    final lOther$families = other.families;
    if (l$families != lOther$families) {
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

extension UtilityExtension_Query_families on Query_families {
  CopyWith_Query_families<Query_families> get copyWith =>
      CopyWith_Query_families(this, (i) => i);
}

abstract class CopyWith_Query_families<TRes> {
  factory CopyWith_Query_families(
    Query_families instance,
    TRes Function(Query_families) then,
  ) = _CopyWithImpl_Query_families;

  factory CopyWith_Query_families.stub(TRes res) =
      _CopyWithStubImpl_Query_families;

  TRes call({Query_families_families? families, String? $__typename});
  CopyWith_Query_families_families<TRes> get families;
}

class _CopyWithImpl_Query_families<TRes>
    implements CopyWith_Query_families<TRes> {
  _CopyWithImpl_Query_families(this._instance, this._then);

  final Query_families _instance;

  final TRes Function(Query_families) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? families = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_families(
      families: families == _undefined
          ? _instance.families
          : (families as Query_families_families?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Query_families_families<TRes> get families {
    final local$families = _instance.families;
    return local$families == null
        ? CopyWith_Query_families_families.stub(_then(_instance))
        : CopyWith_Query_families_families(
            local$families,
            (e) => call(families: e),
          );
  }
}

class _CopyWithStubImpl_Query_families<TRes>
    implements CopyWith_Query_families<TRes> {
  _CopyWithStubImpl_Query_families(this._res);

  TRes _res;

  call({Query_families_families? families, String? $__typename}) => _res;

  CopyWith_Query_families_families<TRes> get families =>
      CopyWith_Query_families_families.stub(_res);
}

const documentNodeQueryfamilies = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'families'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'filter')),
          type: NamedTypeNode(
            name: NameNode(value: 'FamilyFilterInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'sort')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'FamilySortInput'),
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
            name: NameNode(value: 'families'),
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
                        name: NameNode(value: 'Family'),
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
    fragmentDefinitionFamily,
    fragmentDefinitionDataCheck,
  ],
);

class Query_families_families {
  Query_families_families({
    this.count,
    this.endKeyset,
    this.results,
    this.$__typename = 'KeysetPageOfFamily',
  });

  factory Query_families_families.fromJson(Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$endKeyset = json['endKeyset'];
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query_families_families(
      count: (l$count as int?),
      endKeyset: (l$endKeyset as String?),
      results: (l$results as List<dynamic>?)
          ?.map((e) => Fragment_Family.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int? count;

  final String? endKeyset;

  final List<Fragment_Family>? results;

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
    if (other is! Query_families_families || runtimeType != other.runtimeType) {
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

extension UtilityExtension_Query_families_families on Query_families_families {
  CopyWith_Query_families_families<Query_families_families> get copyWith =>
      CopyWith_Query_families_families(this, (i) => i);
}

abstract class CopyWith_Query_families_families<TRes> {
  factory CopyWith_Query_families_families(
    Query_families_families instance,
    TRes Function(Query_families_families) then,
  ) = _CopyWithImpl_Query_families_families;

  factory CopyWith_Query_families_families.stub(TRes res) =
      _CopyWithStubImpl_Query_families_families;

  TRes call({
    int? count,
    String? endKeyset,
    List<Fragment_Family>? results,
    String? $__typename,
  });
  TRes results(
    Iterable<Fragment_Family>? Function(
      Iterable<CopyWith_Fragment_Family<Fragment_Family>>?,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_families_families<TRes>
    implements CopyWith_Query_families_families<TRes> {
  _CopyWithImpl_Query_families_families(this._instance, this._then);

  final Query_families_families _instance;

  final TRes Function(Query_families_families) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? endKeyset = _undefined,
    Object? results = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_families_families(
      count: count == _undefined ? _instance.count : (count as int?),
      endKeyset: endKeyset == _undefined
          ? _instance.endKeyset
          : (endKeyset as String?),
      results: results == _undefined
          ? _instance.results
          : (results as List<Fragment_Family>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes results(
    Iterable<Fragment_Family>? Function(
      Iterable<CopyWith_Fragment_Family<Fragment_Family>>?,
    )
    _fn,
  ) => call(
    results: _fn(
      _instance.results?.map((e) => CopyWith_Fragment_Family(e, (i) => i)),
    )?.toList(),
  );
}

class _CopyWithStubImpl_Query_families_families<TRes>
    implements CopyWith_Query_families_families<TRes> {
  _CopyWithStubImpl_Query_families_families(this._res);

  TRes _res;

  call({
    int? count,
    String? endKeyset,
    List<Fragment_Family>? results,
    String? $__typename,
  }) => _res;

  results(_fn) => _res;
}

class Variables_Query_familiesWithAddresses {
  factory Variables_Query_familiesWithAddresses({
    Input_FamilyFilterInput? filter,
    List<Input_FamilySortInput?>? sort,
    int? first,
    String? after,
  }) => Variables_Query_familiesWithAddresses._({
    if (filter != null) r'filter': filter,
    if (sort != null) r'sort': sort,
    if (first != null) r'first': first,
    if (after != null) r'after': after,
  });

  Variables_Query_familiesWithAddresses._(this._$data);

  factory Variables_Query_familiesWithAddresses.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_FamilyFilterInput.fromJson(
              (l$filter as Map<String, dynamic>),
            );
    }
    if (data.containsKey('sort')) {
      final l$sort = data['sort'];
      result$data['sort'] = (l$sort as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Input_FamilySortInput.fromJson((e as Map<String, dynamic>)),
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
    return Variables_Query_familiesWithAddresses._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_FamilyFilterInput? get filter =>
      (_$data['filter'] as Input_FamilyFilterInput?);

  List<Input_FamilySortInput?>? get sort =>
      (_$data['sort'] as List<Input_FamilySortInput?>?);

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

  CopyWith_Variables_Query_familiesWithAddresses<
    Variables_Query_familiesWithAddresses
  >
  get copyWith =>
      CopyWith_Variables_Query_familiesWithAddresses(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_familiesWithAddresses ||
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

abstract class CopyWith_Variables_Query_familiesWithAddresses<TRes> {
  factory CopyWith_Variables_Query_familiesWithAddresses(
    Variables_Query_familiesWithAddresses instance,
    TRes Function(Variables_Query_familiesWithAddresses) then,
  ) = _CopyWithImpl_Variables_Query_familiesWithAddresses;

  factory CopyWith_Variables_Query_familiesWithAddresses.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_familiesWithAddresses;

  TRes call({
    Input_FamilyFilterInput? filter,
    List<Input_FamilySortInput?>? sort,
    int? first,
    String? after,
  });
}

class _CopyWithImpl_Variables_Query_familiesWithAddresses<TRes>
    implements CopyWith_Variables_Query_familiesWithAddresses<TRes> {
  _CopyWithImpl_Variables_Query_familiesWithAddresses(
    this._instance,
    this._then,
  );

  final Variables_Query_familiesWithAddresses _instance;

  final TRes Function(Variables_Query_familiesWithAddresses) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? filter = _undefined,
    Object? sort = _undefined,
    Object? first = _undefined,
    Object? after = _undefined,
  }) => _then(
    Variables_Query_familiesWithAddresses._({
      ..._instance._$data,
      if (filter != _undefined) 'filter': (filter as Input_FamilyFilterInput?),
      if (sort != _undefined) 'sort': (sort as List<Input_FamilySortInput?>?),
      if (first != _undefined) 'first': (first as int?),
      if (after != _undefined) 'after': (after as String?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_familiesWithAddresses<TRes>
    implements CopyWith_Variables_Query_familiesWithAddresses<TRes> {
  _CopyWithStubImpl_Variables_Query_familiesWithAddresses(this._res);

  TRes _res;

  call({
    Input_FamilyFilterInput? filter,
    List<Input_FamilySortInput?>? sort,
    int? first,
    String? after,
  }) => _res;
}

class Query_familiesWithAddresses {
  Query_familiesWithAddresses({
    this.families,
    this.$__typename = 'RootQueryType',
  });

  factory Query_familiesWithAddresses.fromJson(Map<String, dynamic> json) {
    final l$families = json['families'];
    final l$$__typename = json['__typename'];
    return Query_familiesWithAddresses(
      families: l$families == null
          ? null
          : Query_familiesWithAddresses_families.fromJson(
              (l$families as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_familiesWithAddresses_families? families;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$families = families;
    _resultData['families'] = l$families?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$families = families;
    final l$$__typename = $__typename;
    return Object.hashAll([l$families, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_familiesWithAddresses ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$families = families;
    final lOther$families = other.families;
    if (l$families != lOther$families) {
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

extension UtilityExtension_Query_familiesWithAddresses
    on Query_familiesWithAddresses {
  CopyWith_Query_familiesWithAddresses<Query_familiesWithAddresses>
  get copyWith => CopyWith_Query_familiesWithAddresses(this, (i) => i);
}

abstract class CopyWith_Query_familiesWithAddresses<TRes> {
  factory CopyWith_Query_familiesWithAddresses(
    Query_familiesWithAddresses instance,
    TRes Function(Query_familiesWithAddresses) then,
  ) = _CopyWithImpl_Query_familiesWithAddresses;

  factory CopyWith_Query_familiesWithAddresses.stub(TRes res) =
      _CopyWithStubImpl_Query_familiesWithAddresses;

  TRes call({
    Query_familiesWithAddresses_families? families,
    String? $__typename,
  });
  CopyWith_Query_familiesWithAddresses_families<TRes> get families;
}

class _CopyWithImpl_Query_familiesWithAddresses<TRes>
    implements CopyWith_Query_familiesWithAddresses<TRes> {
  _CopyWithImpl_Query_familiesWithAddresses(this._instance, this._then);

  final Query_familiesWithAddresses _instance;

  final TRes Function(Query_familiesWithAddresses) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? families = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_familiesWithAddresses(
      families: families == _undefined
          ? _instance.families
          : (families as Query_familiesWithAddresses_families?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Query_familiesWithAddresses_families<TRes> get families {
    final local$families = _instance.families;
    return local$families == null
        ? CopyWith_Query_familiesWithAddresses_families.stub(_then(_instance))
        : CopyWith_Query_familiesWithAddresses_families(
            local$families,
            (e) => call(families: e),
          );
  }
}

class _CopyWithStubImpl_Query_familiesWithAddresses<TRes>
    implements CopyWith_Query_familiesWithAddresses<TRes> {
  _CopyWithStubImpl_Query_familiesWithAddresses(this._res);

  TRes _res;

  call({Query_familiesWithAddresses_families? families, String? $__typename}) =>
      _res;

  CopyWith_Query_familiesWithAddresses_families<TRes> get families =>
      CopyWith_Query_familiesWithAddresses_families.stub(_res);
}

const documentNodeQueryfamiliesWithAddresses = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'familiesWithAddresses'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'filter')),
          type: NamedTypeNode(
            name: NameNode(value: 'FamilyFilterInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'sort')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'FamilySortInput'),
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
            name: NameNode(value: 'families'),
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
                        name: NameNode(value: 'FamilyWithAddress'),
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
    fragmentDefinitionFamilyWithAddress,
    fragmentDefinitionFamily,
    fragmentDefinitionDataCheck,
    fragmentDefinitionFamilyAddress,
    fragmentDefinitionArea,
    fragmentDefinitionStreet,
  ],
);

class Query_familiesWithAddresses_families {
  Query_familiesWithAddresses_families({
    this.count,
    this.endKeyset,
    this.results,
    this.$__typename = 'KeysetPageOfFamily',
  });

  factory Query_familiesWithAddresses_families.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$count = json['count'];
    final l$endKeyset = json['endKeyset'];
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query_familiesWithAddresses_families(
      count: (l$count as int?),
      endKeyset: (l$endKeyset as String?),
      results: (l$results as List<dynamic>?)
          ?.map(
            (e) => Fragment_FamilyWithAddress.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int? count;

  final String? endKeyset;

  final List<Fragment_FamilyWithAddress>? results;

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
    if (other is! Query_familiesWithAddresses_families ||
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

extension UtilityExtension_Query_familiesWithAddresses_families
    on Query_familiesWithAddresses_families {
  CopyWith_Query_familiesWithAddresses_families<
    Query_familiesWithAddresses_families
  >
  get copyWith => CopyWith_Query_familiesWithAddresses_families(this, (i) => i);
}

abstract class CopyWith_Query_familiesWithAddresses_families<TRes> {
  factory CopyWith_Query_familiesWithAddresses_families(
    Query_familiesWithAddresses_families instance,
    TRes Function(Query_familiesWithAddresses_families) then,
  ) = _CopyWithImpl_Query_familiesWithAddresses_families;

  factory CopyWith_Query_familiesWithAddresses_families.stub(TRes res) =
      _CopyWithStubImpl_Query_familiesWithAddresses_families;

  TRes call({
    int? count,
    String? endKeyset,
    List<Fragment_FamilyWithAddress>? results,
    String? $__typename,
  });
  TRes results(
    Iterable<Fragment_FamilyWithAddress>? Function(
      Iterable<
        CopyWith_Fragment_FamilyWithAddress<Fragment_FamilyWithAddress>
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_familiesWithAddresses_families<TRes>
    implements CopyWith_Query_familiesWithAddresses_families<TRes> {
  _CopyWithImpl_Query_familiesWithAddresses_families(
    this._instance,
    this._then,
  );

  final Query_familiesWithAddresses_families _instance;

  final TRes Function(Query_familiesWithAddresses_families) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? endKeyset = _undefined,
    Object? results = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_familiesWithAddresses_families(
      count: count == _undefined ? _instance.count : (count as int?),
      endKeyset: endKeyset == _undefined
          ? _instance.endKeyset
          : (endKeyset as String?),
      results: results == _undefined
          ? _instance.results
          : (results as List<Fragment_FamilyWithAddress>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes results(
    Iterable<Fragment_FamilyWithAddress>? Function(
      Iterable<
        CopyWith_Fragment_FamilyWithAddress<Fragment_FamilyWithAddress>
      >?,
    )
    _fn,
  ) => call(
    results: _fn(
      _instance.results?.map(
        (e) => CopyWith_Fragment_FamilyWithAddress(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl_Query_familiesWithAddresses_families<TRes>
    implements CopyWith_Query_familiesWithAddresses_families<TRes> {
  _CopyWithStubImpl_Query_familiesWithAddresses_families(this._res);

  TRes _res;

  call({
    int? count,
    String? endKeyset,
    List<Fragment_FamilyWithAddress>? results,
    String? $__typename,
  }) => _res;

  results(_fn) => _res;
}

class Variables_Query_family {
  factory Variables_Query_family({
    required String id,
    List<Input_FamilyContactSortInput?>? contactsSort,
  }) => Variables_Query_family._({
    r'id': id,
    if (contactsSort != null) r'contactsSort': contactsSort,
  });

  Variables_Query_family._(this._$data);

  factory Variables_Query_family.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    if (data.containsKey('contactsSort')) {
      final l$contactsSort = data['contactsSort'];
      result$data['contactsSort'] = (l$contactsSort as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Input_FamilyContactSortInput.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList();
    }
    return Variables_Query_family._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  List<Input_FamilyContactSortInput?>? get contactsSort =>
      (_$data['contactsSort'] as List<Input_FamilyContactSortInput?>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('contactsSort')) {
      final l$contactsSort = contactsSort;
      result$data['contactsSort'] = l$contactsSort
          ?.map((e) => e?.toJson())
          .toList();
    }
    return result$data;
  }

  CopyWith_Variables_Query_family<Variables_Query_family> get copyWith =>
      CopyWith_Variables_Query_family(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_family || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$contactsSort = contactsSort;
    final lOther$contactsSort = other.contactsSort;
    if (_$data.containsKey('contactsSort') !=
        other._$data.containsKey('contactsSort')) {
      return false;
    }
    if (l$contactsSort != null && lOther$contactsSort != null) {
      if (l$contactsSort.length != lOther$contactsSort.length) {
        return false;
      }
      for (int i = 0; i < l$contactsSort.length; i++) {
        final l$contactsSort$entry = l$contactsSort[i];
        final lOther$contactsSort$entry = lOther$contactsSort[i];
        if (l$contactsSort$entry != lOther$contactsSort$entry) {
          return false;
        }
      }
    } else if (l$contactsSort != lOther$contactsSort) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$contactsSort = contactsSort;
    return Object.hashAll([
      l$id,
      _$data.containsKey('contactsSort')
          ? l$contactsSort == null
                ? null
                : Object.hashAll(l$contactsSort.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith_Variables_Query_family<TRes> {
  factory CopyWith_Variables_Query_family(
    Variables_Query_family instance,
    TRes Function(Variables_Query_family) then,
  ) = _CopyWithImpl_Variables_Query_family;

  factory CopyWith_Variables_Query_family.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_family;

  TRes call({String? id, List<Input_FamilyContactSortInput?>? contactsSort});
}

class _CopyWithImpl_Variables_Query_family<TRes>
    implements CopyWith_Variables_Query_family<TRes> {
  _CopyWithImpl_Variables_Query_family(this._instance, this._then);

  final Variables_Query_family _instance;

  final TRes Function(Variables_Query_family) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? contactsSort = _undefined}) =>
      _then(
        Variables_Query_family._({
          ..._instance._$data,
          if (id != _undefined && id != null) 'id': (id as String),
          if (contactsSort != _undefined)
            'contactsSort':
                (contactsSort as List<Input_FamilyContactSortInput?>?),
        }),
      );
}

class _CopyWithStubImpl_Variables_Query_family<TRes>
    implements CopyWith_Variables_Query_family<TRes> {
  _CopyWithStubImpl_Variables_Query_family(this._res);

  TRes _res;

  call({String? id, List<Input_FamilyContactSortInput?>? contactsSort}) => _res;
}

class Query_family {
  Query_family({
    this.family,
    this.personTypes,
    this.$__typename = 'RootQueryType',
  });

  factory Query_family.fromJson(Map<String, dynamic> json) {
    final l$family = json['family'];
    final l$personTypes = json['personTypes'];
    final l$$__typename = json['__typename'];
    return Query_family(
      family: l$family == null
          ? null
          : Query_family_family.fromJson((l$family as Map<String, dynamic>)),
      personTypes: l$personTypes == null
          ? null
          : Query_family_personTypes.fromJson(
              (l$personTypes as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_family_family? family;

  final Query_family_personTypes? personTypes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$family = family;
    _resultData['family'] = l$family?.toJson();
    final l$personTypes = personTypes;
    _resultData['personTypes'] = l$personTypes?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$family = family;
    final l$personTypes = personTypes;
    final l$$__typename = $__typename;
    return Object.hashAll([l$family, l$personTypes, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_family || runtimeType != other.runtimeType) {
      return false;
    }
    final l$family = family;
    final lOther$family = other.family;
    if (l$family != lOther$family) {
      return false;
    }
    final l$personTypes = personTypes;
    final lOther$personTypes = other.personTypes;
    if (l$personTypes != lOther$personTypes) {
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

extension UtilityExtension_Query_family on Query_family {
  CopyWith_Query_family<Query_family> get copyWith =>
      CopyWith_Query_family(this, (i) => i);
}

abstract class CopyWith_Query_family<TRes> {
  factory CopyWith_Query_family(
    Query_family instance,
    TRes Function(Query_family) then,
  ) = _CopyWithImpl_Query_family;

  factory CopyWith_Query_family.stub(TRes res) = _CopyWithStubImpl_Query_family;

  TRes call({
    Query_family_family? family,
    Query_family_personTypes? personTypes,
    String? $__typename,
  });
  CopyWith_Query_family_family<TRes> get family;
  CopyWith_Query_family_personTypes<TRes> get personTypes;
}

class _CopyWithImpl_Query_family<TRes> implements CopyWith_Query_family<TRes> {
  _CopyWithImpl_Query_family(this._instance, this._then);

  final Query_family _instance;

  final TRes Function(Query_family) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? family = _undefined,
    Object? personTypes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_family(
      family: family == _undefined
          ? _instance.family
          : (family as Query_family_family?),
      personTypes: personTypes == _undefined
          ? _instance.personTypes
          : (personTypes as Query_family_personTypes?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Query_family_family<TRes> get family {
    final local$family = _instance.family;
    return local$family == null
        ? CopyWith_Query_family_family.stub(_then(_instance))
        : CopyWith_Query_family_family(local$family, (e) => call(family: e));
  }

  CopyWith_Query_family_personTypes<TRes> get personTypes {
    final local$personTypes = _instance.personTypes;
    return local$personTypes == null
        ? CopyWith_Query_family_personTypes.stub(_then(_instance))
        : CopyWith_Query_family_personTypes(
            local$personTypes,
            (e) => call(personTypes: e),
          );
  }
}

class _CopyWithStubImpl_Query_family<TRes>
    implements CopyWith_Query_family<TRes> {
  _CopyWithStubImpl_Query_family(this._res);

  TRes _res;

  call({
    Query_family_family? family,
    Query_family_personTypes? personTypes,
    String? $__typename,
  }) => _res;

  CopyWith_Query_family_family<TRes> get family =>
      CopyWith_Query_family_family.stub(_res);

  CopyWith_Query_family_personTypes<TRes> get personTypes =>
      CopyWith_Query_family_personTypes.stub(_res);
}

const documentNodeQueryfamily = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'family'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'id')),
          type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'contactsSort')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'FamilyContactSortInput'),
              isNonNull: false,
            ),
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
            name: NameNode(value: 'family'),
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
                  name: NameNode(value: 'FamilyDetails'),
                  directives: [],
                ),
                FieldNode(
                  name: NameNode(value: 'contacts'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                      name: NameNode(value: 'sort'),
                      value: VariableNode(
                        name: NameNode(value: 'contactsSort'),
                      ),
                    ),
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'FamilyContact'),
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
            name: NameNode(value: 'personTypes'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'first'),
                value: IntValueNode(value: '1000'),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'results'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'PersonType'),
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
    fragmentDefinitionFamilyDetails,
    fragmentDefinitionFamilyWithAddress,
    fragmentDefinitionFamily,
    fragmentDefinitionDataCheck,
    fragmentDefinitionFamilyAddress,
    fragmentDefinitionArea,
    fragmentDefinitionStreet,
    fragmentDefinitionFamilyLatestEdit,
    fragmentDefinitionFamilyUser,
    fragmentDefinitionFamilyLatestVisit,
    fragmentDefinitionFamilyLatestFatherVisit,
    fragmentDefinitionFamilyContact,
    fragmentDefinitionPersonType,
  ],
);

class Query_family_family
    implements
        Fragment_FamilyDetails,
        Fragment_FamilyWithAddress,
        Fragment_Family {
  Query_family_family({
    required this.id,
    required this.name,
    this.color,
    required this.userCanEdit,
    this.photoUpdatedAt,
    this.blurhash,
    this.dataCheck,
    this.$__typename = 'Family',
    required this.status,
    this.deceasedSpouseName,
    this.marriageDate,
    this.address,
    this.church,
    this.notes,
    this.latestEdit,
    this.latestVisit,
    this.latestFatherVisit,
    required this.contacts,
  });

  factory Query_family_family.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$userCanEdit = json['userCanEdit'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$dataCheck = json['dataCheck'];
    final l$$__typename = json['__typename'];
    final l$status = json['status'];
    final l$deceasedSpouseName = json['deceasedSpouseName'];
    final l$marriageDate = json['marriageDate'];
    final l$address = json['address'];
    final l$church = json['church'];
    final l$notes = json['notes'];
    final l$latestEdit = json['latestEdit'];
    final l$latestVisit = json['latestVisit'];
    final l$latestFatherVisit = json['latestFatherVisit'];
    final l$contacts = json['contacts'];
    return Query_family_family(
      id: (l$id as String),
      name: (l$name as String),
      color: (l$color as int?),
      userCanEdit: (l$userCanEdit as bool),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      dataCheck: l$dataCheck == null
          ? null
          : Fragment_DataCheck.fromJson((l$dataCheck as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
      status: (l$status as String),
      deceasedSpouseName: (l$deceasedSpouseName as String?),
      marriageDate: l$marriageDate == null
          ? null
          : dateFromString(l$marriageDate),
      address: l$address == null
          ? null
          : Fragment_FamilyAddress.fromJson(
              (l$address as Map<String, dynamic>),
            ),
      church: l$church == null
          ? null
          : Query_family_family_church.fromJson(
              (l$church as Map<String, dynamic>),
            ),
      notes: (l$notes as String?),
      latestEdit: l$latestEdit == null
          ? null
          : Fragment_FamilyLatestEdit.fromJson(
              (l$latestEdit as Map<String, dynamic>),
            ),
      latestVisit: l$latestVisit == null
          ? null
          : Fragment_FamilyLatestVisit.fromJson(
              (l$latestVisit as Map<String, dynamic>),
            ),
      latestFatherVisit: l$latestFatherVisit == null
          ? null
          : Fragment_FamilyLatestFatherVisit.fromJson(
              (l$latestFatherVisit as Map<String, dynamic>),
            ),
      contacts: (l$contacts as List<dynamic>)
          .map(
            (e) => Fragment_FamilyContact.fromJson((e as Map<String, dynamic>)),
          )
          .toList(),
    );
  }

  final String id;

  final String name;

  final int? color;

  final bool userCanEdit;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final Fragment_DataCheck? dataCheck;

  final String $__typename;

  final String status;

  final String? deceasedSpouseName;

  final DateTime? marriageDate;

  final Fragment_FamilyAddress? address;

  final Query_family_family_church? church;

  final String? notes;

  final Fragment_FamilyLatestEdit? latestEdit;

  final Fragment_FamilyLatestVisit? latestVisit;

  final Fragment_FamilyLatestFatherVisit? latestFatherVisit;

  final List<Fragment_FamilyContact> contacts;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$userCanEdit = userCanEdit;
    _resultData['userCanEdit'] = l$userCanEdit;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] = l$photoUpdatedAt == null
        ? null
        : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    final l$dataCheck = dataCheck;
    _resultData['dataCheck'] = l$dataCheck?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$status = status;
    _resultData['status'] = l$status;
    final l$deceasedSpouseName = deceasedSpouseName;
    _resultData['deceasedSpouseName'] = l$deceasedSpouseName;
    final l$marriageDate = marriageDate;
    _resultData['marriageDate'] = l$marriageDate == null
        ? null
        : dateToString(l$marriageDate);
    final l$address = address;
    _resultData['address'] = l$address?.toJson();
    final l$church = church;
    _resultData['church'] = l$church?.toJson();
    final l$notes = notes;
    _resultData['notes'] = l$notes;
    final l$latestEdit = latestEdit;
    _resultData['latestEdit'] = l$latestEdit?.toJson();
    final l$latestVisit = latestVisit;
    _resultData['latestVisit'] = l$latestVisit?.toJson();
    final l$latestFatherVisit = latestFatherVisit;
    _resultData['latestFatherVisit'] = l$latestFatherVisit?.toJson();
    final l$contacts = contacts;
    _resultData['contacts'] = l$contacts.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$userCanEdit = userCanEdit;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$dataCheck = dataCheck;
    final l$$__typename = $__typename;
    final l$status = status;
    final l$deceasedSpouseName = deceasedSpouseName;
    final l$marriageDate = marriageDate;
    final l$address = address;
    final l$church = church;
    final l$notes = notes;
    final l$latestEdit = latestEdit;
    final l$latestVisit = latestVisit;
    final l$latestFatherVisit = latestFatherVisit;
    final l$contacts = contacts;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$userCanEdit,
      l$photoUpdatedAt,
      l$blurhash,
      l$dataCheck,
      l$$__typename,
      l$status,
      l$deceasedSpouseName,
      l$marriageDate,
      l$address,
      l$church,
      l$notes,
      l$latestEdit,
      l$latestVisit,
      l$latestFatherVisit,
      Object.hashAll(l$contacts.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_family_family || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$userCanEdit = userCanEdit;
    final lOther$userCanEdit = other.userCanEdit;
    if (l$userCanEdit != lOther$userCanEdit) {
      return false;
    }
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
      return false;
    }
    final l$blurhash = blurhash;
    final lOther$blurhash = other.blurhash;
    if (l$blurhash != lOther$blurhash) {
      return false;
    }
    final l$dataCheck = dataCheck;
    final lOther$dataCheck = other.dataCheck;
    if (l$dataCheck != lOther$dataCheck) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$deceasedSpouseName = deceasedSpouseName;
    final lOther$deceasedSpouseName = other.deceasedSpouseName;
    if (l$deceasedSpouseName != lOther$deceasedSpouseName) {
      return false;
    }
    final l$marriageDate = marriageDate;
    final lOther$marriageDate = other.marriageDate;
    if (l$marriageDate != lOther$marriageDate) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
      return false;
    }
    final l$church = church;
    final lOther$church = other.church;
    if (l$church != lOther$church) {
      return false;
    }
    final l$notes = notes;
    final lOther$notes = other.notes;
    if (l$notes != lOther$notes) {
      return false;
    }
    final l$latestEdit = latestEdit;
    final lOther$latestEdit = other.latestEdit;
    if (l$latestEdit != lOther$latestEdit) {
      return false;
    }
    final l$latestVisit = latestVisit;
    final lOther$latestVisit = other.latestVisit;
    if (l$latestVisit != lOther$latestVisit) {
      return false;
    }
    final l$latestFatherVisit = latestFatherVisit;
    final lOther$latestFatherVisit = other.latestFatherVisit;
    if (l$latestFatherVisit != lOther$latestFatherVisit) {
      return false;
    }
    final l$contacts = contacts;
    final lOther$contacts = other.contacts;
    if (l$contacts.length != lOther$contacts.length) {
      return false;
    }
    for (int i = 0; i < l$contacts.length; i++) {
      final l$contacts$entry = l$contacts[i];
      final lOther$contacts$entry = lOther$contacts[i];
      if (l$contacts$entry != lOther$contacts$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension_Query_family_family on Query_family_family {
  CopyWith_Query_family_family<Query_family_family> get copyWith =>
      CopyWith_Query_family_family(this, (i) => i);
}

abstract class CopyWith_Query_family_family<TRes> {
  factory CopyWith_Query_family_family(
    Query_family_family instance,
    TRes Function(Query_family_family) then,
  ) = _CopyWithImpl_Query_family_family;

  factory CopyWith_Query_family_family.stub(TRes res) =
      _CopyWithStubImpl_Query_family_family;

  TRes call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Fragment_DataCheck? dataCheck,
    String? $__typename,
    String? status,
    String? deceasedSpouseName,
    DateTime? marriageDate,
    Fragment_FamilyAddress? address,
    Query_family_family_church? church,
    String? notes,
    Fragment_FamilyLatestEdit? latestEdit,
    Fragment_FamilyLatestVisit? latestVisit,
    Fragment_FamilyLatestFatherVisit? latestFatherVisit,
    List<Fragment_FamilyContact>? contacts,
  });
  CopyWith_Fragment_DataCheck<TRes> get dataCheck;
  CopyWith_Fragment_FamilyAddress<TRes> get address;
  CopyWith_Query_family_family_church<TRes> get church;
  CopyWith_Fragment_FamilyLatestEdit<TRes> get latestEdit;
  CopyWith_Fragment_FamilyLatestVisit<TRes> get latestVisit;
  CopyWith_Fragment_FamilyLatestFatherVisit<TRes> get latestFatherVisit;
  TRes contacts(
    Iterable<Fragment_FamilyContact> Function(
      Iterable<CopyWith_Fragment_FamilyContact<Fragment_FamilyContact>>,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_family_family<TRes>
    implements CopyWith_Query_family_family<TRes> {
  _CopyWithImpl_Query_family_family(this._instance, this._then);

  final Query_family_family _instance;

  final TRes Function(Query_family_family) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? userCanEdit = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? dataCheck = _undefined,
    Object? $__typename = _undefined,
    Object? status = _undefined,
    Object? deceasedSpouseName = _undefined,
    Object? marriageDate = _undefined,
    Object? address = _undefined,
    Object? church = _undefined,
    Object? notes = _undefined,
    Object? latestEdit = _undefined,
    Object? latestVisit = _undefined,
    Object? latestFatherVisit = _undefined,
    Object? contacts = _undefined,
  }) => _then(
    Query_family_family(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      color: color == _undefined ? _instance.color : (color as int?),
      userCanEdit: userCanEdit == _undefined || userCanEdit == null
          ? _instance.userCanEdit
          : (userCanEdit as bool),
      photoUpdatedAt: photoUpdatedAt == _undefined
          ? _instance.photoUpdatedAt
          : (photoUpdatedAt as DateTime?),
      blurhash: blurhash == _undefined
          ? _instance.blurhash
          : (blurhash as String?),
      dataCheck: dataCheck == _undefined
          ? _instance.dataCheck
          : (dataCheck as Fragment_DataCheck?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      status: status == _undefined || status == null
          ? _instance.status
          : (status as String),
      deceasedSpouseName: deceasedSpouseName == _undefined
          ? _instance.deceasedSpouseName
          : (deceasedSpouseName as String?),
      marriageDate: marriageDate == _undefined
          ? _instance.marriageDate
          : (marriageDate as DateTime?),
      address: address == _undefined
          ? _instance.address
          : (address as Fragment_FamilyAddress?),
      church: church == _undefined
          ? _instance.church
          : (church as Query_family_family_church?),
      notes: notes == _undefined ? _instance.notes : (notes as String?),
      latestEdit: latestEdit == _undefined
          ? _instance.latestEdit
          : (latestEdit as Fragment_FamilyLatestEdit?),
      latestVisit: latestVisit == _undefined
          ? _instance.latestVisit
          : (latestVisit as Fragment_FamilyLatestVisit?),
      latestFatherVisit: latestFatherVisit == _undefined
          ? _instance.latestFatherVisit
          : (latestFatherVisit as Fragment_FamilyLatestFatherVisit?),
      contacts: contacts == _undefined || contacts == null
          ? _instance.contacts
          : (contacts as List<Fragment_FamilyContact>),
    ),
  );

  CopyWith_Fragment_DataCheck<TRes> get dataCheck {
    final local$dataCheck = _instance.dataCheck;
    return local$dataCheck == null
        ? CopyWith_Fragment_DataCheck.stub(_then(_instance))
        : CopyWith_Fragment_DataCheck(
            local$dataCheck,
            (e) => call(dataCheck: e),
          );
  }

  CopyWith_Fragment_FamilyAddress<TRes> get address {
    final local$address = _instance.address;
    return local$address == null
        ? CopyWith_Fragment_FamilyAddress.stub(_then(_instance))
        : CopyWith_Fragment_FamilyAddress(
            local$address,
            (e) => call(address: e),
          );
  }

  CopyWith_Query_family_family_church<TRes> get church {
    final local$church = _instance.church;
    return local$church == null
        ? CopyWith_Query_family_family_church.stub(_then(_instance))
        : CopyWith_Query_family_family_church(
            local$church,
            (e) => call(church: e),
          );
  }

  CopyWith_Fragment_FamilyLatestEdit<TRes> get latestEdit {
    final local$latestEdit = _instance.latestEdit;
    return local$latestEdit == null
        ? CopyWith_Fragment_FamilyLatestEdit.stub(_then(_instance))
        : CopyWith_Fragment_FamilyLatestEdit(
            local$latestEdit,
            (e) => call(latestEdit: e),
          );
  }

  CopyWith_Fragment_FamilyLatestVisit<TRes> get latestVisit {
    final local$latestVisit = _instance.latestVisit;
    return local$latestVisit == null
        ? CopyWith_Fragment_FamilyLatestVisit.stub(_then(_instance))
        : CopyWith_Fragment_FamilyLatestVisit(
            local$latestVisit,
            (e) => call(latestVisit: e),
          );
  }

  CopyWith_Fragment_FamilyLatestFatherVisit<TRes> get latestFatherVisit {
    final local$latestFatherVisit = _instance.latestFatherVisit;
    return local$latestFatherVisit == null
        ? CopyWith_Fragment_FamilyLatestFatherVisit.stub(_then(_instance))
        : CopyWith_Fragment_FamilyLatestFatherVisit(
            local$latestFatherVisit,
            (e) => call(latestFatherVisit: e),
          );
  }

  TRes contacts(
    Iterable<Fragment_FamilyContact> Function(
      Iterable<CopyWith_Fragment_FamilyContact<Fragment_FamilyContact>>,
    )
    _fn,
  ) => call(
    contacts: _fn(
      _instance.contacts.map(
        (e) => CopyWith_Fragment_FamilyContact(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl_Query_family_family<TRes>
    implements CopyWith_Query_family_family<TRes> {
  _CopyWithStubImpl_Query_family_family(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Fragment_DataCheck? dataCheck,
    String? $__typename,
    String? status,
    String? deceasedSpouseName,
    DateTime? marriageDate,
    Fragment_FamilyAddress? address,
    Query_family_family_church? church,
    String? notes,
    Fragment_FamilyLatestEdit? latestEdit,
    Fragment_FamilyLatestVisit? latestVisit,
    Fragment_FamilyLatestFatherVisit? latestFatherVisit,
    List<Fragment_FamilyContact>? contacts,
  }) => _res;

  CopyWith_Fragment_DataCheck<TRes> get dataCheck =>
      CopyWith_Fragment_DataCheck.stub(_res);

  CopyWith_Fragment_FamilyAddress<TRes> get address =>
      CopyWith_Fragment_FamilyAddress.stub(_res);

  CopyWith_Query_family_family_church<TRes> get church =>
      CopyWith_Query_family_family_church.stub(_res);

  CopyWith_Fragment_FamilyLatestEdit<TRes> get latestEdit =>
      CopyWith_Fragment_FamilyLatestEdit.stub(_res);

  CopyWith_Fragment_FamilyLatestVisit<TRes> get latestVisit =>
      CopyWith_Fragment_FamilyLatestVisit.stub(_res);

  CopyWith_Fragment_FamilyLatestFatherVisit<TRes> get latestFatherVisit =>
      CopyWith_Fragment_FamilyLatestFatherVisit.stub(_res);

  contacts(_fn) => _res;
}

class Query_family_family_church implements Fragment_FamilyDetails_church {
  Query_family_family_church({
    required this.id,
    required this.name,
    this.$__typename = 'Church',
  });

  factory Query_family_family_church.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query_family_family_church(
      id: (l$id as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_family_family_church ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension_Query_family_family_church
    on Query_family_family_church {
  CopyWith_Query_family_family_church<Query_family_family_church>
  get copyWith => CopyWith_Query_family_family_church(this, (i) => i);
}

abstract class CopyWith_Query_family_family_church<TRes> {
  factory CopyWith_Query_family_family_church(
    Query_family_family_church instance,
    TRes Function(Query_family_family_church) then,
  ) = _CopyWithImpl_Query_family_family_church;

  factory CopyWith_Query_family_family_church.stub(TRes res) =
      _CopyWithStubImpl_Query_family_family_church;

  TRes call({String? id, String? name, String? $__typename});
}

class _CopyWithImpl_Query_family_family_church<TRes>
    implements CopyWith_Query_family_family_church<TRes> {
  _CopyWithImpl_Query_family_family_church(this._instance, this._then);

  final Query_family_family_church _instance;

  final TRes Function(Query_family_family_church) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_family_family_church(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Query_family_family_church<TRes>
    implements CopyWith_Query_family_family_church<TRes> {
  _CopyWithStubImpl_Query_family_family_church(this._res);

  TRes _res;

  call({String? id, String? name, String? $__typename}) => _res;
}

class Query_family_personTypes {
  Query_family_personTypes({
    this.results,
    this.$__typename = 'KeysetPageOfPersonType',
  });

  factory Query_family_personTypes.fromJson(Map<String, dynamic> json) {
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query_family_personTypes(
      results: (l$results as List<dynamic>?)
          ?.map(
            (e) => Fragment_PersonType.fromJson((e as Map<String, dynamic>)),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment_PersonType>? results;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$results = results;
    _resultData['results'] = l$results?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$results = results;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$results == null ? null : Object.hashAll(l$results.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_family_personTypes ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension_Query_family_personTypes
    on Query_family_personTypes {
  CopyWith_Query_family_personTypes<Query_family_personTypes> get copyWith =>
      CopyWith_Query_family_personTypes(this, (i) => i);
}

abstract class CopyWith_Query_family_personTypes<TRes> {
  factory CopyWith_Query_family_personTypes(
    Query_family_personTypes instance,
    TRes Function(Query_family_personTypes) then,
  ) = _CopyWithImpl_Query_family_personTypes;

  factory CopyWith_Query_family_personTypes.stub(TRes res) =
      _CopyWithStubImpl_Query_family_personTypes;

  TRes call({List<Fragment_PersonType>? results, String? $__typename});
  TRes results(
    Iterable<Fragment_PersonType>? Function(
      Iterable<CopyWith_Fragment_PersonType<Fragment_PersonType>>?,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_family_personTypes<TRes>
    implements CopyWith_Query_family_personTypes<TRes> {
  _CopyWithImpl_Query_family_personTypes(this._instance, this._then);

  final Query_family_personTypes _instance;

  final TRes Function(Query_family_personTypes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? results = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query_family_personTypes(
          results: results == _undefined
              ? _instance.results
              : (results as List<Fragment_PersonType>?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  TRes results(
    Iterable<Fragment_PersonType>? Function(
      Iterable<CopyWith_Fragment_PersonType<Fragment_PersonType>>?,
    )
    _fn,
  ) => call(
    results: _fn(
      _instance.results?.map((e) => CopyWith_Fragment_PersonType(e, (i) => i)),
    )?.toList(),
  );
}

class _CopyWithStubImpl_Query_family_personTypes<TRes>
    implements CopyWith_Query_family_personTypes<TRes> {
  _CopyWithStubImpl_Query_family_personTypes(this._res);

  TRes _res;

  call({List<Fragment_PersonType>? results, String? $__typename}) => _res;

  results(_fn) => _res;
}

class Variables_Query_familyWithRelatives {
  factory Variables_Query_familyWithRelatives({
    required String id,
    List<Input_FamilySortInput?>? relativesSort,
  }) => Variables_Query_familyWithRelatives._({
    r'id': id,
    if (relativesSort != null) r'relativesSort': relativesSort,
  });

  Variables_Query_familyWithRelatives._(this._$data);

  factory Variables_Query_familyWithRelatives.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    if (data.containsKey('relativesSort')) {
      final l$relativesSort = data['relativesSort'];
      result$data['relativesSort'] = (l$relativesSort as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Input_FamilySortInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    return Variables_Query_familyWithRelatives._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  List<Input_FamilySortInput?>? get relativesSort =>
      (_$data['relativesSort'] as List<Input_FamilySortInput?>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('relativesSort')) {
      final l$relativesSort = relativesSort;
      result$data['relativesSort'] = l$relativesSort
          ?.map((e) => e?.toJson())
          .toList();
    }
    return result$data;
  }

  CopyWith_Variables_Query_familyWithRelatives<
    Variables_Query_familyWithRelatives
  >
  get copyWith => CopyWith_Variables_Query_familyWithRelatives(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_familyWithRelatives ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$relativesSort = relativesSort;
    final lOther$relativesSort = other.relativesSort;
    if (_$data.containsKey('relativesSort') !=
        other._$data.containsKey('relativesSort')) {
      return false;
    }
    if (l$relativesSort != null && lOther$relativesSort != null) {
      if (l$relativesSort.length != lOther$relativesSort.length) {
        return false;
      }
      for (int i = 0; i < l$relativesSort.length; i++) {
        final l$relativesSort$entry = l$relativesSort[i];
        final lOther$relativesSort$entry = lOther$relativesSort[i];
        if (l$relativesSort$entry != lOther$relativesSort$entry) {
          return false;
        }
      }
    } else if (l$relativesSort != lOther$relativesSort) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$relativesSort = relativesSort;
    return Object.hashAll([
      l$id,
      _$data.containsKey('relativesSort')
          ? l$relativesSort == null
                ? null
                : Object.hashAll(l$relativesSort.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith_Variables_Query_familyWithRelatives<TRes> {
  factory CopyWith_Variables_Query_familyWithRelatives(
    Variables_Query_familyWithRelatives instance,
    TRes Function(Variables_Query_familyWithRelatives) then,
  ) = _CopyWithImpl_Variables_Query_familyWithRelatives;

  factory CopyWith_Variables_Query_familyWithRelatives.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_familyWithRelatives;

  TRes call({String? id, List<Input_FamilySortInput?>? relativesSort});
}

class _CopyWithImpl_Variables_Query_familyWithRelatives<TRes>
    implements CopyWith_Variables_Query_familyWithRelatives<TRes> {
  _CopyWithImpl_Variables_Query_familyWithRelatives(this._instance, this._then);

  final Variables_Query_familyWithRelatives _instance;

  final TRes Function(Variables_Query_familyWithRelatives) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? relativesSort = _undefined}) =>
      _then(
        Variables_Query_familyWithRelatives._({
          ..._instance._$data,
          if (id != _undefined && id != null) 'id': (id as String),
          if (relativesSort != _undefined)
            'relativesSort': (relativesSort as List<Input_FamilySortInput?>?),
        }),
      );
}

class _CopyWithStubImpl_Variables_Query_familyWithRelatives<TRes>
    implements CopyWith_Variables_Query_familyWithRelatives<TRes> {
  _CopyWithStubImpl_Variables_Query_familyWithRelatives(this._res);

  TRes _res;

  call({String? id, List<Input_FamilySortInput?>? relativesSort}) => _res;
}

class Query_familyWithRelatives {
  Query_familyWithRelatives({this.family, this.$__typename = 'RootQueryType'});

  factory Query_familyWithRelatives.fromJson(Map<String, dynamic> json) {
    final l$family = json['family'];
    final l$$__typename = json['__typename'];
    return Query_familyWithRelatives(
      family: l$family == null
          ? null
          : Query_familyWithRelatives_family.fromJson(
              (l$family as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_familyWithRelatives_family? family;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$family = family;
    _resultData['family'] = l$family?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$family = family;
    final l$$__typename = $__typename;
    return Object.hashAll([l$family, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_familyWithRelatives ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$family = family;
    final lOther$family = other.family;
    if (l$family != lOther$family) {
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

extension UtilityExtension_Query_familyWithRelatives
    on Query_familyWithRelatives {
  CopyWith_Query_familyWithRelatives<Query_familyWithRelatives> get copyWith =>
      CopyWith_Query_familyWithRelatives(this, (i) => i);
}

abstract class CopyWith_Query_familyWithRelatives<TRes> {
  factory CopyWith_Query_familyWithRelatives(
    Query_familyWithRelatives instance,
    TRes Function(Query_familyWithRelatives) then,
  ) = _CopyWithImpl_Query_familyWithRelatives;

  factory CopyWith_Query_familyWithRelatives.stub(TRes res) =
      _CopyWithStubImpl_Query_familyWithRelatives;

  TRes call({Query_familyWithRelatives_family? family, String? $__typename});
  CopyWith_Query_familyWithRelatives_family<TRes> get family;
}

class _CopyWithImpl_Query_familyWithRelatives<TRes>
    implements CopyWith_Query_familyWithRelatives<TRes> {
  _CopyWithImpl_Query_familyWithRelatives(this._instance, this._then);

  final Query_familyWithRelatives _instance;

  final TRes Function(Query_familyWithRelatives) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? family = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query_familyWithRelatives(
          family: family == _undefined
              ? _instance.family
              : (family as Query_familyWithRelatives_family?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Query_familyWithRelatives_family<TRes> get family {
    final local$family = _instance.family;
    return local$family == null
        ? CopyWith_Query_familyWithRelatives_family.stub(_then(_instance))
        : CopyWith_Query_familyWithRelatives_family(
            local$family,
            (e) => call(family: e),
          );
  }
}

class _CopyWithStubImpl_Query_familyWithRelatives<TRes>
    implements CopyWith_Query_familyWithRelatives<TRes> {
  _CopyWithStubImpl_Query_familyWithRelatives(this._res);

  TRes _res;

  call({Query_familyWithRelatives_family? family, String? $__typename}) => _res;

  CopyWith_Query_familyWithRelatives_family<TRes> get family =>
      CopyWith_Query_familyWithRelatives_family.stub(_res);
}

const documentNodeQueryfamilyWithRelatives = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'familyWithRelatives'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'id')),
          type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'relativesSort')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'FamilySortInput'),
              isNonNull: false,
            ),
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
            name: NameNode(value: 'family'),
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
                  name: NameNode(value: 'Family'),
                  directives: [],
                ),
                FieldNode(
                  name: NameNode(value: 'children'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                      name: NameNode(value: 'sort'),
                      value: VariableNode(
                        name: NameNode(value: 'relativesSort'),
                      ),
                    ),
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'Family'),
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
                  name: NameNode(value: 'parents'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                      name: NameNode(value: 'sort'),
                      value: VariableNode(
                        name: NameNode(value: 'relativesSort'),
                      ),
                    ),
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'Family'),
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
    fragmentDefinitionFamily,
    fragmentDefinitionDataCheck,
  ],
);

class Query_familyWithRelatives_family implements Fragment_Family {
  Query_familyWithRelatives_family({
    required this.id,
    required this.name,
    this.color,
    required this.userCanEdit,
    this.photoUpdatedAt,
    this.blurhash,
    this.dataCheck,
    this.$__typename = 'Family',
    required this.children,
    required this.parents,
  });

  factory Query_familyWithRelatives_family.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$userCanEdit = json['userCanEdit'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$dataCheck = json['dataCheck'];
    final l$$__typename = json['__typename'];
    final l$children = json['children'];
    final l$parents = json['parents'];
    return Query_familyWithRelatives_family(
      id: (l$id as String),
      name: (l$name as String),
      color: (l$color as int?),
      userCanEdit: (l$userCanEdit as bool),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      dataCheck: l$dataCheck == null
          ? null
          : Fragment_DataCheck.fromJson((l$dataCheck as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
      children: (l$children as List<dynamic>)
          .map((e) => Fragment_Family.fromJson((e as Map<String, dynamic>)))
          .toList(),
      parents: (l$parents as List<dynamic>)
          .map((e) => Fragment_Family.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final String id;

  final String name;

  final int? color;

  final bool userCanEdit;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final Fragment_DataCheck? dataCheck;

  final String $__typename;

  final List<Fragment_Family> children;

  final List<Fragment_Family> parents;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$userCanEdit = userCanEdit;
    _resultData['userCanEdit'] = l$userCanEdit;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] = l$photoUpdatedAt == null
        ? null
        : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    final l$dataCheck = dataCheck;
    _resultData['dataCheck'] = l$dataCheck?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$children = children;
    _resultData['children'] = l$children.map((e) => e.toJson()).toList();
    final l$parents = parents;
    _resultData['parents'] = l$parents.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$userCanEdit = userCanEdit;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$dataCheck = dataCheck;
    final l$$__typename = $__typename;
    final l$children = children;
    final l$parents = parents;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$userCanEdit,
      l$photoUpdatedAt,
      l$blurhash,
      l$dataCheck,
      l$$__typename,
      Object.hashAll(l$children.map((v) => v)),
      Object.hashAll(l$parents.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_familyWithRelatives_family ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$userCanEdit = userCanEdit;
    final lOther$userCanEdit = other.userCanEdit;
    if (l$userCanEdit != lOther$userCanEdit) {
      return false;
    }
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
      return false;
    }
    final l$blurhash = blurhash;
    final lOther$blurhash = other.blurhash;
    if (l$blurhash != lOther$blurhash) {
      return false;
    }
    final l$dataCheck = dataCheck;
    final lOther$dataCheck = other.dataCheck;
    if (l$dataCheck != lOther$dataCheck) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$children = children;
    final lOther$children = other.children;
    if (l$children.length != lOther$children.length) {
      return false;
    }
    for (int i = 0; i < l$children.length; i++) {
      final l$children$entry = l$children[i];
      final lOther$children$entry = lOther$children[i];
      if (l$children$entry != lOther$children$entry) {
        return false;
      }
    }
    final l$parents = parents;
    final lOther$parents = other.parents;
    if (l$parents.length != lOther$parents.length) {
      return false;
    }
    for (int i = 0; i < l$parents.length; i++) {
      final l$parents$entry = l$parents[i];
      final lOther$parents$entry = lOther$parents[i];
      if (l$parents$entry != lOther$parents$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension_Query_familyWithRelatives_family
    on Query_familyWithRelatives_family {
  CopyWith_Query_familyWithRelatives_family<Query_familyWithRelatives_family>
  get copyWith => CopyWith_Query_familyWithRelatives_family(this, (i) => i);
}

abstract class CopyWith_Query_familyWithRelatives_family<TRes> {
  factory CopyWith_Query_familyWithRelatives_family(
    Query_familyWithRelatives_family instance,
    TRes Function(Query_familyWithRelatives_family) then,
  ) = _CopyWithImpl_Query_familyWithRelatives_family;

  factory CopyWith_Query_familyWithRelatives_family.stub(TRes res) =
      _CopyWithStubImpl_Query_familyWithRelatives_family;

  TRes call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Fragment_DataCheck? dataCheck,
    String? $__typename,
    List<Fragment_Family>? children,
    List<Fragment_Family>? parents,
  });
  CopyWith_Fragment_DataCheck<TRes> get dataCheck;
  TRes children(
    Iterable<Fragment_Family> Function(
      Iterable<CopyWith_Fragment_Family<Fragment_Family>>,
    )
    _fn,
  );
  TRes parents(
    Iterable<Fragment_Family> Function(
      Iterable<CopyWith_Fragment_Family<Fragment_Family>>,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_familyWithRelatives_family<TRes>
    implements CopyWith_Query_familyWithRelatives_family<TRes> {
  _CopyWithImpl_Query_familyWithRelatives_family(this._instance, this._then);

  final Query_familyWithRelatives_family _instance;

  final TRes Function(Query_familyWithRelatives_family) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? userCanEdit = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? dataCheck = _undefined,
    Object? $__typename = _undefined,
    Object? children = _undefined,
    Object? parents = _undefined,
  }) => _then(
    Query_familyWithRelatives_family(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      color: color == _undefined ? _instance.color : (color as int?),
      userCanEdit: userCanEdit == _undefined || userCanEdit == null
          ? _instance.userCanEdit
          : (userCanEdit as bool),
      photoUpdatedAt: photoUpdatedAt == _undefined
          ? _instance.photoUpdatedAt
          : (photoUpdatedAt as DateTime?),
      blurhash: blurhash == _undefined
          ? _instance.blurhash
          : (blurhash as String?),
      dataCheck: dataCheck == _undefined
          ? _instance.dataCheck
          : (dataCheck as Fragment_DataCheck?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      children: children == _undefined || children == null
          ? _instance.children
          : (children as List<Fragment_Family>),
      parents: parents == _undefined || parents == null
          ? _instance.parents
          : (parents as List<Fragment_Family>),
    ),
  );

  CopyWith_Fragment_DataCheck<TRes> get dataCheck {
    final local$dataCheck = _instance.dataCheck;
    return local$dataCheck == null
        ? CopyWith_Fragment_DataCheck.stub(_then(_instance))
        : CopyWith_Fragment_DataCheck(
            local$dataCheck,
            (e) => call(dataCheck: e),
          );
  }

  TRes children(
    Iterable<Fragment_Family> Function(
      Iterable<CopyWith_Fragment_Family<Fragment_Family>>,
    )
    _fn,
  ) => call(
    children: _fn(
      _instance.children.map((e) => CopyWith_Fragment_Family(e, (i) => i)),
    ).toList(),
  );

  TRes parents(
    Iterable<Fragment_Family> Function(
      Iterable<CopyWith_Fragment_Family<Fragment_Family>>,
    )
    _fn,
  ) => call(
    parents: _fn(
      _instance.parents.map((e) => CopyWith_Fragment_Family(e, (i) => i)),
    ).toList(),
  );
}

class _CopyWithStubImpl_Query_familyWithRelatives_family<TRes>
    implements CopyWith_Query_familyWithRelatives_family<TRes> {
  _CopyWithStubImpl_Query_familyWithRelatives_family(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Fragment_DataCheck? dataCheck,
    String? $__typename,
    List<Fragment_Family>? children,
    List<Fragment_Family>? parents,
  }) => _res;

  CopyWith_Fragment_DataCheck<TRes> get dataCheck =>
      CopyWith_Fragment_DataCheck.stub(_res);

  children(_fn) => _res;

  parents(_fn) => _res;
}
