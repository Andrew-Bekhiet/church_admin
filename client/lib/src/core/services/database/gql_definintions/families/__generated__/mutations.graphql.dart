import '../../../../../graphql/__generated__/schema.graphql.dart';
import '../../data_checks/__generated__/fragments.graphql.dart';
import 'fragments.graphql.dart';

import 'package:gql/ast.dart';

class Variables_Mutation_createFamily {
  factory Variables_Mutation_createFamily({
    required Input_CreateFamilyInput input,
  }) => Variables_Mutation_createFamily._({r'input': input});

  Variables_Mutation_createFamily._(this._$data);

  factory Variables_Mutation_createFamily.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input_CreateFamilyInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables_Mutation_createFamily._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_CreateFamilyInput get input =>
      (_$data['input'] as Input_CreateFamilyInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith_Variables_Mutation_createFamily<Variables_Mutation_createFamily>
  get copyWith => CopyWith_Variables_Mutation_createFamily(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_createFamily ||
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

abstract class CopyWith_Variables_Mutation_createFamily<TRes> {
  factory CopyWith_Variables_Mutation_createFamily(
    Variables_Mutation_createFamily instance,
    TRes Function(Variables_Mutation_createFamily) then,
  ) = _CopyWithImpl_Variables_Mutation_createFamily;

  factory CopyWith_Variables_Mutation_createFamily.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_createFamily;

  TRes call({Input_CreateFamilyInput? input});
}

class _CopyWithImpl_Variables_Mutation_createFamily<TRes>
    implements CopyWith_Variables_Mutation_createFamily<TRes> {
  _CopyWithImpl_Variables_Mutation_createFamily(this._instance, this._then);

  final Variables_Mutation_createFamily _instance;

  final TRes Function(Variables_Mutation_createFamily) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables_Mutation_createFamily._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input_CreateFamilyInput),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_createFamily<TRes>
    implements CopyWith_Variables_Mutation_createFamily<TRes> {
  _CopyWithStubImpl_Variables_Mutation_createFamily(this._res);

  TRes _res;

  call({Input_CreateFamilyInput? input}) => _res;
}

class Mutation_createFamily {
  Mutation_createFamily({
    this.createFamily,
    this.$__typename = 'RootMutationType',
  });

  factory Mutation_createFamily.fromJson(Map<String, dynamic> json) {
    final l$createFamily = json['createFamily'];
    final l$$__typename = json['__typename'];
    return Mutation_createFamily(
      createFamily: l$createFamily == null
          ? null
          : Mutation_createFamily_createFamily.fromJson(
              (l$createFamily as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_createFamily_createFamily? createFamily;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createFamily = createFamily;
    _resultData['createFamily'] = l$createFamily?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createFamily = createFamily;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createFamily, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_createFamily || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createFamily = createFamily;
    final lOther$createFamily = other.createFamily;
    if (l$createFamily != lOther$createFamily) {
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

extension UtilityExtension_Mutation_createFamily on Mutation_createFamily {
  CopyWith_Mutation_createFamily<Mutation_createFamily> get copyWith =>
      CopyWith_Mutation_createFamily(this, (i) => i);
}

abstract class CopyWith_Mutation_createFamily<TRes> {
  factory CopyWith_Mutation_createFamily(
    Mutation_createFamily instance,
    TRes Function(Mutation_createFamily) then,
  ) = _CopyWithImpl_Mutation_createFamily;

  factory CopyWith_Mutation_createFamily.stub(TRes res) =
      _CopyWithStubImpl_Mutation_createFamily;

  TRes call({
    Mutation_createFamily_createFamily? createFamily,
    String? $__typename,
  });
  CopyWith_Mutation_createFamily_createFamily<TRes> get createFamily;
}

class _CopyWithImpl_Mutation_createFamily<TRes>
    implements CopyWith_Mutation_createFamily<TRes> {
  _CopyWithImpl_Mutation_createFamily(this._instance, this._then);

  final Mutation_createFamily _instance;

  final TRes Function(Mutation_createFamily) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createFamily = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_createFamily(
      createFamily: createFamily == _undefined
          ? _instance.createFamily
          : (createFamily as Mutation_createFamily_createFamily?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_createFamily_createFamily<TRes> get createFamily {
    final local$createFamily = _instance.createFamily;
    return local$createFamily == null
        ? CopyWith_Mutation_createFamily_createFamily.stub(_then(_instance))
        : CopyWith_Mutation_createFamily_createFamily(
            local$createFamily,
            (e) => call(createFamily: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_createFamily<TRes>
    implements CopyWith_Mutation_createFamily<TRes> {
  _CopyWithStubImpl_Mutation_createFamily(this._res);

  TRes _res;

  call({
    Mutation_createFamily_createFamily? createFamily,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_createFamily_createFamily<TRes> get createFamily =>
      CopyWith_Mutation_createFamily_createFamily.stub(_res);
}

const documentNodeMutationcreateFamily = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'createFamily'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'CreateFamilyInput'),
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
            name: NameNode(value: 'createFamily'),
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

class Mutation_createFamily_createFamily {
  Mutation_createFamily_createFamily({
    this.result,
    this.$__typename = 'CreateFamilyResult',
  });

  factory Mutation_createFamily_createFamily.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_createFamily_createFamily(
      result: l$result == null
          ? null
          : Fragment_Family.fromJson((l$result as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Family? result;

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
    if (other is! Mutation_createFamily_createFamily ||
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

extension UtilityExtension_Mutation_createFamily_createFamily
    on Mutation_createFamily_createFamily {
  CopyWith_Mutation_createFamily_createFamily<
    Mutation_createFamily_createFamily
  >
  get copyWith => CopyWith_Mutation_createFamily_createFamily(this, (i) => i);
}

abstract class CopyWith_Mutation_createFamily_createFamily<TRes> {
  factory CopyWith_Mutation_createFamily_createFamily(
    Mutation_createFamily_createFamily instance,
    TRes Function(Mutation_createFamily_createFamily) then,
  ) = _CopyWithImpl_Mutation_createFamily_createFamily;

  factory CopyWith_Mutation_createFamily_createFamily.stub(TRes res) =
      _CopyWithStubImpl_Mutation_createFamily_createFamily;

  TRes call({Fragment_Family? result, String? $__typename});
  CopyWith_Fragment_Family<TRes> get result;
}

class _CopyWithImpl_Mutation_createFamily_createFamily<TRes>
    implements CopyWith_Mutation_createFamily_createFamily<TRes> {
  _CopyWithImpl_Mutation_createFamily_createFamily(this._instance, this._then);

  final Mutation_createFamily_createFamily _instance;

  final TRes Function(Mutation_createFamily_createFamily) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? result = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_createFamily_createFamily(
          result: result == _undefined
              ? _instance.result
              : (result as Fragment_Family?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_Family<TRes> get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Fragment_Family.stub(_then(_instance))
        : CopyWith_Fragment_Family(local$result, (e) => call(result: e));
  }
}

class _CopyWithStubImpl_Mutation_createFamily_createFamily<TRes>
    implements CopyWith_Mutation_createFamily_createFamily<TRes> {
  _CopyWithStubImpl_Mutation_createFamily_createFamily(this._res);

  TRes _res;

  call({Fragment_Family? result, String? $__typename}) => _res;

  CopyWith_Fragment_Family<TRes> get result =>
      CopyWith_Fragment_Family.stub(_res);
}

class Variables_Mutation_updateFamily {
  factory Variables_Mutation_updateFamily({
    required String id,
    Input_UpdateFamilyInput? input,
  }) => Variables_Mutation_updateFamily._({
    r'id': id,
    if (input != null) r'input': input,
  });

  Variables_Mutation_updateFamily._(this._$data);

  factory Variables_Mutation_updateFamily.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    if (data.containsKey('input')) {
      final l$input = data['input'];
      result$data['input'] = l$input == null
          ? null
          : Input_UpdateFamilyInput.fromJson((l$input as Map<String, dynamic>));
    }
    return Variables_Mutation_updateFamily._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Input_UpdateFamilyInput? get input =>
      (_$data['input'] as Input_UpdateFamilyInput?);

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

  CopyWith_Variables_Mutation_updateFamily<Variables_Mutation_updateFamily>
  get copyWith => CopyWith_Variables_Mutation_updateFamily(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_updateFamily ||
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

abstract class CopyWith_Variables_Mutation_updateFamily<TRes> {
  factory CopyWith_Variables_Mutation_updateFamily(
    Variables_Mutation_updateFamily instance,
    TRes Function(Variables_Mutation_updateFamily) then,
  ) = _CopyWithImpl_Variables_Mutation_updateFamily;

  factory CopyWith_Variables_Mutation_updateFamily.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_updateFamily;

  TRes call({String? id, Input_UpdateFamilyInput? input});
}

class _CopyWithImpl_Variables_Mutation_updateFamily<TRes>
    implements CopyWith_Variables_Mutation_updateFamily<TRes> {
  _CopyWithImpl_Variables_Mutation_updateFamily(this._instance, this._then);

  final Variables_Mutation_updateFamily _instance;

  final TRes Function(Variables_Mutation_updateFamily) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? input = _undefined}) => _then(
    Variables_Mutation_updateFamily._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
      if (input != _undefined) 'input': (input as Input_UpdateFamilyInput?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_updateFamily<TRes>
    implements CopyWith_Variables_Mutation_updateFamily<TRes> {
  _CopyWithStubImpl_Variables_Mutation_updateFamily(this._res);

  TRes _res;

  call({String? id, Input_UpdateFamilyInput? input}) => _res;
}

class Mutation_updateFamily {
  Mutation_updateFamily({
    this.updateFamily,
    this.$__typename = 'RootMutationType',
  });

  factory Mutation_updateFamily.fromJson(Map<String, dynamic> json) {
    final l$updateFamily = json['updateFamily'];
    final l$$__typename = json['__typename'];
    return Mutation_updateFamily(
      updateFamily: l$updateFamily == null
          ? null
          : Mutation_updateFamily_updateFamily.fromJson(
              (l$updateFamily as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_updateFamily_updateFamily? updateFamily;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateFamily = updateFamily;
    _resultData['updateFamily'] = l$updateFamily?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateFamily = updateFamily;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateFamily, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_updateFamily || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateFamily = updateFamily;
    final lOther$updateFamily = other.updateFamily;
    if (l$updateFamily != lOther$updateFamily) {
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

extension UtilityExtension_Mutation_updateFamily on Mutation_updateFamily {
  CopyWith_Mutation_updateFamily<Mutation_updateFamily> get copyWith =>
      CopyWith_Mutation_updateFamily(this, (i) => i);
}

abstract class CopyWith_Mutation_updateFamily<TRes> {
  factory CopyWith_Mutation_updateFamily(
    Mutation_updateFamily instance,
    TRes Function(Mutation_updateFamily) then,
  ) = _CopyWithImpl_Mutation_updateFamily;

  factory CopyWith_Mutation_updateFamily.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updateFamily;

  TRes call({
    Mutation_updateFamily_updateFamily? updateFamily,
    String? $__typename,
  });
  CopyWith_Mutation_updateFamily_updateFamily<TRes> get updateFamily;
}

class _CopyWithImpl_Mutation_updateFamily<TRes>
    implements CopyWith_Mutation_updateFamily<TRes> {
  _CopyWithImpl_Mutation_updateFamily(this._instance, this._then);

  final Mutation_updateFamily _instance;

  final TRes Function(Mutation_updateFamily) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateFamily = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_updateFamily(
      updateFamily: updateFamily == _undefined
          ? _instance.updateFamily
          : (updateFamily as Mutation_updateFamily_updateFamily?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_updateFamily_updateFamily<TRes> get updateFamily {
    final local$updateFamily = _instance.updateFamily;
    return local$updateFamily == null
        ? CopyWith_Mutation_updateFamily_updateFamily.stub(_then(_instance))
        : CopyWith_Mutation_updateFamily_updateFamily(
            local$updateFamily,
            (e) => call(updateFamily: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_updateFamily<TRes>
    implements CopyWith_Mutation_updateFamily<TRes> {
  _CopyWithStubImpl_Mutation_updateFamily(this._res);

  TRes _res;

  call({
    Mutation_updateFamily_updateFamily? updateFamily,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_updateFamily_updateFamily<TRes> get updateFamily =>
      CopyWith_Mutation_updateFamily_updateFamily.stub(_res);
}

const documentNodeMutationupdateFamily = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'updateFamily'),
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
            name: NameNode(value: 'UpdateFamilyInput'),
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
            name: NameNode(value: 'updateFamily'),
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

class Mutation_updateFamily_updateFamily {
  Mutation_updateFamily_updateFamily({
    this.result,
    this.$__typename = 'UpdateFamilyResult',
  });

  factory Mutation_updateFamily_updateFamily.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_updateFamily_updateFamily(
      result: l$result == null
          ? null
          : Fragment_Family.fromJson((l$result as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Family? result;

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
    if (other is! Mutation_updateFamily_updateFamily ||
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

extension UtilityExtension_Mutation_updateFamily_updateFamily
    on Mutation_updateFamily_updateFamily {
  CopyWith_Mutation_updateFamily_updateFamily<
    Mutation_updateFamily_updateFamily
  >
  get copyWith => CopyWith_Mutation_updateFamily_updateFamily(this, (i) => i);
}

abstract class CopyWith_Mutation_updateFamily_updateFamily<TRes> {
  factory CopyWith_Mutation_updateFamily_updateFamily(
    Mutation_updateFamily_updateFamily instance,
    TRes Function(Mutation_updateFamily_updateFamily) then,
  ) = _CopyWithImpl_Mutation_updateFamily_updateFamily;

  factory CopyWith_Mutation_updateFamily_updateFamily.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updateFamily_updateFamily;

  TRes call({Fragment_Family? result, String? $__typename});
  CopyWith_Fragment_Family<TRes> get result;
}

class _CopyWithImpl_Mutation_updateFamily_updateFamily<TRes>
    implements CopyWith_Mutation_updateFamily_updateFamily<TRes> {
  _CopyWithImpl_Mutation_updateFamily_updateFamily(this._instance, this._then);

  final Mutation_updateFamily_updateFamily _instance;

  final TRes Function(Mutation_updateFamily_updateFamily) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? result = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_updateFamily_updateFamily(
          result: result == _undefined
              ? _instance.result
              : (result as Fragment_Family?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_Family<TRes> get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Fragment_Family.stub(_then(_instance))
        : CopyWith_Fragment_Family(local$result, (e) => call(result: e));
  }
}

class _CopyWithStubImpl_Mutation_updateFamily_updateFamily<TRes>
    implements CopyWith_Mutation_updateFamily_updateFamily<TRes> {
  _CopyWithStubImpl_Mutation_updateFamily_updateFamily(this._res);

  TRes _res;

  call({Fragment_Family? result, String? $__typename}) => _res;

  CopyWith_Fragment_Family<TRes> get result =>
      CopyWith_Fragment_Family.stub(_res);
}

class Variables_Mutation_deleteFamily {
  factory Variables_Mutation_deleteFamily({required String id}) =>
      Variables_Mutation_deleteFamily._({r'id': id});

  Variables_Mutation_deleteFamily._(this._$data);

  factory Variables_Mutation_deleteFamily.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables_Mutation_deleteFamily._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith_Variables_Mutation_deleteFamily<Variables_Mutation_deleteFamily>
  get copyWith => CopyWith_Variables_Mutation_deleteFamily(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_deleteFamily ||
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

abstract class CopyWith_Variables_Mutation_deleteFamily<TRes> {
  factory CopyWith_Variables_Mutation_deleteFamily(
    Variables_Mutation_deleteFamily instance,
    TRes Function(Variables_Mutation_deleteFamily) then,
  ) = _CopyWithImpl_Variables_Mutation_deleteFamily;

  factory CopyWith_Variables_Mutation_deleteFamily.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_deleteFamily;

  TRes call({String? id});
}

class _CopyWithImpl_Variables_Mutation_deleteFamily<TRes>
    implements CopyWith_Variables_Mutation_deleteFamily<TRes> {
  _CopyWithImpl_Variables_Mutation_deleteFamily(this._instance, this._then);

  final Variables_Mutation_deleteFamily _instance;

  final TRes Function(Variables_Mutation_deleteFamily) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables_Mutation_deleteFamily._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_deleteFamily<TRes>
    implements CopyWith_Variables_Mutation_deleteFamily<TRes> {
  _CopyWithStubImpl_Variables_Mutation_deleteFamily(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Mutation_deleteFamily {
  Mutation_deleteFamily({
    this.deleteFamily,
    this.$__typename = 'RootMutationType',
  });

  factory Mutation_deleteFamily.fromJson(Map<String, dynamic> json) {
    final l$deleteFamily = json['deleteFamily'];
    final l$$__typename = json['__typename'];
    return Mutation_deleteFamily(
      deleteFamily: l$deleteFamily == null
          ? null
          : Mutation_deleteFamily_deleteFamily.fromJson(
              (l$deleteFamily as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_deleteFamily_deleteFamily? deleteFamily;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteFamily = deleteFamily;
    _resultData['deleteFamily'] = l$deleteFamily?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteFamily = deleteFamily;
    final l$$__typename = $__typename;
    return Object.hashAll([l$deleteFamily, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_deleteFamily || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteFamily = deleteFamily;
    final lOther$deleteFamily = other.deleteFamily;
    if (l$deleteFamily != lOther$deleteFamily) {
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

extension UtilityExtension_Mutation_deleteFamily on Mutation_deleteFamily {
  CopyWith_Mutation_deleteFamily<Mutation_deleteFamily> get copyWith =>
      CopyWith_Mutation_deleteFamily(this, (i) => i);
}

abstract class CopyWith_Mutation_deleteFamily<TRes> {
  factory CopyWith_Mutation_deleteFamily(
    Mutation_deleteFamily instance,
    TRes Function(Mutation_deleteFamily) then,
  ) = _CopyWithImpl_Mutation_deleteFamily;

  factory CopyWith_Mutation_deleteFamily.stub(TRes res) =
      _CopyWithStubImpl_Mutation_deleteFamily;

  TRes call({
    Mutation_deleteFamily_deleteFamily? deleteFamily,
    String? $__typename,
  });
  CopyWith_Mutation_deleteFamily_deleteFamily<TRes> get deleteFamily;
}

class _CopyWithImpl_Mutation_deleteFamily<TRes>
    implements CopyWith_Mutation_deleteFamily<TRes> {
  _CopyWithImpl_Mutation_deleteFamily(this._instance, this._then);

  final Mutation_deleteFamily _instance;

  final TRes Function(Mutation_deleteFamily) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteFamily = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_deleteFamily(
      deleteFamily: deleteFamily == _undefined
          ? _instance.deleteFamily
          : (deleteFamily as Mutation_deleteFamily_deleteFamily?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_deleteFamily_deleteFamily<TRes> get deleteFamily {
    final local$deleteFamily = _instance.deleteFamily;
    return local$deleteFamily == null
        ? CopyWith_Mutation_deleteFamily_deleteFamily.stub(_then(_instance))
        : CopyWith_Mutation_deleteFamily_deleteFamily(
            local$deleteFamily,
            (e) => call(deleteFamily: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_deleteFamily<TRes>
    implements CopyWith_Mutation_deleteFamily<TRes> {
  _CopyWithStubImpl_Mutation_deleteFamily(this._res);

  TRes _res;

  call({
    Mutation_deleteFamily_deleteFamily? deleteFamily,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_deleteFamily_deleteFamily<TRes> get deleteFamily =>
      CopyWith_Mutation_deleteFamily_deleteFamily.stub(_res);
}

const documentNodeMutationdeleteFamily = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'deleteFamily'),
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
            name: NameNode(value: 'deleteFamily'),
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

class Mutation_deleteFamily_deleteFamily {
  Mutation_deleteFamily_deleteFamily({
    this.result,
    this.$__typename = 'DeleteFamilyResult',
  });

  factory Mutation_deleteFamily_deleteFamily.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_deleteFamily_deleteFamily(
      result: l$result == null
          ? null
          : Fragment_Family.fromJson((l$result as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Family? result;

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
    if (other is! Mutation_deleteFamily_deleteFamily ||
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

extension UtilityExtension_Mutation_deleteFamily_deleteFamily
    on Mutation_deleteFamily_deleteFamily {
  CopyWith_Mutation_deleteFamily_deleteFamily<
    Mutation_deleteFamily_deleteFamily
  >
  get copyWith => CopyWith_Mutation_deleteFamily_deleteFamily(this, (i) => i);
}

abstract class CopyWith_Mutation_deleteFamily_deleteFamily<TRes> {
  factory CopyWith_Mutation_deleteFamily_deleteFamily(
    Mutation_deleteFamily_deleteFamily instance,
    TRes Function(Mutation_deleteFamily_deleteFamily) then,
  ) = _CopyWithImpl_Mutation_deleteFamily_deleteFamily;

  factory CopyWith_Mutation_deleteFamily_deleteFamily.stub(TRes res) =
      _CopyWithStubImpl_Mutation_deleteFamily_deleteFamily;

  TRes call({Fragment_Family? result, String? $__typename});
  CopyWith_Fragment_Family<TRes> get result;
}

class _CopyWithImpl_Mutation_deleteFamily_deleteFamily<TRes>
    implements CopyWith_Mutation_deleteFamily_deleteFamily<TRes> {
  _CopyWithImpl_Mutation_deleteFamily_deleteFamily(this._instance, this._then);

  final Mutation_deleteFamily_deleteFamily _instance;

  final TRes Function(Mutation_deleteFamily_deleteFamily) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? result = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_deleteFamily_deleteFamily(
          result: result == _undefined
              ? _instance.result
              : (result as Fragment_Family?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_Family<TRes> get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Fragment_Family.stub(_then(_instance))
        : CopyWith_Fragment_Family(local$result, (e) => call(result: e));
  }
}

class _CopyWithStubImpl_Mutation_deleteFamily_deleteFamily<TRes>
    implements CopyWith_Mutation_deleteFamily_deleteFamily<TRes> {
  _CopyWithStubImpl_Mutation_deleteFamily_deleteFamily(this._res);

  TRes _res;

  call({Fragment_Family? result, String? $__typename}) => _res;

  CopyWith_Fragment_Family<TRes> get result =>
      CopyWith_Fragment_Family.stub(_res);
}
