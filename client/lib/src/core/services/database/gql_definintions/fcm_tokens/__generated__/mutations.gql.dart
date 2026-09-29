import '../../../../../graphql/__generated__/schema.graphql.dart';
import 'fragments.gql.dart';
import 'package:gql/ast.dart';

class Variables_Mutation_registerFcmToken {
  factory Variables_Mutation_registerFcmToken({
    required Input_UsersFcmTokensInsertInput object,
  }) => Variables_Mutation_registerFcmToken._({r'object': object});

  Variables_Mutation_registerFcmToken._(this._$data);

  factory Variables_Mutation_registerFcmToken.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$object = data['object'];
    result$data['object'] = Input_UsersFcmTokensInsertInput.fromJson(
      (l$object as Map<String, dynamic>),
    );
    return Variables_Mutation_registerFcmToken._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_UsersFcmTokensInsertInput get object =>
      (_$data['object'] as Input_UsersFcmTokensInsertInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$object = object;
    result$data['object'] = l$object.toJson();
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
    final l$object = object;
    final lOther$object = other.object;
    if (l$object != lOther$object) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$object = object;
    return Object.hashAll([l$object]);
  }
}

abstract class CopyWith_Variables_Mutation_registerFcmToken<TRes> {
  factory CopyWith_Variables_Mutation_registerFcmToken(
    Variables_Mutation_registerFcmToken instance,
    TRes Function(Variables_Mutation_registerFcmToken) then,
  ) = _CopyWithImpl_Variables_Mutation_registerFcmToken;

  factory CopyWith_Variables_Mutation_registerFcmToken.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_registerFcmToken;

  TRes call({Input_UsersFcmTokensInsertInput? object});
}

class _CopyWithImpl_Variables_Mutation_registerFcmToken<TRes>
    implements CopyWith_Variables_Mutation_registerFcmToken<TRes> {
  _CopyWithImpl_Variables_Mutation_registerFcmToken(this._instance, this._then);

  final Variables_Mutation_registerFcmToken _instance;

  final TRes Function(Variables_Mutation_registerFcmToken) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? object = _undefined}) => _then(
    Variables_Mutation_registerFcmToken._({
      ..._instance._$data,
      if (object != _undefined && object != null)
        'object': (object as Input_UsersFcmTokensInsertInput),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_registerFcmToken<TRes>
    implements CopyWith_Variables_Mutation_registerFcmToken<TRes> {
  _CopyWithStubImpl_Variables_Mutation_registerFcmToken(this._res);

  TRes _res;

  call({Input_UsersFcmTokensInsertInput? object}) => _res;
}

class Mutation_registerFcmToken {
  Mutation_registerFcmToken({this.insertUsersFcmTokensOne});

  factory Mutation_registerFcmToken.fromJson(Map<String, dynamic> json) {
    final l$insertUsersFcmTokensOne = json['insertUsersFcmTokensOne'];
    return Mutation_registerFcmToken(
      insertUsersFcmTokensOne: l$insertUsersFcmTokensOne == null
          ? null
          : Fragment_FcmToken.fromJson(
              (l$insertUsersFcmTokensOne as Map<String, dynamic>),
            ),
    );
  }

  final Fragment_FcmToken? insertUsersFcmTokensOne;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertUsersFcmTokensOne = insertUsersFcmTokensOne;
    _resultData['insertUsersFcmTokensOne'] = l$insertUsersFcmTokensOne
        ?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertUsersFcmTokensOne = insertUsersFcmTokensOne;
    return Object.hashAll([l$insertUsersFcmTokensOne]);
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
    final l$insertUsersFcmTokensOne = insertUsersFcmTokensOne;
    final lOther$insertUsersFcmTokensOne = other.insertUsersFcmTokensOne;
    if (l$insertUsersFcmTokensOne != lOther$insertUsersFcmTokensOne) {
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

  TRes call({Fragment_FcmToken? insertUsersFcmTokensOne});
  CopyWith_Fragment_FcmToken<TRes> get insertUsersFcmTokensOne;
}

class _CopyWithImpl_Mutation_registerFcmToken<TRes>
    implements CopyWith_Mutation_registerFcmToken<TRes> {
  _CopyWithImpl_Mutation_registerFcmToken(this._instance, this._then);

  final Mutation_registerFcmToken _instance;

  final TRes Function(Mutation_registerFcmToken) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? insertUsersFcmTokensOne = _undefined}) => _then(
    Mutation_registerFcmToken(
      insertUsersFcmTokensOne: insertUsersFcmTokensOne == _undefined
          ? _instance.insertUsersFcmTokensOne
          : (insertUsersFcmTokensOne as Fragment_FcmToken?),
    ),
  );

  CopyWith_Fragment_FcmToken<TRes> get insertUsersFcmTokensOne {
    final local$insertUsersFcmTokensOne = _instance.insertUsersFcmTokensOne;
    return local$insertUsersFcmTokensOne == null
        ? CopyWith_Fragment_FcmToken.stub(_then(_instance))
        : CopyWith_Fragment_FcmToken(
            local$insertUsersFcmTokensOne,
            (e) => call(insertUsersFcmTokensOne: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_registerFcmToken<TRes>
    implements CopyWith_Mutation_registerFcmToken<TRes> {
  _CopyWithStubImpl_Mutation_registerFcmToken(this._res);

  TRes _res;

  call({Fragment_FcmToken? insertUsersFcmTokensOne}) => _res;

  CopyWith_Fragment_FcmToken<TRes> get insertUsersFcmTokensOne =>
      CopyWith_Fragment_FcmToken.stub(_res);
}

const documentNodeMutationregisterFcmToken = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'registerFcmToken'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'object')),
          type: NamedTypeNode(
            name: NameNode(value: 'UsersFcmTokensInsertInput'),
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
            name: NameNode(value: 'insertUsersFcmTokensOne'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'object'),
                value: VariableNode(name: NameNode(value: 'object')),
              ),
              ArgumentNode(
                name: NameNode(value: 'onConflict'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'constraint'),
                      value: EnumValueNode(
                        name: NameNode(value: 'users_fcm_tokens_pkey'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'updateColumns'),
                      value: ListValueNode(values: []),
                    ),
                  ],
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'FcmToken'),
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
        ],
      ),
    ),
    fragmentDefinitionFcmToken,
  ],
);
