import '../../areas/__generated__/fragments.graphql.dart';
import '../../data_checks/__generated__/fragments.graphql.dart';
import '../../fcm_tokens/__generated__/fragments.graphql.dart';
import '../../gql/__generated__/fragments.graphql.dart';
import '../../invitations/__generated__/fragments.graphql.dart';
import '../../metadata/study_years/__generated__/fragments.graphql.dart';
import '../../users_preferences/__generated__/fragments.graphql.dart';

import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Fragment_UserOverview implements Fragment_User {
  Fragment_UserOverview({
    required this.id,
    required this.uid,
    required this.name,
    this.email,
    this.photoUpdatedAt,
    this.blurhash,
    this.$__typename = 'User',
    required this.currentUserCanManageThisUser,
    this.authId,
    this.invitation,
    required this.permissions,
    this.person,
  });

  factory Fragment_UserOverview.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$uid = json['uid'];
    final l$name = json['name'];
    final l$email = json['email'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$$__typename = json['__typename'];
    final l$currentUserCanManageThisUser = json['currentUserCanManageThisUser'];
    final l$authId = json['authId'];
    final l$invitation = json['invitation'];
    final l$permissions = json['permissions'];
    final l$person = json['person'];
    return Fragment_UserOverview(
      id: (l$id as String),
      uid: (l$uid as String),
      name: (l$name as String),
      email: (l$email as String?),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      $__typename: (l$$__typename as String),
      currentUserCanManageThisUser: (l$currentUserCanManageThisUser as bool),
      authId: (l$authId as String?),
      invitation: l$invitation == null
          ? null
          : Fragment_Invitation.fromJson(
              (l$invitation as Map<String, dynamic>),
            ),
      permissions: (l$permissions as List<dynamic>)
          .map(
            (e) => Fragment_UserOverview_permissions.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      person: l$person == null
          ? null
          : Fragment_UserPerson.fromJson((l$person as Map<String, dynamic>)),
    );
  }

  final String id;

  final String uid;

  final String name;

  final String? email;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final String $__typename;

  final bool currentUserCanManageThisUser;

  final String? authId;

  final Fragment_Invitation? invitation;

  final List<Fragment_UserOverview_permissions> permissions;

  final Fragment_UserPerson? person;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$uid = uid;
    _resultData['uid'] = l$uid;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] = l$photoUpdatedAt == null
        ? null
        : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$currentUserCanManageThisUser = currentUserCanManageThisUser;
    _resultData['currentUserCanManageThisUser'] =
        l$currentUserCanManageThisUser;
    final l$authId = authId;
    _resultData['authId'] = l$authId;
    final l$invitation = invitation;
    _resultData['invitation'] = l$invitation?.toJson();
    final l$permissions = permissions;
    _resultData['permissions'] = l$permissions.map((e) => e.toJson()).toList();
    final l$person = person;
    _resultData['person'] = l$person?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$uid = uid;
    final l$name = name;
    final l$email = email;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$$__typename = $__typename;
    final l$currentUserCanManageThisUser = currentUserCanManageThisUser;
    final l$authId = authId;
    final l$invitation = invitation;
    final l$permissions = permissions;
    final l$person = person;
    return Object.hashAll([
      l$id,
      l$uid,
      l$name,
      l$email,
      l$photoUpdatedAt,
      l$blurhash,
      l$$__typename,
      l$currentUserCanManageThisUser,
      l$authId,
      l$invitation,
      Object.hashAll(l$permissions.map((v) => v)),
      l$person,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_UserOverview || runtimeType != other.runtimeType) {
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
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
      return false;
    }
    final l$blurhash = blurhash;
    final lOther$blurhash = other.blurhash;
    if (l$blurhash != lOther$blurhash) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$currentUserCanManageThisUser = currentUserCanManageThisUser;
    final lOther$currentUserCanManageThisUser =
        other.currentUserCanManageThisUser;
    if (l$currentUserCanManageThisUser != lOther$currentUserCanManageThisUser) {
      return false;
    }
    final l$authId = authId;
    final lOther$authId = other.authId;
    if (l$authId != lOther$authId) {
      return false;
    }
    final l$invitation = invitation;
    final lOther$invitation = other.invitation;
    if (l$invitation != lOther$invitation) {
      return false;
    }
    final l$permissions = permissions;
    final lOther$permissions = other.permissions;
    if (l$permissions.length != lOther$permissions.length) {
      return false;
    }
    for (int i = 0; i < l$permissions.length; i++) {
      final l$permissions$entry = l$permissions[i];
      final lOther$permissions$entry = lOther$permissions[i];
      if (l$permissions$entry != lOther$permissions$entry) {
        return false;
      }
    }
    final l$person = person;
    final lOther$person = other.person;
    if (l$person != lOther$person) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Fragment_UserOverview on Fragment_UserOverview {
  CopyWith_Fragment_UserOverview<Fragment_UserOverview> get copyWith =>
      CopyWith_Fragment_UserOverview(this, (i) => i);
}

abstract class CopyWith_Fragment_UserOverview<TRes> {
  factory CopyWith_Fragment_UserOverview(
    Fragment_UserOverview instance,
    TRes Function(Fragment_UserOverview) then,
  ) = _CopyWithImpl_Fragment_UserOverview;

  factory CopyWith_Fragment_UserOverview.stub(TRes res) =
      _CopyWithStubImpl_Fragment_UserOverview;

  TRes call({
    String? id,
    String? uid,
    String? name,
    String? email,
    DateTime? photoUpdatedAt,
    String? blurhash,
    String? $__typename,
    bool? currentUserCanManageThisUser,
    String? authId,
    Fragment_Invitation? invitation,
    List<Fragment_UserOverview_permissions>? permissions,
    Fragment_UserPerson? person,
  });
  CopyWith_Fragment_Invitation<TRes> get invitation;
  TRes permissions(
    Iterable<Fragment_UserOverview_permissions> Function(
      Iterable<
        CopyWith_Fragment_UserOverview_permissions<
          Fragment_UserOverview_permissions
        >
      >,
    )
    _fn,
  );
  CopyWith_Fragment_UserPerson<TRes> get person;
}

class _CopyWithImpl_Fragment_UserOverview<TRes>
    implements CopyWith_Fragment_UserOverview<TRes> {
  _CopyWithImpl_Fragment_UserOverview(this._instance, this._then);

  final Fragment_UserOverview _instance;

  final TRes Function(Fragment_UserOverview) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? uid = _undefined,
    Object? name = _undefined,
    Object? email = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? $__typename = _undefined,
    Object? currentUserCanManageThisUser = _undefined,
    Object? authId = _undefined,
    Object? invitation = _undefined,
    Object? permissions = _undefined,
    Object? person = _undefined,
  }) => _then(
    Fragment_UserOverview(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      uid: uid == _undefined || uid == null ? _instance.uid : (uid as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      email: email == _undefined ? _instance.email : (email as String?),
      photoUpdatedAt: photoUpdatedAt == _undefined
          ? _instance.photoUpdatedAt
          : (photoUpdatedAt as DateTime?),
      blurhash: blurhash == _undefined
          ? _instance.blurhash
          : (blurhash as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      currentUserCanManageThisUser:
          currentUserCanManageThisUser == _undefined ||
              currentUserCanManageThisUser == null
          ? _instance.currentUserCanManageThisUser
          : (currentUserCanManageThisUser as bool),
      authId: authId == _undefined ? _instance.authId : (authId as String?),
      invitation: invitation == _undefined
          ? _instance.invitation
          : (invitation as Fragment_Invitation?),
      permissions: permissions == _undefined || permissions == null
          ? _instance.permissions
          : (permissions as List<Fragment_UserOverview_permissions>),
      person: person == _undefined
          ? _instance.person
          : (person as Fragment_UserPerson?),
    ),
  );

  CopyWith_Fragment_Invitation<TRes> get invitation {
    final local$invitation = _instance.invitation;
    return local$invitation == null
        ? CopyWith_Fragment_Invitation.stub(_then(_instance))
        : CopyWith_Fragment_Invitation(
            local$invitation,
            (e) => call(invitation: e),
          );
  }

  TRes permissions(
    Iterable<Fragment_UserOverview_permissions> Function(
      Iterable<
        CopyWith_Fragment_UserOverview_permissions<
          Fragment_UserOverview_permissions
        >
      >,
    )
    _fn,
  ) => call(
    permissions: _fn(
      _instance.permissions.map(
        (e) => CopyWith_Fragment_UserOverview_permissions(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith_Fragment_UserPerson<TRes> get person {
    final local$person = _instance.person;
    return local$person == null
        ? CopyWith_Fragment_UserPerson.stub(_then(_instance))
        : CopyWith_Fragment_UserPerson(local$person, (e) => call(person: e));
  }
}

class _CopyWithStubImpl_Fragment_UserOverview<TRes>
    implements CopyWith_Fragment_UserOverview<TRes> {
  _CopyWithStubImpl_Fragment_UserOverview(this._res);

  TRes _res;

  call({
    String? id,
    String? uid,
    String? name,
    String? email,
    DateTime? photoUpdatedAt,
    String? blurhash,
    String? $__typename,
    bool? currentUserCanManageThisUser,
    String? authId,
    Fragment_Invitation? invitation,
    List<Fragment_UserOverview_permissions>? permissions,
    Fragment_UserPerson? person,
  }) => _res;

  CopyWith_Fragment_Invitation<TRes> get invitation =>
      CopyWith_Fragment_Invitation.stub(_res);

  permissions(_fn) => _res;

  CopyWith_Fragment_UserPerson<TRes> get person =>
      CopyWith_Fragment_UserPerson.stub(_res);
}

const fragmentDefinitionUserOverview = FragmentDefinitionNode(
  name: NameNode(value: 'UserOverview'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'User'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FragmentSpreadNode(
        name: NameNode(value: 'User'),
        directives: [],
      ),
      FieldNode(
        name: NameNode(value: 'currentUserCanManageThisUser'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'authId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'invitation'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'Invitation'),
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
        name: NameNode(value: 'permissions'),
        alias: null,
        arguments: [],
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
              name: NameNode(value: 'permission'),
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
      ),
      FieldNode(
        name: NameNode(value: 'person'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'UserPerson'),
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
);
const documentNodeFragmentUserOverview = DocumentNode(
  definitions: [
    fragmentDefinitionUserOverview,
    fragmentDefinitionUser,
    fragmentDefinitionInvitation,
    fragmentDefinitionUserPerson,
    fragmentDefinitionDataCheck,
    fragmentDefinitionLatestKodas,
    fragmentDefinitionLatestConfession,
  ],
);

class Fragment_UserOverview_permissions {
  Fragment_UserOverview_permissions({
    required this.id,
    required this.permission,
    this.$__typename = 'UserPermission',
  });

  factory Fragment_UserOverview_permissions.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$permission = json['permission'];
    final l$$__typename = json['__typename'];
    return Fragment_UserOverview_permissions(
      id: (l$id as String),
      permission: (l$permission as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String permission;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$permission = permission;
    _resultData['permission'] = l$permission;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$permission = permission;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$permission, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_UserOverview_permissions ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$permission = permission;
    final lOther$permission = other.permission;
    if (l$permission != lOther$permission) {
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

extension UtilityExtension_Fragment_UserOverview_permissions
    on Fragment_UserOverview_permissions {
  CopyWith_Fragment_UserOverview_permissions<Fragment_UserOverview_permissions>
  get copyWith => CopyWith_Fragment_UserOverview_permissions(this, (i) => i);
}

abstract class CopyWith_Fragment_UserOverview_permissions<TRes> {
  factory CopyWith_Fragment_UserOverview_permissions(
    Fragment_UserOverview_permissions instance,
    TRes Function(Fragment_UserOverview_permissions) then,
  ) = _CopyWithImpl_Fragment_UserOverview_permissions;

  factory CopyWith_Fragment_UserOverview_permissions.stub(TRes res) =
      _CopyWithStubImpl_Fragment_UserOverview_permissions;

  TRes call({String? id, String? permission, String? $__typename});
}

class _CopyWithImpl_Fragment_UserOverview_permissions<TRes>
    implements CopyWith_Fragment_UserOverview_permissions<TRes> {
  _CopyWithImpl_Fragment_UserOverview_permissions(this._instance, this._then);

  final Fragment_UserOverview_permissions _instance;

  final TRes Function(Fragment_UserOverview_permissions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? permission = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_UserOverview_permissions(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      permission: permission == _undefined || permission == null
          ? _instance.permission
          : (permission as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Fragment_UserOverview_permissions<TRes>
    implements CopyWith_Fragment_UserOverview_permissions<TRes> {
  _CopyWithStubImpl_Fragment_UserOverview_permissions(this._res);

  TRes _res;

  call({String? id, String? permission, String? $__typename}) => _res;
}

class Fragment_UserDetails
    implements Fragment_UserOverview, Fragment_User, Fragment_UserAdminOn {
  Fragment_UserDetails({
    required this.id,
    required this.uid,
    required this.name,
    this.email,
    this.photoUpdatedAt,
    this.blurhash,
    this.$__typename = 'User',
    required this.currentUserCanManageThisUser,
    this.authId,
    this.invitation,
    required this.permissions,
    this.person,
    this.latestEdit,
    required this.scopeGrants,
    this.preferences,
    required this.deviceTokens,
  });

  factory Fragment_UserDetails.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$uid = json['uid'];
    final l$name = json['name'];
    final l$email = json['email'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$$__typename = json['__typename'];
    final l$currentUserCanManageThisUser = json['currentUserCanManageThisUser'];
    final l$authId = json['authId'];
    final l$invitation = json['invitation'];
    final l$permissions = json['permissions'];
    final l$person = json['person'];
    final l$latestEdit = json['latestEdit'];
    final l$scopeGrants = json['scopeGrants'];
    final l$preferences = json['preferences'];
    final l$deviceTokens = json['deviceTokens'];
    return Fragment_UserDetails(
      id: (l$id as String),
      uid: (l$uid as String),
      name: (l$name as String),
      email: (l$email as String?),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      $__typename: (l$$__typename as String),
      currentUserCanManageThisUser: (l$currentUserCanManageThisUser as bool),
      authId: (l$authId as String?),
      invitation: l$invitation == null
          ? null
          : Fragment_Invitation.fromJson(
              (l$invitation as Map<String, dynamic>),
            ),
      permissions: (l$permissions as List<dynamic>)
          .map(
            (e) => Fragment_UserDetails_permissions.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      person: l$person == null
          ? null
          : Fragment_UserPerson.fromJson((l$person as Map<String, dynamic>)),
      latestEdit: l$latestEdit == null
          ? null
          : Fragment_LatestEdit.fromJson(
              (l$latestEdit as Map<String, dynamic>),
            ),
      scopeGrants: (l$scopeGrants as List<dynamic>)
          .map(
            (e) => Fragment_UserDetails_scopeGrants.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      preferences: l$preferences == null
          ? null
          : Fragment_UserPreferences.fromJson(
              (l$preferences as Map<String, dynamic>),
            ),
      deviceTokens: (l$deviceTokens as List<dynamic>)
          .map(
            (e) => Fragment_DeviceToken.fromJson((e as Map<String, dynamic>)),
          )
          .toList(),
    );
  }

  final String id;

  final String uid;

  final String name;

  final String? email;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final String $__typename;

  final bool currentUserCanManageThisUser;

  final String? authId;

  final Fragment_Invitation? invitation;

  final List<Fragment_UserDetails_permissions> permissions;

  final Fragment_UserPerson? person;

  final Fragment_LatestEdit? latestEdit;

  final List<Fragment_UserDetails_scopeGrants> scopeGrants;

  final Fragment_UserPreferences? preferences;

  final List<Fragment_DeviceToken> deviceTokens;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$uid = uid;
    _resultData['uid'] = l$uid;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] = l$photoUpdatedAt == null
        ? null
        : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$currentUserCanManageThisUser = currentUserCanManageThisUser;
    _resultData['currentUserCanManageThisUser'] =
        l$currentUserCanManageThisUser;
    final l$authId = authId;
    _resultData['authId'] = l$authId;
    final l$invitation = invitation;
    _resultData['invitation'] = l$invitation?.toJson();
    final l$permissions = permissions;
    _resultData['permissions'] = l$permissions.map((e) => e.toJson()).toList();
    final l$person = person;
    _resultData['person'] = l$person?.toJson();
    final l$latestEdit = latestEdit;
    _resultData['latestEdit'] = l$latestEdit?.toJson();
    final l$scopeGrants = scopeGrants;
    _resultData['scopeGrants'] = l$scopeGrants.map((e) => e.toJson()).toList();
    final l$preferences = preferences;
    _resultData['preferences'] = l$preferences?.toJson();
    final l$deviceTokens = deviceTokens;
    _resultData['deviceTokens'] = l$deviceTokens
        .map((e) => e.toJson())
        .toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$uid = uid;
    final l$name = name;
    final l$email = email;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$$__typename = $__typename;
    final l$currentUserCanManageThisUser = currentUserCanManageThisUser;
    final l$authId = authId;
    final l$invitation = invitation;
    final l$permissions = permissions;
    final l$person = person;
    final l$latestEdit = latestEdit;
    final l$scopeGrants = scopeGrants;
    final l$preferences = preferences;
    final l$deviceTokens = deviceTokens;
    return Object.hashAll([
      l$id,
      l$uid,
      l$name,
      l$email,
      l$photoUpdatedAt,
      l$blurhash,
      l$$__typename,
      l$currentUserCanManageThisUser,
      l$authId,
      l$invitation,
      Object.hashAll(l$permissions.map((v) => v)),
      l$person,
      l$latestEdit,
      Object.hashAll(l$scopeGrants.map((v) => v)),
      l$preferences,
      Object.hashAll(l$deviceTokens.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_UserDetails || runtimeType != other.runtimeType) {
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
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
      return false;
    }
    final l$blurhash = blurhash;
    final lOther$blurhash = other.blurhash;
    if (l$blurhash != lOther$blurhash) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$currentUserCanManageThisUser = currentUserCanManageThisUser;
    final lOther$currentUserCanManageThisUser =
        other.currentUserCanManageThisUser;
    if (l$currentUserCanManageThisUser != lOther$currentUserCanManageThisUser) {
      return false;
    }
    final l$authId = authId;
    final lOther$authId = other.authId;
    if (l$authId != lOther$authId) {
      return false;
    }
    final l$invitation = invitation;
    final lOther$invitation = other.invitation;
    if (l$invitation != lOther$invitation) {
      return false;
    }
    final l$permissions = permissions;
    final lOther$permissions = other.permissions;
    if (l$permissions.length != lOther$permissions.length) {
      return false;
    }
    for (int i = 0; i < l$permissions.length; i++) {
      final l$permissions$entry = l$permissions[i];
      final lOther$permissions$entry = lOther$permissions[i];
      if (l$permissions$entry != lOther$permissions$entry) {
        return false;
      }
    }
    final l$person = person;
    final lOther$person = other.person;
    if (l$person != lOther$person) {
      return false;
    }
    final l$latestEdit = latestEdit;
    final lOther$latestEdit = other.latestEdit;
    if (l$latestEdit != lOther$latestEdit) {
      return false;
    }
    final l$scopeGrants = scopeGrants;
    final lOther$scopeGrants = other.scopeGrants;
    if (l$scopeGrants.length != lOther$scopeGrants.length) {
      return false;
    }
    for (int i = 0; i < l$scopeGrants.length; i++) {
      final l$scopeGrants$entry = l$scopeGrants[i];
      final lOther$scopeGrants$entry = lOther$scopeGrants[i];
      if (l$scopeGrants$entry != lOther$scopeGrants$entry) {
        return false;
      }
    }
    final l$preferences = preferences;
    final lOther$preferences = other.preferences;
    if (l$preferences != lOther$preferences) {
      return false;
    }
    final l$deviceTokens = deviceTokens;
    final lOther$deviceTokens = other.deviceTokens;
    if (l$deviceTokens.length != lOther$deviceTokens.length) {
      return false;
    }
    for (int i = 0; i < l$deviceTokens.length; i++) {
      final l$deviceTokens$entry = l$deviceTokens[i];
      final lOther$deviceTokens$entry = lOther$deviceTokens[i];
      if (l$deviceTokens$entry != lOther$deviceTokens$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension_Fragment_UserDetails on Fragment_UserDetails {
  CopyWith_Fragment_UserDetails<Fragment_UserDetails> get copyWith =>
      CopyWith_Fragment_UserDetails(this, (i) => i);
}

abstract class CopyWith_Fragment_UserDetails<TRes> {
  factory CopyWith_Fragment_UserDetails(
    Fragment_UserDetails instance,
    TRes Function(Fragment_UserDetails) then,
  ) = _CopyWithImpl_Fragment_UserDetails;

  factory CopyWith_Fragment_UserDetails.stub(TRes res) =
      _CopyWithStubImpl_Fragment_UserDetails;

  TRes call({
    String? id,
    String? uid,
    String? name,
    String? email,
    DateTime? photoUpdatedAt,
    String? blurhash,
    String? $__typename,
    bool? currentUserCanManageThisUser,
    String? authId,
    Fragment_Invitation? invitation,
    List<Fragment_UserDetails_permissions>? permissions,
    Fragment_UserPerson? person,
    Fragment_LatestEdit? latestEdit,
    List<Fragment_UserDetails_scopeGrants>? scopeGrants,
    Fragment_UserPreferences? preferences,
    List<Fragment_DeviceToken>? deviceTokens,
  });
  CopyWith_Fragment_Invitation<TRes> get invitation;
  TRes permissions(
    Iterable<Fragment_UserDetails_permissions> Function(
      Iterable<
        CopyWith_Fragment_UserDetails_permissions<
          Fragment_UserDetails_permissions
        >
      >,
    )
    _fn,
  );
  CopyWith_Fragment_UserPerson<TRes> get person;
  CopyWith_Fragment_LatestEdit<TRes> get latestEdit;
  TRes scopeGrants(
    Iterable<Fragment_UserDetails_scopeGrants> Function(
      Iterable<
        CopyWith_Fragment_UserDetails_scopeGrants<
          Fragment_UserDetails_scopeGrants
        >
      >,
    )
    _fn,
  );
  CopyWith_Fragment_UserPreferences<TRes> get preferences;
  TRes deviceTokens(
    Iterable<Fragment_DeviceToken> Function(
      Iterable<CopyWith_Fragment_DeviceToken<Fragment_DeviceToken>>,
    )
    _fn,
  );
}

class _CopyWithImpl_Fragment_UserDetails<TRes>
    implements CopyWith_Fragment_UserDetails<TRes> {
  _CopyWithImpl_Fragment_UserDetails(this._instance, this._then);

  final Fragment_UserDetails _instance;

  final TRes Function(Fragment_UserDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? uid = _undefined,
    Object? name = _undefined,
    Object? email = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? $__typename = _undefined,
    Object? currentUserCanManageThisUser = _undefined,
    Object? authId = _undefined,
    Object? invitation = _undefined,
    Object? permissions = _undefined,
    Object? person = _undefined,
    Object? latestEdit = _undefined,
    Object? scopeGrants = _undefined,
    Object? preferences = _undefined,
    Object? deviceTokens = _undefined,
  }) => _then(
    Fragment_UserDetails(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      uid: uid == _undefined || uid == null ? _instance.uid : (uid as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      email: email == _undefined ? _instance.email : (email as String?),
      photoUpdatedAt: photoUpdatedAt == _undefined
          ? _instance.photoUpdatedAt
          : (photoUpdatedAt as DateTime?),
      blurhash: blurhash == _undefined
          ? _instance.blurhash
          : (blurhash as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      currentUserCanManageThisUser:
          currentUserCanManageThisUser == _undefined ||
              currentUserCanManageThisUser == null
          ? _instance.currentUserCanManageThisUser
          : (currentUserCanManageThisUser as bool),
      authId: authId == _undefined ? _instance.authId : (authId as String?),
      invitation: invitation == _undefined
          ? _instance.invitation
          : (invitation as Fragment_Invitation?),
      permissions: permissions == _undefined || permissions == null
          ? _instance.permissions
          : (permissions as List<Fragment_UserDetails_permissions>),
      person: person == _undefined
          ? _instance.person
          : (person as Fragment_UserPerson?),
      latestEdit: latestEdit == _undefined
          ? _instance.latestEdit
          : (latestEdit as Fragment_LatestEdit?),
      scopeGrants: scopeGrants == _undefined || scopeGrants == null
          ? _instance.scopeGrants
          : (scopeGrants as List<Fragment_UserDetails_scopeGrants>),
      preferences: preferences == _undefined
          ? _instance.preferences
          : (preferences as Fragment_UserPreferences?),
      deviceTokens: deviceTokens == _undefined || deviceTokens == null
          ? _instance.deviceTokens
          : (deviceTokens as List<Fragment_DeviceToken>),
    ),
  );

  CopyWith_Fragment_Invitation<TRes> get invitation {
    final local$invitation = _instance.invitation;
    return local$invitation == null
        ? CopyWith_Fragment_Invitation.stub(_then(_instance))
        : CopyWith_Fragment_Invitation(
            local$invitation,
            (e) => call(invitation: e),
          );
  }

  TRes permissions(
    Iterable<Fragment_UserDetails_permissions> Function(
      Iterable<
        CopyWith_Fragment_UserDetails_permissions<
          Fragment_UserDetails_permissions
        >
      >,
    )
    _fn,
  ) => call(
    permissions: _fn(
      _instance.permissions.map(
        (e) => CopyWith_Fragment_UserDetails_permissions(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith_Fragment_UserPerson<TRes> get person {
    final local$person = _instance.person;
    return local$person == null
        ? CopyWith_Fragment_UserPerson.stub(_then(_instance))
        : CopyWith_Fragment_UserPerson(local$person, (e) => call(person: e));
  }

  CopyWith_Fragment_LatestEdit<TRes> get latestEdit {
    final local$latestEdit = _instance.latestEdit;
    return local$latestEdit == null
        ? CopyWith_Fragment_LatestEdit.stub(_then(_instance))
        : CopyWith_Fragment_LatestEdit(
            local$latestEdit,
            (e) => call(latestEdit: e),
          );
  }

  TRes scopeGrants(
    Iterable<Fragment_UserDetails_scopeGrants> Function(
      Iterable<
        CopyWith_Fragment_UserDetails_scopeGrants<
          Fragment_UserDetails_scopeGrants
        >
      >,
    )
    _fn,
  ) => call(
    scopeGrants: _fn(
      _instance.scopeGrants.map(
        (e) => CopyWith_Fragment_UserDetails_scopeGrants(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith_Fragment_UserPreferences<TRes> get preferences {
    final local$preferences = _instance.preferences;
    return local$preferences == null
        ? CopyWith_Fragment_UserPreferences.stub(_then(_instance))
        : CopyWith_Fragment_UserPreferences(
            local$preferences,
            (e) => call(preferences: e),
          );
  }

  TRes deviceTokens(
    Iterable<Fragment_DeviceToken> Function(
      Iterable<CopyWith_Fragment_DeviceToken<Fragment_DeviceToken>>,
    )
    _fn,
  ) => call(
    deviceTokens: _fn(
      _instance.deviceTokens.map(
        (e) => CopyWith_Fragment_DeviceToken(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl_Fragment_UserDetails<TRes>
    implements CopyWith_Fragment_UserDetails<TRes> {
  _CopyWithStubImpl_Fragment_UserDetails(this._res);

  TRes _res;

  call({
    String? id,
    String? uid,
    String? name,
    String? email,
    DateTime? photoUpdatedAt,
    String? blurhash,
    String? $__typename,
    bool? currentUserCanManageThisUser,
    String? authId,
    Fragment_Invitation? invitation,
    List<Fragment_UserDetails_permissions>? permissions,
    Fragment_UserPerson? person,
    Fragment_LatestEdit? latestEdit,
    List<Fragment_UserDetails_scopeGrants>? scopeGrants,
    Fragment_UserPreferences? preferences,
    List<Fragment_DeviceToken>? deviceTokens,
  }) => _res;

  CopyWith_Fragment_Invitation<TRes> get invitation =>
      CopyWith_Fragment_Invitation.stub(_res);

  permissions(_fn) => _res;

  CopyWith_Fragment_UserPerson<TRes> get person =>
      CopyWith_Fragment_UserPerson.stub(_res);

  CopyWith_Fragment_LatestEdit<TRes> get latestEdit =>
      CopyWith_Fragment_LatestEdit.stub(_res);

  scopeGrants(_fn) => _res;

  CopyWith_Fragment_UserPreferences<TRes> get preferences =>
      CopyWith_Fragment_UserPreferences.stub(_res);

  deviceTokens(_fn) => _res;
}

const fragmentDefinitionUserDetails = FragmentDefinitionNode(
  name: NameNode(value: 'UserDetails'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'User'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FragmentSpreadNode(
        name: NameNode(value: 'UserOverview'),
        directives: [],
      ),
      FieldNode(
        name: NameNode(value: 'latestEdit'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'LatestEdit'),
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
      FragmentSpreadNode(
        name: NameNode(value: 'UserAdminOn'),
        directives: [],
      ),
      FieldNode(
        name: NameNode(value: 'preferences'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'UserPreferences'),
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
        name: NameNode(value: 'deviceTokens'),
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
);
const documentNodeFragmentUserDetails = DocumentNode(
  definitions: [
    fragmentDefinitionUserDetails,
    fragmentDefinitionUserOverview,
    fragmentDefinitionUser,
    fragmentDefinitionInvitation,
    fragmentDefinitionUserPerson,
    fragmentDefinitionDataCheck,
    fragmentDefinitionLatestKodas,
    fragmentDefinitionLatestConfession,
    fragmentDefinitionLatestEdit,
    fragmentDefinitionUserAdminOn,
    fragmentDefinitionArea,
    fragmentDefinitionUserScopeService,
    fragmentDefinitionStudyYear,
    fragmentDefinitionUserScopeGroup,
    fragmentDefinitionUserPreferences,
    fragmentDefinitionDeviceToken,
  ],
);

class Fragment_UserDetails_permissions
    implements Fragment_UserOverview_permissions {
  Fragment_UserDetails_permissions({
    required this.id,
    required this.permission,
    this.$__typename = 'UserPermission',
  });

  factory Fragment_UserDetails_permissions.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$permission = json['permission'];
    final l$$__typename = json['__typename'];
    return Fragment_UserDetails_permissions(
      id: (l$id as String),
      permission: (l$permission as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String permission;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$permission = permission;
    _resultData['permission'] = l$permission;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$permission = permission;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$permission, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_UserDetails_permissions ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$permission = permission;
    final lOther$permission = other.permission;
    if (l$permission != lOther$permission) {
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

extension UtilityExtension_Fragment_UserDetails_permissions
    on Fragment_UserDetails_permissions {
  CopyWith_Fragment_UserDetails_permissions<Fragment_UserDetails_permissions>
  get copyWith => CopyWith_Fragment_UserDetails_permissions(this, (i) => i);
}

abstract class CopyWith_Fragment_UserDetails_permissions<TRes> {
  factory CopyWith_Fragment_UserDetails_permissions(
    Fragment_UserDetails_permissions instance,
    TRes Function(Fragment_UserDetails_permissions) then,
  ) = _CopyWithImpl_Fragment_UserDetails_permissions;

  factory CopyWith_Fragment_UserDetails_permissions.stub(TRes res) =
      _CopyWithStubImpl_Fragment_UserDetails_permissions;

  TRes call({String? id, String? permission, String? $__typename});
}

class _CopyWithImpl_Fragment_UserDetails_permissions<TRes>
    implements CopyWith_Fragment_UserDetails_permissions<TRes> {
  _CopyWithImpl_Fragment_UserDetails_permissions(this._instance, this._then);

  final Fragment_UserDetails_permissions _instance;

  final TRes Function(Fragment_UserDetails_permissions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? permission = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_UserDetails_permissions(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      permission: permission == _undefined || permission == null
          ? _instance.permission
          : (permission as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Fragment_UserDetails_permissions<TRes>
    implements CopyWith_Fragment_UserDetails_permissions<TRes> {
  _CopyWithStubImpl_Fragment_UserDetails_permissions(this._res);

  TRes _res;

  call({String? id, String? permission, String? $__typename}) => _res;
}

class Fragment_UserDetails_scopeGrants
    implements Fragment_UserAdminOn_scopeGrants {
  Fragment_UserDetails_scopeGrants({
    required this.id,
    required this.permissionId,
    this.area,
    this.areaAllowExport,
    this.areaAllowEdit,
    this.areaAdminOnUsers,
    this.service,
    this.studyYear,
    this.serviceGender,
    this.serviceAllowExport,
    this.serviceAllowEdit,
    this.serviceAllowRecordAttendance,
    this.serviceAllowRecordServantsAttendance,
    this.serviceAdminOnUsers,
    required this.serviceWriteRelatedFamilies,
    this.group,
    this.groupAllowExport,
    this.groupAllowEdit,
    this.groupAllowRecordAttendance,
    this.groupAllowRecordServantsAttendance,
    this.groupAdminOnUsers,
    required this.groupWriteRelatedFamilies,
    this.$__typename = 'ScopeGrant',
  });

  factory Fragment_UserDetails_scopeGrants.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$permissionId = json['permissionId'];
    final l$area = json['area'];
    final l$areaAllowExport = json['areaAllowExport'];
    final l$areaAllowEdit = json['areaAllowEdit'];
    final l$areaAdminOnUsers = json['areaAdminOnUsers'];
    final l$service = json['service'];
    final l$studyYear = json['studyYear'];
    final l$serviceGender = json['serviceGender'];
    final l$serviceAllowExport = json['serviceAllowExport'];
    final l$serviceAllowEdit = json['serviceAllowEdit'];
    final l$serviceAllowRecordAttendance = json['serviceAllowRecordAttendance'];
    final l$serviceAllowRecordServantsAttendance =
        json['serviceAllowRecordServantsAttendance'];
    final l$serviceAdminOnUsers = json['serviceAdminOnUsers'];
    final l$serviceWriteRelatedFamilies = json['serviceWriteRelatedFamilies'];
    final l$group = json['group'];
    final l$groupAllowExport = json['groupAllowExport'];
    final l$groupAllowEdit = json['groupAllowEdit'];
    final l$groupAllowRecordAttendance = json['groupAllowRecordAttendance'];
    final l$groupAllowRecordServantsAttendance =
        json['groupAllowRecordServantsAttendance'];
    final l$groupAdminOnUsers = json['groupAdminOnUsers'];
    final l$groupWriteRelatedFamilies = json['groupWriteRelatedFamilies'];
    final l$$__typename = json['__typename'];
    return Fragment_UserDetails_scopeGrants(
      id: (l$id as String),
      permissionId: (l$permissionId as String),
      area: l$area == null
          ? null
          : Fragment_Area.fromJson((l$area as Map<String, dynamic>)),
      areaAllowExport: (l$areaAllowExport as bool?),
      areaAllowEdit: (l$areaAllowEdit as bool?),
      areaAdminOnUsers: (l$areaAdminOnUsers as bool?),
      service: l$service == null
          ? null
          : Fragment_UserDetails_scopeGrants_service.fromJson(
              (l$service as Map<String, dynamic>),
            ),
      studyYear: l$studyYear == null
          ? null
          : Fragment_StudyYear.fromJson((l$studyYear as Map<String, dynamic>)),
      serviceGender: (l$serviceGender as bool?),
      serviceAllowExport: (l$serviceAllowExport as bool?),
      serviceAllowEdit: (l$serviceAllowEdit as bool?),
      serviceAllowRecordAttendance: (l$serviceAllowRecordAttendance as bool?),
      serviceAllowRecordServantsAttendance:
          (l$serviceAllowRecordServantsAttendance as bool?),
      serviceAdminOnUsers: (l$serviceAdminOnUsers as bool?),
      serviceWriteRelatedFamilies: (l$serviceWriteRelatedFamilies as bool),
      group: l$group == null
          ? null
          : Fragment_UserScopeGroup.fromJson((l$group as Map<String, dynamic>)),
      groupAllowExport: (l$groupAllowExport as bool?),
      groupAllowEdit: (l$groupAllowEdit as bool?),
      groupAllowRecordAttendance: (l$groupAllowRecordAttendance as bool?),
      groupAllowRecordServantsAttendance:
          (l$groupAllowRecordServantsAttendance as bool?),
      groupAdminOnUsers: (l$groupAdminOnUsers as bool?),
      groupWriteRelatedFamilies: (l$groupWriteRelatedFamilies as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String permissionId;

  final Fragment_Area? area;

  final bool? areaAllowExport;

  final bool? areaAllowEdit;

  final bool? areaAdminOnUsers;

  final Fragment_UserDetails_scopeGrants_service? service;

  final Fragment_StudyYear? studyYear;

  final bool? serviceGender;

  final bool? serviceAllowExport;

  final bool? serviceAllowEdit;

  final bool? serviceAllowRecordAttendance;

  final bool? serviceAllowRecordServantsAttendance;

  final bool? serviceAdminOnUsers;

  final bool serviceWriteRelatedFamilies;

  final Fragment_UserScopeGroup? group;

  final bool? groupAllowExport;

  final bool? groupAllowEdit;

  final bool? groupAllowRecordAttendance;

  final bool? groupAllowRecordServantsAttendance;

  final bool? groupAdminOnUsers;

  final bool groupWriteRelatedFamilies;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$permissionId = permissionId;
    _resultData['permissionId'] = l$permissionId;
    final l$area = area;
    _resultData['area'] = l$area?.toJson();
    final l$areaAllowExport = areaAllowExport;
    _resultData['areaAllowExport'] = l$areaAllowExport;
    final l$areaAllowEdit = areaAllowEdit;
    _resultData['areaAllowEdit'] = l$areaAllowEdit;
    final l$areaAdminOnUsers = areaAdminOnUsers;
    _resultData['areaAdminOnUsers'] = l$areaAdminOnUsers;
    final l$service = service;
    _resultData['service'] = l$service?.toJson();
    final l$studyYear = studyYear;
    _resultData['studyYear'] = l$studyYear?.toJson();
    final l$serviceGender = serviceGender;
    _resultData['serviceGender'] = l$serviceGender;
    final l$serviceAllowExport = serviceAllowExport;
    _resultData['serviceAllowExport'] = l$serviceAllowExport;
    final l$serviceAllowEdit = serviceAllowEdit;
    _resultData['serviceAllowEdit'] = l$serviceAllowEdit;
    final l$serviceAllowRecordAttendance = serviceAllowRecordAttendance;
    _resultData['serviceAllowRecordAttendance'] =
        l$serviceAllowRecordAttendance;
    final l$serviceAllowRecordServantsAttendance =
        serviceAllowRecordServantsAttendance;
    _resultData['serviceAllowRecordServantsAttendance'] =
        l$serviceAllowRecordServantsAttendance;
    final l$serviceAdminOnUsers = serviceAdminOnUsers;
    _resultData['serviceAdminOnUsers'] = l$serviceAdminOnUsers;
    final l$serviceWriteRelatedFamilies = serviceWriteRelatedFamilies;
    _resultData['serviceWriteRelatedFamilies'] = l$serviceWriteRelatedFamilies;
    final l$group = group;
    _resultData['group'] = l$group?.toJson();
    final l$groupAllowExport = groupAllowExport;
    _resultData['groupAllowExport'] = l$groupAllowExport;
    final l$groupAllowEdit = groupAllowEdit;
    _resultData['groupAllowEdit'] = l$groupAllowEdit;
    final l$groupAllowRecordAttendance = groupAllowRecordAttendance;
    _resultData['groupAllowRecordAttendance'] = l$groupAllowRecordAttendance;
    final l$groupAllowRecordServantsAttendance =
        groupAllowRecordServantsAttendance;
    _resultData['groupAllowRecordServantsAttendance'] =
        l$groupAllowRecordServantsAttendance;
    final l$groupAdminOnUsers = groupAdminOnUsers;
    _resultData['groupAdminOnUsers'] = l$groupAdminOnUsers;
    final l$groupWriteRelatedFamilies = groupWriteRelatedFamilies;
    _resultData['groupWriteRelatedFamilies'] = l$groupWriteRelatedFamilies;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$permissionId = permissionId;
    final l$area = area;
    final l$areaAllowExport = areaAllowExport;
    final l$areaAllowEdit = areaAllowEdit;
    final l$areaAdminOnUsers = areaAdminOnUsers;
    final l$service = service;
    final l$studyYear = studyYear;
    final l$serviceGender = serviceGender;
    final l$serviceAllowExport = serviceAllowExport;
    final l$serviceAllowEdit = serviceAllowEdit;
    final l$serviceAllowRecordAttendance = serviceAllowRecordAttendance;
    final l$serviceAllowRecordServantsAttendance =
        serviceAllowRecordServantsAttendance;
    final l$serviceAdminOnUsers = serviceAdminOnUsers;
    final l$serviceWriteRelatedFamilies = serviceWriteRelatedFamilies;
    final l$group = group;
    final l$groupAllowExport = groupAllowExport;
    final l$groupAllowEdit = groupAllowEdit;
    final l$groupAllowRecordAttendance = groupAllowRecordAttendance;
    final l$groupAllowRecordServantsAttendance =
        groupAllowRecordServantsAttendance;
    final l$groupAdminOnUsers = groupAdminOnUsers;
    final l$groupWriteRelatedFamilies = groupWriteRelatedFamilies;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$permissionId,
      l$area,
      l$areaAllowExport,
      l$areaAllowEdit,
      l$areaAdminOnUsers,
      l$service,
      l$studyYear,
      l$serviceGender,
      l$serviceAllowExport,
      l$serviceAllowEdit,
      l$serviceAllowRecordAttendance,
      l$serviceAllowRecordServantsAttendance,
      l$serviceAdminOnUsers,
      l$serviceWriteRelatedFamilies,
      l$group,
      l$groupAllowExport,
      l$groupAllowEdit,
      l$groupAllowRecordAttendance,
      l$groupAllowRecordServantsAttendance,
      l$groupAdminOnUsers,
      l$groupWriteRelatedFamilies,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_UserDetails_scopeGrants ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$permissionId = permissionId;
    final lOther$permissionId = other.permissionId;
    if (l$permissionId != lOther$permissionId) {
      return false;
    }
    final l$area = area;
    final lOther$area = other.area;
    if (l$area != lOther$area) {
      return false;
    }
    final l$areaAllowExport = areaAllowExport;
    final lOther$areaAllowExport = other.areaAllowExport;
    if (l$areaAllowExport != lOther$areaAllowExport) {
      return false;
    }
    final l$areaAllowEdit = areaAllowEdit;
    final lOther$areaAllowEdit = other.areaAllowEdit;
    if (l$areaAllowEdit != lOther$areaAllowEdit) {
      return false;
    }
    final l$areaAdminOnUsers = areaAdminOnUsers;
    final lOther$areaAdminOnUsers = other.areaAdminOnUsers;
    if (l$areaAdminOnUsers != lOther$areaAdminOnUsers) {
      return false;
    }
    final l$service = service;
    final lOther$service = other.service;
    if (l$service != lOther$service) {
      return false;
    }
    final l$studyYear = studyYear;
    final lOther$studyYear = other.studyYear;
    if (l$studyYear != lOther$studyYear) {
      return false;
    }
    final l$serviceGender = serviceGender;
    final lOther$serviceGender = other.serviceGender;
    if (l$serviceGender != lOther$serviceGender) {
      return false;
    }
    final l$serviceAllowExport = serviceAllowExport;
    final lOther$serviceAllowExport = other.serviceAllowExport;
    if (l$serviceAllowExport != lOther$serviceAllowExport) {
      return false;
    }
    final l$serviceAllowEdit = serviceAllowEdit;
    final lOther$serviceAllowEdit = other.serviceAllowEdit;
    if (l$serviceAllowEdit != lOther$serviceAllowEdit) {
      return false;
    }
    final l$serviceAllowRecordAttendance = serviceAllowRecordAttendance;
    final lOther$serviceAllowRecordAttendance =
        other.serviceAllowRecordAttendance;
    if (l$serviceAllowRecordAttendance != lOther$serviceAllowRecordAttendance) {
      return false;
    }
    final l$serviceAllowRecordServantsAttendance =
        serviceAllowRecordServantsAttendance;
    final lOther$serviceAllowRecordServantsAttendance =
        other.serviceAllowRecordServantsAttendance;
    if (l$serviceAllowRecordServantsAttendance !=
        lOther$serviceAllowRecordServantsAttendance) {
      return false;
    }
    final l$serviceAdminOnUsers = serviceAdminOnUsers;
    final lOther$serviceAdminOnUsers = other.serviceAdminOnUsers;
    if (l$serviceAdminOnUsers != lOther$serviceAdminOnUsers) {
      return false;
    }
    final l$serviceWriteRelatedFamilies = serviceWriteRelatedFamilies;
    final lOther$serviceWriteRelatedFamilies =
        other.serviceWriteRelatedFamilies;
    if (l$serviceWriteRelatedFamilies != lOther$serviceWriteRelatedFamilies) {
      return false;
    }
    final l$group = group;
    final lOther$group = other.group;
    if (l$group != lOther$group) {
      return false;
    }
    final l$groupAllowExport = groupAllowExport;
    final lOther$groupAllowExport = other.groupAllowExport;
    if (l$groupAllowExport != lOther$groupAllowExport) {
      return false;
    }
    final l$groupAllowEdit = groupAllowEdit;
    final lOther$groupAllowEdit = other.groupAllowEdit;
    if (l$groupAllowEdit != lOther$groupAllowEdit) {
      return false;
    }
    final l$groupAllowRecordAttendance = groupAllowRecordAttendance;
    final lOther$groupAllowRecordAttendance = other.groupAllowRecordAttendance;
    if (l$groupAllowRecordAttendance != lOther$groupAllowRecordAttendance) {
      return false;
    }
    final l$groupAllowRecordServantsAttendance =
        groupAllowRecordServantsAttendance;
    final lOther$groupAllowRecordServantsAttendance =
        other.groupAllowRecordServantsAttendance;
    if (l$groupAllowRecordServantsAttendance !=
        lOther$groupAllowRecordServantsAttendance) {
      return false;
    }
    final l$groupAdminOnUsers = groupAdminOnUsers;
    final lOther$groupAdminOnUsers = other.groupAdminOnUsers;
    if (l$groupAdminOnUsers != lOther$groupAdminOnUsers) {
      return false;
    }
    final l$groupWriteRelatedFamilies = groupWriteRelatedFamilies;
    final lOther$groupWriteRelatedFamilies = other.groupWriteRelatedFamilies;
    if (l$groupWriteRelatedFamilies != lOther$groupWriteRelatedFamilies) {
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

extension UtilityExtension_Fragment_UserDetails_scopeGrants
    on Fragment_UserDetails_scopeGrants {
  CopyWith_Fragment_UserDetails_scopeGrants<Fragment_UserDetails_scopeGrants>
  get copyWith => CopyWith_Fragment_UserDetails_scopeGrants(this, (i) => i);
}

abstract class CopyWith_Fragment_UserDetails_scopeGrants<TRes> {
  factory CopyWith_Fragment_UserDetails_scopeGrants(
    Fragment_UserDetails_scopeGrants instance,
    TRes Function(Fragment_UserDetails_scopeGrants) then,
  ) = _CopyWithImpl_Fragment_UserDetails_scopeGrants;

  factory CopyWith_Fragment_UserDetails_scopeGrants.stub(TRes res) =
      _CopyWithStubImpl_Fragment_UserDetails_scopeGrants;

  TRes call({
    String? id,
    String? permissionId,
    Fragment_Area? area,
    bool? areaAllowExport,
    bool? areaAllowEdit,
    bool? areaAdminOnUsers,
    Fragment_UserDetails_scopeGrants_service? service,
    Fragment_StudyYear? studyYear,
    bool? serviceGender,
    bool? serviceAllowExport,
    bool? serviceAllowEdit,
    bool? serviceAllowRecordAttendance,
    bool? serviceAllowRecordServantsAttendance,
    bool? serviceAdminOnUsers,
    bool? serviceWriteRelatedFamilies,
    Fragment_UserScopeGroup? group,
    bool? groupAllowExport,
    bool? groupAllowEdit,
    bool? groupAllowRecordAttendance,
    bool? groupAllowRecordServantsAttendance,
    bool? groupAdminOnUsers,
    bool? groupWriteRelatedFamilies,
    String? $__typename,
  });
  CopyWith_Fragment_Area<TRes> get area;
  CopyWith_Fragment_UserDetails_scopeGrants_service<TRes> get service;
  CopyWith_Fragment_StudyYear<TRes> get studyYear;
  CopyWith_Fragment_UserScopeGroup<TRes> get group;
}

class _CopyWithImpl_Fragment_UserDetails_scopeGrants<TRes>
    implements CopyWith_Fragment_UserDetails_scopeGrants<TRes> {
  _CopyWithImpl_Fragment_UserDetails_scopeGrants(this._instance, this._then);

  final Fragment_UserDetails_scopeGrants _instance;

  final TRes Function(Fragment_UserDetails_scopeGrants) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? permissionId = _undefined,
    Object? area = _undefined,
    Object? areaAllowExport = _undefined,
    Object? areaAllowEdit = _undefined,
    Object? areaAdminOnUsers = _undefined,
    Object? service = _undefined,
    Object? studyYear = _undefined,
    Object? serviceGender = _undefined,
    Object? serviceAllowExport = _undefined,
    Object? serviceAllowEdit = _undefined,
    Object? serviceAllowRecordAttendance = _undefined,
    Object? serviceAllowRecordServantsAttendance = _undefined,
    Object? serviceAdminOnUsers = _undefined,
    Object? serviceWriteRelatedFamilies = _undefined,
    Object? group = _undefined,
    Object? groupAllowExport = _undefined,
    Object? groupAllowEdit = _undefined,
    Object? groupAllowRecordAttendance = _undefined,
    Object? groupAllowRecordServantsAttendance = _undefined,
    Object? groupAdminOnUsers = _undefined,
    Object? groupWriteRelatedFamilies = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_UserDetails_scopeGrants(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      permissionId: permissionId == _undefined || permissionId == null
          ? _instance.permissionId
          : (permissionId as String),
      area: area == _undefined ? _instance.area : (area as Fragment_Area?),
      areaAllowExport: areaAllowExport == _undefined
          ? _instance.areaAllowExport
          : (areaAllowExport as bool?),
      areaAllowEdit: areaAllowEdit == _undefined
          ? _instance.areaAllowEdit
          : (areaAllowEdit as bool?),
      areaAdminOnUsers: areaAdminOnUsers == _undefined
          ? _instance.areaAdminOnUsers
          : (areaAdminOnUsers as bool?),
      service: service == _undefined
          ? _instance.service
          : (service as Fragment_UserDetails_scopeGrants_service?),
      studyYear: studyYear == _undefined
          ? _instance.studyYear
          : (studyYear as Fragment_StudyYear?),
      serviceGender: serviceGender == _undefined
          ? _instance.serviceGender
          : (serviceGender as bool?),
      serviceAllowExport: serviceAllowExport == _undefined
          ? _instance.serviceAllowExport
          : (serviceAllowExport as bool?),
      serviceAllowEdit: serviceAllowEdit == _undefined
          ? _instance.serviceAllowEdit
          : (serviceAllowEdit as bool?),
      serviceAllowRecordAttendance: serviceAllowRecordAttendance == _undefined
          ? _instance.serviceAllowRecordAttendance
          : (serviceAllowRecordAttendance as bool?),
      serviceAllowRecordServantsAttendance:
          serviceAllowRecordServantsAttendance == _undefined
          ? _instance.serviceAllowRecordServantsAttendance
          : (serviceAllowRecordServantsAttendance as bool?),
      serviceAdminOnUsers: serviceAdminOnUsers == _undefined
          ? _instance.serviceAdminOnUsers
          : (serviceAdminOnUsers as bool?),
      serviceWriteRelatedFamilies:
          serviceWriteRelatedFamilies == _undefined ||
              serviceWriteRelatedFamilies == null
          ? _instance.serviceWriteRelatedFamilies
          : (serviceWriteRelatedFamilies as bool),
      group: group == _undefined
          ? _instance.group
          : (group as Fragment_UserScopeGroup?),
      groupAllowExport: groupAllowExport == _undefined
          ? _instance.groupAllowExport
          : (groupAllowExport as bool?),
      groupAllowEdit: groupAllowEdit == _undefined
          ? _instance.groupAllowEdit
          : (groupAllowEdit as bool?),
      groupAllowRecordAttendance: groupAllowRecordAttendance == _undefined
          ? _instance.groupAllowRecordAttendance
          : (groupAllowRecordAttendance as bool?),
      groupAllowRecordServantsAttendance:
          groupAllowRecordServantsAttendance == _undefined
          ? _instance.groupAllowRecordServantsAttendance
          : (groupAllowRecordServantsAttendance as bool?),
      groupAdminOnUsers: groupAdminOnUsers == _undefined
          ? _instance.groupAdminOnUsers
          : (groupAdminOnUsers as bool?),
      groupWriteRelatedFamilies:
          groupWriteRelatedFamilies == _undefined ||
              groupWriteRelatedFamilies == null
          ? _instance.groupWriteRelatedFamilies
          : (groupWriteRelatedFamilies as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_Area<TRes> get area {
    final local$area = _instance.area;
    return local$area == null
        ? CopyWith_Fragment_Area.stub(_then(_instance))
        : CopyWith_Fragment_Area(local$area, (e) => call(area: e));
  }

  CopyWith_Fragment_UserDetails_scopeGrants_service<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith_Fragment_UserDetails_scopeGrants_service.stub(
            _then(_instance),
          )
        : CopyWith_Fragment_UserDetails_scopeGrants_service(
            local$service,
            (e) => call(service: e),
          );
  }

  CopyWith_Fragment_StudyYear<TRes> get studyYear {
    final local$studyYear = _instance.studyYear;
    return local$studyYear == null
        ? CopyWith_Fragment_StudyYear.stub(_then(_instance))
        : CopyWith_Fragment_StudyYear(
            local$studyYear,
            (e) => call(studyYear: e),
          );
  }

  CopyWith_Fragment_UserScopeGroup<TRes> get group {
    final local$group = _instance.group;
    return local$group == null
        ? CopyWith_Fragment_UserScopeGroup.stub(_then(_instance))
        : CopyWith_Fragment_UserScopeGroup(local$group, (e) => call(group: e));
  }
}

class _CopyWithStubImpl_Fragment_UserDetails_scopeGrants<TRes>
    implements CopyWith_Fragment_UserDetails_scopeGrants<TRes> {
  _CopyWithStubImpl_Fragment_UserDetails_scopeGrants(this._res);

  TRes _res;

  call({
    String? id,
    String? permissionId,
    Fragment_Area? area,
    bool? areaAllowExport,
    bool? areaAllowEdit,
    bool? areaAdminOnUsers,
    Fragment_UserDetails_scopeGrants_service? service,
    Fragment_StudyYear? studyYear,
    bool? serviceGender,
    bool? serviceAllowExport,
    bool? serviceAllowEdit,
    bool? serviceAllowRecordAttendance,
    bool? serviceAllowRecordServantsAttendance,
    bool? serviceAdminOnUsers,
    bool? serviceWriteRelatedFamilies,
    Fragment_UserScopeGroup? group,
    bool? groupAllowExport,
    bool? groupAllowEdit,
    bool? groupAllowRecordAttendance,
    bool? groupAllowRecordServantsAttendance,
    bool? groupAdminOnUsers,
    bool? groupWriteRelatedFamilies,
    String? $__typename,
  }) => _res;

  CopyWith_Fragment_Area<TRes> get area => CopyWith_Fragment_Area.stub(_res);

  CopyWith_Fragment_UserDetails_scopeGrants_service<TRes> get service =>
      CopyWith_Fragment_UserDetails_scopeGrants_service.stub(_res);

  CopyWith_Fragment_StudyYear<TRes> get studyYear =>
      CopyWith_Fragment_StudyYear.stub(_res);

  CopyWith_Fragment_UserScopeGroup<TRes> get group =>
      CopyWith_Fragment_UserScopeGroup.stub(_res);
}

class Fragment_UserDetails_scopeGrants_service
    implements
        Fragment_UserAdminOn_scopeGrants_service,
        Fragment_UserScopeService {
  Fragment_UserDetails_scopeGrants_service({
    required this.id,
    required this.name,
    this.color,
    required this.userCanEdit,
    this.photoUpdatedAt,
    this.blurhash,
    this.$__typename = 'Service',
    this.studyYearFrom,
    this.studyYearTo,
  });

  factory Fragment_UserDetails_scopeGrants_service.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$userCanEdit = json['userCanEdit'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$$__typename = json['__typename'];
    final l$studyYearFrom = json['studyYearFrom'];
    final l$studyYearTo = json['studyYearTo'];
    return Fragment_UserDetails_scopeGrants_service(
      id: (l$id as String),
      name: (l$name as String),
      color: (l$color as int?),
      userCanEdit: (l$userCanEdit as bool),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      $__typename: (l$$__typename as String),
      studyYearFrom: l$studyYearFrom == null
          ? null
          : Fragment_StudyYear.fromJson(
              (l$studyYearFrom as Map<String, dynamic>),
            ),
      studyYearTo: l$studyYearTo == null
          ? null
          : Fragment_StudyYear.fromJson(
              (l$studyYearTo as Map<String, dynamic>),
            ),
    );
  }

  final String id;

  final String name;

  final int? color;

  final bool userCanEdit;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final String $__typename;

  final Fragment_StudyYear? studyYearFrom;

  final Fragment_StudyYear? studyYearTo;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$userCanEdit = userCanEdit;
    _resultData['userCanEdit'] = l$userCanEdit;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] = l$photoUpdatedAt == null
        ? null
        : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$studyYearFrom = studyYearFrom;
    _resultData['studyYearFrom'] = l$studyYearFrom?.toJson();
    final l$studyYearTo = studyYearTo;
    _resultData['studyYearTo'] = l$studyYearTo?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$userCanEdit = userCanEdit;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$$__typename = $__typename;
    final l$studyYearFrom = studyYearFrom;
    final l$studyYearTo = studyYearTo;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$userCanEdit,
      l$photoUpdatedAt,
      l$blurhash,
      l$$__typename,
      l$studyYearFrom,
      l$studyYearTo,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_UserDetails_scopeGrants_service ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$userCanEdit = userCanEdit;
    final lOther$userCanEdit = other.userCanEdit;
    if (l$userCanEdit != lOther$userCanEdit) {
      return false;
    }
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
      return false;
    }
    final l$blurhash = blurhash;
    final lOther$blurhash = other.blurhash;
    if (l$blurhash != lOther$blurhash) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$studyYearFrom = studyYearFrom;
    final lOther$studyYearFrom = other.studyYearFrom;
    if (l$studyYearFrom != lOther$studyYearFrom) {
      return false;
    }
    final l$studyYearTo = studyYearTo;
    final lOther$studyYearTo = other.studyYearTo;
    if (l$studyYearTo != lOther$studyYearTo) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Fragment_UserDetails_scopeGrants_service
    on Fragment_UserDetails_scopeGrants_service {
  CopyWith_Fragment_UserDetails_scopeGrants_service<
    Fragment_UserDetails_scopeGrants_service
  >
  get copyWith =>
      CopyWith_Fragment_UserDetails_scopeGrants_service(this, (i) => i);
}

abstract class CopyWith_Fragment_UserDetails_scopeGrants_service<TRes> {
  factory CopyWith_Fragment_UserDetails_scopeGrants_service(
    Fragment_UserDetails_scopeGrants_service instance,
    TRes Function(Fragment_UserDetails_scopeGrants_service) then,
  ) = _CopyWithImpl_Fragment_UserDetails_scopeGrants_service;

  factory CopyWith_Fragment_UserDetails_scopeGrants_service.stub(TRes res) =
      _CopyWithStubImpl_Fragment_UserDetails_scopeGrants_service;

  TRes call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    DateTime? photoUpdatedAt,
    String? blurhash,
    String? $__typename,
    Fragment_StudyYear? studyYearFrom,
    Fragment_StudyYear? studyYearTo,
  });
  CopyWith_Fragment_StudyYear<TRes> get studyYearFrom;
  CopyWith_Fragment_StudyYear<TRes> get studyYearTo;
}

class _CopyWithImpl_Fragment_UserDetails_scopeGrants_service<TRes>
    implements CopyWith_Fragment_UserDetails_scopeGrants_service<TRes> {
  _CopyWithImpl_Fragment_UserDetails_scopeGrants_service(
    this._instance,
    this._then,
  );

  final Fragment_UserDetails_scopeGrants_service _instance;

  final TRes Function(Fragment_UserDetails_scopeGrants_service) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? userCanEdit = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? $__typename = _undefined,
    Object? studyYearFrom = _undefined,
    Object? studyYearTo = _undefined,
  }) => _then(
    Fragment_UserDetails_scopeGrants_service(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      color: color == _undefined ? _instance.color : (color as int?),
      userCanEdit: userCanEdit == _undefined || userCanEdit == null
          ? _instance.userCanEdit
          : (userCanEdit as bool),
      photoUpdatedAt: photoUpdatedAt == _undefined
          ? _instance.photoUpdatedAt
          : (photoUpdatedAt as DateTime?),
      blurhash: blurhash == _undefined
          ? _instance.blurhash
          : (blurhash as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      studyYearFrom: studyYearFrom == _undefined
          ? _instance.studyYearFrom
          : (studyYearFrom as Fragment_StudyYear?),
      studyYearTo: studyYearTo == _undefined
          ? _instance.studyYearTo
          : (studyYearTo as Fragment_StudyYear?),
    ),
  );

  CopyWith_Fragment_StudyYear<TRes> get studyYearFrom {
    final local$studyYearFrom = _instance.studyYearFrom;
    return local$studyYearFrom == null
        ? CopyWith_Fragment_StudyYear.stub(_then(_instance))
        : CopyWith_Fragment_StudyYear(
            local$studyYearFrom,
            (e) => call(studyYearFrom: e),
          );
  }

  CopyWith_Fragment_StudyYear<TRes> get studyYearTo {
    final local$studyYearTo = _instance.studyYearTo;
    return local$studyYearTo == null
        ? CopyWith_Fragment_StudyYear.stub(_then(_instance))
        : CopyWith_Fragment_StudyYear(
            local$studyYearTo,
            (e) => call(studyYearTo: e),
          );
  }
}

class _CopyWithStubImpl_Fragment_UserDetails_scopeGrants_service<TRes>
    implements CopyWith_Fragment_UserDetails_scopeGrants_service<TRes> {
  _CopyWithStubImpl_Fragment_UserDetails_scopeGrants_service(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    DateTime? photoUpdatedAt,
    String? blurhash,
    String? $__typename,
    Fragment_StudyYear? studyYearFrom,
    Fragment_StudyYear? studyYearTo,
  }) => _res;

  CopyWith_Fragment_StudyYear<TRes> get studyYearFrom =>
      CopyWith_Fragment_StudyYear.stub(_res);

  CopyWith_Fragment_StudyYear<TRes> get studyYearTo =>
      CopyWith_Fragment_StudyYear.stub(_res);
}

class Fragment_UserAdminScopes {
  Fragment_UserAdminScopes({
    required this.scopeGrants,
    this.$__typename = 'User',
  });

  factory Fragment_UserAdminScopes.fromJson(Map<String, dynamic> json) {
    final l$scopeGrants = json['scopeGrants'];
    final l$$__typename = json['__typename'];
    return Fragment_UserAdminScopes(
      scopeGrants: (l$scopeGrants as List<dynamic>)
          .map(
            (e) => Fragment_UserAdminScopes_scopeGrants.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment_UserAdminScopes_scopeGrants> scopeGrants;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$scopeGrants = scopeGrants;
    _resultData['scopeGrants'] = l$scopeGrants.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$scopeGrants = scopeGrants;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$scopeGrants.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_UserAdminScopes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$scopeGrants = scopeGrants;
    final lOther$scopeGrants = other.scopeGrants;
    if (l$scopeGrants.length != lOther$scopeGrants.length) {
      return false;
    }
    for (int i = 0; i < l$scopeGrants.length; i++) {
      final l$scopeGrants$entry = l$scopeGrants[i];
      final lOther$scopeGrants$entry = lOther$scopeGrants[i];
      if (l$scopeGrants$entry != lOther$scopeGrants$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Fragment_UserAdminScopes
    on Fragment_UserAdminScopes {
  CopyWith_Fragment_UserAdminScopes<Fragment_UserAdminScopes> get copyWith =>
      CopyWith_Fragment_UserAdminScopes(this, (i) => i);
}

abstract class CopyWith_Fragment_UserAdminScopes<TRes> {
  factory CopyWith_Fragment_UserAdminScopes(
    Fragment_UserAdminScopes instance,
    TRes Function(Fragment_UserAdminScopes) then,
  ) = _CopyWithImpl_Fragment_UserAdminScopes;

  factory CopyWith_Fragment_UserAdminScopes.stub(TRes res) =
      _CopyWithStubImpl_Fragment_UserAdminScopes;

  TRes call({
    List<Fragment_UserAdminScopes_scopeGrants>? scopeGrants,
    String? $__typename,
  });
  TRes scopeGrants(
    Iterable<Fragment_UserAdminScopes_scopeGrants> Function(
      Iterable<
        CopyWith_Fragment_UserAdminScopes_scopeGrants<
          Fragment_UserAdminScopes_scopeGrants
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl_Fragment_UserAdminScopes<TRes>
    implements CopyWith_Fragment_UserAdminScopes<TRes> {
  _CopyWithImpl_Fragment_UserAdminScopes(this._instance, this._then);

  final Fragment_UserAdminScopes _instance;

  final TRes Function(Fragment_UserAdminScopes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? scopeGrants = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_UserAdminScopes(
      scopeGrants: scopeGrants == _undefined || scopeGrants == null
          ? _instance.scopeGrants
          : (scopeGrants as List<Fragment_UserAdminScopes_scopeGrants>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes scopeGrants(
    Iterable<Fragment_UserAdminScopes_scopeGrants> Function(
      Iterable<
        CopyWith_Fragment_UserAdminScopes_scopeGrants<
          Fragment_UserAdminScopes_scopeGrants
        >
      >,
    )
    _fn,
  ) => call(
    scopeGrants: _fn(
      _instance.scopeGrants.map(
        (e) => CopyWith_Fragment_UserAdminScopes_scopeGrants(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl_Fragment_UserAdminScopes<TRes>
    implements CopyWith_Fragment_UserAdminScopes<TRes> {
  _CopyWithStubImpl_Fragment_UserAdminScopes(this._res);

  TRes _res;

  call({
    List<Fragment_UserAdminScopes_scopeGrants>? scopeGrants,
    String? $__typename,
  }) => _res;

  scopeGrants(_fn) => _res;
}

const fragmentDefinitionUserAdminScopes = FragmentDefinitionNode(
  name: NameNode(value: 'UserAdminScopes'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'User'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'scopeGrants'),
        alias: null,
        arguments: [],
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
              name: NameNode(value: 'permissionId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'area'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'Area'),
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
              name: NameNode(value: 'service'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'UserScopeService'),
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
              name: NameNode(value: 'studyYear'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'StudyYear'),
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
);
const documentNodeFragmentUserAdminScopes = DocumentNode(
  definitions: [
    fragmentDefinitionUserAdminScopes,
    fragmentDefinitionArea,
    fragmentDefinitionUserScopeService,
    fragmentDefinitionStudyYear,
  ],
);

class Fragment_UserAdminScopes_scopeGrants {
  Fragment_UserAdminScopes_scopeGrants({
    required this.id,
    required this.permissionId,
    this.area,
    this.service,
    this.studyYear,
    this.$__typename = 'ScopeGrant',
  });

  factory Fragment_UserAdminScopes_scopeGrants.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$permissionId = json['permissionId'];
    final l$area = json['area'];
    final l$service = json['service'];
    final l$studyYear = json['studyYear'];
    final l$$__typename = json['__typename'];
    return Fragment_UserAdminScopes_scopeGrants(
      id: (l$id as String),
      permissionId: (l$permissionId as String),
      area: l$area == null
          ? null
          : Fragment_Area.fromJson((l$area as Map<String, dynamic>)),
      service: l$service == null
          ? null
          : Fragment_UserScopeService.fromJson(
              (l$service as Map<String, dynamic>),
            ),
      studyYear: l$studyYear == null
          ? null
          : Fragment_StudyYear.fromJson((l$studyYear as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String permissionId;

  final Fragment_Area? area;

  final Fragment_UserScopeService? service;

  final Fragment_StudyYear? studyYear;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$permissionId = permissionId;
    _resultData['permissionId'] = l$permissionId;
    final l$area = area;
    _resultData['area'] = l$area?.toJson();
    final l$service = service;
    _resultData['service'] = l$service?.toJson();
    final l$studyYear = studyYear;
    _resultData['studyYear'] = l$studyYear?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$permissionId = permissionId;
    final l$area = area;
    final l$service = service;
    final l$studyYear = studyYear;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$permissionId,
      l$area,
      l$service,
      l$studyYear,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_UserAdminScopes_scopeGrants ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$permissionId = permissionId;
    final lOther$permissionId = other.permissionId;
    if (l$permissionId != lOther$permissionId) {
      return false;
    }
    final l$area = area;
    final lOther$area = other.area;
    if (l$area != lOther$area) {
      return false;
    }
    final l$service = service;
    final lOther$service = other.service;
    if (l$service != lOther$service) {
      return false;
    }
    final l$studyYear = studyYear;
    final lOther$studyYear = other.studyYear;
    if (l$studyYear != lOther$studyYear) {
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

extension UtilityExtension_Fragment_UserAdminScopes_scopeGrants
    on Fragment_UserAdminScopes_scopeGrants {
  CopyWith_Fragment_UserAdminScopes_scopeGrants<
    Fragment_UserAdminScopes_scopeGrants
  >
  get copyWith => CopyWith_Fragment_UserAdminScopes_scopeGrants(this, (i) => i);
}

abstract class CopyWith_Fragment_UserAdminScopes_scopeGrants<TRes> {
  factory CopyWith_Fragment_UserAdminScopes_scopeGrants(
    Fragment_UserAdminScopes_scopeGrants instance,
    TRes Function(Fragment_UserAdminScopes_scopeGrants) then,
  ) = _CopyWithImpl_Fragment_UserAdminScopes_scopeGrants;

  factory CopyWith_Fragment_UserAdminScopes_scopeGrants.stub(TRes res) =
      _CopyWithStubImpl_Fragment_UserAdminScopes_scopeGrants;

  TRes call({
    String? id,
    String? permissionId,
    Fragment_Area? area,
    Fragment_UserScopeService? service,
    Fragment_StudyYear? studyYear,
    String? $__typename,
  });
  CopyWith_Fragment_Area<TRes> get area;
  CopyWith_Fragment_UserScopeService<TRes> get service;
  CopyWith_Fragment_StudyYear<TRes> get studyYear;
}

class _CopyWithImpl_Fragment_UserAdminScopes_scopeGrants<TRes>
    implements CopyWith_Fragment_UserAdminScopes_scopeGrants<TRes> {
  _CopyWithImpl_Fragment_UserAdminScopes_scopeGrants(
    this._instance,
    this._then,
  );

  final Fragment_UserAdminScopes_scopeGrants _instance;

  final TRes Function(Fragment_UserAdminScopes_scopeGrants) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? permissionId = _undefined,
    Object? area = _undefined,
    Object? service = _undefined,
    Object? studyYear = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_UserAdminScopes_scopeGrants(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      permissionId: permissionId == _undefined || permissionId == null
          ? _instance.permissionId
          : (permissionId as String),
      area: area == _undefined ? _instance.area : (area as Fragment_Area?),
      service: service == _undefined
          ? _instance.service
          : (service as Fragment_UserScopeService?),
      studyYear: studyYear == _undefined
          ? _instance.studyYear
          : (studyYear as Fragment_StudyYear?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_Area<TRes> get area {
    final local$area = _instance.area;
    return local$area == null
        ? CopyWith_Fragment_Area.stub(_then(_instance))
        : CopyWith_Fragment_Area(local$area, (e) => call(area: e));
  }

  CopyWith_Fragment_UserScopeService<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith_Fragment_UserScopeService.stub(_then(_instance))
        : CopyWith_Fragment_UserScopeService(
            local$service,
            (e) => call(service: e),
          );
  }

  CopyWith_Fragment_StudyYear<TRes> get studyYear {
    final local$studyYear = _instance.studyYear;
    return local$studyYear == null
        ? CopyWith_Fragment_StudyYear.stub(_then(_instance))
        : CopyWith_Fragment_StudyYear(
            local$studyYear,
            (e) => call(studyYear: e),
          );
  }
}

class _CopyWithStubImpl_Fragment_UserAdminScopes_scopeGrants<TRes>
    implements CopyWith_Fragment_UserAdminScopes_scopeGrants<TRes> {
  _CopyWithStubImpl_Fragment_UserAdminScopes_scopeGrants(this._res);

  TRes _res;

  call({
    String? id,
    String? permissionId,
    Fragment_Area? area,
    Fragment_UserScopeService? service,
    Fragment_StudyYear? studyYear,
    String? $__typename,
  }) => _res;

  CopyWith_Fragment_Area<TRes> get area => CopyWith_Fragment_Area.stub(_res);

  CopyWith_Fragment_UserScopeService<TRes> get service =>
      CopyWith_Fragment_UserScopeService.stub(_res);

  CopyWith_Fragment_StudyYear<TRes> get studyYear =>
      CopyWith_Fragment_StudyYear.stub(_res);
}

class Fragment_UserAdminOn {
  Fragment_UserAdminOn({required this.scopeGrants, this.$__typename = 'User'});

  factory Fragment_UserAdminOn.fromJson(Map<String, dynamic> json) {
    final l$scopeGrants = json['scopeGrants'];
    final l$$__typename = json['__typename'];
    return Fragment_UserAdminOn(
      scopeGrants: (l$scopeGrants as List<dynamic>)
          .map(
            (e) => Fragment_UserAdminOn_scopeGrants.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment_UserAdminOn_scopeGrants> scopeGrants;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$scopeGrants = scopeGrants;
    _resultData['scopeGrants'] = l$scopeGrants.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$scopeGrants = scopeGrants;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$scopeGrants.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_UserAdminOn || runtimeType != other.runtimeType) {
      return false;
    }
    final l$scopeGrants = scopeGrants;
    final lOther$scopeGrants = other.scopeGrants;
    if (l$scopeGrants.length != lOther$scopeGrants.length) {
      return false;
    }
    for (int i = 0; i < l$scopeGrants.length; i++) {
      final l$scopeGrants$entry = l$scopeGrants[i];
      final lOther$scopeGrants$entry = lOther$scopeGrants[i];
      if (l$scopeGrants$entry != lOther$scopeGrants$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Fragment_UserAdminOn on Fragment_UserAdminOn {
  CopyWith_Fragment_UserAdminOn<Fragment_UserAdminOn> get copyWith =>
      CopyWith_Fragment_UserAdminOn(this, (i) => i);
}

abstract class CopyWith_Fragment_UserAdminOn<TRes> {
  factory CopyWith_Fragment_UserAdminOn(
    Fragment_UserAdminOn instance,
    TRes Function(Fragment_UserAdminOn) then,
  ) = _CopyWithImpl_Fragment_UserAdminOn;

  factory CopyWith_Fragment_UserAdminOn.stub(TRes res) =
      _CopyWithStubImpl_Fragment_UserAdminOn;

  TRes call({
    List<Fragment_UserAdminOn_scopeGrants>? scopeGrants,
    String? $__typename,
  });
  TRes scopeGrants(
    Iterable<Fragment_UserAdminOn_scopeGrants> Function(
      Iterable<
        CopyWith_Fragment_UserAdminOn_scopeGrants<
          Fragment_UserAdminOn_scopeGrants
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl_Fragment_UserAdminOn<TRes>
    implements CopyWith_Fragment_UserAdminOn<TRes> {
  _CopyWithImpl_Fragment_UserAdminOn(this._instance, this._then);

  final Fragment_UserAdminOn _instance;

  final TRes Function(Fragment_UserAdminOn) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? scopeGrants = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_UserAdminOn(
      scopeGrants: scopeGrants == _undefined || scopeGrants == null
          ? _instance.scopeGrants
          : (scopeGrants as List<Fragment_UserAdminOn_scopeGrants>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes scopeGrants(
    Iterable<Fragment_UserAdminOn_scopeGrants> Function(
      Iterable<
        CopyWith_Fragment_UserAdminOn_scopeGrants<
          Fragment_UserAdminOn_scopeGrants
        >
      >,
    )
    _fn,
  ) => call(
    scopeGrants: _fn(
      _instance.scopeGrants.map(
        (e) => CopyWith_Fragment_UserAdminOn_scopeGrants(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl_Fragment_UserAdminOn<TRes>
    implements CopyWith_Fragment_UserAdminOn<TRes> {
  _CopyWithStubImpl_Fragment_UserAdminOn(this._res);

  TRes _res;

  call({
    List<Fragment_UserAdminOn_scopeGrants>? scopeGrants,
    String? $__typename,
  }) => _res;

  scopeGrants(_fn) => _res;
}

const fragmentDefinitionUserAdminOn = FragmentDefinitionNode(
  name: NameNode(value: 'UserAdminOn'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'User'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'scopeGrants'),
        alias: null,
        arguments: [],
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
              name: NameNode(value: 'permissionId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'area'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'Area'),
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
              name: NameNode(value: 'areaAllowExport'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'areaAllowEdit'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'areaAdminOnUsers'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'service'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'UserScopeService'),
                    directives: [],
                  ),
                  FieldNode(
                    name: NameNode(value: 'studyYearFrom'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(
                      selections: [
                        FragmentSpreadNode(
                          name: NameNode(value: 'StudyYear'),
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
                    name: NameNode(value: 'studyYearTo'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(
                      selections: [
                        FragmentSpreadNode(
                          name: NameNode(value: 'StudyYear'),
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
              name: NameNode(value: 'studyYear'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'StudyYear'),
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
              name: NameNode(value: 'serviceGender'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'serviceAllowExport'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'serviceAllowEdit'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'serviceAllowRecordAttendance'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'serviceAllowRecordServantsAttendance'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'serviceAdminOnUsers'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'serviceWriteRelatedFamilies'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'group'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'UserScopeGroup'),
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
              name: NameNode(value: 'groupAllowExport'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'groupAllowEdit'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'groupAllowRecordAttendance'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'groupAllowRecordServantsAttendance'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'groupAdminOnUsers'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'groupWriteRelatedFamilies'),
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
const documentNodeFragmentUserAdminOn = DocumentNode(
  definitions: [
    fragmentDefinitionUserAdminOn,
    fragmentDefinitionArea,
    fragmentDefinitionUserScopeService,
    fragmentDefinitionStudyYear,
    fragmentDefinitionUserScopeGroup,
  ],
);

class Fragment_UserAdminOn_scopeGrants {
  Fragment_UserAdminOn_scopeGrants({
    required this.id,
    required this.permissionId,
    this.area,
    this.areaAllowExport,
    this.areaAllowEdit,
    this.areaAdminOnUsers,
    this.service,
    this.studyYear,
    this.serviceGender,
    this.serviceAllowExport,
    this.serviceAllowEdit,
    this.serviceAllowRecordAttendance,
    this.serviceAllowRecordServantsAttendance,
    this.serviceAdminOnUsers,
    required this.serviceWriteRelatedFamilies,
    this.group,
    this.groupAllowExport,
    this.groupAllowEdit,
    this.groupAllowRecordAttendance,
    this.groupAllowRecordServantsAttendance,
    this.groupAdminOnUsers,
    required this.groupWriteRelatedFamilies,
    this.$__typename = 'ScopeGrant',
  });

  factory Fragment_UserAdminOn_scopeGrants.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$permissionId = json['permissionId'];
    final l$area = json['area'];
    final l$areaAllowExport = json['areaAllowExport'];
    final l$areaAllowEdit = json['areaAllowEdit'];
    final l$areaAdminOnUsers = json['areaAdminOnUsers'];
    final l$service = json['service'];
    final l$studyYear = json['studyYear'];
    final l$serviceGender = json['serviceGender'];
    final l$serviceAllowExport = json['serviceAllowExport'];
    final l$serviceAllowEdit = json['serviceAllowEdit'];
    final l$serviceAllowRecordAttendance = json['serviceAllowRecordAttendance'];
    final l$serviceAllowRecordServantsAttendance =
        json['serviceAllowRecordServantsAttendance'];
    final l$serviceAdminOnUsers = json['serviceAdminOnUsers'];
    final l$serviceWriteRelatedFamilies = json['serviceWriteRelatedFamilies'];
    final l$group = json['group'];
    final l$groupAllowExport = json['groupAllowExport'];
    final l$groupAllowEdit = json['groupAllowEdit'];
    final l$groupAllowRecordAttendance = json['groupAllowRecordAttendance'];
    final l$groupAllowRecordServantsAttendance =
        json['groupAllowRecordServantsAttendance'];
    final l$groupAdminOnUsers = json['groupAdminOnUsers'];
    final l$groupWriteRelatedFamilies = json['groupWriteRelatedFamilies'];
    final l$$__typename = json['__typename'];
    return Fragment_UserAdminOn_scopeGrants(
      id: (l$id as String),
      permissionId: (l$permissionId as String),
      area: l$area == null
          ? null
          : Fragment_Area.fromJson((l$area as Map<String, dynamic>)),
      areaAllowExport: (l$areaAllowExport as bool?),
      areaAllowEdit: (l$areaAllowEdit as bool?),
      areaAdminOnUsers: (l$areaAdminOnUsers as bool?),
      service: l$service == null
          ? null
          : Fragment_UserAdminOn_scopeGrants_service.fromJson(
              (l$service as Map<String, dynamic>),
            ),
      studyYear: l$studyYear == null
          ? null
          : Fragment_StudyYear.fromJson((l$studyYear as Map<String, dynamic>)),
      serviceGender: (l$serviceGender as bool?),
      serviceAllowExport: (l$serviceAllowExport as bool?),
      serviceAllowEdit: (l$serviceAllowEdit as bool?),
      serviceAllowRecordAttendance: (l$serviceAllowRecordAttendance as bool?),
      serviceAllowRecordServantsAttendance:
          (l$serviceAllowRecordServantsAttendance as bool?),
      serviceAdminOnUsers: (l$serviceAdminOnUsers as bool?),
      serviceWriteRelatedFamilies: (l$serviceWriteRelatedFamilies as bool),
      group: l$group == null
          ? null
          : Fragment_UserScopeGroup.fromJson((l$group as Map<String, dynamic>)),
      groupAllowExport: (l$groupAllowExport as bool?),
      groupAllowEdit: (l$groupAllowEdit as bool?),
      groupAllowRecordAttendance: (l$groupAllowRecordAttendance as bool?),
      groupAllowRecordServantsAttendance:
          (l$groupAllowRecordServantsAttendance as bool?),
      groupAdminOnUsers: (l$groupAdminOnUsers as bool?),
      groupWriteRelatedFamilies: (l$groupWriteRelatedFamilies as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String permissionId;

  final Fragment_Area? area;

  final bool? areaAllowExport;

  final bool? areaAllowEdit;

  final bool? areaAdminOnUsers;

  final Fragment_UserAdminOn_scopeGrants_service? service;

  final Fragment_StudyYear? studyYear;

  final bool? serviceGender;

  final bool? serviceAllowExport;

  final bool? serviceAllowEdit;

  final bool? serviceAllowRecordAttendance;

  final bool? serviceAllowRecordServantsAttendance;

  final bool? serviceAdminOnUsers;

  final bool serviceWriteRelatedFamilies;

  final Fragment_UserScopeGroup? group;

  final bool? groupAllowExport;

  final bool? groupAllowEdit;

  final bool? groupAllowRecordAttendance;

  final bool? groupAllowRecordServantsAttendance;

  final bool? groupAdminOnUsers;

  final bool groupWriteRelatedFamilies;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$permissionId = permissionId;
    _resultData['permissionId'] = l$permissionId;
    final l$area = area;
    _resultData['area'] = l$area?.toJson();
    final l$areaAllowExport = areaAllowExport;
    _resultData['areaAllowExport'] = l$areaAllowExport;
    final l$areaAllowEdit = areaAllowEdit;
    _resultData['areaAllowEdit'] = l$areaAllowEdit;
    final l$areaAdminOnUsers = areaAdminOnUsers;
    _resultData['areaAdminOnUsers'] = l$areaAdminOnUsers;
    final l$service = service;
    _resultData['service'] = l$service?.toJson();
    final l$studyYear = studyYear;
    _resultData['studyYear'] = l$studyYear?.toJson();
    final l$serviceGender = serviceGender;
    _resultData['serviceGender'] = l$serviceGender;
    final l$serviceAllowExport = serviceAllowExport;
    _resultData['serviceAllowExport'] = l$serviceAllowExport;
    final l$serviceAllowEdit = serviceAllowEdit;
    _resultData['serviceAllowEdit'] = l$serviceAllowEdit;
    final l$serviceAllowRecordAttendance = serviceAllowRecordAttendance;
    _resultData['serviceAllowRecordAttendance'] =
        l$serviceAllowRecordAttendance;
    final l$serviceAllowRecordServantsAttendance =
        serviceAllowRecordServantsAttendance;
    _resultData['serviceAllowRecordServantsAttendance'] =
        l$serviceAllowRecordServantsAttendance;
    final l$serviceAdminOnUsers = serviceAdminOnUsers;
    _resultData['serviceAdminOnUsers'] = l$serviceAdminOnUsers;
    final l$serviceWriteRelatedFamilies = serviceWriteRelatedFamilies;
    _resultData['serviceWriteRelatedFamilies'] = l$serviceWriteRelatedFamilies;
    final l$group = group;
    _resultData['group'] = l$group?.toJson();
    final l$groupAllowExport = groupAllowExport;
    _resultData['groupAllowExport'] = l$groupAllowExport;
    final l$groupAllowEdit = groupAllowEdit;
    _resultData['groupAllowEdit'] = l$groupAllowEdit;
    final l$groupAllowRecordAttendance = groupAllowRecordAttendance;
    _resultData['groupAllowRecordAttendance'] = l$groupAllowRecordAttendance;
    final l$groupAllowRecordServantsAttendance =
        groupAllowRecordServantsAttendance;
    _resultData['groupAllowRecordServantsAttendance'] =
        l$groupAllowRecordServantsAttendance;
    final l$groupAdminOnUsers = groupAdminOnUsers;
    _resultData['groupAdminOnUsers'] = l$groupAdminOnUsers;
    final l$groupWriteRelatedFamilies = groupWriteRelatedFamilies;
    _resultData['groupWriteRelatedFamilies'] = l$groupWriteRelatedFamilies;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$permissionId = permissionId;
    final l$area = area;
    final l$areaAllowExport = areaAllowExport;
    final l$areaAllowEdit = areaAllowEdit;
    final l$areaAdminOnUsers = areaAdminOnUsers;
    final l$service = service;
    final l$studyYear = studyYear;
    final l$serviceGender = serviceGender;
    final l$serviceAllowExport = serviceAllowExport;
    final l$serviceAllowEdit = serviceAllowEdit;
    final l$serviceAllowRecordAttendance = serviceAllowRecordAttendance;
    final l$serviceAllowRecordServantsAttendance =
        serviceAllowRecordServantsAttendance;
    final l$serviceAdminOnUsers = serviceAdminOnUsers;
    final l$serviceWriteRelatedFamilies = serviceWriteRelatedFamilies;
    final l$group = group;
    final l$groupAllowExport = groupAllowExport;
    final l$groupAllowEdit = groupAllowEdit;
    final l$groupAllowRecordAttendance = groupAllowRecordAttendance;
    final l$groupAllowRecordServantsAttendance =
        groupAllowRecordServantsAttendance;
    final l$groupAdminOnUsers = groupAdminOnUsers;
    final l$groupWriteRelatedFamilies = groupWriteRelatedFamilies;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$permissionId,
      l$area,
      l$areaAllowExport,
      l$areaAllowEdit,
      l$areaAdminOnUsers,
      l$service,
      l$studyYear,
      l$serviceGender,
      l$serviceAllowExport,
      l$serviceAllowEdit,
      l$serviceAllowRecordAttendance,
      l$serviceAllowRecordServantsAttendance,
      l$serviceAdminOnUsers,
      l$serviceWriteRelatedFamilies,
      l$group,
      l$groupAllowExport,
      l$groupAllowEdit,
      l$groupAllowRecordAttendance,
      l$groupAllowRecordServantsAttendance,
      l$groupAdminOnUsers,
      l$groupWriteRelatedFamilies,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_UserAdminOn_scopeGrants ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$permissionId = permissionId;
    final lOther$permissionId = other.permissionId;
    if (l$permissionId != lOther$permissionId) {
      return false;
    }
    final l$area = area;
    final lOther$area = other.area;
    if (l$area != lOther$area) {
      return false;
    }
    final l$areaAllowExport = areaAllowExport;
    final lOther$areaAllowExport = other.areaAllowExport;
    if (l$areaAllowExport != lOther$areaAllowExport) {
      return false;
    }
    final l$areaAllowEdit = areaAllowEdit;
    final lOther$areaAllowEdit = other.areaAllowEdit;
    if (l$areaAllowEdit != lOther$areaAllowEdit) {
      return false;
    }
    final l$areaAdminOnUsers = areaAdminOnUsers;
    final lOther$areaAdminOnUsers = other.areaAdminOnUsers;
    if (l$areaAdminOnUsers != lOther$areaAdminOnUsers) {
      return false;
    }
    final l$service = service;
    final lOther$service = other.service;
    if (l$service != lOther$service) {
      return false;
    }
    final l$studyYear = studyYear;
    final lOther$studyYear = other.studyYear;
    if (l$studyYear != lOther$studyYear) {
      return false;
    }
    final l$serviceGender = serviceGender;
    final lOther$serviceGender = other.serviceGender;
    if (l$serviceGender != lOther$serviceGender) {
      return false;
    }
    final l$serviceAllowExport = serviceAllowExport;
    final lOther$serviceAllowExport = other.serviceAllowExport;
    if (l$serviceAllowExport != lOther$serviceAllowExport) {
      return false;
    }
    final l$serviceAllowEdit = serviceAllowEdit;
    final lOther$serviceAllowEdit = other.serviceAllowEdit;
    if (l$serviceAllowEdit != lOther$serviceAllowEdit) {
      return false;
    }
    final l$serviceAllowRecordAttendance = serviceAllowRecordAttendance;
    final lOther$serviceAllowRecordAttendance =
        other.serviceAllowRecordAttendance;
    if (l$serviceAllowRecordAttendance != lOther$serviceAllowRecordAttendance) {
      return false;
    }
    final l$serviceAllowRecordServantsAttendance =
        serviceAllowRecordServantsAttendance;
    final lOther$serviceAllowRecordServantsAttendance =
        other.serviceAllowRecordServantsAttendance;
    if (l$serviceAllowRecordServantsAttendance !=
        lOther$serviceAllowRecordServantsAttendance) {
      return false;
    }
    final l$serviceAdminOnUsers = serviceAdminOnUsers;
    final lOther$serviceAdminOnUsers = other.serviceAdminOnUsers;
    if (l$serviceAdminOnUsers != lOther$serviceAdminOnUsers) {
      return false;
    }
    final l$serviceWriteRelatedFamilies = serviceWriteRelatedFamilies;
    final lOther$serviceWriteRelatedFamilies =
        other.serviceWriteRelatedFamilies;
    if (l$serviceWriteRelatedFamilies != lOther$serviceWriteRelatedFamilies) {
      return false;
    }
    final l$group = group;
    final lOther$group = other.group;
    if (l$group != lOther$group) {
      return false;
    }
    final l$groupAllowExport = groupAllowExport;
    final lOther$groupAllowExport = other.groupAllowExport;
    if (l$groupAllowExport != lOther$groupAllowExport) {
      return false;
    }
    final l$groupAllowEdit = groupAllowEdit;
    final lOther$groupAllowEdit = other.groupAllowEdit;
    if (l$groupAllowEdit != lOther$groupAllowEdit) {
      return false;
    }
    final l$groupAllowRecordAttendance = groupAllowRecordAttendance;
    final lOther$groupAllowRecordAttendance = other.groupAllowRecordAttendance;
    if (l$groupAllowRecordAttendance != lOther$groupAllowRecordAttendance) {
      return false;
    }
    final l$groupAllowRecordServantsAttendance =
        groupAllowRecordServantsAttendance;
    final lOther$groupAllowRecordServantsAttendance =
        other.groupAllowRecordServantsAttendance;
    if (l$groupAllowRecordServantsAttendance !=
        lOther$groupAllowRecordServantsAttendance) {
      return false;
    }
    final l$groupAdminOnUsers = groupAdminOnUsers;
    final lOther$groupAdminOnUsers = other.groupAdminOnUsers;
    if (l$groupAdminOnUsers != lOther$groupAdminOnUsers) {
      return false;
    }
    final l$groupWriteRelatedFamilies = groupWriteRelatedFamilies;
    final lOther$groupWriteRelatedFamilies = other.groupWriteRelatedFamilies;
    if (l$groupWriteRelatedFamilies != lOther$groupWriteRelatedFamilies) {
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

extension UtilityExtension_Fragment_UserAdminOn_scopeGrants
    on Fragment_UserAdminOn_scopeGrants {
  CopyWith_Fragment_UserAdminOn_scopeGrants<Fragment_UserAdminOn_scopeGrants>
  get copyWith => CopyWith_Fragment_UserAdminOn_scopeGrants(this, (i) => i);
}

abstract class CopyWith_Fragment_UserAdminOn_scopeGrants<TRes> {
  factory CopyWith_Fragment_UserAdminOn_scopeGrants(
    Fragment_UserAdminOn_scopeGrants instance,
    TRes Function(Fragment_UserAdminOn_scopeGrants) then,
  ) = _CopyWithImpl_Fragment_UserAdminOn_scopeGrants;

  factory CopyWith_Fragment_UserAdminOn_scopeGrants.stub(TRes res) =
      _CopyWithStubImpl_Fragment_UserAdminOn_scopeGrants;

  TRes call({
    String? id,
    String? permissionId,
    Fragment_Area? area,
    bool? areaAllowExport,
    bool? areaAllowEdit,
    bool? areaAdminOnUsers,
    Fragment_UserAdminOn_scopeGrants_service? service,
    Fragment_StudyYear? studyYear,
    bool? serviceGender,
    bool? serviceAllowExport,
    bool? serviceAllowEdit,
    bool? serviceAllowRecordAttendance,
    bool? serviceAllowRecordServantsAttendance,
    bool? serviceAdminOnUsers,
    bool? serviceWriteRelatedFamilies,
    Fragment_UserScopeGroup? group,
    bool? groupAllowExport,
    bool? groupAllowEdit,
    bool? groupAllowRecordAttendance,
    bool? groupAllowRecordServantsAttendance,
    bool? groupAdminOnUsers,
    bool? groupWriteRelatedFamilies,
    String? $__typename,
  });
  CopyWith_Fragment_Area<TRes> get area;
  CopyWith_Fragment_UserAdminOn_scopeGrants_service<TRes> get service;
  CopyWith_Fragment_StudyYear<TRes> get studyYear;
  CopyWith_Fragment_UserScopeGroup<TRes> get group;
}

class _CopyWithImpl_Fragment_UserAdminOn_scopeGrants<TRes>
    implements CopyWith_Fragment_UserAdminOn_scopeGrants<TRes> {
  _CopyWithImpl_Fragment_UserAdminOn_scopeGrants(this._instance, this._then);

  final Fragment_UserAdminOn_scopeGrants _instance;

  final TRes Function(Fragment_UserAdminOn_scopeGrants) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? permissionId = _undefined,
    Object? area = _undefined,
    Object? areaAllowExport = _undefined,
    Object? areaAllowEdit = _undefined,
    Object? areaAdminOnUsers = _undefined,
    Object? service = _undefined,
    Object? studyYear = _undefined,
    Object? serviceGender = _undefined,
    Object? serviceAllowExport = _undefined,
    Object? serviceAllowEdit = _undefined,
    Object? serviceAllowRecordAttendance = _undefined,
    Object? serviceAllowRecordServantsAttendance = _undefined,
    Object? serviceAdminOnUsers = _undefined,
    Object? serviceWriteRelatedFamilies = _undefined,
    Object? group = _undefined,
    Object? groupAllowExport = _undefined,
    Object? groupAllowEdit = _undefined,
    Object? groupAllowRecordAttendance = _undefined,
    Object? groupAllowRecordServantsAttendance = _undefined,
    Object? groupAdminOnUsers = _undefined,
    Object? groupWriteRelatedFamilies = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_UserAdminOn_scopeGrants(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      permissionId: permissionId == _undefined || permissionId == null
          ? _instance.permissionId
          : (permissionId as String),
      area: area == _undefined ? _instance.area : (area as Fragment_Area?),
      areaAllowExport: areaAllowExport == _undefined
          ? _instance.areaAllowExport
          : (areaAllowExport as bool?),
      areaAllowEdit: areaAllowEdit == _undefined
          ? _instance.areaAllowEdit
          : (areaAllowEdit as bool?),
      areaAdminOnUsers: areaAdminOnUsers == _undefined
          ? _instance.areaAdminOnUsers
          : (areaAdminOnUsers as bool?),
      service: service == _undefined
          ? _instance.service
          : (service as Fragment_UserAdminOn_scopeGrants_service?),
      studyYear: studyYear == _undefined
          ? _instance.studyYear
          : (studyYear as Fragment_StudyYear?),
      serviceGender: serviceGender == _undefined
          ? _instance.serviceGender
          : (serviceGender as bool?),
      serviceAllowExport: serviceAllowExport == _undefined
          ? _instance.serviceAllowExport
          : (serviceAllowExport as bool?),
      serviceAllowEdit: serviceAllowEdit == _undefined
          ? _instance.serviceAllowEdit
          : (serviceAllowEdit as bool?),
      serviceAllowRecordAttendance: serviceAllowRecordAttendance == _undefined
          ? _instance.serviceAllowRecordAttendance
          : (serviceAllowRecordAttendance as bool?),
      serviceAllowRecordServantsAttendance:
          serviceAllowRecordServantsAttendance == _undefined
          ? _instance.serviceAllowRecordServantsAttendance
          : (serviceAllowRecordServantsAttendance as bool?),
      serviceAdminOnUsers: serviceAdminOnUsers == _undefined
          ? _instance.serviceAdminOnUsers
          : (serviceAdminOnUsers as bool?),
      serviceWriteRelatedFamilies:
          serviceWriteRelatedFamilies == _undefined ||
              serviceWriteRelatedFamilies == null
          ? _instance.serviceWriteRelatedFamilies
          : (serviceWriteRelatedFamilies as bool),
      group: group == _undefined
          ? _instance.group
          : (group as Fragment_UserScopeGroup?),
      groupAllowExport: groupAllowExport == _undefined
          ? _instance.groupAllowExport
          : (groupAllowExport as bool?),
      groupAllowEdit: groupAllowEdit == _undefined
          ? _instance.groupAllowEdit
          : (groupAllowEdit as bool?),
      groupAllowRecordAttendance: groupAllowRecordAttendance == _undefined
          ? _instance.groupAllowRecordAttendance
          : (groupAllowRecordAttendance as bool?),
      groupAllowRecordServantsAttendance:
          groupAllowRecordServantsAttendance == _undefined
          ? _instance.groupAllowRecordServantsAttendance
          : (groupAllowRecordServantsAttendance as bool?),
      groupAdminOnUsers: groupAdminOnUsers == _undefined
          ? _instance.groupAdminOnUsers
          : (groupAdminOnUsers as bool?),
      groupWriteRelatedFamilies:
          groupWriteRelatedFamilies == _undefined ||
              groupWriteRelatedFamilies == null
          ? _instance.groupWriteRelatedFamilies
          : (groupWriteRelatedFamilies as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_Area<TRes> get area {
    final local$area = _instance.area;
    return local$area == null
        ? CopyWith_Fragment_Area.stub(_then(_instance))
        : CopyWith_Fragment_Area(local$area, (e) => call(area: e));
  }

  CopyWith_Fragment_UserAdminOn_scopeGrants_service<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith_Fragment_UserAdminOn_scopeGrants_service.stub(
            _then(_instance),
          )
        : CopyWith_Fragment_UserAdminOn_scopeGrants_service(
            local$service,
            (e) => call(service: e),
          );
  }

  CopyWith_Fragment_StudyYear<TRes> get studyYear {
    final local$studyYear = _instance.studyYear;
    return local$studyYear == null
        ? CopyWith_Fragment_StudyYear.stub(_then(_instance))
        : CopyWith_Fragment_StudyYear(
            local$studyYear,
            (e) => call(studyYear: e),
          );
  }

  CopyWith_Fragment_UserScopeGroup<TRes> get group {
    final local$group = _instance.group;
    return local$group == null
        ? CopyWith_Fragment_UserScopeGroup.stub(_then(_instance))
        : CopyWith_Fragment_UserScopeGroup(local$group, (e) => call(group: e));
  }
}

class _CopyWithStubImpl_Fragment_UserAdminOn_scopeGrants<TRes>
    implements CopyWith_Fragment_UserAdminOn_scopeGrants<TRes> {
  _CopyWithStubImpl_Fragment_UserAdminOn_scopeGrants(this._res);

  TRes _res;

  call({
    String? id,
    String? permissionId,
    Fragment_Area? area,
    bool? areaAllowExport,
    bool? areaAllowEdit,
    bool? areaAdminOnUsers,
    Fragment_UserAdminOn_scopeGrants_service? service,
    Fragment_StudyYear? studyYear,
    bool? serviceGender,
    bool? serviceAllowExport,
    bool? serviceAllowEdit,
    bool? serviceAllowRecordAttendance,
    bool? serviceAllowRecordServantsAttendance,
    bool? serviceAdminOnUsers,
    bool? serviceWriteRelatedFamilies,
    Fragment_UserScopeGroup? group,
    bool? groupAllowExport,
    bool? groupAllowEdit,
    bool? groupAllowRecordAttendance,
    bool? groupAllowRecordServantsAttendance,
    bool? groupAdminOnUsers,
    bool? groupWriteRelatedFamilies,
    String? $__typename,
  }) => _res;

  CopyWith_Fragment_Area<TRes> get area => CopyWith_Fragment_Area.stub(_res);

  CopyWith_Fragment_UserAdminOn_scopeGrants_service<TRes> get service =>
      CopyWith_Fragment_UserAdminOn_scopeGrants_service.stub(_res);

  CopyWith_Fragment_StudyYear<TRes> get studyYear =>
      CopyWith_Fragment_StudyYear.stub(_res);

  CopyWith_Fragment_UserScopeGroup<TRes> get group =>
      CopyWith_Fragment_UserScopeGroup.stub(_res);
}

class Fragment_UserAdminOn_scopeGrants_service
    implements Fragment_UserScopeService {
  Fragment_UserAdminOn_scopeGrants_service({
    required this.id,
    required this.name,
    this.color,
    required this.userCanEdit,
    this.photoUpdatedAt,
    this.blurhash,
    this.$__typename = 'Service',
    this.studyYearFrom,
    this.studyYearTo,
  });

  factory Fragment_UserAdminOn_scopeGrants_service.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$userCanEdit = json['userCanEdit'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$$__typename = json['__typename'];
    final l$studyYearFrom = json['studyYearFrom'];
    final l$studyYearTo = json['studyYearTo'];
    return Fragment_UserAdminOn_scopeGrants_service(
      id: (l$id as String),
      name: (l$name as String),
      color: (l$color as int?),
      userCanEdit: (l$userCanEdit as bool),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      $__typename: (l$$__typename as String),
      studyYearFrom: l$studyYearFrom == null
          ? null
          : Fragment_StudyYear.fromJson(
              (l$studyYearFrom as Map<String, dynamic>),
            ),
      studyYearTo: l$studyYearTo == null
          ? null
          : Fragment_StudyYear.fromJson(
              (l$studyYearTo as Map<String, dynamic>),
            ),
    );
  }

  final String id;

  final String name;

  final int? color;

  final bool userCanEdit;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final String $__typename;

  final Fragment_StudyYear? studyYearFrom;

  final Fragment_StudyYear? studyYearTo;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$userCanEdit = userCanEdit;
    _resultData['userCanEdit'] = l$userCanEdit;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] = l$photoUpdatedAt == null
        ? null
        : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$studyYearFrom = studyYearFrom;
    _resultData['studyYearFrom'] = l$studyYearFrom?.toJson();
    final l$studyYearTo = studyYearTo;
    _resultData['studyYearTo'] = l$studyYearTo?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$userCanEdit = userCanEdit;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$$__typename = $__typename;
    final l$studyYearFrom = studyYearFrom;
    final l$studyYearTo = studyYearTo;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$userCanEdit,
      l$photoUpdatedAt,
      l$blurhash,
      l$$__typename,
      l$studyYearFrom,
      l$studyYearTo,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_UserAdminOn_scopeGrants_service ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$userCanEdit = userCanEdit;
    final lOther$userCanEdit = other.userCanEdit;
    if (l$userCanEdit != lOther$userCanEdit) {
      return false;
    }
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
      return false;
    }
    final l$blurhash = blurhash;
    final lOther$blurhash = other.blurhash;
    if (l$blurhash != lOther$blurhash) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$studyYearFrom = studyYearFrom;
    final lOther$studyYearFrom = other.studyYearFrom;
    if (l$studyYearFrom != lOther$studyYearFrom) {
      return false;
    }
    final l$studyYearTo = studyYearTo;
    final lOther$studyYearTo = other.studyYearTo;
    if (l$studyYearTo != lOther$studyYearTo) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Fragment_UserAdminOn_scopeGrants_service
    on Fragment_UserAdminOn_scopeGrants_service {
  CopyWith_Fragment_UserAdminOn_scopeGrants_service<
    Fragment_UserAdminOn_scopeGrants_service
  >
  get copyWith =>
      CopyWith_Fragment_UserAdminOn_scopeGrants_service(this, (i) => i);
}

abstract class CopyWith_Fragment_UserAdminOn_scopeGrants_service<TRes> {
  factory CopyWith_Fragment_UserAdminOn_scopeGrants_service(
    Fragment_UserAdminOn_scopeGrants_service instance,
    TRes Function(Fragment_UserAdminOn_scopeGrants_service) then,
  ) = _CopyWithImpl_Fragment_UserAdminOn_scopeGrants_service;

  factory CopyWith_Fragment_UserAdminOn_scopeGrants_service.stub(TRes res) =
      _CopyWithStubImpl_Fragment_UserAdminOn_scopeGrants_service;

  TRes call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    DateTime? photoUpdatedAt,
    String? blurhash,
    String? $__typename,
    Fragment_StudyYear? studyYearFrom,
    Fragment_StudyYear? studyYearTo,
  });
  CopyWith_Fragment_StudyYear<TRes> get studyYearFrom;
  CopyWith_Fragment_StudyYear<TRes> get studyYearTo;
}

class _CopyWithImpl_Fragment_UserAdminOn_scopeGrants_service<TRes>
    implements CopyWith_Fragment_UserAdminOn_scopeGrants_service<TRes> {
  _CopyWithImpl_Fragment_UserAdminOn_scopeGrants_service(
    this._instance,
    this._then,
  );

  final Fragment_UserAdminOn_scopeGrants_service _instance;

  final TRes Function(Fragment_UserAdminOn_scopeGrants_service) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? userCanEdit = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? $__typename = _undefined,
    Object? studyYearFrom = _undefined,
    Object? studyYearTo = _undefined,
  }) => _then(
    Fragment_UserAdminOn_scopeGrants_service(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      color: color == _undefined ? _instance.color : (color as int?),
      userCanEdit: userCanEdit == _undefined || userCanEdit == null
          ? _instance.userCanEdit
          : (userCanEdit as bool),
      photoUpdatedAt: photoUpdatedAt == _undefined
          ? _instance.photoUpdatedAt
          : (photoUpdatedAt as DateTime?),
      blurhash: blurhash == _undefined
          ? _instance.blurhash
          : (blurhash as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      studyYearFrom: studyYearFrom == _undefined
          ? _instance.studyYearFrom
          : (studyYearFrom as Fragment_StudyYear?),
      studyYearTo: studyYearTo == _undefined
          ? _instance.studyYearTo
          : (studyYearTo as Fragment_StudyYear?),
    ),
  );

  CopyWith_Fragment_StudyYear<TRes> get studyYearFrom {
    final local$studyYearFrom = _instance.studyYearFrom;
    return local$studyYearFrom == null
        ? CopyWith_Fragment_StudyYear.stub(_then(_instance))
        : CopyWith_Fragment_StudyYear(
            local$studyYearFrom,
            (e) => call(studyYearFrom: e),
          );
  }

  CopyWith_Fragment_StudyYear<TRes> get studyYearTo {
    final local$studyYearTo = _instance.studyYearTo;
    return local$studyYearTo == null
        ? CopyWith_Fragment_StudyYear.stub(_then(_instance))
        : CopyWith_Fragment_StudyYear(
            local$studyYearTo,
            (e) => call(studyYearTo: e),
          );
  }
}

class _CopyWithStubImpl_Fragment_UserAdminOn_scopeGrants_service<TRes>
    implements CopyWith_Fragment_UserAdminOn_scopeGrants_service<TRes> {
  _CopyWithStubImpl_Fragment_UserAdminOn_scopeGrants_service(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    DateTime? photoUpdatedAt,
    String? blurhash,
    String? $__typename,
    Fragment_StudyYear? studyYearFrom,
    Fragment_StudyYear? studyYearTo,
  }) => _res;

  CopyWith_Fragment_StudyYear<TRes> get studyYearFrom =>
      CopyWith_Fragment_StudyYear.stub(_res);

  CopyWith_Fragment_StudyYear<TRes> get studyYearTo =>
      CopyWith_Fragment_StudyYear.stub(_res);
}

class Fragment_UserScopeService {
  Fragment_UserScopeService({
    required this.id,
    required this.name,
    this.color,
    required this.userCanEdit,
    this.photoUpdatedAt,
    this.blurhash,
    this.$__typename = 'Service',
  });

  factory Fragment_UserScopeService.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$userCanEdit = json['userCanEdit'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$$__typename = json['__typename'];
    return Fragment_UserScopeService(
      id: (l$id as String),
      name: (l$name as String),
      color: (l$color as int?),
      userCanEdit: (l$userCanEdit as bool),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final int? color;

  final bool userCanEdit;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$userCanEdit = userCanEdit;
    _resultData['userCanEdit'] = l$userCanEdit;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] = l$photoUpdatedAt == null
        ? null
        : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$userCanEdit = userCanEdit;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$userCanEdit,
      l$photoUpdatedAt,
      l$blurhash,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_UserScopeService ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$userCanEdit = userCanEdit;
    final lOther$userCanEdit = other.userCanEdit;
    if (l$userCanEdit != lOther$userCanEdit) {
      return false;
    }
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
      return false;
    }
    final l$blurhash = blurhash;
    final lOther$blurhash = other.blurhash;
    if (l$blurhash != lOther$blurhash) {
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

extension UtilityExtension_Fragment_UserScopeService
    on Fragment_UserScopeService {
  CopyWith_Fragment_UserScopeService<Fragment_UserScopeService> get copyWith =>
      CopyWith_Fragment_UserScopeService(this, (i) => i);
}

abstract class CopyWith_Fragment_UserScopeService<TRes> {
  factory CopyWith_Fragment_UserScopeService(
    Fragment_UserScopeService instance,
    TRes Function(Fragment_UserScopeService) then,
  ) = _CopyWithImpl_Fragment_UserScopeService;

  factory CopyWith_Fragment_UserScopeService.stub(TRes res) =
      _CopyWithStubImpl_Fragment_UserScopeService;

  TRes call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    DateTime? photoUpdatedAt,
    String? blurhash,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_UserScopeService<TRes>
    implements CopyWith_Fragment_UserScopeService<TRes> {
  _CopyWithImpl_Fragment_UserScopeService(this._instance, this._then);

  final Fragment_UserScopeService _instance;

  final TRes Function(Fragment_UserScopeService) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? userCanEdit = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_UserScopeService(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      color: color == _undefined ? _instance.color : (color as int?),
      userCanEdit: userCanEdit == _undefined || userCanEdit == null
          ? _instance.userCanEdit
          : (userCanEdit as bool),
      photoUpdatedAt: photoUpdatedAt == _undefined
          ? _instance.photoUpdatedAt
          : (photoUpdatedAt as DateTime?),
      blurhash: blurhash == _undefined
          ? _instance.blurhash
          : (blurhash as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Fragment_UserScopeService<TRes>
    implements CopyWith_Fragment_UserScopeService<TRes> {
  _CopyWithStubImpl_Fragment_UserScopeService(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    DateTime? photoUpdatedAt,
    String? blurhash,
    String? $__typename,
  }) => _res;
}

const fragmentDefinitionUserScopeService = FragmentDefinitionNode(
  name: NameNode(value: 'UserScopeService'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Service'), isNonNull: false),
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
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'color'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'userCanEdit'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'photoUpdatedAt'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'blurhash'),
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
const documentNodeFragmentUserScopeService = DocumentNode(
  definitions: [fragmentDefinitionUserScopeService],
);

class Fragment_UserScopeGroup {
  Fragment_UserScopeGroup({
    required this.id,
    required this.name,
    this.color,
    required this.userCanEdit,
    this.photoUpdatedAt,
    this.blurhash,
    this.$__typename = 'Group',
  });

  factory Fragment_UserScopeGroup.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$userCanEdit = json['userCanEdit'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$$__typename = json['__typename'];
    return Fragment_UserScopeGroup(
      id: (l$id as String),
      name: (l$name as String),
      color: (l$color as int?),
      userCanEdit: (l$userCanEdit as bool),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final int? color;

  final bool userCanEdit;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$userCanEdit = userCanEdit;
    _resultData['userCanEdit'] = l$userCanEdit;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] = l$photoUpdatedAt == null
        ? null
        : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$userCanEdit = userCanEdit;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$userCanEdit,
      l$photoUpdatedAt,
      l$blurhash,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_UserScopeGroup || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$userCanEdit = userCanEdit;
    final lOther$userCanEdit = other.userCanEdit;
    if (l$userCanEdit != lOther$userCanEdit) {
      return false;
    }
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
      return false;
    }
    final l$blurhash = blurhash;
    final lOther$blurhash = other.blurhash;
    if (l$blurhash != lOther$blurhash) {
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

extension UtilityExtension_Fragment_UserScopeGroup on Fragment_UserScopeGroup {
  CopyWith_Fragment_UserScopeGroup<Fragment_UserScopeGroup> get copyWith =>
      CopyWith_Fragment_UserScopeGroup(this, (i) => i);
}

abstract class CopyWith_Fragment_UserScopeGroup<TRes> {
  factory CopyWith_Fragment_UserScopeGroup(
    Fragment_UserScopeGroup instance,
    TRes Function(Fragment_UserScopeGroup) then,
  ) = _CopyWithImpl_Fragment_UserScopeGroup;

  factory CopyWith_Fragment_UserScopeGroup.stub(TRes res) =
      _CopyWithStubImpl_Fragment_UserScopeGroup;

  TRes call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    DateTime? photoUpdatedAt,
    String? blurhash,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_UserScopeGroup<TRes>
    implements CopyWith_Fragment_UserScopeGroup<TRes> {
  _CopyWithImpl_Fragment_UserScopeGroup(this._instance, this._then);

  final Fragment_UserScopeGroup _instance;

  final TRes Function(Fragment_UserScopeGroup) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? userCanEdit = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_UserScopeGroup(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      color: color == _undefined ? _instance.color : (color as int?),
      userCanEdit: userCanEdit == _undefined || userCanEdit == null
          ? _instance.userCanEdit
          : (userCanEdit as bool),
      photoUpdatedAt: photoUpdatedAt == _undefined
          ? _instance.photoUpdatedAt
          : (photoUpdatedAt as DateTime?),
      blurhash: blurhash == _undefined
          ? _instance.blurhash
          : (blurhash as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Fragment_UserScopeGroup<TRes>
    implements CopyWith_Fragment_UserScopeGroup<TRes> {
  _CopyWithStubImpl_Fragment_UserScopeGroup(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    DateTime? photoUpdatedAt,
    String? blurhash,
    String? $__typename,
  }) => _res;
}

const fragmentDefinitionUserScopeGroup = FragmentDefinitionNode(
  name: NameNode(value: 'UserScopeGroup'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Group'), isNonNull: false),
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
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'color'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'userCanEdit'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'photoUpdatedAt'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'blurhash'),
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
const documentNodeFragmentUserScopeGroup = DocumentNode(
  definitions: [fragmentDefinitionUserScopeGroup],
);

class Fragment_UserPerson {
  Fragment_UserPerson({
    required this.id,
    required this.name,
    this.color,
    required this.userCanEdit,
    this.photoUpdatedAt,
    this.blurhash,
    this.dataCheck,
    this.latestKodas,
    this.latestConfession,
    this.$__typename = 'Person',
  });

  factory Fragment_UserPerson.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$userCanEdit = json['userCanEdit'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$dataCheck = json['dataCheck'];
    final l$latestKodas = json['latestKodas'];
    final l$latestConfession = json['latestConfession'];
    final l$$__typename = json['__typename'];
    return Fragment_UserPerson(
      id: (l$id as String),
      name: (l$name as String),
      color: (l$color as int?),
      userCanEdit: (l$userCanEdit as bool),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      dataCheck: l$dataCheck == null
          ? null
          : Fragment_DataCheck.fromJson((l$dataCheck as Map<String, dynamic>)),
      latestKodas: l$latestKodas == null
          ? null
          : Fragment_LatestKodas.fromJson(
              (l$latestKodas as Map<String, dynamic>),
            ),
      latestConfession: l$latestConfession == null
          ? null
          : Fragment_LatestConfession.fromJson(
              (l$latestConfession as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final int? color;

  final bool userCanEdit;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final Fragment_DataCheck? dataCheck;

  final Fragment_LatestKodas? latestKodas;

  final Fragment_LatestConfession? latestConfession;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$userCanEdit = userCanEdit;
    _resultData['userCanEdit'] = l$userCanEdit;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] = l$photoUpdatedAt == null
        ? null
        : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    final l$dataCheck = dataCheck;
    _resultData['dataCheck'] = l$dataCheck?.toJson();
    final l$latestKodas = latestKodas;
    _resultData['latestKodas'] = l$latestKodas?.toJson();
    final l$latestConfession = latestConfession;
    _resultData['latestConfession'] = l$latestConfession?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$userCanEdit = userCanEdit;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$dataCheck = dataCheck;
    final l$latestKodas = latestKodas;
    final l$latestConfession = latestConfession;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$userCanEdit,
      l$photoUpdatedAt,
      l$blurhash,
      l$dataCheck,
      l$latestKodas,
      l$latestConfession,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_UserPerson || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$userCanEdit = userCanEdit;
    final lOther$userCanEdit = other.userCanEdit;
    if (l$userCanEdit != lOther$userCanEdit) {
      return false;
    }
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
      return false;
    }
    final l$blurhash = blurhash;
    final lOther$blurhash = other.blurhash;
    if (l$blurhash != lOther$blurhash) {
      return false;
    }
    final l$dataCheck = dataCheck;
    final lOther$dataCheck = other.dataCheck;
    if (l$dataCheck != lOther$dataCheck) {
      return false;
    }
    final l$latestKodas = latestKodas;
    final lOther$latestKodas = other.latestKodas;
    if (l$latestKodas != lOther$latestKodas) {
      return false;
    }
    final l$latestConfession = latestConfession;
    final lOther$latestConfession = other.latestConfession;
    if (l$latestConfession != lOther$latestConfession) {
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

extension UtilityExtension_Fragment_UserPerson on Fragment_UserPerson {
  CopyWith_Fragment_UserPerson<Fragment_UserPerson> get copyWith =>
      CopyWith_Fragment_UserPerson(this, (i) => i);
}

abstract class CopyWith_Fragment_UserPerson<TRes> {
  factory CopyWith_Fragment_UserPerson(
    Fragment_UserPerson instance,
    TRes Function(Fragment_UserPerson) then,
  ) = _CopyWithImpl_Fragment_UserPerson;

  factory CopyWith_Fragment_UserPerson.stub(TRes res) =
      _CopyWithStubImpl_Fragment_UserPerson;

  TRes call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Fragment_DataCheck? dataCheck,
    Fragment_LatestKodas? latestKodas,
    Fragment_LatestConfession? latestConfession,
    String? $__typename,
  });
  CopyWith_Fragment_DataCheck<TRes> get dataCheck;
  CopyWith_Fragment_LatestKodas<TRes> get latestKodas;
  CopyWith_Fragment_LatestConfession<TRes> get latestConfession;
}

class _CopyWithImpl_Fragment_UserPerson<TRes>
    implements CopyWith_Fragment_UserPerson<TRes> {
  _CopyWithImpl_Fragment_UserPerson(this._instance, this._then);

  final Fragment_UserPerson _instance;

  final TRes Function(Fragment_UserPerson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? userCanEdit = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? dataCheck = _undefined,
    Object? latestKodas = _undefined,
    Object? latestConfession = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_UserPerson(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      color: color == _undefined ? _instance.color : (color as int?),
      userCanEdit: userCanEdit == _undefined || userCanEdit == null
          ? _instance.userCanEdit
          : (userCanEdit as bool),
      photoUpdatedAt: photoUpdatedAt == _undefined
          ? _instance.photoUpdatedAt
          : (photoUpdatedAt as DateTime?),
      blurhash: blurhash == _undefined
          ? _instance.blurhash
          : (blurhash as String?),
      dataCheck: dataCheck == _undefined
          ? _instance.dataCheck
          : (dataCheck as Fragment_DataCheck?),
      latestKodas: latestKodas == _undefined
          ? _instance.latestKodas
          : (latestKodas as Fragment_LatestKodas?),
      latestConfession: latestConfession == _undefined
          ? _instance.latestConfession
          : (latestConfession as Fragment_LatestConfession?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_DataCheck<TRes> get dataCheck {
    final local$dataCheck = _instance.dataCheck;
    return local$dataCheck == null
        ? CopyWith_Fragment_DataCheck.stub(_then(_instance))
        : CopyWith_Fragment_DataCheck(
            local$dataCheck,
            (e) => call(dataCheck: e),
          );
  }

  CopyWith_Fragment_LatestKodas<TRes> get latestKodas {
    final local$latestKodas = _instance.latestKodas;
    return local$latestKodas == null
        ? CopyWith_Fragment_LatestKodas.stub(_then(_instance))
        : CopyWith_Fragment_LatestKodas(
            local$latestKodas,
            (e) => call(latestKodas: e),
          );
  }

  CopyWith_Fragment_LatestConfession<TRes> get latestConfession {
    final local$latestConfession = _instance.latestConfession;
    return local$latestConfession == null
        ? CopyWith_Fragment_LatestConfession.stub(_then(_instance))
        : CopyWith_Fragment_LatestConfession(
            local$latestConfession,
            (e) => call(latestConfession: e),
          );
  }
}

class _CopyWithStubImpl_Fragment_UserPerson<TRes>
    implements CopyWith_Fragment_UserPerson<TRes> {
  _CopyWithStubImpl_Fragment_UserPerson(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    int? color,
    bool? userCanEdit,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Fragment_DataCheck? dataCheck,
    Fragment_LatestKodas? latestKodas,
    Fragment_LatestConfession? latestConfession,
    String? $__typename,
  }) => _res;

  CopyWith_Fragment_DataCheck<TRes> get dataCheck =>
      CopyWith_Fragment_DataCheck.stub(_res);

  CopyWith_Fragment_LatestKodas<TRes> get latestKodas =>
      CopyWith_Fragment_LatestKodas.stub(_res);

  CopyWith_Fragment_LatestConfession<TRes> get latestConfession =>
      CopyWith_Fragment_LatestConfession.stub(_res);
}

const fragmentDefinitionUserPerson = FragmentDefinitionNode(
  name: NameNode(value: 'UserPerson'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Person'), isNonNull: false),
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
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'color'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'userCanEdit'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'photoUpdatedAt'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'blurhash'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'dataCheck'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'DataCheck'),
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
        name: NameNode(value: 'latestKodas'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'LatestKodas'),
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
        name: NameNode(value: 'latestConfession'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'LatestConfession'),
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
);
const documentNodeFragmentUserPerson = DocumentNode(
  definitions: [
    fragmentDefinitionUserPerson,
    fragmentDefinitionDataCheck,
    fragmentDefinitionLatestKodas,
    fragmentDefinitionUser,
    fragmentDefinitionLatestConfession,
  ],
);
