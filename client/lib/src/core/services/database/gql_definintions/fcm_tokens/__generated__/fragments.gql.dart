import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Fragment_FcmToken {
  Fragment_FcmToken({
    required this.uid,
    required this.token,
    required this.createdAt,
    this.$__typename = 'UsersFcmTokens',
  });

  factory Fragment_FcmToken.fromJson(Map<String, dynamic> json) {
    final l$uid = json['uid'];
    final l$token = json['token'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Fragment_FcmToken(
      uid: stringToUuid(l$uid),
      token: (l$token as String),
      createdAt: tstzFromString(l$createdAt),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue uid;

  final String token;

  final DateTime createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uid = uid;
    _resultData['uid'] = uuidToString(l$uid);
    final l$token = token;
    _resultData['token'] = l$token;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = tstzToString(l$createdAt);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uid = uid;
    final l$token = token;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([l$uid, l$token, l$createdAt, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_FcmToken || runtimeType != other.runtimeType) {
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
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
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

extension UtilityExtension_Fragment_FcmToken on Fragment_FcmToken {
  CopyWith_Fragment_FcmToken<Fragment_FcmToken> get copyWith =>
      CopyWith_Fragment_FcmToken(this, (i) => i);
}

abstract class CopyWith_Fragment_FcmToken<TRes> {
  factory CopyWith_Fragment_FcmToken(
    Fragment_FcmToken instance,
    TRes Function(Fragment_FcmToken) then,
  ) = _CopyWithImpl_Fragment_FcmToken;

  factory CopyWith_Fragment_FcmToken.stub(TRes res) =
      _CopyWithStubImpl_Fragment_FcmToken;

  TRes call({
    UuidValue? uid,
    String? token,
    DateTime? createdAt,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_FcmToken<TRes>
    implements CopyWith_Fragment_FcmToken<TRes> {
  _CopyWithImpl_Fragment_FcmToken(this._instance, this._then);

  final Fragment_FcmToken _instance;

  final TRes Function(Fragment_FcmToken) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uid = _undefined,
    Object? token = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_FcmToken(
      uid: uid == _undefined || uid == null
          ? _instance.uid
          : (uid as UuidValue),
      token: token == _undefined || token == null
          ? _instance.token
          : (token as String),
      createdAt: createdAt == _undefined || createdAt == null
          ? _instance.createdAt
          : (createdAt as DateTime),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Fragment_FcmToken<TRes>
    implements CopyWith_Fragment_FcmToken<TRes> {
  _CopyWithStubImpl_Fragment_FcmToken(this._res);

  TRes _res;

  call({
    UuidValue? uid,
    String? token,
    DateTime? createdAt,
    String? $__typename,
  }) => _res;
}

const fragmentDefinitionFcmToken = FragmentDefinitionNode(
  name: NameNode(value: 'FcmToken'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(
      name: NameNode(value: 'UsersFcmTokens'),
      isNonNull: false,
    ),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'uid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'token'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'createdAt'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
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
);
const documentNodeFragmentFcmToken = DocumentNode(
  definitions: [fragmentDefinitionFcmToken],
);
