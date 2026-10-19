import '../../../../../graphql/__generated__/schema.graphql.dart';
import '../../areas/__generated__/fragments.graphql.dart';
import '../../streets/__generated__/fragments.graphql.dart';
import 'fragments.graphql.dart';

import 'package:gql/ast.dart';

class Variables_Query_stores {
  factory Variables_Query_stores({
    Input_StoreFilterInput? filter,
    List<Input_StoreSortInput?>? sort,
    int? first,
    String? after,
  }) => Variables_Query_stores._({
    if (filter != null) r'filter': filter,
    if (sort != null) r'sort': sort,
    if (first != null) r'first': first,
    if (after != null) r'after': after,
  });

  Variables_Query_stores._(this._$data);

  factory Variables_Query_stores.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_StoreFilterInput.fromJson((l$filter as Map<String, dynamic>));
    }
    if (data.containsKey('sort')) {
      final l$sort = data['sort'];
      result$data['sort'] = (l$sort as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Input_StoreSortInput.fromJson((e as Map<String, dynamic>)),
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
    return Variables_Query_stores._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_StoreFilterInput? get filter =>
      (_$data['filter'] as Input_StoreFilterInput?);

  List<Input_StoreSortInput?>? get sort =>
      (_$data['sort'] as List<Input_StoreSortInput?>?);

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

  CopyWith_Variables_Query_stores<Variables_Query_stores> get copyWith =>
      CopyWith_Variables_Query_stores(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_stores || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Variables_Query_stores<TRes> {
  factory CopyWith_Variables_Query_stores(
    Variables_Query_stores instance,
    TRes Function(Variables_Query_stores) then,
  ) = _CopyWithImpl_Variables_Query_stores;

  factory CopyWith_Variables_Query_stores.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_stores;

  TRes call({
    Input_StoreFilterInput? filter,
    List<Input_StoreSortInput?>? sort,
    int? first,
    String? after,
  });
}

class _CopyWithImpl_Variables_Query_stores<TRes>
    implements CopyWith_Variables_Query_stores<TRes> {
  _CopyWithImpl_Variables_Query_stores(this._instance, this._then);

  final Variables_Query_stores _instance;

  final TRes Function(Variables_Query_stores) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? filter = _undefined,
    Object? sort = _undefined,
    Object? first = _undefined,
    Object? after = _undefined,
  }) => _then(
    Variables_Query_stores._({
      ..._instance._$data,
      if (filter != _undefined) 'filter': (filter as Input_StoreFilterInput?),
      if (sort != _undefined) 'sort': (sort as List<Input_StoreSortInput?>?),
      if (first != _undefined) 'first': (first as int?),
      if (after != _undefined) 'after': (after as String?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_stores<TRes>
    implements CopyWith_Variables_Query_stores<TRes> {
  _CopyWithStubImpl_Variables_Query_stores(this._res);

  TRes _res;

  call({
    Input_StoreFilterInput? filter,
    List<Input_StoreSortInput?>? sort,
    int? first,
    String? after,
  }) => _res;
}

class Query_stores {
  Query_stores({this.stores, this.$__typename = 'RootQueryType'});

  factory Query_stores.fromJson(Map<String, dynamic> json) {
    final l$stores = json['stores'];
    final l$$__typename = json['__typename'];
    return Query_stores(
      stores: l$stores == null
          ? null
          : Query_stores_stores.fromJson((l$stores as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_stores_stores? stores;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$stores = stores;
    _resultData['stores'] = l$stores?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$stores = stores;
    final l$$__typename = $__typename;
    return Object.hashAll([l$stores, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_stores || runtimeType != other.runtimeType) {
      return false;
    }
    final l$stores = stores;
    final lOther$stores = other.stores;
    if (l$stores != lOther$stores) {
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

extension UtilityExtension_Query_stores on Query_stores {
  CopyWith_Query_stores<Query_stores> get copyWith =>
      CopyWith_Query_stores(this, (i) => i);
}

abstract class CopyWith_Query_stores<TRes> {
  factory CopyWith_Query_stores(
    Query_stores instance,
    TRes Function(Query_stores) then,
  ) = _CopyWithImpl_Query_stores;

  factory CopyWith_Query_stores.stub(TRes res) = _CopyWithStubImpl_Query_stores;

  TRes call({Query_stores_stores? stores, String? $__typename});
  CopyWith_Query_stores_stores<TRes> get stores;
}

class _CopyWithImpl_Query_stores<TRes> implements CopyWith_Query_stores<TRes> {
  _CopyWithImpl_Query_stores(this._instance, this._then);

  final Query_stores _instance;

  final TRes Function(Query_stores) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? stores = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query_stores(
          stores: stores == _undefined
              ? _instance.stores
              : (stores as Query_stores_stores?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Query_stores_stores<TRes> get stores {
    final local$stores = _instance.stores;
    return local$stores == null
        ? CopyWith_Query_stores_stores.stub(_then(_instance))
        : CopyWith_Query_stores_stores(local$stores, (e) => call(stores: e));
  }
}

class _CopyWithStubImpl_Query_stores<TRes>
    implements CopyWith_Query_stores<TRes> {
  _CopyWithStubImpl_Query_stores(this._res);

  TRes _res;

  call({Query_stores_stores? stores, String? $__typename}) => _res;

  CopyWith_Query_stores_stores<TRes> get stores =>
      CopyWith_Query_stores_stores.stub(_res);
}

const documentNodeQuerystores = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'stores'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'filter')),
          type: NamedTypeNode(
            name: NameNode(value: 'StoreFilterInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'sort')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'StoreSortInput'),
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
            name: NameNode(value: 'stores'),
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
                        name: NameNode(value: 'Store'),
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
    fragmentDefinitionStore,
  ],
);

class Query_stores_stores {
  Query_stores_stores({
    this.count,
    this.endKeyset,
    this.results,
    this.$__typename = 'KeysetPageOfStore',
  });

  factory Query_stores_stores.fromJson(Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$endKeyset = json['endKeyset'];
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query_stores_stores(
      count: (l$count as int?),
      endKeyset: (l$endKeyset as String?),
      results: (l$results as List<dynamic>?)
          ?.map((e) => Fragment_Store.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int? count;

  final String? endKeyset;

  final List<Fragment_Store>? results;

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
    if (other is! Query_stores_stores || runtimeType != other.runtimeType) {
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

extension UtilityExtension_Query_stores_stores on Query_stores_stores {
  CopyWith_Query_stores_stores<Query_stores_stores> get copyWith =>
      CopyWith_Query_stores_stores(this, (i) => i);
}

abstract class CopyWith_Query_stores_stores<TRes> {
  factory CopyWith_Query_stores_stores(
    Query_stores_stores instance,
    TRes Function(Query_stores_stores) then,
  ) = _CopyWithImpl_Query_stores_stores;

  factory CopyWith_Query_stores_stores.stub(TRes res) =
      _CopyWithStubImpl_Query_stores_stores;

  TRes call({
    int? count,
    String? endKeyset,
    List<Fragment_Store>? results,
    String? $__typename,
  });
  TRes results(
    Iterable<Fragment_Store>? Function(
      Iterable<CopyWith_Fragment_Store<Fragment_Store>>?,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_stores_stores<TRes>
    implements CopyWith_Query_stores_stores<TRes> {
  _CopyWithImpl_Query_stores_stores(this._instance, this._then);

  final Query_stores_stores _instance;

  final TRes Function(Query_stores_stores) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? endKeyset = _undefined,
    Object? results = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_stores_stores(
      count: count == _undefined ? _instance.count : (count as int?),
      endKeyset: endKeyset == _undefined
          ? _instance.endKeyset
          : (endKeyset as String?),
      results: results == _undefined
          ? _instance.results
          : (results as List<Fragment_Store>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes results(
    Iterable<Fragment_Store>? Function(
      Iterable<CopyWith_Fragment_Store<Fragment_Store>>?,
    )
    _fn,
  ) => call(
    results: _fn(
      _instance.results?.map((e) => CopyWith_Fragment_Store(e, (i) => i)),
    )?.toList(),
  );
}

class _CopyWithStubImpl_Query_stores_stores<TRes>
    implements CopyWith_Query_stores_stores<TRes> {
  _CopyWithStubImpl_Query_stores_stores(this._res);

  TRes _res;

  call({
    int? count,
    String? endKeyset,
    List<Fragment_Store>? results,
    String? $__typename,
  }) => _res;

  results(_fn) => _res;
}

class Variables_Query_store {
  factory Variables_Query_store({required String id}) =>
      Variables_Query_store._({r'id': id});

  Variables_Query_store._(this._$data);

  factory Variables_Query_store.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables_Query_store._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith_Variables_Query_store<Variables_Query_store> get copyWith =>
      CopyWith_Variables_Query_store(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_store || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Variables_Query_store<TRes> {
  factory CopyWith_Variables_Query_store(
    Variables_Query_store instance,
    TRes Function(Variables_Query_store) then,
  ) = _CopyWithImpl_Variables_Query_store;

  factory CopyWith_Variables_Query_store.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_store;

  TRes call({String? id});
}

class _CopyWithImpl_Variables_Query_store<TRes>
    implements CopyWith_Variables_Query_store<TRes> {
  _CopyWithImpl_Variables_Query_store(this._instance, this._then);

  final Variables_Query_store _instance;

  final TRes Function(Variables_Query_store) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables_Query_store._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_store<TRes>
    implements CopyWith_Variables_Query_store<TRes> {
  _CopyWithStubImpl_Variables_Query_store(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query_store {
  Query_store({this.store, this.$__typename = 'RootQueryType'});

  factory Query_store.fromJson(Map<String, dynamic> json) {
    final l$store = json['store'];
    final l$$__typename = json['__typename'];
    return Query_store(
      store: l$store == null
          ? null
          : Fragment_StoreDetails.fromJson((l$store as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_StoreDetails? store;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$store = store;
    _resultData['store'] = l$store?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$store = store;
    final l$$__typename = $__typename;
    return Object.hashAll([l$store, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_store || runtimeType != other.runtimeType) {
      return false;
    }
    final l$store = store;
    final lOther$store = other.store;
    if (l$store != lOther$store) {
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

extension UtilityExtension_Query_store on Query_store {
  CopyWith_Query_store<Query_store> get copyWith =>
      CopyWith_Query_store(this, (i) => i);
}

abstract class CopyWith_Query_store<TRes> {
  factory CopyWith_Query_store(
    Query_store instance,
    TRes Function(Query_store) then,
  ) = _CopyWithImpl_Query_store;

  factory CopyWith_Query_store.stub(TRes res) = _CopyWithStubImpl_Query_store;

  TRes call({Fragment_StoreDetails? store, String? $__typename});
  CopyWith_Fragment_StoreDetails<TRes> get store;
}

class _CopyWithImpl_Query_store<TRes> implements CopyWith_Query_store<TRes> {
  _CopyWithImpl_Query_store(this._instance, this._then);

  final Query_store _instance;

  final TRes Function(Query_store) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? store = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query_store(
          store: store == _undefined
              ? _instance.store
              : (store as Fragment_StoreDetails?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_StoreDetails<TRes> get store {
    final local$store = _instance.store;
    return local$store == null
        ? CopyWith_Fragment_StoreDetails.stub(_then(_instance))
        : CopyWith_Fragment_StoreDetails(local$store, (e) => call(store: e));
  }
}

class _CopyWithStubImpl_Query_store<TRes>
    implements CopyWith_Query_store<TRes> {
  _CopyWithStubImpl_Query_store(this._res);

  TRes _res;

  call({Fragment_StoreDetails? store, String? $__typename}) => _res;

  CopyWith_Fragment_StoreDetails<TRes> get store =>
      CopyWith_Fragment_StoreDetails.stub(_res);
}

const documentNodeQuerystore = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'store'),
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
            name: NameNode(value: 'store'),
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
                  name: NameNode(value: 'StoreDetails'),
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
    fragmentDefinitionStoreDetails,
    fragmentDefinitionStore,
    fragmentDefinitionStoreAddress,
    fragmentDefinitionArea,
    fragmentDefinitionStreet,
    fragmentDefinitionPlaceLatestEdit,
    fragmentDefinitionPlaceUser,
    fragmentDefinitionStoreAdminFamily,
  ],
);
