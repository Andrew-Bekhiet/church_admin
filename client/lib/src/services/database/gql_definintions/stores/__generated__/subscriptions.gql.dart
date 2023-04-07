import '../../../../../../graphql/__generated__/schema.graphql.dart';
import '../../areas/__generated__/fragments.gql.dart';
import '../../families/__generated__/fragments.gql.dart';
import '../../streets/__generated__/fragments.gql.dart';
import 'fragments.gql.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables$Subscription$watchAllStores {
  factory Variables$Subscription$watchAllStores({
    int? limit,
    List<Input$StoresOrderBy>? orderBy,
    List<Input$StoresBoolExp>? where,
  }) =>
      Variables$Subscription$watchAllStores._({
        if (limit != null) r'limit': limit,
        if (orderBy != null) r'orderBy': orderBy,
        if (where != null) r'where': where,
      });

  Variables$Subscription$watchAllStores._(this._$data);

  factory Variables$Subscription$watchAllStores.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map(
              (e) => Input$StoresOrderBy.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map(
              (e) => Input$StoresBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Subscription$watchAllStores._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get limit => (_$data['limit'] as int?);
  List<Input$StoresOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input$StoresOrderBy>?);
  List<Input$StoresBoolExp>? get where =>
      (_$data['where'] as List<Input$StoresBoolExp>?);
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

  CopyWith$Variables$Subscription$watchAllStores<
          Variables$Subscription$watchAllStores>
      get copyWith => CopyWith$Variables$Subscription$watchAllStores(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$watchAllStores) ||
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

abstract class CopyWith$Variables$Subscription$watchAllStores<TRes> {
  factory CopyWith$Variables$Subscription$watchAllStores(
    Variables$Subscription$watchAllStores instance,
    TRes Function(Variables$Subscription$watchAllStores) then,
  ) = _CopyWithImpl$Variables$Subscription$watchAllStores;

  factory CopyWith$Variables$Subscription$watchAllStores.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$watchAllStores;

  TRes call({
    int? limit,
    List<Input$StoresOrderBy>? orderBy,
    List<Input$StoresBoolExp>? where,
  });
}

class _CopyWithImpl$Variables$Subscription$watchAllStores<TRes>
    implements CopyWith$Variables$Subscription$watchAllStores<TRes> {
  _CopyWithImpl$Variables$Subscription$watchAllStores(
    this._instance,
    this._then,
  );

  final Variables$Subscription$watchAllStores _instance;

  final TRes Function(Variables$Subscription$watchAllStores) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? limit = _undefined,
    Object? orderBy = _undefined,
    Object? where = _undefined,
  }) =>
      _then(Variables$Subscription$watchAllStores._({
        ..._instance._$data,
        if (limit != _undefined) 'limit': (limit as int?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input$StoresOrderBy>?),
        if (where != _undefined) 'where': (where as List<Input$StoresBoolExp>?),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$watchAllStores<TRes>
    implements CopyWith$Variables$Subscription$watchAllStores<TRes> {
  _CopyWithStubImpl$Variables$Subscription$watchAllStores(this._res);

  TRes _res;

  call({
    int? limit,
    List<Input$StoresOrderBy>? orderBy,
    List<Input$StoresBoolExp>? where,
  }) =>
      _res;
}

class Subscription$watchAllStores {
  Subscription$watchAllStores({required this.stores});

  factory Subscription$watchAllStores.fromJson(Map<String, dynamic> json) {
    final l$stores = json['stores'];
    return Subscription$watchAllStores(
        stores: (l$stores as List<dynamic>)
            .map((e) => Fragment$Store.fromJson((e as Map<String, dynamic>)))
            .toList());
  }

  final List<Fragment$Store> stores;

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
    if (!(other is Subscription$watchAllStores) ||
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

extension UtilityExtension$Subscription$watchAllStores
    on Subscription$watchAllStores {
  CopyWith$Subscription$watchAllStores<Subscription$watchAllStores>
      get copyWith => CopyWith$Subscription$watchAllStores(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchAllStores<TRes> {
  factory CopyWith$Subscription$watchAllStores(
    Subscription$watchAllStores instance,
    TRes Function(Subscription$watchAllStores) then,
  ) = _CopyWithImpl$Subscription$watchAllStores;

  factory CopyWith$Subscription$watchAllStores.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchAllStores;

  TRes call({List<Fragment$Store>? stores});
  TRes stores(
      Iterable<Fragment$Store> Function(
              Iterable<CopyWith$Fragment$Store<Fragment$Store>>)
          _fn);
}

class _CopyWithImpl$Subscription$watchAllStores<TRes>
    implements CopyWith$Subscription$watchAllStores<TRes> {
  _CopyWithImpl$Subscription$watchAllStores(
    this._instance,
    this._then,
  );

  final Subscription$watchAllStores _instance;

  final TRes Function(Subscription$watchAllStores) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? stores = _undefined}) => _then(Subscription$watchAllStores(
      stores: stores == _undefined || stores == null
          ? _instance.stores
          : (stores as List<Fragment$Store>)));
  TRes stores(
          Iterable<Fragment$Store> Function(
                  Iterable<CopyWith$Fragment$Store<Fragment$Store>>)
              _fn) =>
      call(
          stores: _fn(_instance.stores.map((e) => CopyWith$Fragment$Store(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Subscription$watchAllStores<TRes>
    implements CopyWith$Subscription$watchAllStores<TRes> {
  _CopyWithStubImpl$Subscription$watchAllStores(this._res);

  TRes _res;

  call({List<Fragment$Store>? stores}) => _res;
  stores(_fn) => _res;
}

const documentNodeSubscriptionwatchAllStores = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'watchAllStores'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'limit')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
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
            value: ObjectValueNode(fields: [
          ObjectFieldNode(
            name: NameNode(value: 'name'),
            value: EnumValueNode(name: NameNode(value: 'ASC')),
          )
        ])),
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
    selectionSet: SelectionSetNode(selections: [
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
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: '_and'),
                value: VariableNode(name: NameNode(value: 'where')),
              )
            ]),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
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
        ]),
      )
    ]),
  ),
  fragmentDefinitionStore,
  fragmentDefinitionStoreNoPhoto,
]);

