import '../../../../../../graphql/__generated__/schema.graphql.dart';
import 'fragments.gql.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$deleteStore {
  factory Variables$Mutation$deleteStore({required UuidValue storeId}) =>
      Variables$Mutation$deleteStore._({
        r'storeId': storeId,
      });

  Variables$Mutation$deleteStore._(this._$data);

  factory Variables$Mutation$deleteStore.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$storeId = data['storeId'];
    result$data['storeId'] = stringToUuid(l$storeId);
    return Variables$Mutation$deleteStore._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get storeId => (_$data['storeId'] as UuidValue);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$storeId = storeId;
    result$data['storeId'] = uuidToString(l$storeId);
    return result$data;
  }

  CopyWith$Variables$Mutation$deleteStore<Variables$Mutation$deleteStore>
      get copyWith => CopyWith$Variables$Mutation$deleteStore(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$deleteStore) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$storeId = storeId;
    final lOther$storeId = other.storeId;
    if (l$storeId != lOther$storeId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$storeId = storeId;
    return Object.hashAll([l$storeId]);
  }
}

abstract class CopyWith$Variables$Mutation$deleteStore<TRes> {
  factory CopyWith$Variables$Mutation$deleteStore(
    Variables$Mutation$deleteStore instance,
    TRes Function(Variables$Mutation$deleteStore) then,
  ) = _CopyWithImpl$Variables$Mutation$deleteStore;

  factory CopyWith$Variables$Mutation$deleteStore.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$deleteStore;

  TRes call({UuidValue? storeId});
}

