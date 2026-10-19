import '../../../../../graphql/__generated__/schema.graphql.dart';
import 'fragments.graphql.dart';

import 'package:gql/ast.dart';

class Variables_Mutation_registerFcmToken {
  factory Variables_Mutation_registerFcmToken({
    required Input_RegisterFcmTokenInput input,
  }) => Variables_Mutation_registerFcmToken._({r'input': input});

  Variables_Mutation_registerFcmToken._(this._$data);

  factory Variables_Mutation_registerFcmToken.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input_RegisterFcmTokenInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables_Mutation_registerFcmToken._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_RegisterFcmTokenInput get input =>
      (_$data['input'] as Input_RegisterFcmTokenInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith_Variables_Mutation_registerFcmToken<
    Variables_Mutation_registerFcmToken
  >
  get copyWith => CopyWith_Variables_Mutation_registerFcmToken(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_registerFcmToken ||
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

abstract class CopyWith_Variables_Mutation_registerFcmToken<TRes> {
  factory CopyWith_Variables_Mutation_registerFcmToken(
    Variables_Mutation_registerFcmToken instance,
    TRes Function(Variables_Mutation_registerFcmToken) then,
  ) = _CopyWithImpl_Variables_Mutation_registerFcmToken;

  factory CopyWith_Variables_Mutation_registerFcmToken.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_registerFcmToken;

  TRes call({Input_RegisterFcmTokenInput? input});
}

class _CopyWithImpl_Variables_Mutation_registerFcmToken<TRes>
    implements CopyWith_Variables_Mutation_registerFcmToken<TRes> {
  _CopyWithImpl_Variables_Mutation_registerFcmToken(this._instance, this._then);

  final Variables_Mutation_registerFcmToken _instance;

  final TRes Function(Variables_Mutation_registerFcmToken) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables_Mutation_registerFcmToken._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input_RegisterFcmTokenInput),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_registerFcmToken<TRes>
    implements CopyWith_Variables_Mutation_registerFcmToken<TRes> {
  _CopyWithStubImpl_Variables_Mutation_registerFcmToken(this._res);

  TRes _res;

  call({Input_RegisterFcmTokenInput? input}) => _res;
}

class Mutation_registerFcmToken {
  Mutation_registerFcmToken({
    this.registerFcmToken,
    this.$__typename = 'RootMutationType',
  });

  factory Mutation_registerFcmToken.fromJson(Map<String, dynamic> json) {
    final l$registerFcmToken = json['registerFcmToken'];
    final l$$__typename = json['__typename'];
    return Mutation_registerFcmToken(
      registerFcmToken: l$registerFcmToken == null
          ? null
          : Mutation_registerFcmToken_registerFcmToken.fromJson(
              (l$registerFcmToken as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_registerFcmToken_registerFcmToken? registerFcmToken;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$registerFcmToken = registerFcmToken;
    _resultData['registerFcmToken'] = l$registerFcmToken?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$registerFcmToken = registerFcmToken;
    final l$$__typename = $__typename;
    return Object.hashAll([l$registerFcmToken, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_registerFcmToken ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$registerFcmToken = registerFcmToken;
    final lOther$registerFcmToken = other.registerFcmToken;
    if (l$registerFcmToken != lOther$registerFcmToken) {
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

extension UtilityExtension_Mutation_registerFcmToken
    on Mutation_registerFcmToken {
  CopyWith_Mutation_registerFcmToken<Mutation_registerFcmToken> get copyWith =>
      CopyWith_Mutation_registerFcmToken(this, (i) => i);
}

abstract class CopyWith_Mutation_registerFcmToken<TRes> {
  factory CopyWith_Mutation_registerFcmToken(
    Mutation_registerFcmToken instance,
    TRes Function(Mutation_registerFcmToken) then,
  ) = _CopyWithImpl_Mutation_registerFcmToken;

  factory CopyWith_Mutation_registerFcmToken.stub(TRes res) =
      _CopyWithStubImpl_Mutation_registerFcmToken;

  TRes call({
    Mutation_registerFcmToken_registerFcmToken? registerFcmToken,
    String? $__typename,
  });
  CopyWith_Mutation_registerFcmToken_registerFcmToken<TRes>
  get registerFcmToken;
}

class _CopyWithImpl_Mutation_registerFcmToken<TRes>
    implements CopyWith_Mutation_registerFcmToken<TRes> {
  _CopyWithImpl_Mutation_registerFcmToken(this._instance, this._then);

  final Mutation_registerFcmToken _instance;

  final TRes Function(Mutation_registerFcmToken) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? registerFcmToken = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_registerFcmToken(
      registerFcmToken: registerFcmToken == _undefined
          ? _instance.registerFcmToken
          : (registerFcmToken as Mutation_registerFcmToken_registerFcmToken?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_registerFcmToken_registerFcmToken<TRes>
  get registerFcmToken {
    final local$registerFcmToken = _instance.registerFcmToken;
    return local$registerFcmToken == null
        ? CopyWith_Mutation_registerFcmToken_registerFcmToken.stub(
            _then(_instance),
          )
        : CopyWith_Mutation_registerFcmToken_registerFcmToken(
            local$registerFcmToken,
            (e) => call(registerFcmToken: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_registerFcmToken<TRes>
    implements CopyWith_Mutation_registerFcmToken<TRes> {
  _CopyWithStubImpl_Mutation_registerFcmToken(this._res);

  TRes _res;

  call({
    Mutation_registerFcmToken_registerFcmToken? registerFcmToken,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_registerFcmToken_registerFcmToken<TRes>
  get registerFcmToken =>
      CopyWith_Mutation_registerFcmToken_registerFcmToken.stub(_res);
}

const documentNodeMutationregisterFcmToken = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'registerFcmToken'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'RegisterFcmTokenInput'),
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
            name: NameNode(value: 'registerFcmToken'),
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
                        name: NameNode(value: 'DeviceToken'),
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
    fragmentDefinitionDeviceToken,
  ],
);

class Mutation_registerFcmToken_registerFcmToken {
  Mutation_registerFcmToken_registerFcmToken({
    this.result,
    this.$__typename = 'RegisterFcmTokenResult',
  });

  factory Mutation_registerFcmToken_registerFcmToken.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_registerFcmToken_registerFcmToken(
      result: l$result == null
          ? null
          : Fragment_DeviceToken.fromJson((l$result as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_DeviceToken? result;

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
    if (other is! Mutation_registerFcmToken_registerFcmToken ||
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

extension UtilityExtension_Mutation_registerFcmToken_registerFcmToken
    on Mutation_registerFcmToken_registerFcmToken {
  CopyWith_Mutation_registerFcmToken_registerFcmToken<
    Mutation_registerFcmToken_registerFcmToken
  >
  get copyWith =>
      CopyWith_Mutation_registerFcmToken_registerFcmToken(this, (i) => i);
}

abstract class CopyWith_Mutation_registerFcmToken_registerFcmToken<TRes> {
  factory CopyWith_Mutation_registerFcmToken_registerFcmToken(
    Mutation_registerFcmToken_registerFcmToken instance,
    TRes Function(Mutation_registerFcmToken_registerFcmToken) then,
  ) = _CopyWithImpl_Mutation_registerFcmToken_registerFcmToken;

  factory CopyWith_Mutation_registerFcmToken_registerFcmToken.stub(TRes res) =
      _CopyWithStubImpl_Mutation_registerFcmToken_registerFcmToken;

  TRes call({Fragment_DeviceToken? result, String? $__typename});
  CopyWith_Fragment_DeviceToken<TRes> get result;
}

class _CopyWithImpl_Mutation_registerFcmToken_registerFcmToken<TRes>
    implements CopyWith_Mutation_registerFcmToken_registerFcmToken<TRes> {
  _CopyWithImpl_Mutation_registerFcmToken_registerFcmToken(
    this._instance,
    this._then,
  );

  final Mutation_registerFcmToken_registerFcmToken _instance;

  final TRes Function(Mutation_registerFcmToken_registerFcmToken) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? result = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_registerFcmToken_registerFcmToken(
          result: result == _undefined
              ? _instance.result
              : (result as Fragment_DeviceToken?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_DeviceToken<TRes> get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Fragment_DeviceToken.stub(_then(_instance))
        : CopyWith_Fragment_DeviceToken(local$result, (e) => call(result: e));
  }
}

class _CopyWithStubImpl_Mutation_registerFcmToken_registerFcmToken<TRes>
    implements CopyWith_Mutation_registerFcmToken_registerFcmToken<TRes> {
  _CopyWithStubImpl_Mutation_registerFcmToken_registerFcmToken(this._res);

  TRes _res;

  call({Fragment_DeviceToken? result, String? $__typename}) => _res;

  CopyWith_Fragment_DeviceToken<TRes> get result =>
      CopyWith_Fragment_DeviceToken.stub(_res);
}
