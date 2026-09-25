import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Fragment_Invitation {
  Fragment_Invitation({
    required this.id,
    required this.userUid,
    required this.code,
    required this.createdAt,
    required this.expiresAt,
    this.claimedAt,
    this.$__typename = 'AuthInvitations',
  });

  factory Fragment_Invitation.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$userUid = json['userUid'];
    final l$code = json['code'];
    final l$createdAt = json['createdAt'];
    final l$expiresAt = json['expiresAt'];
    final l$claimedAt = json['claimedAt'];
    final l$$__typename = json['__typename'];
    return Fragment_Invitation(
      id: stringToUuid(l$id),
      userUid: stringToUuid(l$userUid),
      code: (l$code as String),
      createdAt: tstzFromString(l$createdAt),
      expiresAt: tstzFromString(l$expiresAt),
      claimedAt: l$claimedAt == null ? null : tstzFromString(l$claimedAt),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final UuidValue userUid;

  final String code;

  final DateTime createdAt;

  final DateTime expiresAt;

  final DateTime? claimedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$userUid = userUid;
    _resultData['userUid'] = uuidToString(l$userUid);
    final l$code = code;
    _resultData['code'] = l$code;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = tstzToString(l$createdAt);
    final l$expiresAt = expiresAt;
    _resultData['expiresAt'] = tstzToString(l$expiresAt);
    final l$claimedAt = claimedAt;
    _resultData['claimedAt'] = l$claimedAt == null
        ? null
        : tstzToString(l$claimedAt);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$userUid = userUid;
    final l$code = code;
    final l$createdAt = createdAt;
    final l$expiresAt = expiresAt;
    final l$claimedAt = claimedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$userUid,
      l$code,
      l$createdAt,
      l$expiresAt,
      l$claimedAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_Invitation || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$userUid = userUid;
    final lOther$userUid = other.userUid;
    if (l$userUid != lOther$userUid) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$expiresAt = expiresAt;
    final lOther$expiresAt = other.expiresAt;
    if (l$expiresAt != lOther$expiresAt) {
      return false;
    }
    final l$claimedAt = claimedAt;
    final lOther$claimedAt = other.claimedAt;
    if (l$claimedAt != lOther$claimedAt) {
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

extension UtilityExtension_Fragment_Invitation on Fragment_Invitation {
  CopyWith_Fragment_Invitation<Fragment_Invitation> get copyWith =>
      CopyWith_Fragment_Invitation(this, (i) => i);
}

abstract class CopyWith_Fragment_Invitation<TRes> {
  factory CopyWith_Fragment_Invitation(
    Fragment_Invitation instance,
    TRes Function(Fragment_Invitation) then,
  ) = _CopyWithImpl_Fragment_Invitation;

  factory CopyWith_Fragment_Invitation.stub(TRes res) =
      _CopyWithStubImpl_Fragment_Invitation;

  TRes call({
    UuidValue? id,
    UuidValue? userUid,
    String? code,
    DateTime? createdAt,
    DateTime? expiresAt,
    DateTime? claimedAt,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_Invitation<TRes>
    implements CopyWith_Fragment_Invitation<TRes> {
  _CopyWithImpl_Fragment_Invitation(this._instance, this._then);

  final Fragment_Invitation _instance;

  final TRes Function(Fragment_Invitation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? userUid = _undefined,
    Object? code = _undefined,
    Object? createdAt = _undefined,
    Object? expiresAt = _undefined,
    Object? claimedAt = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_Invitation(
      id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
      userUid: userUid == _undefined || userUid == null
          ? _instance.userUid
          : (userUid as UuidValue),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      createdAt: createdAt == _undefined || createdAt == null
          ? _instance.createdAt
          : (createdAt as DateTime),
      expiresAt: expiresAt == _undefined || expiresAt == null
          ? _instance.expiresAt
          : (expiresAt as DateTime),
      claimedAt: claimedAt == _undefined
          ? _instance.claimedAt
          : (claimedAt as DateTime?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Fragment_Invitation<TRes>
    implements CopyWith_Fragment_Invitation<TRes> {
  _CopyWithStubImpl_Fragment_Invitation(this._res);

  TRes _res;

  call({
    UuidValue? id,
    UuidValue? userUid,
    String? code,
    DateTime? createdAt,
    DateTime? expiresAt,
    DateTime? claimedAt,
    String? $__typename,
  }) => _res;
}

const fragmentDefinitionInvitation = FragmentDefinitionNode(
  name: NameNode(value: 'Invitation'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(
      name: NameNode(value: 'AuthInvitations'),
      isNonNull: false,
    ),
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
        name: NameNode(value: 'userUid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'code'),
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
        name: NameNode(value: 'expiresAt'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'claimedAt'),
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
const documentNodeFragmentInvitation = DocumentNode(
  definitions: [fragmentDefinitionInvitation],
);
