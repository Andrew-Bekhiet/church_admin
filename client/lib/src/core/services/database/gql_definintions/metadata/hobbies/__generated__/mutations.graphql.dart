import '../../../../../../graphql/__generated__/schema.graphql.dart';
import 'fragments.graphql.dart';

import 'package:gql/ast.dart';

class Variables_Mutation_createHobby {
  factory Variables_Mutation_createHobby({
    required Input_CreateHobbyInput input,
  }) => Variables_Mutation_createHobby._({r'input': input});

  Variables_Mutation_createHobby._(this._$data);

  factory Variables_Mutation_createHobby.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input_CreateHobbyInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables_Mutation_createHobby._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_CreateHobbyInput get input =>
      (_$data['input'] as Input_CreateHobbyInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith_Variables_Mutation_createHobby<Variables_Mutation_createHobby>
  get copyWith => CopyWith_Variables_Mutation_createHobby(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_createHobby ||
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

abstract class CopyWith_Variables_Mutation_createHobby<TRes> {
  factory CopyWith_Variables_Mutation_createHobby(
    Variables_Mutation_createHobby instance,
    TRes Function(Variables_Mutation_createHobby) then,
  ) = _CopyWithImpl_Variables_Mutation_createHobby;

  factory CopyWith_Variables_Mutation_createHobby.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_createHobby;

  TRes call({Input_CreateHobbyInput? input});
}

class _CopyWithImpl_Variables_Mutation_createHobby<TRes>
    implements CopyWith_Variables_Mutation_createHobby<TRes> {
  _CopyWithImpl_Variables_Mutation_createHobby(this._instance, this._then);

  final Variables_Mutation_createHobby _instance;

  final TRes Function(Variables_Mutation_createHobby) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables_Mutation_createHobby._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input_CreateHobbyInput),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_createHobby<TRes>
    implements CopyWith_Variables_Mutation_createHobby<TRes> {
  _CopyWithStubImpl_Variables_Mutation_createHobby(this._res);

  TRes _res;

  call({Input_CreateHobbyInput? input}) => _res;
}

class Mutation_createHobby {
  Mutation_createHobby({
    this.createHobby,
    this.$__typename = 'RootMutationType',
  });

  factory Mutation_createHobby.fromJson(Map<String, dynamic> json) {
    final l$createHobby = json['createHobby'];
    final l$$__typename = json['__typename'];
    return Mutation_createHobby(
      createHobby: l$createHobby == null
          ? null
          : Mutation_createHobby_createHobby.fromJson(
              (l$createHobby as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_createHobby_createHobby? createHobby;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createHobby = createHobby;
    _resultData['createHobby'] = l$createHobby?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createHobby = createHobby;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createHobby, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_createHobby || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createHobby = createHobby;
    final lOther$createHobby = other.createHobby;
    if (l$createHobby != lOther$createHobby) {
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

extension UtilityExtension_Mutation_createHobby on Mutation_createHobby {
  CopyWith_Mutation_createHobby<Mutation_createHobby> get copyWith =>
      CopyWith_Mutation_createHobby(this, (i) => i);
}

abstract class CopyWith_Mutation_createHobby<TRes> {
  factory CopyWith_Mutation_createHobby(
    Mutation_createHobby instance,
    TRes Function(Mutation_createHobby) then,
  ) = _CopyWithImpl_Mutation_createHobby;

  factory CopyWith_Mutation_createHobby.stub(TRes res) =
      _CopyWithStubImpl_Mutation_createHobby;

  TRes call({
    Mutation_createHobby_createHobby? createHobby,
    String? $__typename,
  });
  CopyWith_Mutation_createHobby_createHobby<TRes> get createHobby;
}

class _CopyWithImpl_Mutation_createHobby<TRes>
    implements CopyWith_Mutation_createHobby<TRes> {
  _CopyWithImpl_Mutation_createHobby(this._instance, this._then);

  final Mutation_createHobby _instance;

  final TRes Function(Mutation_createHobby) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createHobby = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_createHobby(
      createHobby: createHobby == _undefined
          ? _instance.createHobby
          : (createHobby as Mutation_createHobby_createHobby?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_createHobby_createHobby<TRes> get createHobby {
    final local$createHobby = _instance.createHobby;
    return local$createHobby == null
        ? CopyWith_Mutation_createHobby_createHobby.stub(_then(_instance))
        : CopyWith_Mutation_createHobby_createHobby(
            local$createHobby,
            (e) => call(createHobby: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_createHobby<TRes>
    implements CopyWith_Mutation_createHobby<TRes> {
  _CopyWithStubImpl_Mutation_createHobby(this._res);

  TRes _res;

  call({Mutation_createHobby_createHobby? createHobby, String? $__typename}) =>
      _res;

  CopyWith_Mutation_createHobby_createHobby<TRes> get createHobby =>
      CopyWith_Mutation_createHobby_createHobby.stub(_res);
}

const documentNodeMutationcreateHobby = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'createHobby'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'CreateHobbyInput'),
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
            name: NameNode(value: 'createHobby'),
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
                        name: NameNode(value: 'Hobby'),
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
    fragmentDefinitionHobby,
  ],
);

class Mutation_createHobby_createHobby {
  Mutation_createHobby_createHobby({
    this.result,
    this.$__typename = 'CreateHobbyResult',
  });

  factory Mutation_createHobby_createHobby.fromJson(Map<String, dynamic> json) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_createHobby_createHobby(
      result: l$result == null
          ? null
          : Fragment_Hobby.fromJson((l$result as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Hobby? result;

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
    if (other is! Mutation_createHobby_createHobby ||
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

extension UtilityExtension_Mutation_createHobby_createHobby
    on Mutation_createHobby_createHobby {
  CopyWith_Mutation_createHobby_createHobby<Mutation_createHobby_createHobby>
  get copyWith => CopyWith_Mutation_createHobby_createHobby(this, (i) => i);
}

abstract class CopyWith_Mutation_createHobby_createHobby<TRes> {
  factory CopyWith_Mutation_createHobby_createHobby(
    Mutation_createHobby_createHobby instance,
    TRes Function(Mutation_createHobby_createHobby) then,
  ) = _CopyWithImpl_Mutation_createHobby_createHobby;

  factory CopyWith_Mutation_createHobby_createHobby.stub(TRes res) =
      _CopyWithStubImpl_Mutation_createHobby_createHobby;

  TRes call({Fragment_Hobby? result, String? $__typename});
  CopyWith_Fragment_Hobby<TRes> get result;
}

class _CopyWithImpl_Mutation_createHobby_createHobby<TRes>
    implements CopyWith_Mutation_createHobby_createHobby<TRes> {
  _CopyWithImpl_Mutation_createHobby_createHobby(this._instance, this._then);

  final Mutation_createHobby_createHobby _instance;

  final TRes Function(Mutation_createHobby_createHobby) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? result = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_createHobby_createHobby(
          result: result == _undefined
              ? _instance.result
              : (result as Fragment_Hobby?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_Hobby<TRes> get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Fragment_Hobby.stub(_then(_instance))
        : CopyWith_Fragment_Hobby(local$result, (e) => call(result: e));
  }
}

class _CopyWithStubImpl_Mutation_createHobby_createHobby<TRes>
    implements CopyWith_Mutation_createHobby_createHobby<TRes> {
  _CopyWithStubImpl_Mutation_createHobby_createHobby(this._res);

  TRes _res;

  call({Fragment_Hobby? result, String? $__typename}) => _res;

  CopyWith_Fragment_Hobby<TRes> get result =>
      CopyWith_Fragment_Hobby.stub(_res);
}
