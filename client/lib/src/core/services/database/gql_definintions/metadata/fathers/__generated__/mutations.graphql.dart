import '../../../../../../graphql/__generated__/schema.graphql.dart';
import 'fragments.graphql.dart';

import 'package:gql/ast.dart';

class Variables_Mutation_createFather {
  factory Variables_Mutation_createFather({
    required Input_CreateFatherInput input,
  }) => Variables_Mutation_createFather._({r'input': input});

  Variables_Mutation_createFather._(this._$data);

  factory Variables_Mutation_createFather.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input_CreateFatherInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables_Mutation_createFather._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_CreateFatherInput get input =>
      (_$data['input'] as Input_CreateFatherInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith_Variables_Mutation_createFather<Variables_Mutation_createFather>
  get copyWith => CopyWith_Variables_Mutation_createFather(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_createFather ||
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

abstract class CopyWith_Variables_Mutation_createFather<TRes> {
  factory CopyWith_Variables_Mutation_createFather(
    Variables_Mutation_createFather instance,
    TRes Function(Variables_Mutation_createFather) then,
  ) = _CopyWithImpl_Variables_Mutation_createFather;

  factory CopyWith_Variables_Mutation_createFather.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_createFather;

  TRes call({Input_CreateFatherInput? input});
}

class _CopyWithImpl_Variables_Mutation_createFather<TRes>
    implements CopyWith_Variables_Mutation_createFather<TRes> {
  _CopyWithImpl_Variables_Mutation_createFather(this._instance, this._then);

  final Variables_Mutation_createFather _instance;

  final TRes Function(Variables_Mutation_createFather) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables_Mutation_createFather._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input_CreateFatherInput),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_createFather<TRes>
    implements CopyWith_Variables_Mutation_createFather<TRes> {
  _CopyWithStubImpl_Variables_Mutation_createFather(this._res);

  TRes _res;

  call({Input_CreateFatherInput? input}) => _res;
}

class Mutation_createFather {
  Mutation_createFather({
    this.createFather,
    this.$__typename = 'RootMutationType',
  });

  factory Mutation_createFather.fromJson(Map<String, dynamic> json) {
    final l$createFather = json['createFather'];
    final l$$__typename = json['__typename'];
    return Mutation_createFather(
      createFather: l$createFather == null
          ? null
          : Mutation_createFather_createFather.fromJson(
              (l$createFather as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_createFather_createFather? createFather;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createFather = createFather;
    _resultData['createFather'] = l$createFather?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createFather = createFather;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createFather, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_createFather || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createFather = createFather;
    final lOther$createFather = other.createFather;
    if (l$createFather != lOther$createFather) {
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

extension UtilityExtension_Mutation_createFather on Mutation_createFather {
  CopyWith_Mutation_createFather<Mutation_createFather> get copyWith =>
      CopyWith_Mutation_createFather(this, (i) => i);
}

abstract class CopyWith_Mutation_createFather<TRes> {
  factory CopyWith_Mutation_createFather(
    Mutation_createFather instance,
    TRes Function(Mutation_createFather) then,
  ) = _CopyWithImpl_Mutation_createFather;

  factory CopyWith_Mutation_createFather.stub(TRes res) =
      _CopyWithStubImpl_Mutation_createFather;

  TRes call({
    Mutation_createFather_createFather? createFather,
    String? $__typename,
  });
  CopyWith_Mutation_createFather_createFather<TRes> get createFather;
}

class _CopyWithImpl_Mutation_createFather<TRes>
    implements CopyWith_Mutation_createFather<TRes> {
  _CopyWithImpl_Mutation_createFather(this._instance, this._then);

  final Mutation_createFather _instance;

  final TRes Function(Mutation_createFather) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createFather = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_createFather(
      createFather: createFather == _undefined
          ? _instance.createFather
          : (createFather as Mutation_createFather_createFather?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_createFather_createFather<TRes> get createFather {
    final local$createFather = _instance.createFather;
    return local$createFather == null
        ? CopyWith_Mutation_createFather_createFather.stub(_then(_instance))
        : CopyWith_Mutation_createFather_createFather(
            local$createFather,
            (e) => call(createFather: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_createFather<TRes>
    implements CopyWith_Mutation_createFather<TRes> {
  _CopyWithStubImpl_Mutation_createFather(this._res);

  TRes _res;

  call({
    Mutation_createFather_createFather? createFather,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_createFather_createFather<TRes> get createFather =>
      CopyWith_Mutation_createFather_createFather.stub(_res);
}

const documentNodeMutationcreateFather = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'createFather'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'CreateFatherInput'),
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
            name: NameNode(value: 'createFather'),
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
                        name: NameNode(value: 'Father'),
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
    fragmentDefinitionFather,
  ],
);

class Mutation_createFather_createFather {
  Mutation_createFather_createFather({
    this.result,
    this.$__typename = 'CreateFatherResult',
  });

  factory Mutation_createFather_createFather.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_createFather_createFather(
      result: l$result == null
          ? null
          : Fragment_Father.fromJson((l$result as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Father? result;

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
    if (other is! Mutation_createFather_createFather ||
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

extension UtilityExtension_Mutation_createFather_createFather
    on Mutation_createFather_createFather {
  CopyWith_Mutation_createFather_createFather<
    Mutation_createFather_createFather
  >
  get copyWith => CopyWith_Mutation_createFather_createFather(this, (i) => i);
}

abstract class CopyWith_Mutation_createFather_createFather<TRes> {
  factory CopyWith_Mutation_createFather_createFather(
    Mutation_createFather_createFather instance,
    TRes Function(Mutation_createFather_createFather) then,
  ) = _CopyWithImpl_Mutation_createFather_createFather;

  factory CopyWith_Mutation_createFather_createFather.stub(TRes res) =
      _CopyWithStubImpl_Mutation_createFather_createFather;

  TRes call({Fragment_Father? result, String? $__typename});
  CopyWith_Fragment_Father<TRes> get result;
}

class _CopyWithImpl_Mutation_createFather_createFather<TRes>
    implements CopyWith_Mutation_createFather_createFather<TRes> {
  _CopyWithImpl_Mutation_createFather_createFather(this._instance, this._then);

  final Mutation_createFather_createFather _instance;

  final TRes Function(Mutation_createFather_createFather) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? result = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_createFather_createFather(
          result: result == _undefined
              ? _instance.result
              : (result as Fragment_Father?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_Father<TRes> get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Fragment_Father.stub(_then(_instance))
        : CopyWith_Fragment_Father(local$result, (e) => call(result: e));
  }
}

class _CopyWithStubImpl_Mutation_createFather_createFather<TRes>
    implements CopyWith_Mutation_createFather_createFather<TRes> {
  _CopyWithStubImpl_Mutation_createFather_createFather(this._res);

  TRes _res;

  call({Fragment_Father? result, String? $__typename}) => _res;

  CopyWith_Fragment_Father<TRes> get result =>
      CopyWith_Fragment_Father.stub(_res);
}
