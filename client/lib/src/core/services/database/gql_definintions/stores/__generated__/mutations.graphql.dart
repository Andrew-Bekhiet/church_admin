import '../../../../../graphql/__generated__/schema.graphql.dart';
import 'fragments.graphql.dart';

import 'package:gql/ast.dart';

class Variables_Mutation_createStore {
  factory Variables_Mutation_createStore({
    required Input_CreateStoreInput input,
  }) => Variables_Mutation_createStore._({r'input': input});

  Variables_Mutation_createStore._(this._$data);

  factory Variables_Mutation_createStore.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input_CreateStoreInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables_Mutation_createStore._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_CreateStoreInput get input =>
      (_$data['input'] as Input_CreateStoreInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith_Variables_Mutation_createStore<Variables_Mutation_createStore>
  get copyWith => CopyWith_Variables_Mutation_createStore(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_createStore ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith_Variables_Mutation_createStore<TRes> {
  factory CopyWith_Variables_Mutation_createStore(
    Variables_Mutation_createStore instance,
    TRes Function(Variables_Mutation_createStore) then,
  ) = _CopyWithImpl_Variables_Mutation_createStore;

  factory CopyWith_Variables_Mutation_createStore.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_createStore;

  TRes call({Input_CreateStoreInput? input});
}

class _CopyWithImpl_Variables_Mutation_createStore<TRes>
    implements CopyWith_Variables_Mutation_createStore<TRes> {
  _CopyWithImpl_Variables_Mutation_createStore(this._instance, this._then);

  final Variables_Mutation_createStore _instance;

  final TRes Function(Variables_Mutation_createStore) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables_Mutation_createStore._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input_CreateStoreInput),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_createStore<TRes>
    implements CopyWith_Variables_Mutation_createStore<TRes> {
  _CopyWithStubImpl_Variables_Mutation_createStore(this._res);

  TRes _res;

  call({Input_CreateStoreInput? input}) => _res;
}

class Mutation_createStore {
  Mutation_createStore({
    this.createStore,
    this.$__typename = 'RootMutationType',
  });

  factory Mutation_createStore.fromJson(Map<String, dynamic> json) {
    final l$createStore = json['createStore'];
    final l$$__typename = json['__typename'];
    return Mutation_createStore(
      createStore: l$createStore == null
          ? null
          : Mutation_createStore_createStore.fromJson(
              (l$createStore as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_createStore_createStore? createStore;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createStore = createStore;
    _resultData['createStore'] = l$createStore?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createStore = createStore;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createStore, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_createStore || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createStore = createStore;
    final lOther$createStore = other.createStore;
    if (l$createStore != lOther$createStore) {
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

extension UtilityExtension_Mutation_createStore on Mutation_createStore {
  CopyWith_Mutation_createStore<Mutation_createStore> get copyWith =>
      CopyWith_Mutation_createStore(this, (i) => i);
}

abstract class CopyWith_Mutation_createStore<TRes> {
  factory CopyWith_Mutation_createStore(
    Mutation_createStore instance,
    TRes Function(Mutation_createStore) then,
  ) = _CopyWithImpl_Mutation_createStore;

  factory CopyWith_Mutation_createStore.stub(TRes res) =
      _CopyWithStubImpl_Mutation_createStore;

  TRes call({
    Mutation_createStore_createStore? createStore,
    String? $__typename,
  });
  CopyWith_Mutation_createStore_createStore<TRes> get createStore;
}

class _CopyWithImpl_Mutation_createStore<TRes>
    implements CopyWith_Mutation_createStore<TRes> {
  _CopyWithImpl_Mutation_createStore(this._instance, this._then);

  final Mutation_createStore _instance;

  final TRes Function(Mutation_createStore) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createStore = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_createStore(
      createStore: createStore == _undefined
          ? _instance.createStore
          : (createStore as Mutation_createStore_createStore?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_createStore_createStore<TRes> get createStore {
    final local$createStore = _instance.createStore;
    return local$createStore == null
        ? CopyWith_Mutation_createStore_createStore.stub(_then(_instance))
        : CopyWith_Mutation_createStore_createStore(
            local$createStore,
            (e) => call(createStore: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_createStore<TRes>
    implements CopyWith_Mutation_createStore<TRes> {
  _CopyWithStubImpl_Mutation_createStore(this._res);

  TRes _res;

  call({Mutation_createStore_createStore? createStore, String? $__typename}) =>
      _res;

  CopyWith_Mutation_createStore_createStore<TRes> get createStore =>
      CopyWith_Mutation_createStore_createStore.stub(_res);
}

const documentNodeMutationcreateStore = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'createStore'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'CreateStoreInput'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'createStore'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'input')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'result'),
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

class Mutation_createStore_createStore {
  Mutation_createStore_createStore({
    this.result,
    this.$__typename = 'CreateStoreResult',
  });

  factory Mutation_createStore_createStore.fromJson(Map<String, dynamic> json) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_createStore_createStore(
      result: l$result == null
          ? null
          : Fragment_Store.fromJson((l$result as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Store? result;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$result = result;
    _resultData['result'] = l$result?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$result = result;
    final l$$__typename = $__typename;
    return Object.hashAll([l$result, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_createStore_createStore ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$result = result;
    final lOther$result = other.result;
    if (l$result != lOther$result) {
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

extension UtilityExtension_Mutation_createStore_createStore
    on Mutation_createStore_createStore {
  CopyWith_Mutation_createStore_createStore<Mutation_createStore_createStore>
  get copyWith => CopyWith_Mutation_createStore_createStore(this, (i) => i);
}

abstract class CopyWith_Mutation_createStore_createStore<TRes> {
  factory CopyWith_Mutation_createStore_createStore(
    Mutation_createStore_createStore instance,
    TRes Function(Mutation_createStore_createStore) then,
  ) = _CopyWithImpl_Mutation_createStore_createStore;

  factory CopyWith_Mutation_createStore_createStore.stub(TRes res) =
      _CopyWithStubImpl_Mutation_createStore_createStore;

  TRes call({Fragment_Store? result, String? $__typename});
  CopyWith_Fragment_Store<TRes> get result;
}

class _CopyWithImpl_Mutation_createStore_createStore<TRes>
    implements CopyWith_Mutation_createStore_createStore<TRes> {
  _CopyWithImpl_Mutation_createStore_createStore(this._instance, this._then);

  final Mutation_createStore_createStore _instance;

  final TRes Function(Mutation_createStore_createStore) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? result = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_createStore_createStore(
          result: result == _undefined
              ? _instance.result
              : (result as Fragment_Store?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_Store<TRes> get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Fragment_Store.stub(_then(_instance))
        : CopyWith_Fragment_Store(local$result, (e) => call(result: e));
  }
}

class _CopyWithStubImpl_Mutation_createStore_createStore<TRes>
    implements CopyWith_Mutation_createStore_createStore<TRes> {
  _CopyWithStubImpl_Mutation_createStore_createStore(this._res);

  TRes _res;

  call({Fragment_Store? result, String? $__typename}) => _res;

  CopyWith_Fragment_Store<TRes> get result =>
      CopyWith_Fragment_Store.stub(_res);
}

class Variables_Mutation_updateStore {
  factory Variables_Mutation_updateStore({
    required String id,
    Input_UpdateStoreInput? input,
  }) => Variables_Mutation_updateStore._({
    r'id': id,
    if (input != null) r'input': input,
  });

  Variables_Mutation_updateStore._(this._$data);

  factory Variables_Mutation_updateStore.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    if (data.containsKey('input')) {
      final l$input = data['input'];
      result$data['input'] = l$input == null
          ? null
          : Input_UpdateStoreInput.fromJson((l$input as Map<String, dynamic>));
    }
    return Variables_Mutation_updateStore._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Input_UpdateStoreInput? get input =>
      (_$data['input'] as Input_UpdateStoreInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('input')) {
      final l$input = input;
      result$data['input'] = l$input?.toJson();
    }
    return result$data;
  }

  CopyWith_Variables_Mutation_updateStore<Variables_Mutation_updateStore>
  get copyWith => CopyWith_Variables_Mutation_updateStore(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_updateStore ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (_$data.containsKey('input') != other._$data.containsKey('input')) {
      return false;
    }
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$input = input;
    return Object.hashAll([
      l$id,
      _$data.containsKey('input') ? l$input : const {},
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

  TRes call({String? id, Input_UpdateStoreInput? input});
}

class _CopyWithImpl_Variables_Mutation_updateStore<TRes>
    implements CopyWith_Variables_Mutation_updateStore<TRes> {
  _CopyWithImpl_Variables_Mutation_updateStore(this._instance, this._then);

  final Variables_Mutation_updateStore _instance;

  final TRes Function(Variables_Mutation_updateStore) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? input = _undefined}) => _then(
    Variables_Mutation_updateStore._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
      if (input != _undefined) 'input': (input as Input_UpdateStoreInput?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_updateStore<TRes>
    implements CopyWith_Variables_Mutation_updateStore<TRes> {
  _CopyWithStubImpl_Variables_Mutation_updateStore(this._res);

  TRes _res;

  call({String? id, Input_UpdateStoreInput? input}) => _res;
}

class Mutation_updateStore {
  Mutation_updateStore({
    this.updateStore,
    this.$__typename = 'RootMutationType',
  });

  factory Mutation_updateStore.fromJson(Map<String, dynamic> json) {
    final l$updateStore = json['updateStore'];
    final l$$__typename = json['__typename'];
    return Mutation_updateStore(
      updateStore: l$updateStore == null
          ? null
          : Mutation_updateStore_updateStore.fromJson(
              (l$updateStore as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_updateStore_updateStore? updateStore;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateStore = updateStore;
    _resultData['updateStore'] = l$updateStore?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateStore = updateStore;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateStore, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_updateStore || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateStore = updateStore;
    final lOther$updateStore = other.updateStore;
    if (l$updateStore != lOther$updateStore) {
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
      CopyWith_Mutation_updateStore(this, (i) => i);
}

abstract class CopyWith_Mutation_updateStore<TRes> {
  factory CopyWith_Mutation_updateStore(
    Mutation_updateStore instance,
    TRes Function(Mutation_updateStore) then,
  ) = _CopyWithImpl_Mutation_updateStore;

  factory CopyWith_Mutation_updateStore.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updateStore;

  TRes call({
    Mutation_updateStore_updateStore? updateStore,
    String? $__typename,
  });
  CopyWith_Mutation_updateStore_updateStore<TRes> get updateStore;
}

class _CopyWithImpl_Mutation_updateStore<TRes>
    implements CopyWith_Mutation_updateStore<TRes> {
  _CopyWithImpl_Mutation_updateStore(this._instance, this._then);

  final Mutation_updateStore _instance;

  final TRes Function(Mutation_updateStore) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateStore = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_updateStore(
      updateStore: updateStore == _undefined
          ? _instance.updateStore
          : (updateStore as Mutation_updateStore_updateStore?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_updateStore_updateStore<TRes> get updateStore {
    final local$updateStore = _instance.updateStore;
    return local$updateStore == null
        ? CopyWith_Mutation_updateStore_updateStore.stub(_then(_instance))
        : CopyWith_Mutation_updateStore_updateStore(
            local$updateStore,
            (e) => call(updateStore: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_updateStore<TRes>
    implements CopyWith_Mutation_updateStore<TRes> {
  _CopyWithStubImpl_Mutation_updateStore(this._res);

  TRes _res;

  call({Mutation_updateStore_updateStore? updateStore, String? $__typename}) =>
      _res;

  CopyWith_Mutation_updateStore_updateStore<TRes> get updateStore =>
      CopyWith_Mutation_updateStore_updateStore.stub(_res);
}

const documentNodeMutationupdateStore = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'updateStore'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'id')),
          type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'UpdateStoreInput'),
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
            name: NameNode(value: 'updateStore'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'id')),
              ),
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'input')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'result'),
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

class Mutation_updateStore_updateStore {
  Mutation_updateStore_updateStore({
    this.result,
    this.$__typename = 'UpdateStoreResult',
  });

  factory Mutation_updateStore_updateStore.fromJson(Map<String, dynamic> json) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_updateStore_updateStore(
      result: l$result == null
          ? null
          : Fragment_Store.fromJson((l$result as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Store? result;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$result = result;
    _resultData['result'] = l$result?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$result = result;
    final l$$__typename = $__typename;
    return Object.hashAll([l$result, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_updateStore_updateStore ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$result = result;
    final lOther$result = other.result;
    if (l$result != lOther$result) {
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

extension UtilityExtension_Mutation_updateStore_updateStore
    on Mutation_updateStore_updateStore {
  CopyWith_Mutation_updateStore_updateStore<Mutation_updateStore_updateStore>
  get copyWith => CopyWith_Mutation_updateStore_updateStore(this, (i) => i);
}

abstract class CopyWith_Mutation_updateStore_updateStore<TRes> {
  factory CopyWith_Mutation_updateStore_updateStore(
    Mutation_updateStore_updateStore instance,
    TRes Function(Mutation_updateStore_updateStore) then,
  ) = _CopyWithImpl_Mutation_updateStore_updateStore;

  factory CopyWith_Mutation_updateStore_updateStore.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updateStore_updateStore;

  TRes call({Fragment_Store? result, String? $__typename});
  CopyWith_Fragment_Store<TRes> get result;
}

class _CopyWithImpl_Mutation_updateStore_updateStore<TRes>
    implements CopyWith_Mutation_updateStore_updateStore<TRes> {
  _CopyWithImpl_Mutation_updateStore_updateStore(this._instance, this._then);

  final Mutation_updateStore_updateStore _instance;

  final TRes Function(Mutation_updateStore_updateStore) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? result = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_updateStore_updateStore(
          result: result == _undefined
              ? _instance.result
              : (result as Fragment_Store?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_Store<TRes> get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Fragment_Store.stub(_then(_instance))
        : CopyWith_Fragment_Store(local$result, (e) => call(result: e));
  }
}

class _CopyWithStubImpl_Mutation_updateStore_updateStore<TRes>
    implements CopyWith_Mutation_updateStore_updateStore<TRes> {
  _CopyWithStubImpl_Mutation_updateStore_updateStore(this._res);

  TRes _res;

  call({Fragment_Store? result, String? $__typename}) => _res;

  CopyWith_Fragment_Store<TRes> get result =>
      CopyWith_Fragment_Store.stub(_res);
}

class Variables_Mutation_deleteStore {
  factory Variables_Mutation_deleteStore({required String id}) =>
      Variables_Mutation_deleteStore._({r'id': id});

  Variables_Mutation_deleteStore._(this._$data);

  factory Variables_Mutation_deleteStore.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables_Mutation_deleteStore._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith_Variables_Mutation_deleteStore<Variables_Mutation_deleteStore>
  get copyWith => CopyWith_Variables_Mutation_deleteStore(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_deleteStore ||
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

abstract class CopyWith_Variables_Mutation_deleteStore<TRes> {
  factory CopyWith_Variables_Mutation_deleteStore(
    Variables_Mutation_deleteStore instance,
    TRes Function(Variables_Mutation_deleteStore) then,
  ) = _CopyWithImpl_Variables_Mutation_deleteStore;

  factory CopyWith_Variables_Mutation_deleteStore.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_deleteStore;

  TRes call({String? id});
}

class _CopyWithImpl_Variables_Mutation_deleteStore<TRes>
    implements CopyWith_Variables_Mutation_deleteStore<TRes> {
  _CopyWithImpl_Variables_Mutation_deleteStore(this._instance, this._then);

  final Variables_Mutation_deleteStore _instance;

  final TRes Function(Variables_Mutation_deleteStore) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables_Mutation_deleteStore._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_deleteStore<TRes>
    implements CopyWith_Variables_Mutation_deleteStore<TRes> {
  _CopyWithStubImpl_Variables_Mutation_deleteStore(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Mutation_deleteStore {
  Mutation_deleteStore({
    this.deleteStore,
    this.$__typename = 'RootMutationType',
  });

  factory Mutation_deleteStore.fromJson(Map<String, dynamic> json) {
    final l$deleteStore = json['deleteStore'];
    final l$$__typename = json['__typename'];
    return Mutation_deleteStore(
      deleteStore: l$deleteStore == null
          ? null
          : Mutation_deleteStore_deleteStore.fromJson(
              (l$deleteStore as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_deleteStore_deleteStore? deleteStore;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteStore = deleteStore;
    _resultData['deleteStore'] = l$deleteStore?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteStore = deleteStore;
    final l$$__typename = $__typename;
    return Object.hashAll([l$deleteStore, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_deleteStore || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteStore = deleteStore;
    final lOther$deleteStore = other.deleteStore;
    if (l$deleteStore != lOther$deleteStore) {
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
      CopyWith_Mutation_deleteStore(this, (i) => i);
}

abstract class CopyWith_Mutation_deleteStore<TRes> {
  factory CopyWith_Mutation_deleteStore(
    Mutation_deleteStore instance,
    TRes Function(Mutation_deleteStore) then,
  ) = _CopyWithImpl_Mutation_deleteStore;

  factory CopyWith_Mutation_deleteStore.stub(TRes res) =
      _CopyWithStubImpl_Mutation_deleteStore;

  TRes call({
    Mutation_deleteStore_deleteStore? deleteStore,
    String? $__typename,
  });
  CopyWith_Mutation_deleteStore_deleteStore<TRes> get deleteStore;
}

class _CopyWithImpl_Mutation_deleteStore<TRes>
    implements CopyWith_Mutation_deleteStore<TRes> {
  _CopyWithImpl_Mutation_deleteStore(this._instance, this._then);

  final Mutation_deleteStore _instance;

  final TRes Function(Mutation_deleteStore) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteStore = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_deleteStore(
      deleteStore: deleteStore == _undefined
          ? _instance.deleteStore
          : (deleteStore as Mutation_deleteStore_deleteStore?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_deleteStore_deleteStore<TRes> get deleteStore {
    final local$deleteStore = _instance.deleteStore;
    return local$deleteStore == null
        ? CopyWith_Mutation_deleteStore_deleteStore.stub(_then(_instance))
        : CopyWith_Mutation_deleteStore_deleteStore(
            local$deleteStore,
            (e) => call(deleteStore: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_deleteStore<TRes>
    implements CopyWith_Mutation_deleteStore<TRes> {
  _CopyWithStubImpl_Mutation_deleteStore(this._res);

  TRes _res;

  call({Mutation_deleteStore_deleteStore? deleteStore, String? $__typename}) =>
      _res;

  CopyWith_Mutation_deleteStore_deleteStore<TRes> get deleteStore =>
      CopyWith_Mutation_deleteStore_deleteStore.stub(_res);
}

const documentNodeMutationdeleteStore = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'deleteStore'),
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
            name: NameNode(value: 'deleteStore'),
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
                FieldNode(
                  name: NameNode(value: 'result'),
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

class Mutation_deleteStore_deleteStore {
  Mutation_deleteStore_deleteStore({
    this.result,
    this.$__typename = 'DeleteStoreResult',
  });

  factory Mutation_deleteStore_deleteStore.fromJson(Map<String, dynamic> json) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_deleteStore_deleteStore(
      result: l$result == null
          ? null
          : Fragment_Store.fromJson((l$result as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Store? result;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$result = result;
    _resultData['result'] = l$result?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$result = result;
    final l$$__typename = $__typename;
    return Object.hashAll([l$result, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_deleteStore_deleteStore ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$result = result;
    final lOther$result = other.result;
    if (l$result != lOther$result) {
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

extension UtilityExtension_Mutation_deleteStore_deleteStore
    on Mutation_deleteStore_deleteStore {
  CopyWith_Mutation_deleteStore_deleteStore<Mutation_deleteStore_deleteStore>
  get copyWith => CopyWith_Mutation_deleteStore_deleteStore(this, (i) => i);
}

abstract class CopyWith_Mutation_deleteStore_deleteStore<TRes> {
  factory CopyWith_Mutation_deleteStore_deleteStore(
    Mutation_deleteStore_deleteStore instance,
    TRes Function(Mutation_deleteStore_deleteStore) then,
  ) = _CopyWithImpl_Mutation_deleteStore_deleteStore;

  factory CopyWith_Mutation_deleteStore_deleteStore.stub(TRes res) =
      _CopyWithStubImpl_Mutation_deleteStore_deleteStore;

  TRes call({Fragment_Store? result, String? $__typename});
  CopyWith_Fragment_Store<TRes> get result;
}

class _CopyWithImpl_Mutation_deleteStore_deleteStore<TRes>
    implements CopyWith_Mutation_deleteStore_deleteStore<TRes> {
  _CopyWithImpl_Mutation_deleteStore_deleteStore(this._instance, this._then);

  final Mutation_deleteStore_deleteStore _instance;

  final TRes Function(Mutation_deleteStore_deleteStore) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? result = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_deleteStore_deleteStore(
          result: result == _undefined
              ? _instance.result
              : (result as Fragment_Store?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_Store<TRes> get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Fragment_Store.stub(_then(_instance))
        : CopyWith_Fragment_Store(local$result, (e) => call(result: e));
  }
}

class _CopyWithStubImpl_Mutation_deleteStore_deleteStore<TRes>
    implements CopyWith_Mutation_deleteStore_deleteStore<TRes> {
  _CopyWithStubImpl_Mutation_deleteStore_deleteStore(this._res);

  TRes _res;

  call({Fragment_Store? result, String? $__typename}) => _res;

  CopyWith_Fragment_Store<TRes> get result =>
      CopyWith_Fragment_Store.stub(_res);
}
