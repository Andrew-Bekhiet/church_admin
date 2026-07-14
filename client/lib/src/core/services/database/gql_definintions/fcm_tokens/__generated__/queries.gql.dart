import 'fragments.gql.dart';
import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Query_fcmTokenByPk {
  factory Variables_Query_fcmTokenByPk({
    required UuidValue uid,
    required String token,
  }) => Variables_Query_fcmTokenByPk._({r'uid': uid, r'token': token});

  Variables_Query_fcmTokenByPk._(this._$data);

  factory Variables_Query_fcmTokenByPk.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$uid = data['uid'];
    result$data['uid'] = stringToUuid(l$uid);
    final l$token = data['token'];
    result$data['token'] = (l$token as String);
    return Variables_Query_fcmTokenByPk._(result$data);
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

  CopyWith_Variables_Query_fcmTokenByPk<Variables_Query_fcmTokenByPk>
  get copyWith => CopyWith_Variables_Query_fcmTokenByPk(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_fcmTokenByPk ||
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

abstract class CopyWith_Variables_Query_fcmTokenByPk<TRes> {
  factory CopyWith_Variables_Query_fcmTokenByPk(
    Variables_Query_fcmTokenByPk instance,
    TRes Function(Variables_Query_fcmTokenByPk) then,
  ) = _CopyWithImpl_Variables_Query_fcmTokenByPk;

  factory CopyWith_Variables_Query_fcmTokenByPk.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_fcmTokenByPk;

  TRes call({UuidValue? uid, String? token});
}

class _CopyWithImpl_Variables_Query_fcmTokenByPk<TRes>
    implements CopyWith_Variables_Query_fcmTokenByPk<TRes> {
  _CopyWithImpl_Variables_Query_fcmTokenByPk(this._instance, this._then);

  final Variables_Query_fcmTokenByPk _instance;

  final TRes Function(Variables_Query_fcmTokenByPk) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? uid = _undefined, Object? token = _undefined}) => _then(
    Variables_Query_fcmTokenByPk._({
      ..._instance._$data,
      if (uid != _undefined && uid != null) 'uid': (uid as UuidValue),
      if (token != _undefined && token != null) 'token': (token as String),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_fcmTokenByPk<TRes>
    implements CopyWith_Variables_Query_fcmTokenByPk<TRes> {
  _CopyWithStubImpl_Variables_Query_fcmTokenByPk(this._res);

  TRes _res;

  call({UuidValue? uid, String? token}) => _res;
}

class Query_fcmTokenByPk {
  Query_fcmTokenByPk({
    this.usersFcmTokensByPk,
    this.$__typename = 'query_root',
  });

  factory Query_fcmTokenByPk.fromJson(Map<String, dynamic> json) {
    final l$usersFcmTokensByPk = json['usersFcmTokensByPk'];
    final l$$__typename = json['__typename'];
    return Query_fcmTokenByPk(
      usersFcmTokensByPk: l$usersFcmTokensByPk == null
          ? null
          : Fragment_FcmToken.fromJson(
              (l$usersFcmTokensByPk as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_FcmToken? usersFcmTokensByPk;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$usersFcmTokensByPk = usersFcmTokensByPk;
    _resultData['usersFcmTokensByPk'] = l$usersFcmTokensByPk?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$usersFcmTokensByPk = usersFcmTokensByPk;
    final l$$__typename = $__typename;
    return Object.hashAll([l$usersFcmTokensByPk, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_fcmTokenByPk || runtimeType != other.runtimeType) {
      return false;
    }
    final l$usersFcmTokensByPk = usersFcmTokensByPk;
    final lOther$usersFcmTokensByPk = other.usersFcmTokensByPk;
    if (l$usersFcmTokensByPk != lOther$usersFcmTokensByPk) {
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

extension UtilityExtension_Query_fcmTokenByPk on Query_fcmTokenByPk {
  CopyWith_Query_fcmTokenByPk<Query_fcmTokenByPk> get copyWith =>
      CopyWith_Query_fcmTokenByPk(this, (i) => i);
}

abstract class CopyWith_Query_fcmTokenByPk<TRes> {
  factory CopyWith_Query_fcmTokenByPk(
    Query_fcmTokenByPk instance,
    TRes Function(Query_fcmTokenByPk) then,
  ) = _CopyWithImpl_Query_fcmTokenByPk;

  factory CopyWith_Query_fcmTokenByPk.stub(TRes res) =
      _CopyWithStubImpl_Query_fcmTokenByPk;

  TRes call({Fragment_FcmToken? usersFcmTokensByPk, String? $__typename});
  CopyWith_Fragment_FcmToken<TRes> get usersFcmTokensByPk;
}

class _CopyWithImpl_Query_fcmTokenByPk<TRes>
    implements CopyWith_Query_fcmTokenByPk<TRes> {
  _CopyWithImpl_Query_fcmTokenByPk(this._instance, this._then);

  final Query_fcmTokenByPk _instance;

  final TRes Function(Query_fcmTokenByPk) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? usersFcmTokensByPk = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_fcmTokenByPk(
      usersFcmTokensByPk: usersFcmTokensByPk == _undefined
          ? _instance.usersFcmTokensByPk
          : (usersFcmTokensByPk as Fragment_FcmToken?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_FcmToken<TRes> get usersFcmTokensByPk {
    final local$usersFcmTokensByPk = _instance.usersFcmTokensByPk;
    return local$usersFcmTokensByPk == null
        ? CopyWith_Fragment_FcmToken.stub(_then(_instance))
        : CopyWith_Fragment_FcmToken(
            local$usersFcmTokensByPk,
            (e) => call(usersFcmTokensByPk: e),
          );
  }
}

class _CopyWithStubImpl_Query_fcmTokenByPk<TRes>
    implements CopyWith_Query_fcmTokenByPk<TRes> {
  _CopyWithStubImpl_Query_fcmTokenByPk(this._res);

  TRes _res;

  call({Fragment_FcmToken? usersFcmTokensByPk, String? $__typename}) => _res;

  CopyWith_Fragment_FcmToken<TRes> get usersFcmTokensByPk =>
      CopyWith_Fragment_FcmToken.stub(_res);
}

const documentNodeQueryfcmTokenByPk = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'fcmTokenByPk'),
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
            name: NameNode(value: 'usersFcmTokensByPk'),
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
    fragmentDefinitionFcmToken,
  ],
);
