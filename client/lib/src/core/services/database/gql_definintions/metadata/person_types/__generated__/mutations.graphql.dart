import '../../../../../../graphql/__generated__/schema.graphql.dart';
import 'fragments.graphql.dart';

import 'package:gql/ast.dart';

class Variables_Mutation_createPersonType {
  factory Variables_Mutation_createPersonType({
    required Input_CreatePersonTypeInput input,
  }) => Variables_Mutation_createPersonType._({r'input': input});

  Variables_Mutation_createPersonType._(this._$data);

  factory Variables_Mutation_createPersonType.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input_CreatePersonTypeInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables_Mutation_createPersonType._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_CreatePersonTypeInput get input =>
      (_$data['input'] as Input_CreatePersonTypeInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith_Variables_Mutation_createPersonType<
    Variables_Mutation_createPersonType
  >
  get copyWith => CopyWith_Variables_Mutation_createPersonType(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_createPersonType ||
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

abstract class CopyWith_Variables_Mutation_createPersonType<TRes> {
  factory CopyWith_Variables_Mutation_createPersonType(
    Variables_Mutation_createPersonType instance,
    TRes Function(Variables_Mutation_createPersonType) then,
  ) = _CopyWithImpl_Variables_Mutation_createPersonType;

  factory CopyWith_Variables_Mutation_createPersonType.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_createPersonType;

  TRes call({Input_CreatePersonTypeInput? input});
}

class _CopyWithImpl_Variables_Mutation_createPersonType<TRes>
    implements CopyWith_Variables_Mutation_createPersonType<TRes> {
  _CopyWithImpl_Variables_Mutation_createPersonType(this._instance, this._then);

  final Variables_Mutation_createPersonType _instance;

  final TRes Function(Variables_Mutation_createPersonType) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables_Mutation_createPersonType._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input_CreatePersonTypeInput),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_createPersonType<TRes>
    implements CopyWith_Variables_Mutation_createPersonType<TRes> {
  _CopyWithStubImpl_Variables_Mutation_createPersonType(this._res);

  TRes _res;

  call({Input_CreatePersonTypeInput? input}) => _res;
}

class Mutation_createPersonType {
  Mutation_createPersonType({
    this.createPersonType,
    this.$__typename = 'RootMutationType',
  });

  factory Mutation_createPersonType.fromJson(Map<String, dynamic> json) {
    final l$createPersonType = json['createPersonType'];
    final l$$__typename = json['__typename'];
    return Mutation_createPersonType(
      createPersonType: l$createPersonType == null
          ? null
          : Mutation_createPersonType_createPersonType.fromJson(
              (l$createPersonType as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_createPersonType_createPersonType? createPersonType;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createPersonType = createPersonType;
    _resultData['createPersonType'] = l$createPersonType?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createPersonType = createPersonType;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createPersonType, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_createPersonType ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createPersonType = createPersonType;
    final lOther$createPersonType = other.createPersonType;
    if (l$createPersonType != lOther$createPersonType) {
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

extension UtilityExtension_Mutation_createPersonType
    on Mutation_createPersonType {
  CopyWith_Mutation_createPersonType<Mutation_createPersonType> get copyWith =>
      CopyWith_Mutation_createPersonType(this, (i) => i);
}

abstract class CopyWith_Mutation_createPersonType<TRes> {
  factory CopyWith_Mutation_createPersonType(
    Mutation_createPersonType instance,
    TRes Function(Mutation_createPersonType) then,
  ) = _CopyWithImpl_Mutation_createPersonType;

  factory CopyWith_Mutation_createPersonType.stub(TRes res) =
      _CopyWithStubImpl_Mutation_createPersonType;

  TRes call({
    Mutation_createPersonType_createPersonType? createPersonType,
    String? $__typename,
  });
  CopyWith_Mutation_createPersonType_createPersonType<TRes>
  get createPersonType;
}

class _CopyWithImpl_Mutation_createPersonType<TRes>
    implements CopyWith_Mutation_createPersonType<TRes> {
  _CopyWithImpl_Mutation_createPersonType(this._instance, this._then);

  final Mutation_createPersonType _instance;

  final TRes Function(Mutation_createPersonType) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createPersonType = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_createPersonType(
      createPersonType: createPersonType == _undefined
          ? _instance.createPersonType
          : (createPersonType as Mutation_createPersonType_createPersonType?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_createPersonType_createPersonType<TRes>
  get createPersonType {
    final local$createPersonType = _instance.createPersonType;
    return local$createPersonType == null
        ? CopyWith_Mutation_createPersonType_createPersonType.stub(
            _then(_instance),
          )
        : CopyWith_Mutation_createPersonType_createPersonType(
            local$createPersonType,
            (e) => call(createPersonType: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_createPersonType<TRes>
    implements CopyWith_Mutation_createPersonType<TRes> {
  _CopyWithStubImpl_Mutation_createPersonType(this._res);

  TRes _res;

  call({
    Mutation_createPersonType_createPersonType? createPersonType,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_createPersonType_createPersonType<TRes>
  get createPersonType =>
      CopyWith_Mutation_createPersonType_createPersonType.stub(_res);
}

const documentNodeMutationcreatePersonType = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'createPersonType'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'CreatePersonTypeInput'),
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
            name: NameNode(value: 'createPersonType'),
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
                        name: NameNode(value: 'PersonType'),
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
    fragmentDefinitionPersonType,
  ],
);

class Mutation_createPersonType_createPersonType {
  Mutation_createPersonType_createPersonType({
    this.result,
    this.$__typename = 'CreatePersonTypeResult',
  });

  factory Mutation_createPersonType_createPersonType.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_createPersonType_createPersonType(
      result: l$result == null
          ? null
          : Fragment_PersonType.fromJson((l$result as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_PersonType? result;

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
    if (other is! Mutation_createPersonType_createPersonType ||
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

extension UtilityExtension_Mutation_createPersonType_createPersonType
    on Mutation_createPersonType_createPersonType {
  CopyWith_Mutation_createPersonType_createPersonType<
    Mutation_createPersonType_createPersonType
  >
  get copyWith =>
      CopyWith_Mutation_createPersonType_createPersonType(this, (i) => i);
}

abstract class CopyWith_Mutation_createPersonType_createPersonType<TRes> {
  factory CopyWith_Mutation_createPersonType_createPersonType(
    Mutation_createPersonType_createPersonType instance,
    TRes Function(Mutation_createPersonType_createPersonType) then,
  ) = _CopyWithImpl_Mutation_createPersonType_createPersonType;

  factory CopyWith_Mutation_createPersonType_createPersonType.stub(TRes res) =
      _CopyWithStubImpl_Mutation_createPersonType_createPersonType;

  TRes call({Fragment_PersonType? result, String? $__typename});
  CopyWith_Fragment_PersonType<TRes> get result;
}

class _CopyWithImpl_Mutation_createPersonType_createPersonType<TRes>
    implements CopyWith_Mutation_createPersonType_createPersonType<TRes> {
  _CopyWithImpl_Mutation_createPersonType_createPersonType(
    this._instance,
    this._then,
  );

  final Mutation_createPersonType_createPersonType _instance;

  final TRes Function(Mutation_createPersonType_createPersonType) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? result = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_createPersonType_createPersonType(
          result: result == _undefined
              ? _instance.result
              : (result as Fragment_PersonType?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_PersonType<TRes> get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Fragment_PersonType.stub(_then(_instance))
        : CopyWith_Fragment_PersonType(local$result, (e) => call(result: e));
  }
}

class _CopyWithStubImpl_Mutation_createPersonType_createPersonType<TRes>
    implements CopyWith_Mutation_createPersonType_createPersonType<TRes> {
  _CopyWithStubImpl_Mutation_createPersonType_createPersonType(this._res);

  TRes _res;

  call({Fragment_PersonType? result, String? $__typename}) => _res;

  CopyWith_Fragment_PersonType<TRes> get result =>
      CopyWith_Fragment_PersonType.stub(_res);
}
