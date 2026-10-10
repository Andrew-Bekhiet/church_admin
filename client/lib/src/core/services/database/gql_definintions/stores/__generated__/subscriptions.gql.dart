import '../../../../../graphql/__generated__/schema.graphql.dart';
import '../../areas/__generated__/fragments.gql.dart';
import '../../data_checks/__generated__/fragments.gql.dart';
import '../../families/__generated__/fragments.gql.dart';
import '../../gql/__generated__/fragments.gql.dart';
import '../../streets/__generated__/fragments.gql.dart';
import '../../users/__generated__/fragments.gql.dart';
import 'fragments.gql.dart';
import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Subscription_watchAllStores {
  factory Variables_Subscription_watchAllStores({
    int? limit,
    List<Input_StoresOrderBy>? orderBy,
    List<Input_StoresBoolExp>? where,
  }) => Variables_Subscription_watchAllStores._({
    if (limit != null) r'limit': limit,
    if (orderBy != null) r'orderBy': orderBy,
    if (where != null) r'where': where,
  });

  Variables_Subscription_watchAllStores._(this._$data);

  factory Variables_Subscription_watchAllStores.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map(
            (e) => Input_StoresOrderBy.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map(
            (e) => Input_StoresBoolExp.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    return Variables_Subscription_watchAllStores._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get limit => (_$data['limit'] as int?);

  List<Input_StoresOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input_StoresOrderBy>?);

  List<Input_StoresBoolExp>? get where =>
      (_$data['where'] as List<Input_StoresBoolExp>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('limit')) {
      final l$limit = limit;
      result$data['limit'] = l$limit;
    }
    if (_$data.containsKey('orderBy')) {
      final l$orderBy = orderBy;
      result$data['orderBy'] = l$orderBy?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith_Variables_Subscription_watchAllStores<
    Variables_Subscription_watchAllStores
  >
  get copyWith =>
      CopyWith_Variables_Subscription_watchAllStores(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Subscription_watchAllStores ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$limit = limit;
    final lOther$limit = other.limit;
    if (_$data.containsKey('limit') != other._$data.containsKey('limit')) {
      return false;
    }
    if (l$limit != lOther$limit) {
      return false;
    }
    final l$orderBy = orderBy;
    final lOther$orderBy = other.orderBy;
    if (_$data.containsKey('orderBy') != other._$data.containsKey('orderBy')) {
      return false;
    }
    if (l$orderBy != null && lOther$orderBy != null) {
      if (l$orderBy.length != lOther$orderBy.length) {
        return false;
      }
      for (int i = 0; i < l$orderBy.length; i++) {
        final l$orderBy$entry = l$orderBy[i];
        final lOther$orderBy$entry = lOther$orderBy[i];
        if (l$orderBy$entry != lOther$orderBy$entry) {
          return false;
        }
      }
    } else if (l$orderBy != lOther$orderBy) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (_$data.containsKey('where') != other._$data.containsKey('where')) {
      return false;
    }
    if (l$where != null && lOther$where != null) {
      if (l$where.length != lOther$where.length) {
        return false;
      }
      for (int i = 0; i < l$where.length; i++) {
        final l$where$entry = l$where[i];
        final lOther$where$entry = lOther$where[i];
        if (l$where$entry != lOther$where$entry) {
          return false;
        }
      }
    } else if (l$where != lOther$where) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$limit = limit;
    final l$orderBy = orderBy;
    final l$where = where;
    return Object.hashAll([
      _$data.containsKey('limit') ? l$limit : const {},
      _$data.containsKey('orderBy')
          ? l$orderBy == null
                ? null
                : Object.hashAll(l$orderBy.map((v) => v))
          : const {},
      _$data.containsKey('where')
          ? l$where == null
                ? null
                : Object.hashAll(l$where.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith_Variables_Subscription_watchAllStores<TRes> {
  factory CopyWith_Variables_Subscription_watchAllStores(
    Variables_Subscription_watchAllStores instance,
    TRes Function(Variables_Subscription_watchAllStores) then,
  ) = _CopyWithImpl_Variables_Subscription_watchAllStores;

  factory CopyWith_Variables_Subscription_watchAllStores.stub(TRes res) =
      _CopyWithStubImpl_Variables_Subscription_watchAllStores;

  TRes call({
    int? limit,
    List<Input_StoresOrderBy>? orderBy,
    List<Input_StoresBoolExp>? where,
  });
}

class _CopyWithImpl_Variables_Subscription_watchAllStores<TRes>
    implements CopyWith_Variables_Subscription_watchAllStores<TRes> {
  _CopyWithImpl_Variables_Subscription_watchAllStores(
    this._instance,
    this._then,
  );

  final Variables_Subscription_watchAllStores _instance;

  final TRes Function(Variables_Subscription_watchAllStores) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? limit = _undefined,
    Object? orderBy = _undefined,
    Object? where = _undefined,
  }) => _then(
    Variables_Subscription_watchAllStores._({
      ..._instance._$data,
      if (limit != _undefined) 'limit': (limit as int?),
      if (orderBy != _undefined)
        'orderBy': (orderBy as List<Input_StoresOrderBy>?),
      if (where != _undefined) 'where': (where as List<Input_StoresBoolExp>?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Subscription_watchAllStores<TRes>
    implements CopyWith_Variables_Subscription_watchAllStores<TRes> {
  _CopyWithStubImpl_Variables_Subscription_watchAllStores(this._res);

  TRes _res;

  call({
    int? limit,
    List<Input_StoresOrderBy>? orderBy,
    List<Input_StoresBoolExp>? where,
  }) => _res;
}

class Subscription_watchAllStores {
  Subscription_watchAllStores({required this.stores});

  factory Subscription_watchAllStores.fromJson(Map<String, dynamic> json) {
    final l$stores = json['stores'];
    return Subscription_watchAllStores(
      stores: (l$stores as List<dynamic>)
          .map((e) => Fragment_Store.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final List<Fragment_Store> stores;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$stores = stores;
    _resultData['stores'] = l$stores.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$stores = stores;
    return Object.hashAll([Object.hashAll(l$stores.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Subscription_watchAllStores ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$stores = stores;
    final lOther$stores = other.stores;
    if (l$stores.length != lOther$stores.length) {
      return false;
    }
    for (int i = 0; i < l$stores.length; i++) {
      final l$stores$entry = l$stores[i];
      final lOther$stores$entry = lOther$stores[i];
      if (l$stores$entry != lOther$stores$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension_Subscription_watchAllStores
    on Subscription_watchAllStores {
  CopyWith_Subscription_watchAllStores<Subscription_watchAllStores>
  get copyWith => CopyWith_Subscription_watchAllStores(this, (i) => i);
}

abstract class CopyWith_Subscription_watchAllStores<TRes> {
  factory CopyWith_Subscription_watchAllStores(
    Subscription_watchAllStores instance,
    TRes Function(Subscription_watchAllStores) then,
  ) = _CopyWithImpl_Subscription_watchAllStores;

  factory CopyWith_Subscription_watchAllStores.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchAllStores;

  TRes call({List<Fragment_Store>? stores});
  TRes stores(
    Iterable<Fragment_Store> Function(
      Iterable<CopyWith_Fragment_Store<Fragment_Store>>,
    )
    _fn,
  );
}

class _CopyWithImpl_Subscription_watchAllStores<TRes>
    implements CopyWith_Subscription_watchAllStores<TRes> {
  _CopyWithImpl_Subscription_watchAllStores(this._instance, this._then);

  final Subscription_watchAllStores _instance;

  final TRes Function(Subscription_watchAllStores) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? stores = _undefined}) => _then(
    Subscription_watchAllStores(
      stores: stores == _undefined || stores == null
          ? _instance.stores
          : (stores as List<Fragment_Store>),
    ),
  );

  TRes stores(
    Iterable<Fragment_Store> Function(
      Iterable<CopyWith_Fragment_Store<Fragment_Store>>,
    )
    _fn,
  ) => call(
    stores: _fn(
      _instance.stores.map((e) => CopyWith_Fragment_Store(e, (i) => i)),
    ).toList(),
  );
}

class _CopyWithStubImpl_Subscription_watchAllStores<TRes>
    implements CopyWith_Subscription_watchAllStores<TRes> {
  _CopyWithStubImpl_Subscription_watchAllStores(this._res);

  TRes _res;

  call({List<Fragment_Store>? stores}) => _res;

  stores(_fn) => _res;
}

const documentNodeSubscriptionwatchAllStores = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'watchAllStores'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'limit')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
          defaultValue: DefaultValueNode(value: IntValueNode(value: '200')),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'orderBy')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'StoresOrderBy'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(
            value: ObjectValueNode(
              fields: [
                ObjectFieldNode(
                  name: NameNode(value: 'name'),
                  value: EnumValueNode(name: NameNode(value: 'ASC')),
                ),
              ],
            ),
          ),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'where')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'StoresBoolExp'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: ObjectValueNode(fields: [])),
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
                name: NameNode(value: 'limit'),
                value: VariableNode(name: NameNode(value: 'limit')),
              ),
              ArgumentNode(
                name: NameNode(value: 'orderBy'),
                value: VariableNode(name: NameNode(value: 'orderBy')),
              ),
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: '_and'),
                      value: VariableNode(name: NameNode(value: 'where')),
                    ),
                  ],
                ),
              ),
            ],
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
        ],
      ),
    ),
    fragmentDefinitionStore,
    fragmentDefinitionStoreNoPhoto,
  ],
);

class Variables_Subscription_watchStoresCount {
  factory Variables_Subscription_watchStoresCount({
    List<Input_StoresBoolExp>? where,
    int? limit,
  }) => Variables_Subscription_watchStoresCount._({
    if (where != null) r'where': where,
    if (limit != null) r'limit': limit,
  });

  Variables_Subscription_watchStoresCount._(this._$data);

  factory Variables_Subscription_watchStoresCount.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map(
            (e) => Input_StoresBoolExp.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables_Subscription_watchStoresCount._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_StoresBoolExp>? get where =>
      (_$data['where'] as List<Input_StoresBoolExp>?);

  int? get limit => (_$data['limit'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('limit')) {
      final l$limit = limit;
      result$data['limit'] = l$limit;
    }
    return result$data;
  }

  CopyWith_Variables_Subscription_watchStoresCount<
    Variables_Subscription_watchStoresCount
  >
  get copyWith =>
      CopyWith_Variables_Subscription_watchStoresCount(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Subscription_watchStoresCount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (_$data.containsKey('where') != other._$data.containsKey('where')) {
      return false;
    }
    if (l$where != null && lOther$where != null) {
      if (l$where.length != lOther$where.length) {
        return false;
      }
      for (int i = 0; i < l$where.length; i++) {
        final l$where$entry = l$where[i];
        final lOther$where$entry = lOther$where[i];
        if (l$where$entry != lOther$where$entry) {
          return false;
        }
      }
    } else if (l$where != lOther$where) {
      return false;
    }
    final l$limit = limit;
    final lOther$limit = other.limit;
    if (_$data.containsKey('limit') != other._$data.containsKey('limit')) {
      return false;
    }
    if (l$limit != lOther$limit) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    final l$limit = limit;
    return Object.hashAll([
      _$data.containsKey('where')
          ? l$where == null
                ? null
                : Object.hashAll(l$where.map((v) => v))
          : const {},
      _$data.containsKey('limit') ? l$limit : const {},
    ]);
  }
}

abstract class CopyWith_Variables_Subscription_watchStoresCount<TRes> {
  factory CopyWith_Variables_Subscription_watchStoresCount(
    Variables_Subscription_watchStoresCount instance,
    TRes Function(Variables_Subscription_watchStoresCount) then,
  ) = _CopyWithImpl_Variables_Subscription_watchStoresCount;

  factory CopyWith_Variables_Subscription_watchStoresCount.stub(TRes res) =
      _CopyWithStubImpl_Variables_Subscription_watchStoresCount;

  TRes call({List<Input_StoresBoolExp>? where, int? limit});
}

class _CopyWithImpl_Variables_Subscription_watchStoresCount<TRes>
    implements CopyWith_Variables_Subscription_watchStoresCount<TRes> {
  _CopyWithImpl_Variables_Subscription_watchStoresCount(
    this._instance,
    this._then,
  );

  final Variables_Subscription_watchStoresCount _instance;

  final TRes Function(Variables_Subscription_watchStoresCount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? where = _undefined, Object? limit = _undefined}) => _then(
    Variables_Subscription_watchStoresCount._({
      ..._instance._$data,
      if (where != _undefined) 'where': (where as List<Input_StoresBoolExp>?),
      if (limit != _undefined) 'limit': (limit as int?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Subscription_watchStoresCount<TRes>
    implements CopyWith_Variables_Subscription_watchStoresCount<TRes> {
  _CopyWithStubImpl_Variables_Subscription_watchStoresCount(this._res);

  TRes _res;

  call({List<Input_StoresBoolExp>? where, int? limit}) => _res;
}

class Subscription_watchStoresCount {
  Subscription_watchStoresCount({required this.storesAggregate});

  factory Subscription_watchStoresCount.fromJson(Map<String, dynamic> json) {
    final l$storesAggregate = json['storesAggregate'];
    return Subscription_watchStoresCount(
      storesAggregate: Subscription_watchStoresCount_storesAggregate.fromJson(
        (l$storesAggregate as Map<String, dynamic>),
      ),
    );
  }

  final Subscription_watchStoresCount_storesAggregate storesAggregate;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$storesAggregate = storesAggregate;
    _resultData['storesAggregate'] = l$storesAggregate.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$storesAggregate = storesAggregate;
    return Object.hashAll([l$storesAggregate]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Subscription_watchStoresCount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$storesAggregate = storesAggregate;
    final lOther$storesAggregate = other.storesAggregate;
    if (l$storesAggregate != lOther$storesAggregate) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Subscription_watchStoresCount
    on Subscription_watchStoresCount {
  CopyWith_Subscription_watchStoresCount<Subscription_watchStoresCount>
  get copyWith => CopyWith_Subscription_watchStoresCount(this, (i) => i);
}

abstract class CopyWith_Subscription_watchStoresCount<TRes> {
  factory CopyWith_Subscription_watchStoresCount(
    Subscription_watchStoresCount instance,
    TRes Function(Subscription_watchStoresCount) then,
  ) = _CopyWithImpl_Subscription_watchStoresCount;

  factory CopyWith_Subscription_watchStoresCount.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchStoresCount;

  TRes call({Subscription_watchStoresCount_storesAggregate? storesAggregate});
  CopyWith_Subscription_watchStoresCount_storesAggregate<TRes>
  get storesAggregate;
}

class _CopyWithImpl_Subscription_watchStoresCount<TRes>
    implements CopyWith_Subscription_watchStoresCount<TRes> {
  _CopyWithImpl_Subscription_watchStoresCount(this._instance, this._then);

  final Subscription_watchStoresCount _instance;

  final TRes Function(Subscription_watchStoresCount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? storesAggregate = _undefined}) => _then(
    Subscription_watchStoresCount(
      storesAggregate: storesAggregate == _undefined || storesAggregate == null
          ? _instance.storesAggregate
          : (storesAggregate as Subscription_watchStoresCount_storesAggregate),
    ),
  );

  CopyWith_Subscription_watchStoresCount_storesAggregate<TRes>
  get storesAggregate {
    final local$storesAggregate = _instance.storesAggregate;
    return CopyWith_Subscription_watchStoresCount_storesAggregate(
      local$storesAggregate,
      (e) => call(storesAggregate: e),
    );
  }
}

class _CopyWithStubImpl_Subscription_watchStoresCount<TRes>
    implements CopyWith_Subscription_watchStoresCount<TRes> {
  _CopyWithStubImpl_Subscription_watchStoresCount(this._res);

  TRes _res;

  call({Subscription_watchStoresCount_storesAggregate? storesAggregate}) =>
      _res;

  CopyWith_Subscription_watchStoresCount_storesAggregate<TRes>
  get storesAggregate =>
      CopyWith_Subscription_watchStoresCount_storesAggregate.stub(_res);
}

const documentNodeSubscriptionwatchStoresCount = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'watchStoresCount'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'where')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'StoresBoolExp'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: ObjectValueNode(fields: [])),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'limit')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'storesAggregate'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: '_and'),
                      value: VariableNode(name: NameNode(value: 'where')),
                    ),
                  ],
                ),
              ),
              ArgumentNode(
                name: NameNode(value: 'limit'),
                value: VariableNode(name: NameNode(value: 'limit')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'aggregate'),
                  alias: null,
                  arguments: [],
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
        ],
      ),
    ),
  ],
);

