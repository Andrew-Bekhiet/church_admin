import 'fragments.gql.dart';

import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Mutation_deleteFcmTokenByUidAndToken {
  factory Variables_Mutation_deleteFcmTokenByUidAndToken({
    required UuidValue uid,
    required String token,
  }) => Variables_Mutation_deleteFcmTokenByUidAndToken._({
    r'uid': uid,
    r'token': token,
  });

  Variables_Mutation_deleteFcmTokenByUidAndToken._(this._$data);

  factory Variables_Mutation_deleteFcmTokenByUidAndToken.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$uid = data['uid'];
    result$data['uid'] = stringToUuid(l$uid);
    final l$token = data['token'];
    result$data['token'] = (l$token as String);
    return Variables_Mutation_deleteFcmTokenByUidAndToken._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get uid => (_$data['uid'] as UuidValue);

  String get token => (_$data['token'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$uid = uid;
    result$data['uid'] = uuidToString(l$uid);
    final l$token = token;
    result$data['token'] = l$token;
    return result$data;
  }

  CopyWith_Variables_Mutation_deleteFcmTokenByUidAndToken<
    Variables_Mutation_deleteFcmTokenByUidAndToken
  >
  get copyWith =>
      CopyWith_Variables_Mutation_deleteFcmTokenByUidAndToken(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_deleteFcmTokenByUidAndToken ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uid = uid;
    final lOther$uid = other.uid;
    if (l$uid != lOther$uid) {
      return false;
    }
    final l$token = token;
    final lOther$token = other.token;
    if (l$token != lOther$token) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$uid = uid;
    final l$token = token;
    return Object.hashAll([l$uid, l$token]);
  }
}

abstract class CopyWith_Variables_Mutation_deleteFcmTokenByUidAndToken<TRes> {
  factory CopyWith_Variables_Mutation_deleteFcmTokenByUidAndToken(
    Variables_Mutation_deleteFcmTokenByUidAndToken instance,
    TRes Function(Variables_Mutation_deleteFcmTokenByUidAndToken) then,
  ) = _CopyWithImpl_Variables_Mutation_deleteFcmTokenByUidAndToken;

  factory CopyWith_Variables_Mutation_deleteFcmTokenByUidAndToken.stub(
    TRes res,
  ) = _CopyWithStubImpl_Variables_Mutation_deleteFcmTokenByUidAndToken;

  TRes call({UuidValue? uid, String? token});
}

class _CopyWithImpl_Variables_Mutation_deleteFcmTokenByUidAndToken<TRes>
    implements CopyWith_Variables_Mutation_deleteFcmTokenByUidAndToken<TRes> {
  _CopyWithImpl_Variables_Mutation_deleteFcmTokenByUidAndToken(
    this._instance,
    this._then,
  );

  final Variables_Mutation_deleteFcmTokenByUidAndToken _instance;

  final TRes Function(Variables_Mutation_deleteFcmTokenByUidAndToken) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? uid = _undefined, Object? token = _undefined}) => _then(
    Variables_Mutation_deleteFcmTokenByUidAndToken._({
      ..._instance._$data,
      if (uid != _undefined && uid != null) 'uid': (uid as UuidValue),
      if (token != _undefined && token != null) 'token': (token as String),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_deleteFcmTokenByUidAndToken<TRes>
    implements CopyWith_Variables_Mutation_deleteFcmTokenByUidAndToken<TRes> {
  _CopyWithStubImpl_Variables_Mutation_deleteFcmTokenByUidAndToken(this._res);

  TRes _res;

  call({UuidValue? uid, String? token}) => _res;
}

class Mutation_deleteFcmTokenByUidAndToken {
  Mutation_deleteFcmTokenByUidAndToken({this.deleteUsersFcmTokensByPk});

  factory Mutation_deleteFcmTokenByUidAndToken.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$deleteUsersFcmTokensByPk = json['deleteUsersFcmTokensByPk'];
    return Mutation_deleteFcmTokenByUidAndToken(
      deleteUsersFcmTokensByPk: l$deleteUsersFcmTokensByPk == null
          ? null
          : Fragment_FcmToken.fromJson(
              (l$deleteUsersFcmTokensByPk as Map<String, dynamic>),
            ),
    );
  }

  final Fragment_FcmToken? deleteUsersFcmTokensByPk;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteUsersFcmTokensByPk = deleteUsersFcmTokensByPk;
    _resultData['deleteUsersFcmTokensByPk'] = l$deleteUsersFcmTokensByPk
        ?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteUsersFcmTokensByPk = deleteUsersFcmTokensByPk;
    return Object.hashAll([l$deleteUsersFcmTokensByPk]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_deleteFcmTokenByUidAndToken ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteUsersFcmTokensByPk = deleteUsersFcmTokensByPk;
    final lOther$deleteUsersFcmTokensByPk = other.deleteUsersFcmTokensByPk;
    if (l$deleteUsersFcmTokensByPk != lOther$deleteUsersFcmTokensByPk) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Mutation_deleteFcmTokenByUidAndToken
    on Mutation_deleteFcmTokenByUidAndToken {
  CopyWith_Mutation_deleteFcmTokenByUidAndToken<
    Mutation_deleteFcmTokenByUidAndToken
  >
  get copyWith => CopyWith_Mutation_deleteFcmTokenByUidAndToken(this, (i) => i);
}

abstract class CopyWith_Mutation_deleteFcmTokenByUidAndToken<TRes> {
  factory CopyWith_Mutation_deleteFcmTokenByUidAndToken(
    Mutation_deleteFcmTokenByUidAndToken instance,
    TRes Function(Mutation_deleteFcmTokenByUidAndToken) then,
  ) = _CopyWithImpl_Mutation_deleteFcmTokenByUidAndToken;

  factory CopyWith_Mutation_deleteFcmTokenByUidAndToken.stub(TRes res) =
      _CopyWithStubImpl_Mutation_deleteFcmTokenByUidAndToken;

  TRes call({Fragment_FcmToken? deleteUsersFcmTokensByPk});
  CopyWith_Fragment_FcmToken<TRes> get deleteUsersFcmTokensByPk;
}

class _CopyWithImpl_Mutation_deleteFcmTokenByUidAndToken<TRes>
    implements CopyWith_Mutation_deleteFcmTokenByUidAndToken<TRes> {
  _CopyWithImpl_Mutation_deleteFcmTokenByUidAndToken(
    this._instance,
    this._then,
  );

  final Mutation_deleteFcmTokenByUidAndToken _instance;

  final TRes Function(Mutation_deleteFcmTokenByUidAndToken) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? deleteUsersFcmTokensByPk = _undefined}) => _then(
    Mutation_deleteFcmTokenByUidAndToken(
      deleteUsersFcmTokensByPk: deleteUsersFcmTokensByPk == _undefined
          ? _instance.deleteUsersFcmTokensByPk
          : (deleteUsersFcmTokensByPk as Fragment_FcmToken?),
    ),
  );

  CopyWith_Fragment_FcmToken<TRes> get deleteUsersFcmTokensByPk {
    final local$deleteUsersFcmTokensByPk = _instance.deleteUsersFcmTokensByPk;
    return local$deleteUsersFcmTokensByPk == null
        ? CopyWith_Fragment_FcmToken.stub(_then(_instance))
        : CopyWith_Fragment_FcmToken(
            local$deleteUsersFcmTokensByPk,
            (e) => call(deleteUsersFcmTokensByPk: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_deleteFcmTokenByUidAndToken<TRes>
    implements CopyWith_Mutation_deleteFcmTokenByUidAndToken<TRes> {
  _CopyWithStubImpl_Mutation_deleteFcmTokenByUidAndToken(this._res);

  TRes _res;

  call({Fragment_FcmToken? deleteUsersFcmTokensByPk}) => _res;

  CopyWith_Fragment_FcmToken<TRes> get deleteUsersFcmTokensByPk =>
      CopyWith_Fragment_FcmToken.stub(_res);
}

const documentNodeMutationdeleteFcmTokenByUidAndToken = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'deleteFcmTokenByUidAndToken'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'uid')),
          type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'token')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'deleteUsersFcmTokensByPk'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'uid'),
                value: VariableNode(name: NameNode(value: 'uid')),
              ),
              ArgumentNode(
                name: NameNode(value: 'token'),
                value: VariableNode(name: NameNode(value: 'token')),
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
