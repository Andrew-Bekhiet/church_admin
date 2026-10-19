import '../../../../../../graphql/__generated__/schema.graphql.dart';
import 'fragments.graphql.dart';

import 'package:gql/ast.dart';

class Variables_Mutation_createChurch {
  factory Variables_Mutation_createChurch({
    required Input_CreateChurchInput input,
  }) => Variables_Mutation_createChurch._({r'input': input});

  Variables_Mutation_createChurch._(this._$data);

  factory Variables_Mutation_createChurch.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input_CreateChurchInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables_Mutation_createChurch._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_CreateChurchInput get input =>
      (_$data['input'] as Input_CreateChurchInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith_Variables_Mutation_createChurch<Variables_Mutation_createChurch>
  get copyWith => CopyWith_Variables_Mutation_createChurch(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_createChurch ||
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

abstract class CopyWith_Variables_Mutation_createChurch<TRes> {
  factory CopyWith_Variables_Mutation_createChurch(
    Variables_Mutation_createChurch instance,
    TRes Function(Variables_Mutation_createChurch) then,
  ) = _CopyWithImpl_Variables_Mutation_createChurch;

  factory CopyWith_Variables_Mutation_createChurch.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_createChurch;

  TRes call({Input_CreateChurchInput? input});
}

class _CopyWithImpl_Variables_Mutation_createChurch<TRes>
    implements CopyWith_Variables_Mutation_createChurch<TRes> {
  _CopyWithImpl_Variables_Mutation_createChurch(this._instance, this._then);

  final Variables_Mutation_createChurch _instance;

  final TRes Function(Variables_Mutation_createChurch) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables_Mutation_createChurch._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input_CreateChurchInput),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_createChurch<TRes>
    implements CopyWith_Variables_Mutation_createChurch<TRes> {
  _CopyWithStubImpl_Variables_Mutation_createChurch(this._res);

  TRes _res;

  call({Input_CreateChurchInput? input}) => _res;
}

class Mutation_createChurch {
  Mutation_createChurch({
    this.createChurch,
    this.$__typename = 'RootMutationType',
  });

  factory Mutation_createChurch.fromJson(Map<String, dynamic> json) {
    final l$createChurch = json['createChurch'];
    final l$$__typename = json['__typename'];
    return Mutation_createChurch(
      createChurch: l$createChurch == null
          ? null
          : Mutation_createChurch_createChurch.fromJson(
              (l$createChurch as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_createChurch_createChurch? createChurch;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createChurch = createChurch;
    _resultData['createChurch'] = l$createChurch?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createChurch = createChurch;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createChurch, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_createChurch || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createChurch = createChurch;
    final lOther$createChurch = other.createChurch;
    if (l$createChurch != lOther$createChurch) {
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

extension UtilityExtension_Mutation_createChurch on Mutation_createChurch {
  CopyWith_Mutation_createChurch<Mutation_createChurch> get copyWith =>
      CopyWith_Mutation_createChurch(this, (i) => i);
}

abstract class CopyWith_Mutation_createChurch<TRes> {
  factory CopyWith_Mutation_createChurch(
    Mutation_createChurch instance,
    TRes Function(Mutation_createChurch) then,
  ) = _CopyWithImpl_Mutation_createChurch;

  factory CopyWith_Mutation_createChurch.stub(TRes res) =
      _CopyWithStubImpl_Mutation_createChurch;

  TRes call({
    Mutation_createChurch_createChurch? createChurch,
    String? $__typename,
  });
  CopyWith_Mutation_createChurch_createChurch<TRes> get createChurch;
}

class _CopyWithImpl_Mutation_createChurch<TRes>
    implements CopyWith_Mutation_createChurch<TRes> {
  _CopyWithImpl_Mutation_createChurch(this._instance, this._then);

  final Mutation_createChurch _instance;

  final TRes Function(Mutation_createChurch) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createChurch = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_createChurch(
      createChurch: createChurch == _undefined
          ? _instance.createChurch
          : (createChurch as Mutation_createChurch_createChurch?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_createChurch_createChurch<TRes> get createChurch {
    final local$createChurch = _instance.createChurch;
    return local$createChurch == null
        ? CopyWith_Mutation_createChurch_createChurch.stub(_then(_instance))
        : CopyWith_Mutation_createChurch_createChurch(
            local$createChurch,
            (e) => call(createChurch: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_createChurch<TRes>
    implements CopyWith_Mutation_createChurch<TRes> {
  _CopyWithStubImpl_Mutation_createChurch(this._res);

  TRes _res;

  call({
    Mutation_createChurch_createChurch? createChurch,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_createChurch_createChurch<TRes> get createChurch =>
      CopyWith_Mutation_createChurch_createChurch.stub(_res);
}

const documentNodeMutationcreateChurch = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'createChurch'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'CreateChurchInput'),
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
            name: NameNode(value: 'createChurch'),
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
                        name: NameNode(value: 'Church'),
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
    fragmentDefinitionChurch,
  ],
);

class Mutation_createChurch_createChurch {
  Mutation_createChurch_createChurch({
    this.result,
    this.$__typename = 'CreateChurchResult',
  });

  factory Mutation_createChurch_createChurch.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_createChurch_createChurch(
      result: l$result == null
          ? null
          : Fragment_Church.fromJson((l$result as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Church? result;

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
    if (other is! Mutation_createChurch_createChurch ||
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

extension UtilityExtension_Mutation_createChurch_createChurch
    on Mutation_createChurch_createChurch {
  CopyWith_Mutation_createChurch_createChurch<
    Mutation_createChurch_createChurch
  >
  get copyWith => CopyWith_Mutation_createChurch_createChurch(this, (i) => i);
}

abstract class CopyWith_Mutation_createChurch_createChurch<TRes> {
  factory CopyWith_Mutation_createChurch_createChurch(
    Mutation_createChurch_createChurch instance,
    TRes Function(Mutation_createChurch_createChurch) then,
  ) = _CopyWithImpl_Mutation_createChurch_createChurch;

  factory CopyWith_Mutation_createChurch_createChurch.stub(TRes res) =
      _CopyWithStubImpl_Mutation_createChurch_createChurch;

  TRes call({Fragment_Church? result, String? $__typename});
  CopyWith_Fragment_Church<TRes> get result;
}

class _CopyWithImpl_Mutation_createChurch_createChurch<TRes>
    implements CopyWith_Mutation_createChurch_createChurch<TRes> {
  _CopyWithImpl_Mutation_createChurch_createChurch(this._instance, this._then);

  final Mutation_createChurch_createChurch _instance;

  final TRes Function(Mutation_createChurch_createChurch) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? result = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_createChurch_createChurch(
          result: result == _undefined
              ? _instance.result
              : (result as Fragment_Church?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_Church<TRes> get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Fragment_Church.stub(_then(_instance))
        : CopyWith_Fragment_Church(local$result, (e) => call(result: e));
  }
}

class _CopyWithStubImpl_Mutation_createChurch_createChurch<TRes>
    implements CopyWith_Mutation_createChurch_createChurch<TRes> {
  _CopyWithStubImpl_Mutation_createChurch_createChurch(this._res);

  TRes _res;

  call({Fragment_Church? result, String? $__typename}) => _res;

  CopyWith_Fragment_Church<TRes> get result =>
      CopyWith_Fragment_Church.stub(_res);
}
