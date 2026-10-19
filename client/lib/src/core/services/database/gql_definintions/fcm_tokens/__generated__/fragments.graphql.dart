import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Fragment_DeviceToken {
  Fragment_DeviceToken({
    required this.id,
    required this.uid,
    required this.token,
    required this.createdAt,
    this.$__typename = 'DeviceToken',
  });

  factory Fragment_DeviceToken.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$uid = json['uid'];
    final l$token = json['token'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Fragment_DeviceToken(
      id: (l$id as String),
      uid: (l$uid as String),
      token: (l$token as String),
      createdAt: tstzFromString(l$createdAt),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String uid;

  final String token;

  final DateTime createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$uid = uid;
    _resultData['uid'] = l$uid;
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
    final l$id = id;
    final l$uid = uid;
    final l$token = token;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$uid, l$token, l$createdAt, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_DeviceToken || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension_Fragment_DeviceToken on Fragment_DeviceToken {
  CopyWith_Fragment_DeviceToken<Fragment_DeviceToken> get copyWith =>
      CopyWith_Fragment_DeviceToken(this, (i) => i);
}

abstract class CopyWith_Fragment_DeviceToken<TRes> {
  factory CopyWith_Fragment_DeviceToken(
    Fragment_DeviceToken instance,
    TRes Function(Fragment_DeviceToken) then,
  ) = _CopyWithImpl_Fragment_DeviceToken;

  factory CopyWith_Fragment_DeviceToken.stub(TRes res) =
      _CopyWithStubImpl_Fragment_DeviceToken;

  TRes call({
    String? id,
    String? uid,
    String? token,
    DateTime? createdAt,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_DeviceToken<TRes>
    implements CopyWith_Fragment_DeviceToken<TRes> {
  _CopyWithImpl_Fragment_DeviceToken(this._instance, this._then);

  final Fragment_DeviceToken _instance;

  final TRes Function(Fragment_DeviceToken) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? uid = _undefined,
    Object? token = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_DeviceToken(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      uid: uid == _undefined || uid == null ? _instance.uid : (uid as String),
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

class _CopyWithStubImpl_Fragment_DeviceToken<TRes>
    implements CopyWith_Fragment_DeviceToken<TRes> {
  _CopyWithStubImpl_Fragment_DeviceToken(this._res);

  TRes _res;

  call({
    String? id,
    String? uid,
    String? token,
    DateTime? createdAt,
    String? $__typename,
  }) => _res;
}

const fragmentDefinitionDeviceToken = FragmentDefinitionNode(
  name: NameNode(value: 'DeviceToken'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'DeviceToken'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
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
const documentNodeFragmentDeviceToken = DocumentNode(
  definitions: [fragmentDefinitionDeviceToken],
);
