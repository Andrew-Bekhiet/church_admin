import '../../../../../../graphql/__generated__/schema.graphql.dart';
import 'fragments.graphql.dart';

import 'package:gql/ast.dart';

class Variables_Query_personTypes {
  factory Variables_Query_personTypes({
    Input_PersonTypeFilterInput? filter,
    List<Input_PersonTypeSortInput?>? sort,
    int? first,
    String? after,
  }) => Variables_Query_personTypes._({
    if (filter != null) r'filter': filter,
    if (sort != null) r'sort': sort,
    if (first != null) r'first': first,
    if (after != null) r'after': after,
  });

  Variables_Query_personTypes._(this._$data);

  factory Variables_Query_personTypes.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_PersonTypeFilterInput.fromJson(
              (l$filter as Map<String, dynamic>),
            );
    }
    if (data.containsKey('sort')) {
      final l$sort = data['sort'];
      result$data['sort'] = (l$sort as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Input_PersonTypeSortInput.fromJson(
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
    return Variables_Query_personTypes._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_PersonTypeFilterInput? get filter =>
      (_$data['filter'] as Input_PersonTypeFilterInput?);

  List<Input_PersonTypeSortInput?>? get sort =>
      (_$data['sort'] as List<Input_PersonTypeSortInput?>?);

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

  CopyWith_Variables_Query_personTypes<Variables_Query_personTypes>
  get copyWith => CopyWith_Variables_Query_personTypes(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_personTypes ||
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

abstract class CopyWith_Variables_Query_personTypes<TRes> {
  factory CopyWith_Variables_Query_personTypes(
    Variables_Query_personTypes instance,
    TRes Function(Variables_Query_personTypes) then,
  ) = _CopyWithImpl_Variables_Query_personTypes;

  factory CopyWith_Variables_Query_personTypes.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_personTypes;

  TRes call({
    Input_PersonTypeFilterInput? filter,
    List<Input_PersonTypeSortInput?>? sort,
    int? first,
    String? after,
  });
}

class _CopyWithImpl_Variables_Query_personTypes<TRes>
    implements CopyWith_Variables_Query_personTypes<TRes> {
  _CopyWithImpl_Variables_Query_personTypes(this._instance, this._then);

  final Variables_Query_personTypes _instance;

  final TRes Function(Variables_Query_personTypes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? filter = _undefined,
    Object? sort = _undefined,
    Object? first = _undefined,
    Object? after = _undefined,
  }) => _then(
    Variables_Query_personTypes._({
      ..._instance._$data,
      if (filter != _undefined)
        'filter': (filter as Input_PersonTypeFilterInput?),
      if (sort != _undefined)
        'sort': (sort as List<Input_PersonTypeSortInput?>?),
      if (first != _undefined) 'first': (first as int?),
      if (after != _undefined) 'after': (after as String?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_personTypes<TRes>
    implements CopyWith_Variables_Query_personTypes<TRes> {
  _CopyWithStubImpl_Variables_Query_personTypes(this._res);

  TRes _res;

  call({
    Input_PersonTypeFilterInput? filter,
    List<Input_PersonTypeSortInput?>? sort,
    int? first,
    String? after,
  }) => _res;
}

class Query_personTypes {
  Query_personTypes({this.personTypes, this.$__typename = 'RootQueryType'});

  factory Query_personTypes.fromJson(Map<String, dynamic> json) {
    final l$personTypes = json['personTypes'];
    final l$$__typename = json['__typename'];
    return Query_personTypes(
      personTypes: l$personTypes == null
          ? null
          : Query_personTypes_personTypes.fromJson(
              (l$personTypes as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_personTypes_personTypes? personTypes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$personTypes = personTypes;
    _resultData['personTypes'] = l$personTypes?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$personTypes = personTypes;
    final l$$__typename = $__typename;
    return Object.hashAll([l$personTypes, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_personTypes || runtimeType != other.runtimeType) {
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

extension UtilityExtension_Query_personTypes on Query_personTypes {
  CopyWith_Query_personTypes<Query_personTypes> get copyWith =>
      CopyWith_Query_personTypes(this, (i) => i);
}

abstract class CopyWith_Query_personTypes<TRes> {
  factory CopyWith_Query_personTypes(
    Query_personTypes instance,
    TRes Function(Query_personTypes) then,
  ) = _CopyWithImpl_Query_personTypes;

  factory CopyWith_Query_personTypes.stub(TRes res) =
      _CopyWithStubImpl_Query_personTypes;

  TRes call({Query_personTypes_personTypes? personTypes, String? $__typename});
  CopyWith_Query_personTypes_personTypes<TRes> get personTypes;
}

class _CopyWithImpl_Query_personTypes<TRes>
    implements CopyWith_Query_personTypes<TRes> {
  _CopyWithImpl_Query_personTypes(this._instance, this._then);

  final Query_personTypes _instance;

  final TRes Function(Query_personTypes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? personTypes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_personTypes(
      personTypes: personTypes == _undefined
          ? _instance.personTypes
          : (personTypes as Query_personTypes_personTypes?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Query_personTypes_personTypes<TRes> get personTypes {
    final local$personTypes = _instance.personTypes;
    return local$personTypes == null
        ? CopyWith_Query_personTypes_personTypes.stub(_then(_instance))
        : CopyWith_Query_personTypes_personTypes(
            local$personTypes,
            (e) => call(personTypes: e),
          );
  }
}

class _CopyWithStubImpl_Query_personTypes<TRes>
    implements CopyWith_Query_personTypes<TRes> {
  _CopyWithStubImpl_Query_personTypes(this._res);

  TRes _res;

  call({Query_personTypes_personTypes? personTypes, String? $__typename}) =>
      _res;

  CopyWith_Query_personTypes_personTypes<TRes> get personTypes =>
      CopyWith_Query_personTypes_personTypes.stub(_res);
}

const documentNodeQuerypersonTypes = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'personTypes'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'filter')),
          type: NamedTypeNode(
            name: NameNode(value: 'PersonTypeFilterInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'sort')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'PersonTypeSortInput'),
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
            name: NameNode(value: 'personTypes'),
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
                      FieldNode(
                        name: NameNode(value: 'keyset'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
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
    fragmentDefinitionPersonType,
  ],
);

class Query_personTypes_personTypes {
  Query_personTypes_personTypes({
    this.count,
    this.endKeyset,
    this.results,
    this.$__typename = 'KeysetPageOfPersonType',
  });

  factory Query_personTypes_personTypes.fromJson(Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$endKeyset = json['endKeyset'];
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query_personTypes_personTypes(
      count: (l$count as int?),
      endKeyset: (l$endKeyset as String?),
      results: (l$results as List<dynamic>?)
          ?.map(
            (e) => Query_personTypes_personTypes_results.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int? count;

  final String? endKeyset;

  final List<Query_personTypes_personTypes_results>? results;

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
    if (other is! Query_personTypes_personTypes ||
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

extension UtilityExtension_Query_personTypes_personTypes
    on Query_personTypes_personTypes {
  CopyWith_Query_personTypes_personTypes<Query_personTypes_personTypes>
  get copyWith => CopyWith_Query_personTypes_personTypes(this, (i) => i);
}

abstract class CopyWith_Query_personTypes_personTypes<TRes> {
  factory CopyWith_Query_personTypes_personTypes(
    Query_personTypes_personTypes instance,
    TRes Function(Query_personTypes_personTypes) then,
  ) = _CopyWithImpl_Query_personTypes_personTypes;

  factory CopyWith_Query_personTypes_personTypes.stub(TRes res) =
      _CopyWithStubImpl_Query_personTypes_personTypes;

  TRes call({
    int? count,
    String? endKeyset,
    List<Query_personTypes_personTypes_results>? results,
    String? $__typename,
  });
  TRes results(
    Iterable<Query_personTypes_personTypes_results>? Function(
      Iterable<
        CopyWith_Query_personTypes_personTypes_results<
          Query_personTypes_personTypes_results
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_personTypes_personTypes<TRes>
    implements CopyWith_Query_personTypes_personTypes<TRes> {
  _CopyWithImpl_Query_personTypes_personTypes(this._instance, this._then);

  final Query_personTypes_personTypes _instance;

  final TRes Function(Query_personTypes_personTypes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? endKeyset = _undefined,
    Object? results = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_personTypes_personTypes(
      count: count == _undefined ? _instance.count : (count as int?),
      endKeyset: endKeyset == _undefined
          ? _instance.endKeyset
          : (endKeyset as String?),
      results: results == _undefined
          ? _instance.results
          : (results as List<Query_personTypes_personTypes_results>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes results(
    Iterable<Query_personTypes_personTypes_results>? Function(
      Iterable<
        CopyWith_Query_personTypes_personTypes_results<
          Query_personTypes_personTypes_results
        >
      >?,
    )
    _fn,
  ) => call(
    results: _fn(
      _instance.results?.map(
        (e) => CopyWith_Query_personTypes_personTypes_results(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl_Query_personTypes_personTypes<TRes>
    implements CopyWith_Query_personTypes_personTypes<TRes> {
  _CopyWithStubImpl_Query_personTypes_personTypes(this._res);

  TRes _res;

  call({
    int? count,
    String? endKeyset,
    List<Query_personTypes_personTypes_results>? results,
    String? $__typename,
  }) => _res;

  results(_fn) => _res;
}

class Query_personTypes_personTypes_results implements Fragment_PersonType {
  Query_personTypes_personTypes_results({
    this.keyset,
    required this.id,
    required this.name,
    required this.order,
    required this.isFamilyAdmin,
    required this.isHidden,
    this.$__typename = 'PersonType',
  });

  factory Query_personTypes_personTypes_results.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$keyset = json['keyset'];
    final l$id = json['id'];
    final l$name = json['name'];
    final l$order = json['order'];
    final l$isFamilyAdmin = json['isFamilyAdmin'];
    final l$isHidden = json['isHidden'];
    final l$$__typename = json['__typename'];
    return Query_personTypes_personTypes_results(
      keyset: (l$keyset as String?),
      id: (l$id as String),
      name: (l$name as String),
      order: (l$order as int),
      isFamilyAdmin: (l$isFamilyAdmin as bool),
      isHidden: (l$isHidden as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String? keyset;

  final String id;

  final String name;

  final int order;

  final bool isFamilyAdmin;

  final bool isHidden;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$keyset = keyset;
    _resultData['keyset'] = l$keyset;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$order = order;
    _resultData['order'] = l$order;
    final l$isFamilyAdmin = isFamilyAdmin;
    _resultData['isFamilyAdmin'] = l$isFamilyAdmin;
    final l$isHidden = isHidden;
    _resultData['isHidden'] = l$isHidden;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$keyset = keyset;
    final l$id = id;
    final l$name = name;
    final l$order = order;
    final l$isFamilyAdmin = isFamilyAdmin;
    final l$isHidden = isHidden;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$keyset,
      l$id,
      l$name,
      l$order,
      l$isFamilyAdmin,
      l$isHidden,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_personTypes_personTypes_results ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$keyset = keyset;
    final lOther$keyset = other.keyset;
    if (l$keyset != lOther$keyset) {
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
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
      return false;
    }
    final l$isFamilyAdmin = isFamilyAdmin;
    final lOther$isFamilyAdmin = other.isFamilyAdmin;
    if (l$isFamilyAdmin != lOther$isFamilyAdmin) {
      return false;
    }
    final l$isHidden = isHidden;
    final lOther$isHidden = other.isHidden;
    if (l$isHidden != lOther$isHidden) {
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

extension UtilityExtension_Query_personTypes_personTypes_results
    on Query_personTypes_personTypes_results {
  CopyWith_Query_personTypes_personTypes_results<
    Query_personTypes_personTypes_results
  >
  get copyWith =>
      CopyWith_Query_personTypes_personTypes_results(this, (i) => i);
}

abstract class CopyWith_Query_personTypes_personTypes_results<TRes> {
  factory CopyWith_Query_personTypes_personTypes_results(
    Query_personTypes_personTypes_results instance,
    TRes Function(Query_personTypes_personTypes_results) then,
  ) = _CopyWithImpl_Query_personTypes_personTypes_results;

  factory CopyWith_Query_personTypes_personTypes_results.stub(TRes res) =
      _CopyWithStubImpl_Query_personTypes_personTypes_results;

  TRes call({
    String? keyset,
    String? id,
    String? name,
    int? order,
    bool? isFamilyAdmin,
    bool? isHidden,
    String? $__typename,
  });
}

class _CopyWithImpl_Query_personTypes_personTypes_results<TRes>
    implements CopyWith_Query_personTypes_personTypes_results<TRes> {
  _CopyWithImpl_Query_personTypes_personTypes_results(
    this._instance,
    this._then,
  );

  final Query_personTypes_personTypes_results _instance;

  final TRes Function(Query_personTypes_personTypes_results) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? keyset = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? order = _undefined,
    Object? isFamilyAdmin = _undefined,
    Object? isHidden = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_personTypes_personTypes_results(
      keyset: keyset == _undefined ? _instance.keyset : (keyset as String?),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      order: order == _undefined || order == null
          ? _instance.order
          : (order as int),
      isFamilyAdmin: isFamilyAdmin == _undefined || isFamilyAdmin == null
          ? _instance.isFamilyAdmin
          : (isFamilyAdmin as bool),
      isHidden: isHidden == _undefined || isHidden == null
          ? _instance.isHidden
          : (isHidden as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Query_personTypes_personTypes_results<TRes>
    implements CopyWith_Query_personTypes_personTypes_results<TRes> {
  _CopyWithStubImpl_Query_personTypes_personTypes_results(this._res);

  TRes _res;

  call({
    String? keyset,
    String? id,
    String? name,
    int? order,
    bool? isFamilyAdmin,
    bool? isHidden,
    String? $__typename,
  }) => _res;
}