class Variables$Subscription$watchStore {
  factory Variables$Subscription$watchStore({required UuidValue id}) =>
      Variables$Subscription$watchStore._({
        r'id': id,
      });

  Variables$Subscription$watchStore._(this._$data);

  factory Variables$Subscription$watchStore.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Variables$Subscription$watchStore._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith$Variables$Subscription$watchStore<Variables$Subscription$watchStore>
      get copyWith => CopyWith$Variables$Subscription$watchStore(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$watchStore) ||
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

abstract class CopyWith$Variables$Subscription$watchStore<TRes> {
  factory CopyWith$Variables$Subscription$watchStore(
    Variables$Subscription$watchStore instance,
    TRes Function(Variables$Subscription$watchStore) then,
  ) = _CopyWithImpl$Variables$Subscription$watchStore;

  factory CopyWith$Variables$Subscription$watchStore.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$watchStore;

  TRes call({UuidValue? id});
}

class _CopyWithImpl$Variables$Subscription$watchStore<TRes>
    implements CopyWith$Variables$Subscription$watchStore<TRes> {
  _CopyWithImpl$Variables$Subscription$watchStore(
    this._instance,
    this._then,
  );

  final Variables$Subscription$watchStore _instance;

  final TRes Function(Variables$Subscription$watchStore) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Subscription$watchStore._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as UuidValue),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$watchStore<TRes>
    implements CopyWith$Variables$Subscription$watchStore<TRes> {
  _CopyWithStubImpl$Variables$Subscription$watchStore(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Subscription$watchStore {
  Subscription$watchStore({this.storesByPk});

  factory Subscription$watchStore.fromJson(Map<String, dynamic> json) {
    final l$storesByPk = json['storesByPk'];
    return Subscription$watchStore(
        storesByPk: l$storesByPk == null
            ? null
            : Subscription$watchStore$storesByPk.fromJson(
                (l$storesByPk as Map<String, dynamic>)));
  }

  final Subscription$watchStore$storesByPk? storesByPk;

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
    if (!(other is Subscription$watchStore) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Subscription$watchStore on Subscription$watchStore {
  CopyWith$Subscription$watchStore<Subscription$watchStore> get copyWith =>
      CopyWith$Subscription$watchStore(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Subscription$watchStore<TRes> {
  factory CopyWith$Subscription$watchStore(
    Subscription$watchStore instance,
    TRes Function(Subscription$watchStore) then,
  ) = _CopyWithImpl$Subscription$watchStore;

  factory CopyWith$Subscription$watchStore.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchStore;

  TRes call({Subscription$watchStore$storesByPk? storesByPk});
  CopyWith$Subscription$watchStore$storesByPk<TRes> get storesByPk;
}

class _CopyWithImpl$Subscription$watchStore<TRes>
    implements CopyWith$Subscription$watchStore<TRes> {
  _CopyWithImpl$Subscription$watchStore(
    this._instance,
    this._then,
  );

  final Subscription$watchStore _instance;

  final TRes Function(Subscription$watchStore) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? storesByPk = _undefined}) => _then(Subscription$watchStore(
      storesByPk: storesByPk == _undefined
          ? _instance.storesByPk
          : (storesByPk as Subscription$watchStore$storesByPk?)));
  CopyWith$Subscription$watchStore$storesByPk<TRes> get storesByPk {
    final local$storesByPk = _instance.storesByPk;
    return local$storesByPk == null
        ? CopyWith$Subscription$watchStore$storesByPk.stub(_then(_instance))
        : CopyWith$Subscription$watchStore$storesByPk(
            local$storesByPk, (e) => call(storesByPk: e));
  }
}

class _CopyWithStubImpl$Subscription$watchStore<TRes>
    implements CopyWith$Subscription$watchStore<TRes> {
  _CopyWithStubImpl$Subscription$watchStore(this._res);

  TRes _res;

  call({Subscription$watchStore$storesByPk? storesByPk}) => _res;
  CopyWith$Subscription$watchStore$storesByPk<TRes> get storesByPk =>
      CopyWith$Subscription$watchStore$storesByPk.stub(_res);
}

const documentNodeSubscriptionwatchStore = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'watchStore'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'uuid'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'storesByPk'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'Store'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: 'areas'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'orderBy'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'name'),
                    value: EnumValueNode(name: NameNode(value: 'ASC')),
                  )
                ]),
              )
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'Area'),
                directives: [],
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'streets'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'orderBy'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'name'),
                    value: EnumValueNode(name: NameNode(value: 'ASC')),
                  )
                ]),
              )
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'Street'),
                directives: [],
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'lastEdit'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'geolocation'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'family'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
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
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      )
    ]),
  ),
  fragmentDefinitionStore,
  fragmentDefinitionStoreNoPhoto,
  fragmentDefinitionArea,
  fragmentDefinitionAreaNoPhoto,
  fragmentDefinitionStreet,
  fragmentDefinitionStreetNoPhoto,
  fragmentDefinitionFamily,
  fragmentDefinitionFamilyNoPhoto,
]);

