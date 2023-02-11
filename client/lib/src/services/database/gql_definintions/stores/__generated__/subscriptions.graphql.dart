import '../../../../../../graphql/__generated__/schema.graphql.dart';
import 'fragments.gql.dart';
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

  static const _undefined = {};

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

  static const _undefined = {};

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
