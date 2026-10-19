import '../../../../../graphql/__generated__/schema.graphql.dart';
import 'fragments.graphql.dart';

import 'package:gql/ast.dart';

class Variables_Mutation_createStreet {
  factory Variables_Mutation_createStreet({
    required Input_CreateStreetInput input,
  }) => Variables_Mutation_createStreet._({r'input': input});

  Variables_Mutation_createStreet._(this._$data);

  factory Variables_Mutation_createStreet.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input_CreateStreetInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables_Mutation_createStreet._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_CreateStreetInput get input =>
      (_$data['input'] as Input_CreateStreetInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith_Variables_Mutation_createStreet<Variables_Mutation_createStreet>
  get copyWith => CopyWith_Variables_Mutation_createStreet(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_createStreet ||
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

abstract class CopyWith_Variables_Mutation_createStreet<TRes> {
  factory CopyWith_Variables_Mutation_createStreet(
    Variables_Mutation_createStreet instance,
    TRes Function(Variables_Mutation_createStreet) then,
  ) = _CopyWithImpl_Variables_Mutation_createStreet;

  factory CopyWith_Variables_Mutation_createStreet.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_createStreet;

  TRes call({Input_CreateStreetInput? input});
}

class _CopyWithImpl_Variables_Mutation_createStreet<TRes>
    implements CopyWith_Variables_Mutation_createStreet<TRes> {
  _CopyWithImpl_Variables_Mutation_createStreet(this._instance, this._then);

  final Variables_Mutation_createStreet _instance;

  final TRes Function(Variables_Mutation_createStreet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables_Mutation_createStreet._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input_CreateStreetInput),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_createStreet<TRes>
    implements CopyWith_Variables_Mutation_createStreet<TRes> {
  _CopyWithStubImpl_Variables_Mutation_createStreet(this._res);

  TRes _res;

  call({Input_CreateStreetInput? input}) => _res;
}

class Mutation_createStreet {
  Mutation_createStreet({
    this.createStreet,
    this.$__typename = 'RootMutationType',
  });

  factory Mutation_createStreet.fromJson(Map<String, dynamic> json) {
    final l$createStreet = json['createStreet'];
    final l$$__typename = json['__typename'];
    return Mutation_createStreet(
      createStreet: l$createStreet == null
          ? null
          : Mutation_createStreet_createStreet.fromJson(
              (l$createStreet as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_createStreet_createStreet? createStreet;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createStreet = createStreet;
    _resultData['createStreet'] = l$createStreet?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createStreet = createStreet;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createStreet, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_createStreet || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createStreet = createStreet;
    final lOther$createStreet = other.createStreet;
    if (l$createStreet != lOther$createStreet) {
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

extension UtilityExtension_Mutation_createStreet on Mutation_createStreet {
  CopyWith_Mutation_createStreet<Mutation_createStreet> get copyWith =>
      CopyWith_Mutation_createStreet(this, (i) => i);
}

abstract class CopyWith_Mutation_createStreet<TRes> {
  factory CopyWith_Mutation_createStreet(
    Mutation_createStreet instance,
    TRes Function(Mutation_createStreet) then,
  ) = _CopyWithImpl_Mutation_createStreet;

  factory CopyWith_Mutation_createStreet.stub(TRes res) =
      _CopyWithStubImpl_Mutation_createStreet;

  TRes call({
    Mutation_createStreet_createStreet? createStreet,
    String? $__typename,
  });
  CopyWith_Mutation_createStreet_createStreet<TRes> get createStreet;
}

class _CopyWithImpl_Mutation_createStreet<TRes>
    implements CopyWith_Mutation_createStreet<TRes> {
  _CopyWithImpl_Mutation_createStreet(this._instance, this._then);

  final Mutation_createStreet _instance;

  final TRes Function(Mutation_createStreet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createStreet = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_createStreet(
      createStreet: createStreet == _undefined
          ? _instance.createStreet
          : (createStreet as Mutation_createStreet_createStreet?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_createStreet_createStreet<TRes> get createStreet {
    final local$createStreet = _instance.createStreet;
    return local$createStreet == null
        ? CopyWith_Mutation_createStreet_createStreet.stub(_then(_instance))
        : CopyWith_Mutation_createStreet_createStreet(
            local$createStreet,
            (e) => call(createStreet: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_createStreet<TRes>
    implements CopyWith_Mutation_createStreet<TRes> {
  _CopyWithStubImpl_Mutation_createStreet(this._res);

  TRes _res;

  call({
    Mutation_createStreet_createStreet? createStreet,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_createStreet_createStreet<TRes> get createStreet =>
      CopyWith_Mutation_createStreet_createStreet.stub(_res);
}

const documentNodeMutationcreateStreet = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'createStreet'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'CreateStreetInput'),
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
            name: NameNode(value: 'createStreet'),
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
                        name: NameNode(value: 'StreetWithLine'),
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
    fragmentDefinitionStreetWithLine,
    fragmentDefinitionStreet,
  ],
);

class Mutation_createStreet_createStreet {
  Mutation_createStreet_createStreet({
    this.result,
    this.$__typename = 'CreateStreetResult',
  });

  factory Mutation_createStreet_createStreet.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_createStreet_createStreet(
      result: l$result == null
          ? null
          : Fragment_StreetWithLine.fromJson(
              (l$result as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_StreetWithLine? result;

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
    if (other is! Mutation_createStreet_createStreet ||
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

extension UtilityExtension_Mutation_createStreet_createStreet
    on Mutation_createStreet_createStreet {
  CopyWith_Mutation_createStreet_createStreet<
    Mutation_createStreet_createStreet
  >
  get copyWith => CopyWith_Mutation_createStreet_createStreet(this, (i) => i);
}

abstract class CopyWith_Mutation_createStreet_createStreet<TRes> {
  factory CopyWith_Mutation_createStreet_createStreet(
    Mutation_createStreet_createStreet instance,
    TRes Function(Mutation_createStreet_createStreet) then,
  ) = _CopyWithImpl_Mutation_createStreet_createStreet;

  factory CopyWith_Mutation_createStreet_createStreet.stub(TRes res) =
      _CopyWithStubImpl_Mutation_createStreet_createStreet;

  TRes call({Fragment_StreetWithLine? result, String? $__typename});
  CopyWith_Fragment_StreetWithLine<TRes> get result;
}

class _CopyWithImpl_Mutation_createStreet_createStreet<TRes>
    implements CopyWith_Mutation_createStreet_createStreet<TRes> {
  _CopyWithImpl_Mutation_createStreet_createStreet(this._instance, this._then);

  final Mutation_createStreet_createStreet _instance;

  final TRes Function(Mutation_createStreet_createStreet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? result = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_createStreet_createStreet(
          result: result == _undefined
              ? _instance.result
              : (result as Fragment_StreetWithLine?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_StreetWithLine<TRes> get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Fragment_StreetWithLine.stub(_then(_instance))
        : CopyWith_Fragment_StreetWithLine(
            local$result,
            (e) => call(result: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_createStreet_createStreet<TRes>
    implements CopyWith_Mutation_createStreet_createStreet<TRes> {
  _CopyWithStubImpl_Mutation_createStreet_createStreet(this._res);

  TRes _res;

  call({Fragment_StreetWithLine? result, String? $__typename}) => _res;

  CopyWith_Fragment_StreetWithLine<TRes> get result =>
      CopyWith_Fragment_StreetWithLine.stub(_res);
}

class Variables_Mutation_updateStreet {
  factory Variables_Mutation_updateStreet({
    required String id,
    Input_UpdateStreetInput? input,
  }) => Variables_Mutation_updateStreet._({
    r'id': id,
    if (input != null) r'input': input,
  });

  Variables_Mutation_updateStreet._(this._$data);

  factory Variables_Mutation_updateStreet.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    if (data.containsKey('input')) {
      final l$input = data['input'];
      result$data['input'] = l$input == null
          ? null
          : Input_UpdateStreetInput.fromJson((l$input as Map<String, dynamic>));
    }
    return Variables_Mutation_updateStreet._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Input_UpdateStreetInput? get input =>
      (_$data['input'] as Input_UpdateStreetInput?);

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

  CopyWith_Variables_Mutation_updateStreet<Variables_Mutation_updateStreet>
  get copyWith => CopyWith_Variables_Mutation_updateStreet(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_updateStreet ||
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

abstract class CopyWith_Variables_Mutation_updateStreet<TRes> {
  factory CopyWith_Variables_Mutation_updateStreet(
    Variables_Mutation_updateStreet instance,
    TRes Function(Variables_Mutation_updateStreet) then,
  ) = _CopyWithImpl_Variables_Mutation_updateStreet;

  factory CopyWith_Variables_Mutation_updateStreet.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_updateStreet;

  TRes call({String? id, Input_UpdateStreetInput? input});
}

class _CopyWithImpl_Variables_Mutation_updateStreet<TRes>
    implements CopyWith_Variables_Mutation_updateStreet<TRes> {
  _CopyWithImpl_Variables_Mutation_updateStreet(this._instance, this._then);

  final Variables_Mutation_updateStreet _instance;

  final TRes Function(Variables_Mutation_updateStreet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? input = _undefined}) => _then(
    Variables_Mutation_updateStreet._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
      if (input != _undefined) 'input': (input as Input_UpdateStreetInput?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_updateStreet<TRes>
    implements CopyWith_Variables_Mutation_updateStreet<TRes> {
  _CopyWithStubImpl_Variables_Mutation_updateStreet(this._res);

  TRes _res;

  call({String? id, Input_UpdateStreetInput? input}) => _res;
}

class Mutation_updateStreet {
  Mutation_updateStreet({
    this.updateStreet,
    this.$__typename = 'RootMutationType',
  });

  factory Mutation_updateStreet.fromJson(Map<String, dynamic> json) {
    final l$updateStreet = json['updateStreet'];
    final l$$__typename = json['__typename'];
    return Mutation_updateStreet(
      updateStreet: l$updateStreet == null
          ? null
          : Mutation_updateStreet_updateStreet.fromJson(
              (l$updateStreet as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_updateStreet_updateStreet? updateStreet;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateStreet = updateStreet;
    _resultData['updateStreet'] = l$updateStreet?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateStreet = updateStreet;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateStreet, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_updateStreet || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateStreet = updateStreet;
    final lOther$updateStreet = other.updateStreet;
    if (l$updateStreet != lOther$updateStreet) {
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

extension UtilityExtension_Mutation_updateStreet on Mutation_updateStreet {
  CopyWith_Mutation_updateStreet<Mutation_updateStreet> get copyWith =>
      CopyWith_Mutation_updateStreet(this, (i) => i);
}

abstract class CopyWith_Mutation_updateStreet<TRes> {
  factory CopyWith_Mutation_updateStreet(
    Mutation_updateStreet instance,
    TRes Function(Mutation_updateStreet) then,
  ) = _CopyWithImpl_Mutation_updateStreet;

  factory CopyWith_Mutation_updateStreet.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updateStreet;

  TRes call({
    Mutation_updateStreet_updateStreet? updateStreet,
    String? $__typename,
  });
  CopyWith_Mutation_updateStreet_updateStreet<TRes> get updateStreet;
}

class _CopyWithImpl_Mutation_updateStreet<TRes>
    implements CopyWith_Mutation_updateStreet<TRes> {
  _CopyWithImpl_Mutation_updateStreet(this._instance, this._then);

  final Mutation_updateStreet _instance;

  final TRes Function(Mutation_updateStreet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateStreet = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_updateStreet(
      updateStreet: updateStreet == _undefined
          ? _instance.updateStreet
          : (updateStreet as Mutation_updateStreet_updateStreet?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_updateStreet_updateStreet<TRes> get updateStreet {
    final local$updateStreet = _instance.updateStreet;
    return local$updateStreet == null
        ? CopyWith_Mutation_updateStreet_updateStreet.stub(_then(_instance))
        : CopyWith_Mutation_updateStreet_updateStreet(
            local$updateStreet,
            (e) => call(updateStreet: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_updateStreet<TRes>
    implements CopyWith_Mutation_updateStreet<TRes> {
  _CopyWithStubImpl_Mutation_updateStreet(this._res);

  TRes _res;

  call({
    Mutation_updateStreet_updateStreet? updateStreet,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_updateStreet_updateStreet<TRes> get updateStreet =>
      CopyWith_Mutation_updateStreet_updateStreet.stub(_res);
}

const documentNodeMutationupdateStreet = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'updateStreet'),
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
            name: NameNode(value: 'UpdateStreetInput'),
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
            name: NameNode(value: 'updateStreet'),
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
                        name: NameNode(value: 'StreetWithLine'),
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
    fragmentDefinitionStreetWithLine,
    fragmentDefinitionStreet,
  ],
);

class Mutation_updateStreet_updateStreet {
  Mutation_updateStreet_updateStreet({
    this.result,
    this.$__typename = 'UpdateStreetResult',
  });

  factory Mutation_updateStreet_updateStreet.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_updateStreet_updateStreet(
      result: l$result == null
          ? null
          : Fragment_StreetWithLine.fromJson(
              (l$result as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_StreetWithLine? result;

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
    if (other is! Mutation_updateStreet_updateStreet ||
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

extension UtilityExtension_Mutation_updateStreet_updateStreet
    on Mutation_updateStreet_updateStreet {
  CopyWith_Mutation_updateStreet_updateStreet<
    Mutation_updateStreet_updateStreet
  >
  get copyWith => CopyWith_Mutation_updateStreet_updateStreet(this, (i) => i);
}

abstract class CopyWith_Mutation_updateStreet_updateStreet<TRes> {
  factory CopyWith_Mutation_updateStreet_updateStreet(
    Mutation_updateStreet_updateStreet instance,
    TRes Function(Mutation_updateStreet_updateStreet) then,
  ) = _CopyWithImpl_Mutation_updateStreet_updateStreet;

  factory CopyWith_Mutation_updateStreet_updateStreet.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updateStreet_updateStreet;

  TRes call({Fragment_StreetWithLine? result, String? $__typename});
  CopyWith_Fragment_StreetWithLine<TRes> get result;
}

class _CopyWithImpl_Mutation_updateStreet_updateStreet<TRes>
    implements CopyWith_Mutation_updateStreet_updateStreet<TRes> {
  _CopyWithImpl_Mutation_updateStreet_updateStreet(this._instance, this._then);

  final Mutation_updateStreet_updateStreet _instance;

  final TRes Function(Mutation_updateStreet_updateStreet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? result = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_updateStreet_updateStreet(
          result: result == _undefined
              ? _instance.result
              : (result as Fragment_StreetWithLine?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_StreetWithLine<TRes> get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Fragment_StreetWithLine.stub(_then(_instance))
        : CopyWith_Fragment_StreetWithLine(
            local$result,
            (e) => call(result: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_updateStreet_updateStreet<TRes>
    implements CopyWith_Mutation_updateStreet_updateStreet<TRes> {
  _CopyWithStubImpl_Mutation_updateStreet_updateStreet(this._res);

  TRes _res;

  call({Fragment_StreetWithLine? result, String? $__typename}) => _res;

  CopyWith_Fragment_StreetWithLine<TRes> get result =>
      CopyWith_Fragment_StreetWithLine.stub(_res);
}

class Variables_Mutation_deleteStreet {
  factory Variables_Mutation_deleteStreet({required String id}) =>
      Variables_Mutation_deleteStreet._({r'id': id});

  Variables_Mutation_deleteStreet._(this._$data);

  factory Variables_Mutation_deleteStreet.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables_Mutation_deleteStreet._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith_Variables_Mutation_deleteStreet<Variables_Mutation_deleteStreet>
  get copyWith => CopyWith_Variables_Mutation_deleteStreet(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_deleteStreet ||
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

abstract class CopyWith_Variables_Mutation_deleteStreet<TRes> {
  factory CopyWith_Variables_Mutation_deleteStreet(
    Variables_Mutation_deleteStreet instance,
    TRes Function(Variables_Mutation_deleteStreet) then,
  ) = _CopyWithImpl_Variables_Mutation_deleteStreet;

  factory CopyWith_Variables_Mutation_deleteStreet.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_deleteStreet;

  TRes call({String? id});
}

class _CopyWithImpl_Variables_Mutation_deleteStreet<TRes>
    implements CopyWith_Variables_Mutation_deleteStreet<TRes> {
  _CopyWithImpl_Variables_Mutation_deleteStreet(this._instance, this._then);

  final Variables_Mutation_deleteStreet _instance;

  final TRes Function(Variables_Mutation_deleteStreet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables_Mutation_deleteStreet._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_deleteStreet<TRes>
    implements CopyWith_Variables_Mutation_deleteStreet<TRes> {
  _CopyWithStubImpl_Variables_Mutation_deleteStreet(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Mutation_deleteStreet {
  Mutation_deleteStreet({
    this.deleteStreet,
    this.$__typename = 'RootMutationType',
  });

  factory Mutation_deleteStreet.fromJson(Map<String, dynamic> json) {
    final l$deleteStreet = json['deleteStreet'];
    final l$$__typename = json['__typename'];
    return Mutation_deleteStreet(
      deleteStreet: l$deleteStreet == null
          ? null
          : Mutation_deleteStreet_deleteStreet.fromJson(
              (l$deleteStreet as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_deleteStreet_deleteStreet? deleteStreet;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteStreet = deleteStreet;
    _resultData['deleteStreet'] = l$deleteStreet?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteStreet = deleteStreet;
    final l$$__typename = $__typename;
    return Object.hashAll([l$deleteStreet, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_deleteStreet || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteStreet = deleteStreet;
    final lOther$deleteStreet = other.deleteStreet;
    if (l$deleteStreet != lOther$deleteStreet) {
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

extension UtilityExtension_Mutation_deleteStreet on Mutation_deleteStreet {
  CopyWith_Mutation_deleteStreet<Mutation_deleteStreet> get copyWith =>
      CopyWith_Mutation_deleteStreet(this, (i) => i);
}

abstract class CopyWith_Mutation_deleteStreet<TRes> {
  factory CopyWith_Mutation_deleteStreet(
    Mutation_deleteStreet instance,
    TRes Function(Mutation_deleteStreet) then,
  ) = _CopyWithImpl_Mutation_deleteStreet;

  factory CopyWith_Mutation_deleteStreet.stub(TRes res) =
      _CopyWithStubImpl_Mutation_deleteStreet;

  TRes call({
    Mutation_deleteStreet_deleteStreet? deleteStreet,
    String? $__typename,
  });
  CopyWith_Mutation_deleteStreet_deleteStreet<TRes> get deleteStreet;
}

class _CopyWithImpl_Mutation_deleteStreet<TRes>
    implements CopyWith_Mutation_deleteStreet<TRes> {
  _CopyWithImpl_Mutation_deleteStreet(this._instance, this._then);

  final Mutation_deleteStreet _instance;

  final TRes Function(Mutation_deleteStreet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteStreet = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_deleteStreet(
      deleteStreet: deleteStreet == _undefined
          ? _instance.deleteStreet
          : (deleteStreet as Mutation_deleteStreet_deleteStreet?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_deleteStreet_deleteStreet<TRes> get deleteStreet {
    final local$deleteStreet = _instance.deleteStreet;
    return local$deleteStreet == null
        ? CopyWith_Mutation_deleteStreet_deleteStreet.stub(_then(_instance))
        : CopyWith_Mutation_deleteStreet_deleteStreet(
            local$deleteStreet,
            (e) => call(deleteStreet: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_deleteStreet<TRes>
    implements CopyWith_Mutation_deleteStreet<TRes> {
  _CopyWithStubImpl_Mutation_deleteStreet(this._res);

  TRes _res;

  call({
    Mutation_deleteStreet_deleteStreet? deleteStreet,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_deleteStreet_deleteStreet<TRes> get deleteStreet =>
      CopyWith_Mutation_deleteStreet_deleteStreet.stub(_res);
}

const documentNodeMutationdeleteStreet = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'deleteStreet'),
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
            name: NameNode(value: 'deleteStreet'),
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
    fragmentDefinitionStreet,
  ],
);

class Mutation_deleteStreet_deleteStreet {
  Mutation_deleteStreet_deleteStreet({
    this.result,
    this.$__typename = 'DeleteStreetResult',
  });

  factory Mutation_deleteStreet_deleteStreet.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_deleteStreet_deleteStreet(
      result: l$result == null
          ? null
          : Fragment_Street.fromJson((l$result as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Street? result;

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
    if (other is! Mutation_deleteStreet_deleteStreet ||
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

extension UtilityExtension_Mutation_deleteStreet_deleteStreet
    on Mutation_deleteStreet_deleteStreet {
  CopyWith_Mutation_deleteStreet_deleteStreet<
    Mutation_deleteStreet_deleteStreet
  >
  get copyWith => CopyWith_Mutation_deleteStreet_deleteStreet(this, (i) => i);
}

abstract class CopyWith_Mutation_deleteStreet_deleteStreet<TRes> {
  factory CopyWith_Mutation_deleteStreet_deleteStreet(
    Mutation_deleteStreet_deleteStreet instance,
    TRes Function(Mutation_deleteStreet_deleteStreet) then,
  ) = _CopyWithImpl_Mutation_deleteStreet_deleteStreet;

  factory CopyWith_Mutation_deleteStreet_deleteStreet.stub(TRes res) =
      _CopyWithStubImpl_Mutation_deleteStreet_deleteStreet;

  TRes call({Fragment_Street? result, String? $__typename});
  CopyWith_Fragment_Street<TRes> get result;
}

class _CopyWithImpl_Mutation_deleteStreet_deleteStreet<TRes>
    implements CopyWith_Mutation_deleteStreet_deleteStreet<TRes> {
  _CopyWithImpl_Mutation_deleteStreet_deleteStreet(this._instance, this._then);

  final Mutation_deleteStreet_deleteStreet _instance;

  final TRes Function(Mutation_deleteStreet_deleteStreet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? result = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_deleteStreet_deleteStreet(
          result: result == _undefined
              ? _instance.result
              : (result as Fragment_Street?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_Street<TRes> get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Fragment_Street.stub(_then(_instance))
        : CopyWith_Fragment_Street(local$result, (e) => call(result: e));
  }
}

class _CopyWithStubImpl_Mutation_deleteStreet_deleteStreet<TRes>
    implements CopyWith_Mutation_deleteStreet_deleteStreet<TRes> {
  _CopyWithStubImpl_Mutation_deleteStreet_deleteStreet(this._res);

  TRes _res;

  call({Fragment_Street? result, String? $__typename}) => _res;

  CopyWith_Fragment_Street<TRes> get result =>
      CopyWith_Fragment_Street.stub(_res);
}