class Subscription$watchStore$storesByPk
    implements Fragment$Store, Fragment$StoreNoPhoto {
  Subscription$watchStore$storesByPk({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Stores',
    this.photoUpdatedAt,
    this.areas,
    this.streets,
    this.lastEdit,
    this.geolocation,
    this.family,
  });

  factory Subscription$watchStore$storesByPk.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$areas = json['areas'];
    final l$streets = json['streets'];
    final l$lastEdit = json['lastEdit'];
    final l$geolocation = json['geolocation'];
    final l$family = json['family'];
    return Subscription$watchStore$storesByPk(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      areas: (l$areas as List<dynamic>?)
          ?.map((e) => Fragment$Area.fromJson((e as Map<String, dynamic>)))
          .toList(),
      streets: (l$streets as List<dynamic>?)
          ?.map((e) => Fragment$Street.fromJson((e as Map<String, dynamic>)))
          .toList(),
      lastEdit: (l$lastEdit as Json?),
      geolocation: (l$geolocation as Map<String, dynamic>?),
      family: l$family == null
          ? null
          : Fragment$Family.fromJson((l$family as Map<String, dynamic>)),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final List<Fragment$Area>? areas;

  final List<Fragment$Street>? streets;

  final Json? lastEdit;

  final Map<String, dynamic>? geolocation;

  final Fragment$Family? family;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$areas = areas;
    _resultData['areas'] = l$areas?.map((e) => e.toJson()).toList();
    final l$streets = streets;
    _resultData['streets'] = l$streets?.map((e) => e.toJson()).toList();
    final l$lastEdit = lastEdit;
    _resultData['lastEdit'] = l$lastEdit;
    final l$geolocation = geolocation;
    _resultData['geolocation'] = l$geolocation;
    final l$family = family;
    _resultData['family'] = l$family?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$$__typename = $__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$areas = areas;
    final l$streets = streets;
    final l$lastEdit = lastEdit;
    final l$geolocation = geolocation;
    final l$family = family;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
      l$photoUpdatedAt,
      l$areas == null ? null : Object.hashAll(l$areas.map((v) => v)),
      l$streets == null ? null : Object.hashAll(l$streets.map((v) => v)),
      l$lastEdit,
      l$geolocation,
      l$family,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$watchStore$storesByPk) ||
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
    final l$areas = areas;
    final lOther$areas = other.areas;
    if (l$areas != null && lOther$areas != null) {
      if (l$areas.length != lOther$areas.length) {
        return false;
      }
      for (int i = 0; i < l$areas.length; i++) {
        final l$areas$entry = l$areas[i];
        final lOther$areas$entry = lOther$areas[i];
        if (l$areas$entry != lOther$areas$entry) {
          return false;
        }
      }
    } else if (l$areas != lOther$areas) {
      return false;
    }
    final l$streets = streets;
    final lOther$streets = other.streets;
    if (l$streets != null && lOther$streets != null) {
      if (l$streets.length != lOther$streets.length) {
        return false;
      }
      for (int i = 0; i < l$streets.length; i++) {
        final l$streets$entry = l$streets[i];
        final lOther$streets$entry = lOther$streets[i];
        if (l$streets$entry != lOther$streets$entry) {
          return false;
        }
      }
    } else if (l$streets != lOther$streets) {
      return false;
    }
    final l$lastEdit = lastEdit;
    final lOther$lastEdit = other.lastEdit;
    if (l$lastEdit != lOther$lastEdit) {
      return false;
    }
    final l$geolocation = geolocation;
    final lOther$geolocation = other.geolocation;
    if (l$geolocation != lOther$geolocation) {
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

extension UtilityExtension$Subscription$watchStore$storesByPk
    on Subscription$watchStore$storesByPk {
  CopyWith$Subscription$watchStore$storesByPk<
          Subscription$watchStore$storesByPk>
      get copyWith => CopyWith$Subscription$watchStore$storesByPk(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchStore$storesByPk<TRes> {
  factory CopyWith$Subscription$watchStore$storesByPk(
    Subscription$watchStore$storesByPk instance,
    TRes Function(Subscription$watchStore$storesByPk) then,
  ) = _CopyWithImpl$Subscription$watchStore$storesByPk;

  factory CopyWith$Subscription$watchStore$storesByPk.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchStore$storesByPk;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    List<Fragment$Area>? areas,
    List<Fragment$Street>? streets,
    Json? lastEdit,
    Map<String, dynamic>? geolocation,
    Fragment$Family? family,
  });
  TRes areas(
      Iterable<Fragment$Area>? Function(
              Iterable<CopyWith$Fragment$Area<Fragment$Area>>?)
          _fn);
  TRes streets(
      Iterable<Fragment$Street>? Function(
              Iterable<CopyWith$Fragment$Street<Fragment$Street>>?)
          _fn);
  CopyWith$Fragment$Family<TRes> get family;
}

class _CopyWithImpl$Subscription$watchStore$storesByPk<TRes>
    implements CopyWith$Subscription$watchStore$storesByPk<TRes> {
  _CopyWithImpl$Subscription$watchStore$storesByPk(
    this._instance,
    this._then,
  );

  final Subscription$watchStore$storesByPk _instance;

  final TRes Function(Subscription$watchStore$storesByPk) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? areas = _undefined,
    Object? streets = _undefined,
    Object? lastEdit = _undefined,
    Object? geolocation = _undefined,
    Object? family = _undefined,
  }) =>
      _then(Subscription$watchStore$storesByPk(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        areas: areas == _undefined
            ? _instance.areas
            : (areas as List<Fragment$Area>?),
        streets: streets == _undefined
            ? _instance.streets
            : (streets as List<Fragment$Street>?),
        lastEdit:
            lastEdit == _undefined ? _instance.lastEdit : (lastEdit as Json?),
        geolocation: geolocation == _undefined
            ? _instance.geolocation
            : (geolocation as Map<String, dynamic>?),
        family: family == _undefined
            ? _instance.family
            : (family as Fragment$Family?),
      ));
  TRes areas(
          Iterable<Fragment$Area>? Function(
                  Iterable<CopyWith$Fragment$Area<Fragment$Area>>?)
              _fn) =>
      call(
          areas: _fn(_instance.areas?.map((e) => CopyWith$Fragment$Area(
                e,
                (i) => i,
              )))?.toList());
  TRes streets(
          Iterable<Fragment$Street>? Function(
                  Iterable<CopyWith$Fragment$Street<Fragment$Street>>?)
              _fn) =>
      call(
          streets: _fn(_instance.streets?.map((e) => CopyWith$Fragment$Street(
                e,
                (i) => i,
              )))?.toList());
  CopyWith$Fragment$Family<TRes> get family {
    final local$family = _instance.family;
    return local$family == null
        ? CopyWith$Fragment$Family.stub(_then(_instance))
        : CopyWith$Fragment$Family(local$family, (e) => call(family: e));
  }
}

class _CopyWithStubImpl$Subscription$watchStore$storesByPk<TRes>
    implements CopyWith$Subscription$watchStore$storesByPk<TRes> {
  _CopyWithStubImpl$Subscription$watchStore$storesByPk(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    List<Fragment$Area>? areas,
    List<Fragment$Street>? streets,
    Json? lastEdit,
    Map<String, dynamic>? geolocation,
    Fragment$Family? family,
  }) =>
      _res;
  areas(_fn) => _res;
  streets(_fn) => _res;
  CopyWith$Fragment$Family<TRes> get family =>
      CopyWith$Fragment$Family.stub(_res);
}