class _CopyWithImpl$Variables$Mutation$deleteStore<TRes>
    implements CopyWith$Variables$Mutation$deleteStore<TRes> {
  _CopyWithImpl$Variables$Mutation$deleteStore(
    this._instance,
    this._then,
  );

  final Variables$Mutation$deleteStore _instance;

  final TRes Function(Variables$Mutation$deleteStore) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? storeId = _undefined}) =>
      _then(Variables$Mutation$deleteStore._({
        ..._instance._$data,
        if (storeId != _undefined && storeId != null)
          'storeId': (storeId as UuidValue),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$deleteStore<TRes>
    implements CopyWith$Variables$Mutation$deleteStore<TRes> {
  _CopyWithStubImpl$Variables$Mutation$deleteStore(this._res);

  TRes _res;

  call({UuidValue? storeId}) => _res;
}

class Mutation$deleteStore {
  Mutation$deleteStore({
    this.deleteStoresByPk,
    this.$__typename = 'mutation_root',
  });

  factory Mutation$deleteStore.fromJson(Map<String, dynamic> json) {
    final l$deleteStoresByPk = json['deleteStoresByPk'];
    final l$$__typename = json['__typename'];
    return Mutation$deleteStore(
      deleteStoresByPk: l$deleteStoresByPk == null
          ? null
          : Fragment$Store.fromJson(
              (l$deleteStoresByPk as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Store? deleteStoresByPk;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteStoresByPk = deleteStoresByPk;
    _resultData['deleteStoresByPk'] = l$deleteStoresByPk?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteStoresByPk = deleteStoresByPk;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteStoresByPk,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$deleteStore) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteStoresByPk = deleteStoresByPk;
    final lOther$deleteStoresByPk = other.deleteStoresByPk;
    if (l$deleteStoresByPk != lOther$deleteStoresByPk) {
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

extension UtilityExtension$Mutation$deleteStore on Mutation$deleteStore {
  CopyWith$Mutation$deleteStore<Mutation$deleteStore> get copyWith =>
      CopyWith$Mutation$deleteStore(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$deleteStore<TRes> {
  factory CopyWith$Mutation$deleteStore(
    Mutation$deleteStore instance,
    TRes Function(Mutation$deleteStore) then,
  ) = _CopyWithImpl$Mutation$deleteStore;

  factory CopyWith$Mutation$deleteStore.stub(TRes res) =
      _CopyWithStubImpl$Mutation$deleteStore;

  TRes call({
    Fragment$Store? deleteStoresByPk,
    String? $__typename,
  });
  CopyWith$Fragment$Store<TRes> get deleteStoresByPk;
}

class _CopyWithImpl$Mutation$deleteStore<TRes>
    implements CopyWith$Mutation$deleteStore<TRes> {
  _CopyWithImpl$Mutation$deleteStore(
    this._instance,
    this._then,
  );

  final Mutation$deleteStore _instance;

  final TRes Function(Mutation$deleteStore) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteStoresByPk = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$deleteStore(
        deleteStoresByPk: deleteStoresByPk == _undefined
            ? _instance.deleteStoresByPk
            : (deleteStoresByPk as Fragment$Store?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$Store<TRes> get deleteStoresByPk {
    final local$deleteStoresByPk = _instance.deleteStoresByPk;
    return local$deleteStoresByPk == null
        ? CopyWith$Fragment$Store.stub(_then(_instance))
        : CopyWith$Fragment$Store(
            local$deleteStoresByPk, (e) => call(deleteStoresByPk: e));
  }
}

class _CopyWithStubImpl$Mutation$deleteStore<TRes>
    implements CopyWith$Mutation$deleteStore<TRes> {
  _CopyWithStubImpl$Mutation$deleteStore(this._res);

  TRes _res;

  call({
    Fragment$Store? deleteStoresByPk,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$Store<TRes> get deleteStoresByPk =>
      CopyWith$Fragment$Store.stub(_res);
}

const documentNodeMutationdeleteStore = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'deleteStore'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'storeId')),
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
        name: NameNode(value: 'deleteStoresByPk'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'storeId')),
          )
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
  fragmentDefinitionStore,
  fragmentDefinitionStoreNoPhoto,
]);

class Variables$Mutation$insertStore {
  factory Variables$Mutation$insertStore(
          {required Input$StoresInsertInput newStore}) =>
      Variables$Mutation$insertStore._({
        r'newStore': newStore,
      });

  Variables$Mutation$insertStore._(this._$data);

  factory Variables$Mutation$insertStore.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$newStore = data['newStore'];
    result$data['newStore'] =
        Input$StoresInsertInput.fromJson((l$newStore as Map<String, dynamic>));
    return Variables$Mutation$insertStore._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$StoresInsertInput get newStore =>
      (_$data['newStore'] as Input$StoresInsertInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$newStore = newStore;
    result$data['newStore'] = l$newStore.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$insertStore<Variables$Mutation$insertStore>
      get copyWith => CopyWith$Variables$Mutation$insertStore(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$insertStore) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$newStore = newStore;
    final lOther$newStore = other.newStore;
    if (l$newStore != lOther$newStore) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$newStore = newStore;
    return Object.hashAll([l$newStore]);
  }
}

abstract class CopyWith$Variables$Mutation$insertStore<TRes> {
  factory CopyWith$Variables$Mutation$insertStore(
    Variables$Mutation$insertStore instance,
    TRes Function(Variables$Mutation$insertStore) then,
  ) = _CopyWithImpl$Variables$Mutation$insertStore;

  factory CopyWith$Variables$Mutation$insertStore.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$insertStore;

  TRes call({Input$StoresInsertInput? newStore});
}

class _CopyWithImpl$Variables$Mutation$insertStore<TRes>
    implements CopyWith$Variables$Mutation$insertStore<TRes> {
  _CopyWithImpl$Variables$Mutation$insertStore(
    this._instance,
    this._then,
  );

  final Variables$Mutation$insertStore _instance;

  final TRes Function(Variables$Mutation$insertStore) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? newStore = _undefined}) =>
      _then(Variables$Mutation$insertStore._({
        ..._instance._$data,
        if (newStore != _undefined && newStore != null)
          'newStore': (newStore as Input$StoresInsertInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$insertStore<TRes>
    implements CopyWith$Variables$Mutation$insertStore<TRes> {
  _CopyWithStubImpl$Variables$Mutation$insertStore(this._res);

  TRes _res;

  call({Input$StoresInsertInput? newStore}) => _res;
}

class Mutation$insertStore {
  Mutation$insertStore({
    this.insertStoresOne,
    this.$__typename = 'mutation_root',
  });

  factory Mutation$insertStore.fromJson(Map<String, dynamic> json) {
    final l$insertStoresOne = json['insertStoresOne'];
    final l$$__typename = json['__typename'];
    return Mutation$insertStore(
      insertStoresOne: l$insertStoresOne == null
          ? null
          : Fragment$Store.fromJson(
              (l$insertStoresOne as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Store? insertStoresOne;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertStoresOne = insertStoresOne;
    _resultData['insertStoresOne'] = l$insertStoresOne?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertStoresOne = insertStoresOne;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$insertStoresOne,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$insertStore) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$insertStoresOne = insertStoresOne;
    final lOther$insertStoresOne = other.insertStoresOne;
    if (l$insertStoresOne != lOther$insertStoresOne) {
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

extension UtilityExtension$Mutation$insertStore on Mutation$insertStore {
  CopyWith$Mutation$insertStore<Mutation$insertStore> get copyWith =>
      CopyWith$Mutation$insertStore(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$insertStore<TRes> {
  factory CopyWith$Mutation$insertStore(
    Mutation$insertStore instance,
    TRes Function(Mutation$insertStore) then,
  ) = _CopyWithImpl$Mutation$insertStore;

  factory CopyWith$Mutation$insertStore.stub(TRes res) =
      _CopyWithStubImpl$Mutation$insertStore;

  TRes call({
    Fragment$Store? insertStoresOne,
    String? $__typename,
  });
  CopyWith$Fragment$Store<TRes> get insertStoresOne;
}

class _CopyWithImpl$Mutation$insertStore<TRes>
    implements CopyWith$Mutation$insertStore<TRes> {
  _CopyWithImpl$Mutation$insertStore(
    this._instance,
    this._then,
  );

  final Mutation$insertStore _instance;

  final TRes Function(Mutation$insertStore) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insertStoresOne = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$insertStore(
        insertStoresOne: insertStoresOne == _undefined
            ? _instance.insertStoresOne
            : (insertStoresOne as Fragment$Store?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$Store<TRes> get insertStoresOne {
    final local$insertStoresOne = _instance.insertStoresOne;
    return local$insertStoresOne == null
        ? CopyWith$Fragment$Store.stub(_then(_instance))
        : CopyWith$Fragment$Store(
            local$insertStoresOne, (e) => call(insertStoresOne: e));
  }
}

class _CopyWithStubImpl$Mutation$insertStore<TRes>
    implements CopyWith$Mutation$insertStore<TRes> {
  _CopyWithStubImpl$Mutation$insertStore(this._res);

  TRes _res;

  call({
    Fragment$Store? insertStoresOne,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$Store<TRes> get insertStoresOne =>
      CopyWith$Fragment$Store.stub(_res);
}

const documentNodeMutationinsertStore = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'insertStore'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'newStore')),
        type: NamedTypeNode(
          name: NameNode(value: 'StoresInsertInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'insertStoresOne'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'object'),
            value: VariableNode(name: NameNode(value: 'newStore')),
          )
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
  fragmentDefinitionStore,
  fragmentDefinitionStoreNoPhoto,
]);

class Variables$Mutation$updateStore {
  factory Variables$Mutation$updateStore({
    required UuidValue storeId,
    required Input$StoresSetInput newStore,
  }) =>
      Variables$Mutation$updateStore._({
        r'storeId': storeId,
        r'newStore': newStore,
      });

  Variables$Mutation$updateStore._(this._$data);

  factory Variables$Mutation$updateStore.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$storeId = data['storeId'];
    result$data['storeId'] = stringToUuid(l$storeId);
    final l$newStore = data['newStore'];
    result$data['newStore'] =
        Input$StoresSetInput.fromJson((l$newStore as Map<String, dynamic>));
    return Variables$Mutation$updateStore._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get storeId => (_$data['storeId'] as UuidValue);
  Input$StoresSetInput get newStore =>
      (_$data['newStore'] as Input$StoresSetInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$storeId = storeId;
    result$data['storeId'] = uuidToString(l$storeId);
    final l$newStore = newStore;
    result$data['newStore'] = l$newStore.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$updateStore<Variables$Mutation$updateStore>
      get copyWith => CopyWith$Variables$Mutation$updateStore(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$updateStore) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$storeId = storeId;
    final lOther$storeId = other.storeId;
    if (l$storeId != lOther$storeId) {
      return false;
    }
    final l$newStore = newStore;
    final lOther$newStore = other.newStore;
    if (l$newStore != lOther$newStore) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$storeId = storeId;
    final l$newStore = newStore;
    return Object.hashAll([
      l$storeId,
      l$newStore,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$updateStore<TRes> {
  factory CopyWith$Variables$Mutation$updateStore(
    Variables$Mutation$updateStore instance,
    TRes Function(Variables$Mutation$updateStore) then,
  ) = _CopyWithImpl$Variables$Mutation$updateStore;

  factory CopyWith$Variables$Mutation$updateStore.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$updateStore;

  TRes call({
    UuidValue? storeId,
    Input$StoresSetInput? newStore,
  });
}

class _CopyWithImpl$Variables$Mutation$updateStore<TRes>
    implements CopyWith$Variables$Mutation$updateStore<TRes> {
  _CopyWithImpl$Variables$Mutation$updateStore(
    this._instance,
    this._then,
  );

  final Variables$Mutation$updateStore _instance;

  final TRes Function(Variables$Mutation$updateStore) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? storeId = _undefined,
    Object? newStore = _undefined,
  }) =>
      _then(Variables$Mutation$updateStore._({
        ..._instance._$data,
        if (storeId != _undefined && storeId != null)
          'storeId': (storeId as UuidValue),
        if (newStore != _undefined && newStore != null)
          'newStore': (newStore as Input$StoresSetInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$updateStore<TRes>
    implements CopyWith$Variables$Mutation$updateStore<TRes> {
  _CopyWithStubImpl$Variables$Mutation$updateStore(this._res);

  TRes _res;

  call({
    UuidValue? storeId,
    Input$StoresSetInput? newStore,
  }) =>
      _res;
}

class Mutation$updateStore {
  Mutation$updateStore({
    this.updateStoresByPk,
    this.$__typename = 'mutation_root',
  });

  factory Mutation$updateStore.fromJson(Map<String, dynamic> json) {
    final l$updateStoresByPk = json['updateStoresByPk'];
    final l$$__typename = json['__typename'];
    return Mutation$updateStore(
      updateStoresByPk: l$updateStoresByPk == null
          ? null
          : Fragment$Store.fromJson(
              (l$updateStoresByPk as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Store? updateStoresByPk;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateStoresByPk = updateStoresByPk;
    _resultData['updateStoresByPk'] = l$updateStoresByPk?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateStoresByPk = updateStoresByPk;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateStoresByPk,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$updateStore) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateStoresByPk = updateStoresByPk;
    final lOther$updateStoresByPk = other.updateStoresByPk;
    if (l$updateStoresByPk != lOther$updateStoresByPk) {
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

extension UtilityExtension$Mutation$updateStore on Mutation$updateStore {
  CopyWith$Mutation$updateStore<Mutation$updateStore> get copyWith =>
      CopyWith$Mutation$updateStore(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$updateStore<TRes> {
  factory CopyWith$Mutation$updateStore(
    Mutation$updateStore instance,
    TRes Function(Mutation$updateStore) then,
  ) = _CopyWithImpl$Mutation$updateStore;

  factory CopyWith$Mutation$updateStore.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updateStore;

  TRes call({
    Fragment$Store? updateStoresByPk,
    String? $__typename,
  });
  CopyWith$Fragment$Store<TRes> get updateStoresByPk;
}

class _CopyWithImpl$Mutation$updateStore<TRes>
    implements CopyWith$Mutation$updateStore<TRes> {
  _CopyWithImpl$Mutation$updateStore(
    this._instance,
    this._then,
  );

  final Mutation$updateStore _instance;

  final TRes Function(Mutation$updateStore) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateStoresByPk = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updateStore(
        updateStoresByPk: updateStoresByPk == _undefined
            ? _instance.updateStoresByPk
            : (updateStoresByPk as Fragment$Store?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$Store<TRes> get updateStoresByPk {
    final local$updateStoresByPk = _instance.updateStoresByPk;
    return local$updateStoresByPk == null
        ? CopyWith$Fragment$Store.stub(_then(_instance))
        : CopyWith$Fragment$Store(
            local$updateStoresByPk, (e) => call(updateStoresByPk: e));
  }
}

class _CopyWithStubImpl$Mutation$updateStore<TRes>
    implements CopyWith$Mutation$updateStore<TRes> {
  _CopyWithStubImpl$Mutation$updateStore(this._res);

  TRes _res;

  call({
    Fragment$Store? updateStoresByPk,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$Store<TRes> get updateStoresByPk =>
      CopyWith$Fragment$Store.stub(_res);
}

const documentNodeMutationupdateStore = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'updateStore'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'storeId')),
        type: NamedTypeNode(
          name: NameNode(value: 'uuid'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'newStore')),
        type: NamedTypeNode(
          name: NameNode(value: 'StoresSetInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateStoresByPk'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'pkColumns'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'storeId')),
              )
            ]),
          ),
          ArgumentNode(
            name: NameNode(value: '_set'),
            value: VariableNode(name: NameNode(value: 'newStore')),
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
  fragmentDefinitionStore,
  fragmentDefinitionStoreNoPhoto,
]);
