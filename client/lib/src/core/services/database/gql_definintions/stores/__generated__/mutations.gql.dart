import '../../../../../graphql/__generated__/schema.graphql.dart';
import 'fragments.gql.dart';
import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Mutation_deleteStore {
  factory Variables_Mutation_deleteStore({required UuidValue storeId}) =>
      Variables_Mutation_deleteStore._({
        r'storeId': storeId,
      });

  Variables_Mutation_deleteStore._(this._$data);

  factory Variables_Mutation_deleteStore.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$storeId = data['storeId'];
    result$data['storeId'] = stringToUuid(l$storeId);
    return Variables_Mutation_deleteStore._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get storeId => (_$data['storeId'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$storeId = storeId;
    result$data['storeId'] = uuidToString(l$storeId);
    return result$data;
  }

  CopyWith_Variables_Mutation_deleteStore<Variables_Mutation_deleteStore>
      get copyWith => CopyWith_Variables_Mutation_deleteStore(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_deleteStore ||
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

abstract class CopyWith_Variables_Mutation_deleteStore<TRes> {
  factory CopyWith_Variables_Mutation_deleteStore(
    Variables_Mutation_deleteStore instance,
    TRes Function(Variables_Mutation_deleteStore) then,
  ) = _CopyWithImpl_Variables_Mutation_deleteStore;

  factory CopyWith_Variables_Mutation_deleteStore.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_deleteStore;

  TRes call({UuidValue? storeId});
}

class _CopyWithImpl_Variables_Mutation_deleteStore<TRes>
    implements CopyWith_Variables_Mutation_deleteStore<TRes> {
  _CopyWithImpl_Variables_Mutation_deleteStore(
    this._instance,
    this._then,
  );

  final Variables_Mutation_deleteStore _instance;

  final TRes Function(Variables_Mutation_deleteStore) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? storeId = _undefined}) =>
      _then(Variables_Mutation_deleteStore._({
        ..._instance._$data,
        if (storeId != _undefined && storeId != null)
          'storeId': (storeId as UuidValue),
      }));
}

class _CopyWithStubImpl_Variables_Mutation_deleteStore<TRes>
    implements CopyWith_Variables_Mutation_deleteStore<TRes> {
  _CopyWithStubImpl_Variables_Mutation_deleteStore(this._res);

  TRes _res;

  call({UuidValue? storeId}) => _res;
}

class Mutation_deleteStore {
  Mutation_deleteStore({
    this.deleteStoresByPk,
    this.$__typename = 'mutation_root',
  });

  factory Mutation_deleteStore.fromJson(Map<String, dynamic> json) {
    final l$deleteStoresByPk = json['deleteStoresByPk'];
    final l$$__typename = json['__typename'];
    return Mutation_deleteStore(
      deleteStoresByPk: l$deleteStoresByPk == null
          ? null
          : Fragment_Store.fromJson(
              (l$deleteStoresByPk as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Store? deleteStoresByPk;

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
    if (other is! Mutation_deleteStore || runtimeType != other.runtimeType) {
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

extension UtilityExtension_Mutation_deleteStore on Mutation_deleteStore {
  CopyWith_Mutation_deleteStore<Mutation_deleteStore> get copyWith =>
      CopyWith_Mutation_deleteStore(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Mutation_deleteStore<TRes> {
  factory CopyWith_Mutation_deleteStore(
    Mutation_deleteStore instance,
    TRes Function(Mutation_deleteStore) then,
  ) = _CopyWithImpl_Mutation_deleteStore;

  factory CopyWith_Mutation_deleteStore.stub(TRes res) =
      _CopyWithStubImpl_Mutation_deleteStore;

  TRes call({
    Fragment_Store? deleteStoresByPk,
    String? $__typename,
  });
  CopyWith_Fragment_Store<TRes> get deleteStoresByPk;
}

class _CopyWithImpl_Mutation_deleteStore<TRes>
    implements CopyWith_Mutation_deleteStore<TRes> {
  _CopyWithImpl_Mutation_deleteStore(
    this._instance,
    this._then,
  );

  final Mutation_deleteStore _instance;

  final TRes Function(Mutation_deleteStore) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteStoresByPk = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation_deleteStore(
        deleteStoresByPk: deleteStoresByPk == _undefined
            ? _instance.deleteStoresByPk
            : (deleteStoresByPk as Fragment_Store?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_Store<TRes> get deleteStoresByPk {
    final local$deleteStoresByPk = _instance.deleteStoresByPk;
    return local$deleteStoresByPk == null
        ? CopyWith_Fragment_Store.stub(_then(_instance))
        : CopyWith_Fragment_Store(
            local$deleteStoresByPk, (e) => call(deleteStoresByPk: e));
  }
}

class _CopyWithStubImpl_Mutation_deleteStore<TRes>
    implements CopyWith_Mutation_deleteStore<TRes> {
  _CopyWithStubImpl_Mutation_deleteStore(this._res);

  TRes _res;

  call({
    Fragment_Store? deleteStoresByPk,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_Store<TRes> get deleteStoresByPk =>
      CopyWith_Fragment_Store.stub(_res);
}

const documentNodeMutationdeleteStore = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'deleteStore'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'storeId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Uuid'),
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

class Variables_Mutation_insertStore {
  factory Variables_Mutation_insertStore(
          {required Input_StoresInsertInput newStore}) =>
      Variables_Mutation_insertStore._({
        r'newStore': newStore,
      });

  Variables_Mutation_insertStore._(this._$data);

  factory Variables_Mutation_insertStore.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$newStore = data['newStore'];
    result$data['newStore'] =
        Input_StoresInsertInput.fromJson((l$newStore as Map<String, dynamic>));
    return Variables_Mutation_insertStore._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_StoresInsertInput get newStore =>
      (_$data['newStore'] as Input_StoresInsertInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$newStore = newStore;
    result$data['newStore'] = l$newStore.toJson();
    return result$data;
  }

  CopyWith_Variables_Mutation_insertStore<Variables_Mutation_insertStore>
      get copyWith => CopyWith_Variables_Mutation_insertStore(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_insertStore ||
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

abstract class CopyWith_Variables_Mutation_insertStore<TRes> {
  factory CopyWith_Variables_Mutation_insertStore(
    Variables_Mutation_insertStore instance,
    TRes Function(Variables_Mutation_insertStore) then,
  ) = _CopyWithImpl_Variables_Mutation_insertStore;

  factory CopyWith_Variables_Mutation_insertStore.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_insertStore;

  TRes call({Input_StoresInsertInput? newStore});
}

class _CopyWithImpl_Variables_Mutation_insertStore<TRes>
    implements CopyWith_Variables_Mutation_insertStore<TRes> {
  _CopyWithImpl_Variables_Mutation_insertStore(
    this._instance,
    this._then,
  );

  final Variables_Mutation_insertStore _instance;

  final TRes Function(Variables_Mutation_insertStore) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? newStore = _undefined}) =>
      _then(Variables_Mutation_insertStore._({
        ..._instance._$data,
        if (newStore != _undefined && newStore != null)
          'newStore': (newStore as Input_StoresInsertInput),
      }));
}

class _CopyWithStubImpl_Variables_Mutation_insertStore<TRes>
    implements CopyWith_Variables_Mutation_insertStore<TRes> {
  _CopyWithStubImpl_Variables_Mutation_insertStore(this._res);

  TRes _res;

  call({Input_StoresInsertInput? newStore}) => _res;
}

class Mutation_insertStore {
  Mutation_insertStore({
    this.insertStoresOne,
    this.$__typename = 'mutation_root',
  });

  factory Mutation_insertStore.fromJson(Map<String, dynamic> json) {
    final l$insertStoresOne = json['insertStoresOne'];
    final l$$__typename = json['__typename'];
    return Mutation_insertStore(
      insertStoresOne: l$insertStoresOne == null
          ? null
          : Fragment_Store.fromJson(
              (l$insertStoresOne as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Store? insertStoresOne;

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
    if (other is! Mutation_insertStore || runtimeType != other.runtimeType) {
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

extension UtilityExtension_Mutation_insertStore on Mutation_insertStore {
  CopyWith_Mutation_insertStore<Mutation_insertStore> get copyWith =>
      CopyWith_Mutation_insertStore(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Mutation_insertStore<TRes> {
  factory CopyWith_Mutation_insertStore(
    Mutation_insertStore instance,
    TRes Function(Mutation_insertStore) then,
  ) = _CopyWithImpl_Mutation_insertStore;

  factory CopyWith_Mutation_insertStore.stub(TRes res) =
      _CopyWithStubImpl_Mutation_insertStore;

  TRes call({
    Fragment_Store? insertStoresOne,
    String? $__typename,
  });
  CopyWith_Fragment_Store<TRes> get insertStoresOne;
}

class _CopyWithImpl_Mutation_insertStore<TRes>
    implements CopyWith_Mutation_insertStore<TRes> {
  _CopyWithImpl_Mutation_insertStore(
    this._instance,
    this._then,
  );

  final Mutation_insertStore _instance;

  final TRes Function(Mutation_insertStore) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insertStoresOne = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation_insertStore(
        insertStoresOne: insertStoresOne == _undefined
            ? _instance.insertStoresOne
            : (insertStoresOne as Fragment_Store?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_Store<TRes> get insertStoresOne {
    final local$insertStoresOne = _instance.insertStoresOne;
    return local$insertStoresOne == null
        ? CopyWith_Fragment_Store.stub(_then(_instance))
        : CopyWith_Fragment_Store(
            local$insertStoresOne, (e) => call(insertStoresOne: e));
  }
}

class _CopyWithStubImpl_Mutation_insertStore<TRes>
    implements CopyWith_Mutation_insertStore<TRes> {
  _CopyWithStubImpl_Mutation_insertStore(this._res);

  TRes _res;

  call({
    Fragment_Store? insertStoresOne,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_Store<TRes> get insertStoresOne =>
      CopyWith_Fragment_Store.stub(_res);
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

class Variables_Mutation_updateStore {
  factory Variables_Mutation_updateStore({
    required UuidValue storeId,
    required Input_StoresSetInput newStore,
  }) =>
      Variables_Mutation_updateStore._({
        r'storeId': storeId,
        r'newStore': newStore,
      });

  Variables_Mutation_updateStore._(this._$data);

  factory Variables_Mutation_updateStore.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$storeId = data['storeId'];
    result$data['storeId'] = stringToUuid(l$storeId);
    final l$newStore = data['newStore'];
    result$data['newStore'] =
        Input_StoresSetInput.fromJson((l$newStore as Map<String, dynamic>));
    return Variables_Mutation_updateStore._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get storeId => (_$data['storeId'] as UuidValue);

  Input_StoresSetInput get newStore =>
      (_$data['newStore'] as Input_StoresSetInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$storeId = storeId;
    result$data['storeId'] = uuidToString(l$storeId);
    final l$newStore = newStore;
    result$data['newStore'] = l$newStore.toJson();
    return result$data;
  }

  CopyWith_Variables_Mutation_updateStore<Variables_Mutation_updateStore>
      get copyWith => CopyWith_Variables_Mutation_updateStore(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_updateStore ||
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

abstract class CopyWith_Variables_Mutation_updateStore<TRes> {
  factory CopyWith_Variables_Mutation_updateStore(
    Variables_Mutation_updateStore instance,
    TRes Function(Variables_Mutation_updateStore) then,
  ) = _CopyWithImpl_Variables_Mutation_updateStore;

  factory CopyWith_Variables_Mutation_updateStore.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_updateStore;

  TRes call({
    UuidValue? storeId,
    Input_StoresSetInput? newStore,
  });
}

class _CopyWithImpl_Variables_Mutation_updateStore<TRes>
    implements CopyWith_Variables_Mutation_updateStore<TRes> {
  _CopyWithImpl_Variables_Mutation_updateStore(
    this._instance,
    this._then,
  );

  final Variables_Mutation_updateStore _instance;

  final TRes Function(Variables_Mutation_updateStore) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? storeId = _undefined,
    Object? newStore = _undefined,
  }) =>
      _then(Variables_Mutation_updateStore._({
        ..._instance._$data,
        if (storeId != _undefined && storeId != null)
          'storeId': (storeId as UuidValue),
        if (newStore != _undefined && newStore != null)
          'newStore': (newStore as Input_StoresSetInput),
      }));
}

class _CopyWithStubImpl_Variables_Mutation_updateStore<TRes>
    implements CopyWith_Variables_Mutation_updateStore<TRes> {
  _CopyWithStubImpl_Variables_Mutation_updateStore(this._res);

  TRes _res;

  call({
    UuidValue? storeId,
    Input_StoresSetInput? newStore,
  }) =>
      _res;
}

class Mutation_updateStore {
  Mutation_updateStore({
    this.updateStoresByPk,
    this.$__typename = 'mutation_root',
  });

  factory Mutation_updateStore.fromJson(Map<String, dynamic> json) {
    final l$updateStoresByPk = json['updateStoresByPk'];
    final l$$__typename = json['__typename'];
    return Mutation_updateStore(
      updateStoresByPk: l$updateStoresByPk == null
          ? null
          : Fragment_Store.fromJson(
              (l$updateStoresByPk as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Store? updateStoresByPk;

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
    if (other is! Mutation_updateStore || runtimeType != other.runtimeType) {
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

extension UtilityExtension_Mutation_updateStore on Mutation_updateStore {
  CopyWith_Mutation_updateStore<Mutation_updateStore> get copyWith =>
      CopyWith_Mutation_updateStore(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Mutation_updateStore<TRes> {
  factory CopyWith_Mutation_updateStore(
    Mutation_updateStore instance,
    TRes Function(Mutation_updateStore) then,
  ) = _CopyWithImpl_Mutation_updateStore;

  factory CopyWith_Mutation_updateStore.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updateStore;

  TRes call({
    Fragment_Store? updateStoresByPk,
    String? $__typename,
  });
  CopyWith_Fragment_Store<TRes> get updateStoresByPk;
}

class _CopyWithImpl_Mutation_updateStore<TRes>
    implements CopyWith_Mutation_updateStore<TRes> {
  _CopyWithImpl_Mutation_updateStore(
    this._instance,
    this._then,
  );

  final Mutation_updateStore _instance;

  final TRes Function(Mutation_updateStore) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateStoresByPk = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation_updateStore(
        updateStoresByPk: updateStoresByPk == _undefined
            ? _instance.updateStoresByPk
            : (updateStoresByPk as Fragment_Store?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_Store<TRes> get updateStoresByPk {
    final local$updateStoresByPk = _instance.updateStoresByPk;
    return local$updateStoresByPk == null
        ? CopyWith_Fragment_Store.stub(_then(_instance))
        : CopyWith_Fragment_Store(
            local$updateStoresByPk, (e) => call(updateStoresByPk: e));
  }
}

class _CopyWithStubImpl_Mutation_updateStore<TRes>
    implements CopyWith_Mutation_updateStore<TRes> {
  _CopyWithStubImpl_Mutation_updateStore(this._res);

  TRes _res;

  call({
    Fragment_Store? updateStoresByPk,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_Store<TRes> get updateStoresByPk =>
      CopyWith_Fragment_Store.stub(_res);
}

const documentNodeMutationupdateStore = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'updateStore'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'storeId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Uuid'),
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
