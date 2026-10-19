import '../../../../../graphql/__generated__/schema.graphql.dart';
import 'fragments.graphql.dart';

import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Mutation_createPerson {
  factory Variables_Mutation_createPerson({
    required Input_CreatePersonInput input,
  }) => Variables_Mutation_createPerson._({r'input': input});

  Variables_Mutation_createPerson._(this._$data);

  factory Variables_Mutation_createPerson.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input_CreatePersonInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables_Mutation_createPerson._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_CreatePersonInput get input =>
      (_$data['input'] as Input_CreatePersonInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith_Variables_Mutation_createPerson<Variables_Mutation_createPerson>
  get copyWith => CopyWith_Variables_Mutation_createPerson(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_createPerson ||
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

abstract class CopyWith_Variables_Mutation_createPerson<TRes> {
  factory CopyWith_Variables_Mutation_createPerson(
    Variables_Mutation_createPerson instance,
    TRes Function(Variables_Mutation_createPerson) then,
  ) = _CopyWithImpl_Variables_Mutation_createPerson;

  factory CopyWith_Variables_Mutation_createPerson.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_createPerson;

  TRes call({Input_CreatePersonInput? input});
}

class _CopyWithImpl_Variables_Mutation_createPerson<TRes>
    implements CopyWith_Variables_Mutation_createPerson<TRes> {
  _CopyWithImpl_Variables_Mutation_createPerson(this._instance, this._then);

  final Variables_Mutation_createPerson _instance;

  final TRes Function(Variables_Mutation_createPerson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables_Mutation_createPerson._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input_CreatePersonInput),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_createPerson<TRes>
    implements CopyWith_Variables_Mutation_createPerson<TRes> {
  _CopyWithStubImpl_Variables_Mutation_createPerson(this._res);

  TRes _res;

  call({Input_CreatePersonInput? input}) => _res;
}

class Mutation_createPerson {
  Mutation_createPerson({
    this.createPerson,
    this.$__typename = 'RootMutationType',
  });

  factory Mutation_createPerson.fromJson(Map<String, dynamic> json) {
    final l$createPerson = json['createPerson'];
    final l$$__typename = json['__typename'];
    return Mutation_createPerson(
      createPerson: l$createPerson == null
          ? null
          : Mutation_createPerson_createPerson.fromJson(
              (l$createPerson as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_createPerson_createPerson? createPerson;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createPerson = createPerson;
    _resultData['createPerson'] = l$createPerson?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createPerson = createPerson;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createPerson, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_createPerson || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createPerson = createPerson;
    final lOther$createPerson = other.createPerson;
    if (l$createPerson != lOther$createPerson) {
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

extension UtilityExtension_Mutation_createPerson on Mutation_createPerson {
  CopyWith_Mutation_createPerson<Mutation_createPerson> get copyWith =>
      CopyWith_Mutation_createPerson(this, (i) => i);
}

abstract class CopyWith_Mutation_createPerson<TRes> {
  factory CopyWith_Mutation_createPerson(
    Mutation_createPerson instance,
    TRes Function(Mutation_createPerson) then,
  ) = _CopyWithImpl_Mutation_createPerson;

  factory CopyWith_Mutation_createPerson.stub(TRes res) =
      _CopyWithStubImpl_Mutation_createPerson;

  TRes call({
    Mutation_createPerson_createPerson? createPerson,
    String? $__typename,
  });
  CopyWith_Mutation_createPerson_createPerson<TRes> get createPerson;
}

class _CopyWithImpl_Mutation_createPerson<TRes>
    implements CopyWith_Mutation_createPerson<TRes> {
  _CopyWithImpl_Mutation_createPerson(this._instance, this._then);

  final Mutation_createPerson _instance;

  final TRes Function(Mutation_createPerson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createPerson = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_createPerson(
      createPerson: createPerson == _undefined
          ? _instance.createPerson
          : (createPerson as Mutation_createPerson_createPerson?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_createPerson_createPerson<TRes> get createPerson {
    final local$createPerson = _instance.createPerson;
    return local$createPerson == null
        ? CopyWith_Mutation_createPerson_createPerson.stub(_then(_instance))
        : CopyWith_Mutation_createPerson_createPerson(
            local$createPerson,
            (e) => call(createPerson: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_createPerson<TRes>
    implements CopyWith_Mutation_createPerson<TRes> {
  _CopyWithStubImpl_Mutation_createPerson(this._res);

  TRes _res;

  call({
    Mutation_createPerson_createPerson? createPerson,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_createPerson_createPerson<TRes> get createPerson =>
      CopyWith_Mutation_createPerson_createPerson.stub(_res);
}

const documentNodeMutationcreatePerson = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'createPerson'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'CreatePersonInput'),
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
            name: NameNode(value: 'createPerson'),
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
                        name: NameNode(value: 'Person'),
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
    fragmentDefinitionPerson,
    fragmentDefinitionPersonNoPhoto,
    fragmentDefinitionPersonDataCheck,
  ],
);

class Mutation_createPerson_createPerson {
  Mutation_createPerson_createPerson({
    this.result,
    this.$__typename = 'CreatePersonResult',
  });

  factory Mutation_createPerson_createPerson.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_createPerson_createPerson(
      result: l$result == null
          ? null
          : Fragment_Person.fromJson((l$result as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Person? result;

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
    if (other is! Mutation_createPerson_createPerson ||
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

extension UtilityExtension_Mutation_createPerson_createPerson
    on Mutation_createPerson_createPerson {
  CopyWith_Mutation_createPerson_createPerson<
    Mutation_createPerson_createPerson
  >
  get copyWith => CopyWith_Mutation_createPerson_createPerson(this, (i) => i);
}

abstract class CopyWith_Mutation_createPerson_createPerson<TRes> {
  factory CopyWith_Mutation_createPerson_createPerson(
    Mutation_createPerson_createPerson instance,
    TRes Function(Mutation_createPerson_createPerson) then,
  ) = _CopyWithImpl_Mutation_createPerson_createPerson;

  factory CopyWith_Mutation_createPerson_createPerson.stub(TRes res) =
      _CopyWithStubImpl_Mutation_createPerson_createPerson;

  TRes call({Fragment_Person? result, String? $__typename});
  CopyWith_Fragment_Person<TRes> get result;
}

class _CopyWithImpl_Mutation_createPerson_createPerson<TRes>
    implements CopyWith_Mutation_createPerson_createPerson<TRes> {
  _CopyWithImpl_Mutation_createPerson_createPerson(this._instance, this._then);

  final Mutation_createPerson_createPerson _instance;

  final TRes Function(Mutation_createPerson_createPerson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? result = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_createPerson_createPerson(
          result: result == _undefined
              ? _instance.result
              : (result as Fragment_Person?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_Person<TRes> get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Fragment_Person.stub(_then(_instance))
        : CopyWith_Fragment_Person(local$result, (e) => call(result: e));
  }
}

class _CopyWithStubImpl_Mutation_createPerson_createPerson<TRes>
    implements CopyWith_Mutation_createPerson_createPerson<TRes> {
  _CopyWithStubImpl_Mutation_createPerson_createPerson(this._res);

  TRes _res;

  call({Fragment_Person? result, String? $__typename}) => _res;

  CopyWith_Fragment_Person<TRes> get result =>
      CopyWith_Fragment_Person.stub(_res);
}

class Variables_Mutation_updatePerson {
  factory Variables_Mutation_updatePerson({
    required String id,
    Input_UpdatePersonInput? input,
  }) => Variables_Mutation_updatePerson._({
    r'id': id,
    if (input != null) r'input': input,
  });

  Variables_Mutation_updatePerson._(this._$data);

  factory Variables_Mutation_updatePerson.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    if (data.containsKey('input')) {
      final l$input = data['input'];
      result$data['input'] = l$input == null
          ? null
          : Input_UpdatePersonInput.fromJson((l$input as Map<String, dynamic>));
    }
    return Variables_Mutation_updatePerson._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Input_UpdatePersonInput? get input =>
      (_$data['input'] as Input_UpdatePersonInput?);

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

  CopyWith_Variables_Mutation_updatePerson<Variables_Mutation_updatePerson>
  get copyWith => CopyWith_Variables_Mutation_updatePerson(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_updatePerson ||
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

abstract class CopyWith_Variables_Mutation_updatePerson<TRes> {
  factory CopyWith_Variables_Mutation_updatePerson(
    Variables_Mutation_updatePerson instance,
    TRes Function(Variables_Mutation_updatePerson) then,
  ) = _CopyWithImpl_Variables_Mutation_updatePerson;

  factory CopyWith_Variables_Mutation_updatePerson.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_updatePerson;

  TRes call({String? id, Input_UpdatePersonInput? input});
}

class _CopyWithImpl_Variables_Mutation_updatePerson<TRes>
    implements CopyWith_Variables_Mutation_updatePerson<TRes> {
  _CopyWithImpl_Variables_Mutation_updatePerson(this._instance, this._then);

  final Variables_Mutation_updatePerson _instance;

  final TRes Function(Variables_Mutation_updatePerson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? input = _undefined}) => _then(
    Variables_Mutation_updatePerson._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
      if (input != _undefined) 'input': (input as Input_UpdatePersonInput?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_updatePerson<TRes>
    implements CopyWith_Variables_Mutation_updatePerson<TRes> {
  _CopyWithStubImpl_Variables_Mutation_updatePerson(this._res);

  TRes _res;

  call({String? id, Input_UpdatePersonInput? input}) => _res;
}

class Mutation_updatePerson {
  Mutation_updatePerson({
    this.updatePerson,
    this.$__typename = 'RootMutationType',
  });

  factory Mutation_updatePerson.fromJson(Map<String, dynamic> json) {
    final l$updatePerson = json['updatePerson'];
    final l$$__typename = json['__typename'];
    return Mutation_updatePerson(
      updatePerson: l$updatePerson == null
          ? null
          : Mutation_updatePerson_updatePerson.fromJson(
              (l$updatePerson as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_updatePerson_updatePerson? updatePerson;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updatePerson = updatePerson;
    _resultData['updatePerson'] = l$updatePerson?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updatePerson = updatePerson;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updatePerson, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_updatePerson || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updatePerson = updatePerson;
    final lOther$updatePerson = other.updatePerson;
    if (l$updatePerson != lOther$updatePerson) {
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

extension UtilityExtension_Mutation_updatePerson on Mutation_updatePerson {
  CopyWith_Mutation_updatePerson<Mutation_updatePerson> get copyWith =>
      CopyWith_Mutation_updatePerson(this, (i) => i);
}

abstract class CopyWith_Mutation_updatePerson<TRes> {
  factory CopyWith_Mutation_updatePerson(
    Mutation_updatePerson instance,
    TRes Function(Mutation_updatePerson) then,
  ) = _CopyWithImpl_Mutation_updatePerson;

  factory CopyWith_Mutation_updatePerson.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updatePerson;

  TRes call({
    Mutation_updatePerson_updatePerson? updatePerson,
    String? $__typename,
  });
  CopyWith_Mutation_updatePerson_updatePerson<TRes> get updatePerson;
}

class _CopyWithImpl_Mutation_updatePerson<TRes>
    implements CopyWith_Mutation_updatePerson<TRes> {
  _CopyWithImpl_Mutation_updatePerson(this._instance, this._then);

  final Mutation_updatePerson _instance;

  final TRes Function(Mutation_updatePerson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updatePerson = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_updatePerson(
      updatePerson: updatePerson == _undefined
          ? _instance.updatePerson
          : (updatePerson as Mutation_updatePerson_updatePerson?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_updatePerson_updatePerson<TRes> get updatePerson {
    final local$updatePerson = _instance.updatePerson;
    return local$updatePerson == null
        ? CopyWith_Mutation_updatePerson_updatePerson.stub(_then(_instance))
        : CopyWith_Mutation_updatePerson_updatePerson(
            local$updatePerson,
            (e) => call(updatePerson: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_updatePerson<TRes>
    implements CopyWith_Mutation_updatePerson<TRes> {
  _CopyWithStubImpl_Mutation_updatePerson(this._res);

  TRes _res;

  call({
    Mutation_updatePerson_updatePerson? updatePerson,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_updatePerson_updatePerson<TRes> get updatePerson =>
      CopyWith_Mutation_updatePerson_updatePerson.stub(_res);
}

const documentNodeMutationupdatePerson = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'updatePerson'),
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
            name: NameNode(value: 'UpdatePersonInput'),
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
            name: NameNode(value: 'updatePerson'),
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
                        name: NameNode(value: 'Person'),
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
    fragmentDefinitionPerson,
    fragmentDefinitionPersonNoPhoto,
    fragmentDefinitionPersonDataCheck,
  ],
);

class Mutation_updatePerson_updatePerson {
  Mutation_updatePerson_updatePerson({
    this.result,
    this.$__typename = 'UpdatePersonResult',
  });

  factory Mutation_updatePerson_updatePerson.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_updatePerson_updatePerson(
      result: l$result == null
          ? null
          : Fragment_Person.fromJson((l$result as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Person? result;

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
    if (other is! Mutation_updatePerson_updatePerson ||
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

extension UtilityExtension_Mutation_updatePerson_updatePerson
    on Mutation_updatePerson_updatePerson {
  CopyWith_Mutation_updatePerson_updatePerson<
    Mutation_updatePerson_updatePerson
  >
  get copyWith => CopyWith_Mutation_updatePerson_updatePerson(this, (i) => i);
}

abstract class CopyWith_Mutation_updatePerson_updatePerson<TRes> {
  factory CopyWith_Mutation_updatePerson_updatePerson(
    Mutation_updatePerson_updatePerson instance,
    TRes Function(Mutation_updatePerson_updatePerson) then,
  ) = _CopyWithImpl_Mutation_updatePerson_updatePerson;

  factory CopyWith_Mutation_updatePerson_updatePerson.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updatePerson_updatePerson;

  TRes call({Fragment_Person? result, String? $__typename});
  CopyWith_Fragment_Person<TRes> get result;
}

class _CopyWithImpl_Mutation_updatePerson_updatePerson<TRes>
    implements CopyWith_Mutation_updatePerson_updatePerson<TRes> {
  _CopyWithImpl_Mutation_updatePerson_updatePerson(this._instance, this._then);

  final Mutation_updatePerson_updatePerson _instance;

  final TRes Function(Mutation_updatePerson_updatePerson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? result = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_updatePerson_updatePerson(
          result: result == _undefined
              ? _instance.result
              : (result as Fragment_Person?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_Person<TRes> get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Fragment_Person.stub(_then(_instance))
        : CopyWith_Fragment_Person(local$result, (e) => call(result: e));
  }
}

class _CopyWithStubImpl_Mutation_updatePerson_updatePerson<TRes>
    implements CopyWith_Mutation_updatePerson_updatePerson<TRes> {
  _CopyWithStubImpl_Mutation_updatePerson_updatePerson(this._res);

  TRes _res;

  call({Fragment_Person? result, String? $__typename}) => _res;

  CopyWith_Fragment_Person<TRes> get result =>
      CopyWith_Fragment_Person.stub(_res);
}

class Variables_Mutation_deletePerson {
  factory Variables_Mutation_deletePerson({required String id}) =>
      Variables_Mutation_deletePerson._({r'id': id});

  Variables_Mutation_deletePerson._(this._$data);

  factory Variables_Mutation_deletePerson.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables_Mutation_deletePerson._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith_Variables_Mutation_deletePerson<Variables_Mutation_deletePerson>
  get copyWith => CopyWith_Variables_Mutation_deletePerson(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_deletePerson ||
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

abstract class CopyWith_Variables_Mutation_deletePerson<TRes> {
  factory CopyWith_Variables_Mutation_deletePerson(
    Variables_Mutation_deletePerson instance,
    TRes Function(Variables_Mutation_deletePerson) then,
  ) = _CopyWithImpl_Variables_Mutation_deletePerson;

  factory CopyWith_Variables_Mutation_deletePerson.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_deletePerson;

  TRes call({String? id});
}

class _CopyWithImpl_Variables_Mutation_deletePerson<TRes>
    implements CopyWith_Variables_Mutation_deletePerson<TRes> {
  _CopyWithImpl_Variables_Mutation_deletePerson(this._instance, this._then);

  final Variables_Mutation_deletePerson _instance;

  final TRes Function(Variables_Mutation_deletePerson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables_Mutation_deletePerson._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_deletePerson<TRes>
    implements CopyWith_Variables_Mutation_deletePerson<TRes> {
  _CopyWithStubImpl_Variables_Mutation_deletePerson(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Mutation_deletePerson {
  Mutation_deletePerson({
    this.deletePerson,
    this.$__typename = 'RootMutationType',
  });

  factory Mutation_deletePerson.fromJson(Map<String, dynamic> json) {
    final l$deletePerson = json['deletePerson'];
    final l$$__typename = json['__typename'];
    return Mutation_deletePerson(
      deletePerson: l$deletePerson == null
          ? null
          : Mutation_deletePerson_deletePerson.fromJson(
              (l$deletePerson as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_deletePerson_deletePerson? deletePerson;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deletePerson = deletePerson;
    _resultData['deletePerson'] = l$deletePerson?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deletePerson = deletePerson;
    final l$$__typename = $__typename;
    return Object.hashAll([l$deletePerson, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_deletePerson || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deletePerson = deletePerson;
    final lOther$deletePerson = other.deletePerson;
    if (l$deletePerson != lOther$deletePerson) {
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

extension UtilityExtension_Mutation_deletePerson on Mutation_deletePerson {
  CopyWith_Mutation_deletePerson<Mutation_deletePerson> get copyWith =>
      CopyWith_Mutation_deletePerson(this, (i) => i);
}

abstract class CopyWith_Mutation_deletePerson<TRes> {
  factory CopyWith_Mutation_deletePerson(
    Mutation_deletePerson instance,
    TRes Function(Mutation_deletePerson) then,
  ) = _CopyWithImpl_Mutation_deletePerson;

  factory CopyWith_Mutation_deletePerson.stub(TRes res) =
      _CopyWithStubImpl_Mutation_deletePerson;

  TRes call({
    Mutation_deletePerson_deletePerson? deletePerson,
    String? $__typename,
  });
  CopyWith_Mutation_deletePerson_deletePerson<TRes> get deletePerson;
}

class _CopyWithImpl_Mutation_deletePerson<TRes>
    implements CopyWith_Mutation_deletePerson<TRes> {
  _CopyWithImpl_Mutation_deletePerson(this._instance, this._then);

  final Mutation_deletePerson _instance;

  final TRes Function(Mutation_deletePerson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deletePerson = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_deletePerson(
      deletePerson: deletePerson == _undefined
          ? _instance.deletePerson
          : (deletePerson as Mutation_deletePerson_deletePerson?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_deletePerson_deletePerson<TRes> get deletePerson {
    final local$deletePerson = _instance.deletePerson;
    return local$deletePerson == null
        ? CopyWith_Mutation_deletePerson_deletePerson.stub(_then(_instance))
        : CopyWith_Mutation_deletePerson_deletePerson(
            local$deletePerson,
            (e) => call(deletePerson: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_deletePerson<TRes>
    implements CopyWith_Mutation_deletePerson<TRes> {
  _CopyWithStubImpl_Mutation_deletePerson(this._res);

  TRes _res;

  call({
    Mutation_deletePerson_deletePerson? deletePerson,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_deletePerson_deletePerson<TRes> get deletePerson =>
      CopyWith_Mutation_deletePerson_deletePerson.stub(_res);
}

const documentNodeMutationdeletePerson = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'deletePerson'),
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
            name: NameNode(value: 'deletePerson'),
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
                        name: NameNode(value: 'Person'),
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
    fragmentDefinitionPerson,
    fragmentDefinitionPersonNoPhoto,
    fragmentDefinitionPersonDataCheck,
  ],
);

class Mutation_deletePerson_deletePerson {
  Mutation_deletePerson_deletePerson({
    this.result,
    this.$__typename = 'DeletePersonResult',
  });

  factory Mutation_deletePerson_deletePerson.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_deletePerson_deletePerson(
      result: l$result == null
          ? null
          : Fragment_Person.fromJson((l$result as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Person? result;

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
    if (other is! Mutation_deletePerson_deletePerson ||
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

extension UtilityExtension_Mutation_deletePerson_deletePerson
    on Mutation_deletePerson_deletePerson {
  CopyWith_Mutation_deletePerson_deletePerson<
    Mutation_deletePerson_deletePerson
  >
  get copyWith => CopyWith_Mutation_deletePerson_deletePerson(this, (i) => i);
}

abstract class CopyWith_Mutation_deletePerson_deletePerson<TRes> {
  factory CopyWith_Mutation_deletePerson_deletePerson(
    Mutation_deletePerson_deletePerson instance,
    TRes Function(Mutation_deletePerson_deletePerson) then,
  ) = _CopyWithImpl_Mutation_deletePerson_deletePerson;

  factory CopyWith_Mutation_deletePerson_deletePerson.stub(TRes res) =
      _CopyWithStubImpl_Mutation_deletePerson_deletePerson;

  TRes call({Fragment_Person? result, String? $__typename});
  CopyWith_Fragment_Person<TRes> get result;
}

class _CopyWithImpl_Mutation_deletePerson_deletePerson<TRes>
    implements CopyWith_Mutation_deletePerson_deletePerson<TRes> {
  _CopyWithImpl_Mutation_deletePerson_deletePerson(this._instance, this._then);

  final Mutation_deletePerson_deletePerson _instance;

  final TRes Function(Mutation_deletePerson_deletePerson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? result = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_deletePerson_deletePerson(
          result: result == _undefined
              ? _instance.result
              : (result as Fragment_Person?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_Person<TRes> get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Fragment_Person.stub(_then(_instance))
        : CopyWith_Fragment_Person(local$result, (e) => call(result: e));
  }
}

class _CopyWithStubImpl_Mutation_deletePerson_deletePerson<TRes>
    implements CopyWith_Mutation_deletePerson_deletePerson<TRes> {
  _CopyWithStubImpl_Mutation_deletePerson_deletePerson(this._res);

  TRes _res;

  call({Fragment_Person? result, String? $__typename}) => _res;

  CopyWith_Fragment_Person<TRes> get result =>
      CopyWith_Fragment_Person.stub(_res);
}

class Variables_Mutation_recordPersonSpiritualDays {
  factory Variables_Mutation_recordPersonSpiritualDays({
    required String id,
    required Input_RecordPersonSpiritualDaysInput input,
  }) => Variables_Mutation_recordPersonSpiritualDays._({
    r'id': id,
    r'input': input,
  });

  Variables_Mutation_recordPersonSpiritualDays._(this._$data);

  factory Variables_Mutation_recordPersonSpiritualDays.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$input = data['input'];
    result$data['input'] = Input_RecordPersonSpiritualDaysInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables_Mutation_recordPersonSpiritualDays._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Input_RecordPersonSpiritualDaysInput get input =>
      (_$data['input'] as Input_RecordPersonSpiritualDaysInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith_Variables_Mutation_recordPersonSpiritualDays<
    Variables_Mutation_recordPersonSpiritualDays
  >
  get copyWith =>
      CopyWith_Variables_Mutation_recordPersonSpiritualDays(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_recordPersonSpiritualDays ||
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
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$input = input;
    return Object.hashAll([l$id, l$input]);
  }
}

abstract class CopyWith_Variables_Mutation_recordPersonSpiritualDays<TRes> {
  factory CopyWith_Variables_Mutation_recordPersonSpiritualDays(
    Variables_Mutation_recordPersonSpiritualDays instance,
    TRes Function(Variables_Mutation_recordPersonSpiritualDays) then,
  ) = _CopyWithImpl_Variables_Mutation_recordPersonSpiritualDays;

  factory CopyWith_Variables_Mutation_recordPersonSpiritualDays.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_recordPersonSpiritualDays;

  TRes call({String? id, Input_RecordPersonSpiritualDaysInput? input});
}

class _CopyWithImpl_Variables_Mutation_recordPersonSpiritualDays<TRes>
    implements CopyWith_Variables_Mutation_recordPersonSpiritualDays<TRes> {
  _CopyWithImpl_Variables_Mutation_recordPersonSpiritualDays(
    this._instance,
    this._then,
  );

  final Variables_Mutation_recordPersonSpiritualDays _instance;

  final TRes Function(Variables_Mutation_recordPersonSpiritualDays) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? input = _undefined}) => _then(
    Variables_Mutation_recordPersonSpiritualDays._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
      if (input != _undefined && input != null)
        'input': (input as Input_RecordPersonSpiritualDaysInput),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_recordPersonSpiritualDays<TRes>
    implements CopyWith_Variables_Mutation_recordPersonSpiritualDays<TRes> {
  _CopyWithStubImpl_Variables_Mutation_recordPersonSpiritualDays(this._res);

  TRes _res;

  call({String? id, Input_RecordPersonSpiritualDaysInput? input}) => _res;
}

class Mutation_recordPersonSpiritualDays {
  Mutation_recordPersonSpiritualDays({
    this.recordPersonSpiritualDays,
    this.$__typename = 'RootMutationType',
  });

  factory Mutation_recordPersonSpiritualDays.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$recordPersonSpiritualDays = json['recordPersonSpiritualDays'];
    final l$$__typename = json['__typename'];
    return Mutation_recordPersonSpiritualDays(
      recordPersonSpiritualDays: l$recordPersonSpiritualDays == null
          ? null
          : Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays.fromJson(
              (l$recordPersonSpiritualDays as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays?
  recordPersonSpiritualDays;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$recordPersonSpiritualDays = recordPersonSpiritualDays;
    _resultData['recordPersonSpiritualDays'] = l$recordPersonSpiritualDays
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$recordPersonSpiritualDays = recordPersonSpiritualDays;
    final l$$__typename = $__typename;
    return Object.hashAll([l$recordPersonSpiritualDays, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_recordPersonSpiritualDays ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$recordPersonSpiritualDays = recordPersonSpiritualDays;
    final lOther$recordPersonSpiritualDays = other.recordPersonSpiritualDays;
    if (l$recordPersonSpiritualDays != lOther$recordPersonSpiritualDays) {
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

extension UtilityExtension_Mutation_recordPersonSpiritualDays
    on Mutation_recordPersonSpiritualDays {
  CopyWith_Mutation_recordPersonSpiritualDays<
    Mutation_recordPersonSpiritualDays
  >
  get copyWith => CopyWith_Mutation_recordPersonSpiritualDays(this, (i) => i);
}

abstract class CopyWith_Mutation_recordPersonSpiritualDays<TRes> {
  factory CopyWith_Mutation_recordPersonSpiritualDays(
    Mutation_recordPersonSpiritualDays instance,
    TRes Function(Mutation_recordPersonSpiritualDays) then,
  ) = _CopyWithImpl_Mutation_recordPersonSpiritualDays;

  factory CopyWith_Mutation_recordPersonSpiritualDays.stub(TRes res) =
      _CopyWithStubImpl_Mutation_recordPersonSpiritualDays;

  TRes call({
    Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays?
    recordPersonSpiritualDays,
    String? $__typename,
  });
  CopyWith_Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays<TRes>
  get recordPersonSpiritualDays;
}

class _CopyWithImpl_Mutation_recordPersonSpiritualDays<TRes>
    implements CopyWith_Mutation_recordPersonSpiritualDays<TRes> {
  _CopyWithImpl_Mutation_recordPersonSpiritualDays(this._instance, this._then);

  final Mutation_recordPersonSpiritualDays _instance;

  final TRes Function(Mutation_recordPersonSpiritualDays) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? recordPersonSpiritualDays = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_recordPersonSpiritualDays(
      recordPersonSpiritualDays: recordPersonSpiritualDays == _undefined
          ? _instance.recordPersonSpiritualDays
          : (recordPersonSpiritualDays
                as Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays<TRes>
  get recordPersonSpiritualDays {
    final local$recordPersonSpiritualDays = _instance.recordPersonSpiritualDays;
    return local$recordPersonSpiritualDays == null
        ? CopyWith_Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays.stub(
            _then(_instance),
          )
        : CopyWith_Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays(
            local$recordPersonSpiritualDays,
            (e) => call(recordPersonSpiritualDays: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_recordPersonSpiritualDays<TRes>
    implements CopyWith_Mutation_recordPersonSpiritualDays<TRes> {
  _CopyWithStubImpl_Mutation_recordPersonSpiritualDays(this._res);

  TRes _res;

  call({
    Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays?
    recordPersonSpiritualDays,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays<TRes>
  get recordPersonSpiritualDays =>
      CopyWith_Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays.stub(
        _res,
      );
}

const documentNodeMutationrecordPersonSpiritualDays = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'recordPersonSpiritualDays'),
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
            name: NameNode(value: 'RecordPersonSpiritualDaysInput'),
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
            name: NameNode(value: 'recordPersonSpiritualDays'),
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
                        name: NameNode(value: 'Person'),
                        directives: [],
                      ),
                      FieldNode(
                        name: NameNode(value: 'latestConfession'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FragmentSpreadNode(
                              name: NameNode(value: 'PersonLatestConfession'),
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
                        name: NameNode(value: 'latestKodas'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FragmentSpreadNode(
                              name: NameNode(value: 'PersonLatestKodas'),
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
    fragmentDefinitionPerson,
    fragmentDefinitionPersonNoPhoto,
    fragmentDefinitionPersonDataCheck,
    fragmentDefinitionPersonLatestConfession,
    fragmentDefinitionPersonUser,
    fragmentDefinitionPersonLatestKodas,
  ],
);

class Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays {
  Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays({
    this.result,
    this.$__typename = 'RecordPersonSpiritualDaysResult',
  });

  factory Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays(
      result: l$result == null
          ? null
          : Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays_result.fromJson(
              (l$result as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays_result?
  result;

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
    if (other
            is! Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays ||
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

extension UtilityExtension_Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays
    on Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays {
  CopyWith_Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays<
    Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays
  >
  get copyWith =>
      CopyWith_Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays<
  TRes
> {
  factory CopyWith_Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays(
    Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays instance,
    TRes Function(Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays)
    then,
  ) = _CopyWithImpl_Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays;

  factory CopyWith_Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays.stub(
    TRes res,
  ) = _CopyWithStubImpl_Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays;

  TRes call({
    Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays_result? result,
    String? $__typename,
  });
  CopyWith_Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays_result<
    TRes
  >
  get result;
}

class _CopyWithImpl_Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays<
  TRes
>
    implements
        CopyWith_Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays<
          TRes
        > {
  _CopyWithImpl_Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays(
    this._instance,
    this._then,
  );

  final Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays _instance;

  final TRes Function(
    Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? result = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays(
      result: result == _undefined
          ? _instance.result
          : (result
                as Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays_result?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays_result<
    TRes
  >
  get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays_result.stub(
            _then(_instance),
          )
        : CopyWith_Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays_result(
            local$result,
            (e) => call(result: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays<
  TRes
>
    implements
        CopyWith_Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays<
          TRes
        > {
  _CopyWithStubImpl_Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays(
    this._res,
  );

  TRes _res;

  call({
    Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays_result? result,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays_result<
    TRes
  >
  get result =>
      CopyWith_Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays_result.stub(
        _res,
      );
}

class Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays_result
    implements Fragment_Person, Fragment_PersonNoPhoto {
  Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays_result({
    required this.id,
    required this.name,
    this.color,
    required this.userCanEdit,
    this.$__typename = 'Person',
    this.photoUpdatedAt,
    this.blurhash,
    this.dataCheck,
    this.latestConfession,
    this.latestKodas,
  });

  factory Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays_result.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$userCanEdit = json['userCanEdit'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$dataCheck = json['dataCheck'];
    final l$latestConfession = json['latestConfession'];
    final l$latestKodas = json['latestKodas'];
    return Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays_result(
      id: (l$id as String),
      name: (l$name as String),
      color: (l$color as int?),
      userCanEdit: (l$userCanEdit as bool),
      $__typename: (l$$__typename as String),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      dataCheck: l$dataCheck == null
          ? null
          : Fragment_PersonDataCheck.fromJson(
              (l$dataCheck as Map<String, dynamic>),
            ),
      latestConfession: l$latestConfession == null
          ? null
          : Fragment_PersonLatestConfession.fromJson(
              (l$latestConfession as Map<String, dynamic>),
            ),
      latestKodas: l$latestKodas == null
          ? null
          : Fragment_PersonLatestKodas.fromJson(
              (l$latestKodas as Map<String, dynamic>),
            ),
    );
  }

  final String id;

  final String name;

  final int? color;

  final bool userCanEdit;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final Fragment_PersonDataCheck? dataCheck;

  final Fragment_PersonLatestConfession? latestConfession;

  final Fragment_PersonLatestKodas? latestKodas;

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
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] = l$photoUpdatedAt == null
        ? null
        : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    final l$dataCheck = dataCheck;
    _resultData['dataCheck'] = l$dataCheck?.toJson();
    final l$latestConfession = latestConfession;
    _resultData['latestConfession'] = l$latestConfession?.toJson();
    final l$latestKodas = latestKodas;
    _resultData['latestKodas'] = l$latestKodas?.toJson();
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
    final l$dataCheck = dataCheck;
    final l$latestConfession = latestConfession;
    final l$latestKodas = latestKodas;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$userCanEdit,
      l$$__typename,
      l$photoUpdatedAt,
      l$blurhash,
      l$dataCheck,
      l$latestConfession,
      l$latestKodas,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays_result ||
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
    final l$dataCheck = dataCheck;
    final lOther$dataCheck = other.dataCheck;
    if (l$dataCheck != lOther$dataCheck) {
      return false;
    }
    final l$latestConfession = latestConfession;
    final lOther$latestConfession = other.latestConfession;
    if (l$latestConfession != lOther$latestConfession) {
      return false;
    }
    final l$latestKodas = latestKodas;
    final lOther$latestKodas = other.latestKodas;
    if (l$latestKodas != lOther$latestKodas) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays_result
    on Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays_result {
  CopyWith_Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays_result<
    Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays_result
  >
  get copyWith =>
      CopyWith_Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays_result(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays_result<
  TRes
> {
  factory CopyWith_Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays_result(
    Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays_result
    instance,
    TRes Function(
      Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays_result,
    )
    then,
  ) = _CopyWithImpl_Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays_result;

  factory CopyWith_Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays_result.stub(
    TRes res,
  ) = _CopyWithStubImpl_Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays_result;

  TRes call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Fragment_PersonDataCheck? dataCheck,
    Fragment_PersonLatestConfession? latestConfession,
    Fragment_PersonLatestKodas? latestKodas,
  });
  CopyWith_Fragment_PersonDataCheck<TRes> get dataCheck;
  CopyWith_Fragment_PersonLatestConfession<TRes> get latestConfession;
  CopyWith_Fragment_PersonLatestKodas<TRes> get latestKodas;
}

class _CopyWithImpl_Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays_result<
  TRes
>
    implements
        CopyWith_Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays_result<
          TRes
        > {
  _CopyWithImpl_Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays_result(
    this._instance,
    this._then,
  );

  final Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays_result
  _instance;

  final TRes Function(
    Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays_result,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? userCanEdit = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? dataCheck = _undefined,
    Object? latestConfession = _undefined,
    Object? latestKodas = _undefined,
  }) => _then(
    Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays_result(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      color: color == _undefined ? _instance.color : (color as int?),
      userCanEdit: userCanEdit == _undefined || userCanEdit == null
          ? _instance.userCanEdit
          : (userCanEdit as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      photoUpdatedAt: photoUpdatedAt == _undefined
          ? _instance.photoUpdatedAt
          : (photoUpdatedAt as DateTime?),
      blurhash: blurhash == _undefined
          ? _instance.blurhash
          : (blurhash as String?),
      dataCheck: dataCheck == _undefined
          ? _instance.dataCheck
          : (dataCheck as Fragment_PersonDataCheck?),
      latestConfession: latestConfession == _undefined
          ? _instance.latestConfession
          : (latestConfession as Fragment_PersonLatestConfession?),
      latestKodas: latestKodas == _undefined
          ? _instance.latestKodas
          : (latestKodas as Fragment_PersonLatestKodas?),
    ),
  );

  CopyWith_Fragment_PersonDataCheck<TRes> get dataCheck {
    final local$dataCheck = _instance.dataCheck;
    return local$dataCheck == null
        ? CopyWith_Fragment_PersonDataCheck.stub(_then(_instance))
        : CopyWith_Fragment_PersonDataCheck(
            local$dataCheck,
            (e) => call(dataCheck: e),
          );
  }

  CopyWith_Fragment_PersonLatestConfession<TRes> get latestConfession {
    final local$latestConfession = _instance.latestConfession;
    return local$latestConfession == null
        ? CopyWith_Fragment_PersonLatestConfession.stub(_then(_instance))
        : CopyWith_Fragment_PersonLatestConfession(
            local$latestConfession,
            (e) => call(latestConfession: e),
          );
  }

  CopyWith_Fragment_PersonLatestKodas<TRes> get latestKodas {
    final local$latestKodas = _instance.latestKodas;
    return local$latestKodas == null
        ? CopyWith_Fragment_PersonLatestKodas.stub(_then(_instance))
        : CopyWith_Fragment_PersonLatestKodas(
            local$latestKodas,
            (e) => call(latestKodas: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays_result<
  TRes
>
    implements
        CopyWith_Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays_result<
          TRes
        > {
  _CopyWithStubImpl_Mutation_recordPersonSpiritualDays_recordPersonSpiritualDays_result(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Fragment_PersonDataCheck? dataCheck,
    Fragment_PersonLatestConfession? latestConfession,
    Fragment_PersonLatestKodas? latestKodas,
  }) => _res;

  CopyWith_Fragment_PersonDataCheck<TRes> get dataCheck =>
      CopyWith_Fragment_PersonDataCheck.stub(_res);

  CopyWith_Fragment_PersonLatestConfession<TRes> get latestConfession =>
      CopyWith_Fragment_PersonLatestConfession.stub(_res);

  CopyWith_Fragment_PersonLatestKodas<TRes> get latestKodas =>
      CopyWith_Fragment_PersonLatestKodas.stub(_res);
}