class Subscription_watchStoresCount_storesAggregate {
  Subscription_watchStoresCount_storesAggregate({
    this.aggregate,
    this.$__typename = 'StoresAggregate',
  });

  factory Subscription_watchStoresCount_storesAggregate.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$aggregate = json['aggregate'];
    final l$$__typename = json['__typename'];
    return Subscription_watchStoresCount_storesAggregate(
      aggregate: l$aggregate == null
          ? null
          : Subscription_watchStoresCount_storesAggregate_aggregate.fromJson(
              (l$aggregate as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Subscription_watchStoresCount_storesAggregate_aggregate? aggregate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$aggregate = aggregate;
    _resultData['aggregate'] = l$aggregate?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$aggregate = aggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([l$aggregate, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Subscription_watchStoresCount_storesAggregate ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$aggregate = aggregate;
    final lOther$aggregate = other.aggregate;
    if (l$aggregate != lOther$aggregate) {
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

extension UtilityExtension_Subscription_watchStoresCount_storesAggregate
    on Subscription_watchStoresCount_storesAggregate {
  CopyWith_Subscription_watchStoresCount_storesAggregate<
    Subscription_watchStoresCount_storesAggregate
  >
  get copyWith =>
      CopyWith_Subscription_watchStoresCount_storesAggregate(this, (i) => i);
}

abstract class CopyWith_Subscription_watchStoresCount_storesAggregate<TRes> {
  factory CopyWith_Subscription_watchStoresCount_storesAggregate(
    Subscription_watchStoresCount_storesAggregate instance,
    TRes Function(Subscription_watchStoresCount_storesAggregate) then,
  ) = _CopyWithImpl_Subscription_watchStoresCount_storesAggregate;

  factory CopyWith_Subscription_watchStoresCount_storesAggregate.stub(
    TRes res,
  ) = _CopyWithStubImpl_Subscription_watchStoresCount_storesAggregate;

  TRes call({
    Subscription_watchStoresCount_storesAggregate_aggregate? aggregate,
    String? $__typename,
  });
  CopyWith_Subscription_watchStoresCount_storesAggregate_aggregate<TRes>
  get aggregate;
}

class _CopyWithImpl_Subscription_watchStoresCount_storesAggregate<TRes>
    implements CopyWith_Subscription_watchStoresCount_storesAggregate<TRes> {
  _CopyWithImpl_Subscription_watchStoresCount_storesAggregate(
    this._instance,
    this._then,
  );

  final Subscription_watchStoresCount_storesAggregate _instance;

  final TRes Function(Subscription_watchStoresCount_storesAggregate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aggregate = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Subscription_watchStoresCount_storesAggregate(
      aggregate: aggregate == _undefined
          ? _instance.aggregate
          : (aggregate
                as Subscription_watchStoresCount_storesAggregate_aggregate?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Subscription_watchStoresCount_storesAggregate_aggregate<TRes>
  get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith_Subscription_watchStoresCount_storesAggregate_aggregate.stub(
            _then(_instance),
          )
        : CopyWith_Subscription_watchStoresCount_storesAggregate_aggregate(
            local$aggregate,
            (e) => call(aggregate: e),
          );
  }
}

class _CopyWithStubImpl_Subscription_watchStoresCount_storesAggregate<TRes>
    implements CopyWith_Subscription_watchStoresCount_storesAggregate<TRes> {
  _CopyWithStubImpl_Subscription_watchStoresCount_storesAggregate(this._res);

  TRes _res;

  call({
    Subscription_watchStoresCount_storesAggregate_aggregate? aggregate,
    String? $__typename,
  }) => _res;

  CopyWith_Subscription_watchStoresCount_storesAggregate_aggregate<TRes>
  get aggregate =>
      CopyWith_Subscription_watchStoresCount_storesAggregate_aggregate.stub(
        _res,
      );
}

class Subscription_watchStoresCount_storesAggregate_aggregate {
  Subscription_watchStoresCount_storesAggregate_aggregate({
    required this.count,
    this.$__typename = 'StoresAggregateFields',
  });

  factory Subscription_watchStoresCount_storesAggregate_aggregate.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$count = json['count'];
    final l$$__typename = json['__typename'];
    return Subscription_watchStoresCount_storesAggregate_aggregate(
      count: (l$count as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$$__typename = $__typename;
    return Object.hashAll([l$count, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Subscription_watchStoresCount_storesAggregate_aggregate ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
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

extension UtilityExtension_Subscription_watchStoresCount_storesAggregate_aggregate
    on Subscription_watchStoresCount_storesAggregate_aggregate {
  CopyWith_Subscription_watchStoresCount_storesAggregate_aggregate<
    Subscription_watchStoresCount_storesAggregate_aggregate
  >
  get copyWith =>
      CopyWith_Subscription_watchStoresCount_storesAggregate_aggregate(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Subscription_watchStoresCount_storesAggregate_aggregate<
  TRes
> {
  factory CopyWith_Subscription_watchStoresCount_storesAggregate_aggregate(
    Subscription_watchStoresCount_storesAggregate_aggregate instance,
    TRes Function(Subscription_watchStoresCount_storesAggregate_aggregate) then,
  ) = _CopyWithImpl_Subscription_watchStoresCount_storesAggregate_aggregate;

  factory CopyWith_Subscription_watchStoresCount_storesAggregate_aggregate.stub(
    TRes res,
  ) = _CopyWithStubImpl_Subscription_watchStoresCount_storesAggregate_aggregate;

  TRes call({int? count, String? $__typename});
}

class _CopyWithImpl_Subscription_watchStoresCount_storesAggregate_aggregate<
  TRes
>
    implements
        CopyWith_Subscription_watchStoresCount_storesAggregate_aggregate<TRes> {
  _CopyWithImpl_Subscription_watchStoresCount_storesAggregate_aggregate(
    this._instance,
    this._then,
  );

  final Subscription_watchStoresCount_storesAggregate_aggregate _instance;

  final TRes Function(Subscription_watchStoresCount_storesAggregate_aggregate)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? count = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Subscription_watchStoresCount_storesAggregate_aggregate(
          count: count == _undefined || count == null
              ? _instance.count
              : (count as int),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl_Subscription_watchStoresCount_storesAggregate_aggregate<
  TRes
>
    implements
        CopyWith_Subscription_watchStoresCount_storesAggregate_aggregate<TRes> {
  _CopyWithStubImpl_Subscription_watchStoresCount_storesAggregate_aggregate(
    this._res,
  );

  TRes _res;

  call({int? count, String? $__typename}) => _res;
}

class Variables_Subscription_watchStore {
  factory Variables_Subscription_watchStore({required UuidValue id}) =>
      Variables_Subscription_watchStore._({r'id': id});

  Variables_Subscription_watchStore._(this._$data);

  factory Variables_Subscription_watchStore.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Variables_Subscription_watchStore._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith_Variables_Subscription_watchStore<Variables_Subscription_watchStore>
  get copyWith => CopyWith_Variables_Subscription_watchStore(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Subscription_watchStore ||
        runtimeType != other.runtimeType) {
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

abstract class CopyWith_Variables_Subscription_watchStore<TRes> {
  factory CopyWith_Variables_Subscription_watchStore(
    Variables_Subscription_watchStore instance,
    TRes Function(Variables_Subscription_watchStore) then,
  ) = _CopyWithImpl_Variables_Subscription_watchStore;

  factory CopyWith_Variables_Subscription_watchStore.stub(TRes res) =
      _CopyWithStubImpl_Variables_Subscription_watchStore;

  TRes call({UuidValue? id});
}

class _CopyWithImpl_Variables_Subscription_watchStore<TRes>
    implements CopyWith_Variables_Subscription_watchStore<TRes> {
  _CopyWithImpl_Variables_Subscription_watchStore(this._instance, this._then);

  final Variables_Subscription_watchStore _instance;

  final TRes Function(Variables_Subscription_watchStore) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables_Subscription_watchStore._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Variables_Subscription_watchStore<TRes>
    implements CopyWith_Variables_Subscription_watchStore<TRes> {
  _CopyWithStubImpl_Variables_Subscription_watchStore(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Subscription_watchStore {
  Subscription_watchStore({this.storesByPk});

  factory Subscription_watchStore.fromJson(Map<String, dynamic> json) {
    final l$storesByPk = json['storesByPk'];
    return Subscription_watchStore(
      storesByPk: l$storesByPk == null
          ? null
          : Subscription_watchStore_storesByPk.fromJson(
              (l$storesByPk as Map<String, dynamic>),
            ),
    );
  }

  final Subscription_watchStore_storesByPk? storesByPk;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$storesByPk = storesByPk;
    _resultData['storesByPk'] = l$storesByPk?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$storesByPk = storesByPk;
    return Object.hashAll([l$storesByPk]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Subscription_watchStore || runtimeType != other.runtimeType) {
      return false;
    }
    final l$storesByPk = storesByPk;
    final lOther$storesByPk = other.storesByPk;
    if (l$storesByPk != lOther$storesByPk) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Subscription_watchStore on Subscription_watchStore {
  CopyWith_Subscription_watchStore<Subscription_watchStore> get copyWith =>
      CopyWith_Subscription_watchStore(this, (i) => i);
}

abstract class CopyWith_Subscription_watchStore<TRes> {
  factory CopyWith_Subscription_watchStore(
    Subscription_watchStore instance,
    TRes Function(Subscription_watchStore) then,
  ) = _CopyWithImpl_Subscription_watchStore;

  factory CopyWith_Subscription_watchStore.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchStore;

  TRes call({Subscription_watchStore_storesByPk? storesByPk});
  CopyWith_Subscription_watchStore_storesByPk<TRes> get storesByPk;
}

class _CopyWithImpl_Subscription_watchStore<TRes>
    implements CopyWith_Subscription_watchStore<TRes> {
  _CopyWithImpl_Subscription_watchStore(this._instance, this._then);

  final Subscription_watchStore _instance;

  final TRes Function(Subscription_watchStore) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? storesByPk = _undefined}) => _then(
    Subscription_watchStore(
      storesByPk: storesByPk == _undefined
          ? _instance.storesByPk
          : (storesByPk as Subscription_watchStore_storesByPk?),
    ),
  );

  CopyWith_Subscription_watchStore_storesByPk<TRes> get storesByPk {
    final local$storesByPk = _instance.storesByPk;
    return local$storesByPk == null
        ? CopyWith_Subscription_watchStore_storesByPk.stub(_then(_instance))
        : CopyWith_Subscription_watchStore_storesByPk(
            local$storesByPk,
            (e) => call(storesByPk: e),
          );
  }
}

class _CopyWithStubImpl_Subscription_watchStore<TRes>
    implements CopyWith_Subscription_watchStore<TRes> {
  _CopyWithStubImpl_Subscription_watchStore(this._res);

  TRes _res;

  call({Subscription_watchStore_storesByPk? storesByPk}) => _res;

  CopyWith_Subscription_watchStore_storesByPk<TRes> get storesByPk =>
      CopyWith_Subscription_watchStore_storesByPk.stub(_res);
}

const documentNodeSubscriptionwatchStore = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'watchStore'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'id')),
          type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'storesByPk'),
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
                  name: NameNode(value: 'Store'),
                  directives: [],
                ),
                FieldNode(
                  name: NameNode(value: 'address'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'Address'),
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
                  name: NameNode(value: 'lastEdit'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'LatestEditHistory'),
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
                  name: NameNode(value: 'family'),
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
        ],
      ),
    ),
    fragmentDefinitionStore,
    fragmentDefinitionStoreNoPhoto,
    fragmentDefinitionAddress,
    fragmentDefinitionArea,
    fragmentDefinitionAreaNoPhoto,
    fragmentDefinitionStreet,
    fragmentDefinitionStreetNoPhoto,
    fragmentDefinitionLatestEditHistory,
    fragmentDefinitionUser,
    fragmentDefinitionUserNoPhoto,
    fragmentDefinitionFamily,
    fragmentDefinitionFamilyNoPhoto,
    fragmentDefinitionDataCheck,
  ],
);

class Subscription_watchStore_storesByPk
    implements Fragment_Store, Fragment_StoreNoPhoto {
  Subscription_watchStore_storesByPk({
    required this.id,
    required this.name,
    this.color,
    this.userCanEdit,
    this.$__typename = 'Stores',
    this.photoUpdatedAt,
    this.blurhash,
    this.address,
    this.lastEdit,
    this.family,
  });

  factory Subscription_watchStore_storesByPk.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$userCanEdit = json['userCanEdit'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$address = json['address'];
    final l$lastEdit = json['lastEdit'];
    final l$family = json['family'];
    return Subscription_watchStore_storesByPk(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      userCanEdit: (l$userCanEdit as bool?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      address: l$address == null
          ? null
          : Fragment_Address.fromJson((l$address as Map<String, dynamic>)),
      lastEdit: l$lastEdit == null
          ? null
          : Fragment_LatestEditHistory.fromJson(
              (l$lastEdit as Map<String, dynamic>),
            ),
      family: l$family == null
          ? null
          : Fragment_Family.fromJson((l$family as Map<String, dynamic>)),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final bool? userCanEdit;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final Fragment_Address? address;

  final Fragment_LatestEditHistory? lastEdit;

  final Fragment_Family? family;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$userCanEdit = userCanEdit;
    _resultData['userCanEdit'] = l$userCanEdit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] = l$photoUpdatedAt == null
        ? null
        : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    final l$address = address;
    _resultData['address'] = l$address?.toJson();
    final l$lastEdit = lastEdit;
    _resultData['lastEdit'] = l$lastEdit?.toJson();
    final l$family = family;
    _resultData['family'] = l$family?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$userCanEdit = userCanEdit;
    final l$$__typename = $__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$address = address;
    final l$lastEdit = lastEdit;
    final l$family = family;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$userCanEdit,
      l$$__typename,
      l$photoUpdatedAt,
      l$blurhash,
      l$address,
      l$lastEdit,
      l$family,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Subscription_watchStore_storesByPk ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
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
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
      return false;
    }
    final l$lastEdit = lastEdit;
    final lOther$lastEdit = other.lastEdit;
    if (l$lastEdit != lOther$lastEdit) {
      return false;
    }
    final l$family = family;
    final lOther$family = other.family;
    if (l$family != lOther$family) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Subscription_watchStore_storesByPk
    on Subscription_watchStore_storesByPk {
  CopyWith_Subscription_watchStore_storesByPk<
    Subscription_watchStore_storesByPk
  >
  get copyWith => CopyWith_Subscription_watchStore_storesByPk(this, (i) => i);
}

abstract class CopyWith_Subscription_watchStore_storesByPk<TRes> {
  factory CopyWith_Subscription_watchStore_storesByPk(
    Subscription_watchStore_storesByPk instance,
    TRes Function(Subscription_watchStore_storesByPk) then,
  ) = _CopyWithImpl_Subscription_watchStore_storesByPk;

  factory CopyWith_Subscription_watchStore_storesByPk.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchStore_storesByPk;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Fragment_Address? address,
    Fragment_LatestEditHistory? lastEdit,
    Fragment_Family? family,
  });
  CopyWith_Fragment_Address<TRes> get address;
  CopyWith_Fragment_LatestEditHistory<TRes> get lastEdit;
  CopyWith_Fragment_Family<TRes> get family;
}

class _CopyWithImpl_Subscription_watchStore_storesByPk<TRes>
    implements CopyWith_Subscription_watchStore_storesByPk<TRes> {
  _CopyWithImpl_Subscription_watchStore_storesByPk(this._instance, this._then);

  final Subscription_watchStore_storesByPk _instance;

  final TRes Function(Subscription_watchStore_storesByPk) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? userCanEdit = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? address = _undefined,
    Object? lastEdit = _undefined,
    Object? family = _undefined,
  }) => _then(
    Subscription_watchStore_storesByPk(
      id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      color: color == _undefined ? _instance.color : (color as int?),
      userCanEdit: userCanEdit == _undefined
          ? _instance.userCanEdit
          : (userCanEdit as bool?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      photoUpdatedAt: photoUpdatedAt == _undefined
          ? _instance.photoUpdatedAt
          : (photoUpdatedAt as DateTime?),
      blurhash: blurhash == _undefined
          ? _instance.blurhash
          : (blurhash as String?),
      address: address == _undefined
          ? _instance.address
          : (address as Fragment_Address?),
      lastEdit: lastEdit == _undefined
          ? _instance.lastEdit
          : (lastEdit as Fragment_LatestEditHistory?),
      family: family == _undefined
          ? _instance.family
          : (family as Fragment_Family?),
    ),
  );

  CopyWith_Fragment_Address<TRes> get address {
    final local$address = _instance.address;
    return local$address == null
        ? CopyWith_Fragment_Address.stub(_then(_instance))
        : CopyWith_Fragment_Address(local$address, (e) => call(address: e));
  }

  CopyWith_Fragment_LatestEditHistory<TRes> get lastEdit {
    final local$lastEdit = _instance.lastEdit;
    return local$lastEdit == null
        ? CopyWith_Fragment_LatestEditHistory.stub(_then(_instance))
        : CopyWith_Fragment_LatestEditHistory(
            local$lastEdit,
            (e) => call(lastEdit: e),
          );
  }

  CopyWith_Fragment_Family<TRes> get family {
    final local$family = _instance.family;
    return local$family == null
        ? CopyWith_Fragment_Family.stub(_then(_instance))
        : CopyWith_Fragment_Family(local$family, (e) => call(family: e));
  }
}

class _CopyWithStubImpl_Subscription_watchStore_storesByPk<TRes>
    implements CopyWith_Subscription_watchStore_storesByPk<TRes> {
  _CopyWithStubImpl_Subscription_watchStore_storesByPk(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Fragment_Address? address,
    Fragment_LatestEditHistory? lastEdit,
    Fragment_Family? family,
  }) => _res;

  CopyWith_Fragment_Address<TRes> get address =>
      CopyWith_Fragment_Address.stub(_res);

  CopyWith_Fragment_LatestEditHistory<TRes> get lastEdit =>
      CopyWith_Fragment_LatestEditHistory.stub(_res);

  CopyWith_Fragment_Family<TRes> get family =>
      CopyWith_Fragment_Family.stub(_res);
}
