import '../../areas/__generated__/fragments.gql.dart';
import '../../classes/__generated__/fragments.gql.dart';
import '../../fcm_tokens/__generated__/fragments.gql.dart';
import '../../gql/__generated__/fragments.gql.dart';
import '../../groups/__generated__/fragments.gql.dart';
import '../../persons/__generated__/fragments.gql.dart';
import '../../services/__generated__/fragments.gql.dart';
import '../../users_preferences/__generated__/fragments.gql.dart';
import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Fragment_User implements Fragment_UserNoPhoto {
  Fragment_User({
    required this.uid,
    required this.name,
    this.email,
    this.$__typename = 'AuthUsersData',
    this.photoUpdatedAt,
    this.blurhash,
  });

  factory Fragment_User.fromJson(Map<String, dynamic> json) {
    final l$uid = json['uid'];
    final l$name = json['name'];
    final l$email = json['email'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    return Fragment_User(
      uid: stringToUuid(l$uid),
      name: (l$name as String),
      email: (l$email as String?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
    );
  }

  final UuidValue uid;

  final String name;

  final String? email;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uid = uid;
    _resultData['uid'] = uuidToString(l$uid);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] = l$photoUpdatedAt == null
        ? null
        : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uid = uid;
    final l$name = name;
    final l$email = email;
    final l$$__typename = $__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    return Object.hashAll([
      l$uid,
      l$name,
      l$email,
      l$$__typename,
      l$photoUpdatedAt,
      l$blurhash,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_User || runtimeType != other.runtimeType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
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
    return true;
  }
}

extension UtilityExtension_Fragment_User on Fragment_User {
  CopyWith_Fragment_User<Fragment_User> get copyWith =>
      CopyWith_Fragment_User(this, (i) => i);
}

abstract class CopyWith_Fragment_User<TRes> {
  factory CopyWith_Fragment_User(
    Fragment_User instance,
    TRes Function(Fragment_User) then,
  ) = _CopyWithImpl_Fragment_User;

  factory CopyWith_Fragment_User.stub(TRes res) =
      _CopyWithStubImpl_Fragment_User;

  TRes call({
    UuidValue? uid,
    String? name,
    String? email,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
  });
}

class _CopyWithImpl_Fragment_User<TRes>
    implements CopyWith_Fragment_User<TRes> {
  _CopyWithImpl_Fragment_User(this._instance, this._then);

  final Fragment_User _instance;

  final TRes Function(Fragment_User) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uid = _undefined,
    Object? name = _undefined,
    Object? email = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
  }) => _then(
    Fragment_User(
      uid: uid == _undefined || uid == null
          ? _instance.uid
          : (uid as UuidValue),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      email: email == _undefined ? _instance.email : (email as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      photoUpdatedAt: photoUpdatedAt == _undefined
          ? _instance.photoUpdatedAt
          : (photoUpdatedAt as DateTime?),
      blurhash: blurhash == _undefined
          ? _instance.blurhash
          : (blurhash as String?),
    ),
  );
}

class _CopyWithStubImpl_Fragment_User<TRes>
    implements CopyWith_Fragment_User<TRes> {
  _CopyWithStubImpl_Fragment_User(this._res);

  TRes _res;

  call({
    UuidValue? uid,
    String? name,
    String? email,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
  }) => _res;
}

const fragmentDefinitionUser = FragmentDefinitionNode(
  name: NameNode(value: 'User'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'AuthUsersData'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FragmentSpreadNode(
        name: NameNode(value: 'UserNoPhoto'),
        directives: [],
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
const documentNodeFragmentUser = DocumentNode(
  definitions: [fragmentDefinitionUser, fragmentDefinitionUserNoPhoto],
);

class Fragment_UserNoPhoto {
  Fragment_UserNoPhoto({
    required this.uid,
    required this.name,
    this.email,
    this.$__typename = 'AuthUsersData',
  });

  factory Fragment_UserNoPhoto.fromJson(Map<String, dynamic> json) {
    final l$uid = json['uid'];
    final l$name = json['name'];
    final l$email = json['email'];
    final l$$__typename = json['__typename'];
    return Fragment_UserNoPhoto(
      uid: stringToUuid(l$uid),
      name: (l$name as String),
      email: (l$email as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue uid;

  final String name;

  final String? email;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uid = uid;
    _resultData['uid'] = uuidToString(l$uid);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uid = uid;
    final l$name = name;
    final l$email = email;
    final l$$__typename = $__typename;
    return Object.hashAll([l$uid, l$name, l$email, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_UserNoPhoto || runtimeType != other.runtimeType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Fragment_UserNoPhoto on Fragment_UserNoPhoto {
  CopyWith_Fragment_UserNoPhoto<Fragment_UserNoPhoto> get copyWith =>
      CopyWith_Fragment_UserNoPhoto(this, (i) => i);
}

abstract class CopyWith_Fragment_UserNoPhoto<TRes> {
  factory CopyWith_Fragment_UserNoPhoto(
    Fragment_UserNoPhoto instance,
    TRes Function(Fragment_UserNoPhoto) then,
  ) = _CopyWithImpl_Fragment_UserNoPhoto;

  factory CopyWith_Fragment_UserNoPhoto.stub(TRes res) =
      _CopyWithStubImpl_Fragment_UserNoPhoto;

  TRes call({UuidValue? uid, String? name, String? email, String? $__typename});
}

class _CopyWithImpl_Fragment_UserNoPhoto<TRes>
    implements CopyWith_Fragment_UserNoPhoto<TRes> {
  _CopyWithImpl_Fragment_UserNoPhoto(this._instance, this._then);

  final Fragment_UserNoPhoto _instance;

  final TRes Function(Fragment_UserNoPhoto) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uid = _undefined,
    Object? name = _undefined,
    Object? email = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_UserNoPhoto(
      uid: uid == _undefined || uid == null
          ? _instance.uid
          : (uid as UuidValue),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      email: email == _undefined ? _instance.email : (email as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Fragment_UserNoPhoto<TRes>
    implements CopyWith_Fragment_UserNoPhoto<TRes> {
  _CopyWithStubImpl_Fragment_UserNoPhoto(this._res);

  TRes _res;

  call({UuidValue? uid, String? name, String? email, String? $__typename}) =>
      _res;
}

const fragmentDefinitionUserNoPhoto = FragmentDefinitionNode(
  name: NameNode(value: 'UserNoPhoto'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'AuthUsersData'), isNonNull: false),
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
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'email'),
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
const documentNodeFragmentUserNoPhoto = DocumentNode(
  definitions: [fragmentDefinitionUserNoPhoto],
);

class Fragment_UserOverview
    implements Fragment_User, Fragment_UserNoPhoto, Fragment_UserPermissions {
  Fragment_UserOverview({
    required this.uid,
    required this.name,
    this.email,
    this.$__typename = 'AuthUsersData',
    this.photoUpdatedAt,
    this.blurhash,
    this.currentUserCanManageThisUser,
    required this.permissions,
    this.person,
  });

  factory Fragment_UserOverview.fromJson(Map<String, dynamic> json) {
    final l$uid = json['uid'];
    final l$name = json['name'];
    final l$email = json['email'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$currentUserCanManageThisUser = json['currentUserCanManageThisUser'];
    final l$permissions = json['permissions'];
    final l$person = json['person'];
    return Fragment_UserOverview(
      uid: stringToUuid(l$uid),
      name: (l$name as String),
      email: (l$email as String?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      currentUserCanManageThisUser: (l$currentUserCanManageThisUser as bool?),
      permissions: (l$permissions as List<dynamic>)
          .map(
            (e) => Fragment_UserOverview_permissions.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      person: l$person == null
          ? null
          : Fragment_UserOverview_person.fromJson(
              (l$person as Map<String, dynamic>),
            ),
    );
  }

  final UuidValue uid;

  final String name;

  final String? email;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final bool? currentUserCanManageThisUser;

  final List<Fragment_UserOverview_permissions> permissions;

  final Fragment_UserOverview_person? person;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uid = uid;
    _resultData['uid'] = uuidToString(l$uid);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] = l$photoUpdatedAt == null
        ? null
        : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    final l$currentUserCanManageThisUser = currentUserCanManageThisUser;
    _resultData['currentUserCanManageThisUser'] =
        l$currentUserCanManageThisUser;
    final l$permissions = permissions;
    _resultData['permissions'] = l$permissions.map((e) => e.toJson()).toList();
    final l$person = person;
    _resultData['person'] = l$person?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uid = uid;
    final l$name = name;
    final l$email = email;
    final l$$__typename = $__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$currentUserCanManageThisUser = currentUserCanManageThisUser;
    final l$permissions = permissions;
    final l$person = person;
    return Object.hashAll([
      l$uid,
      l$name,
      l$email,
      l$$__typename,
      l$photoUpdatedAt,
      l$blurhash,
      l$currentUserCanManageThisUser,
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
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
    final l$currentUserCanManageThisUser = currentUserCanManageThisUser;
    final lOther$currentUserCanManageThisUser =
        other.currentUserCanManageThisUser;
    if (l$currentUserCanManageThisUser != lOther$currentUserCanManageThisUser) {
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
    UuidValue? uid,
    String? name,
    String? email,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    bool? currentUserCanManageThisUser,
    List<Fragment_UserOverview_permissions>? permissions,
    Fragment_UserOverview_person? person,
  });
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
  CopyWith_Fragment_UserOverview_person<TRes> get person;
}

class _CopyWithImpl_Fragment_UserOverview<TRes>
    implements CopyWith_Fragment_UserOverview<TRes> {
  _CopyWithImpl_Fragment_UserOverview(this._instance, this._then);

  final Fragment_UserOverview _instance;

  final TRes Function(Fragment_UserOverview) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uid = _undefined,
    Object? name = _undefined,
    Object? email = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? currentUserCanManageThisUser = _undefined,
    Object? permissions = _undefined,
    Object? person = _undefined,
  }) => _then(
    Fragment_UserOverview(
      uid: uid == _undefined || uid == null
          ? _instance.uid
          : (uid as UuidValue),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      email: email == _undefined ? _instance.email : (email as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      photoUpdatedAt: photoUpdatedAt == _undefined
          ? _instance.photoUpdatedAt
          : (photoUpdatedAt as DateTime?),
      blurhash: blurhash == _undefined
          ? _instance.blurhash
          : (blurhash as String?),
      currentUserCanManageThisUser: currentUserCanManageThisUser == _undefined
          ? _instance.currentUserCanManageThisUser
          : (currentUserCanManageThisUser as bool?),
      permissions: permissions == _undefined || permissions == null
          ? _instance.permissions
          : (permissions as List<Fragment_UserOverview_permissions>),
      person: person == _undefined
          ? _instance.person
          : (person as Fragment_UserOverview_person?),
    ),
  );

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

  CopyWith_Fragment_UserOverview_person<TRes> get person {
    final local$person = _instance.person;
    return local$person == null
        ? CopyWith_Fragment_UserOverview_person.stub(_then(_instance))
        : CopyWith_Fragment_UserOverview_person(
            local$person,
            (e) => call(person: e),
          );
  }
}

class _CopyWithStubImpl_Fragment_UserOverview<TRes>
    implements CopyWith_Fragment_UserOverview<TRes> {
  _CopyWithStubImpl_Fragment_UserOverview(this._res);

  TRes _res;

  call({
    UuidValue? uid,
    String? name,
    String? email,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    bool? currentUserCanManageThisUser,
    List<Fragment_UserOverview_permissions>? permissions,
    Fragment_UserOverview_person? person,
  }) => _res;

  permissions(_fn) => _res;

  CopyWith_Fragment_UserOverview_person<TRes> get person =>
      CopyWith_Fragment_UserOverview_person.stub(_res);
}

const fragmentDefinitionUserOverview = FragmentDefinitionNode(
  name: NameNode(value: 'UserOverview'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'AuthUsersData'), isNonNull: false),
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
        name: NameNode(value: 'email'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FragmentSpreadNode(
        name: NameNode(value: 'UserPermissions'),
        directives: [],
      ),
      FieldNode(
        name: NameNode(value: 'person'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'Person'),
              directives: [],
            ),
            FieldNode(
              name: NameNode(value: 'lastKodas'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'LatestKodasHistory'),
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
              name: NameNode(value: 'lastConfession'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'LatestConfessionHistory'),
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
const documentNodeFragmentUserOverview = DocumentNode(
  definitions: [
    fragmentDefinitionUserOverview,
    fragmentDefinitionUser,
    fragmentDefinitionUserNoPhoto,
    fragmentDefinitionUserPermissions,
    fragmentDefinitionPerson,
    fragmentDefinitionPersonNoPhoto,
    fragmentDefinitionLatestKodasHistory,
    fragmentDefinitionLatestConfessionHistory,
  ],
);

class Fragment_UserOverview_permissions
    implements Fragment_UserPermissions_permissions {
  Fragment_UserOverview_permissions({
    required this.permission,
    this.$__typename = 'AuthUsersPermissions',
  });

  factory Fragment_UserOverview_permissions.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$permission = json['permission'];
    final l$$__typename = json['__typename'];
    return Fragment_UserOverview_permissions(
      permission: (l$permission as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String permission;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$permission = permission;
    _resultData['permission'] = l$permission;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$permission = permission;
    final l$$__typename = $__typename;
    return Object.hashAll([l$permission, l$$__typename]);
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

  TRes call({String? permission, String? $__typename});
}

class _CopyWithImpl_Fragment_UserOverview_permissions<TRes>
    implements CopyWith_Fragment_UserOverview_permissions<TRes> {
  _CopyWithImpl_Fragment_UserOverview_permissions(this._instance, this._then);

  final Fragment_UserOverview_permissions _instance;

  final TRes Function(Fragment_UserOverview_permissions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? permission = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_UserOverview_permissions(
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

  call({String? permission, String? $__typename}) => _res;
}

class Fragment_UserOverview_person
    implements Fragment_Person, Fragment_PersonNoPhoto {
  Fragment_UserOverview_person({
    required this.id,
    required this.name,
    this.color,
    this.userCanEdit,
    this.$__typename = 'Persons',
    this.photoUpdatedAt,
    this.blurhash,
    this.lastKodas,
    this.lastConfession,
  });

  factory Fragment_UserOverview_person.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$userCanEdit = json['userCanEdit'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$lastKodas = json['lastKodas'];
    final l$lastConfession = json['lastConfession'];
    return Fragment_UserOverview_person(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      userCanEdit: (l$userCanEdit as bool?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      lastKodas: l$lastKodas == null
          ? null
          : Fragment_LatestKodasHistory.fromJson(
              (l$lastKodas as Map<String, dynamic>),
            ),
      lastConfession: l$lastConfession == null
          ? null
          : Fragment_LatestConfessionHistory.fromJson(
              (l$lastConfession as Map<String, dynamic>),
            ),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final bool? userCanEdit;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final Fragment_LatestKodasHistory? lastKodas;

  final Fragment_LatestConfessionHistory? lastConfession;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$userCanEdit = userCanEdit;
    _resultData['userCanEdit'] = l$userCanEdit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] = l$photoUpdatedAt == null
        ? null
        : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    final l$lastKodas = lastKodas;
    _resultData['lastKodas'] = l$lastKodas?.toJson();
    final l$lastConfession = lastConfession;
    _resultData['lastConfession'] = l$lastConfession?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$userCanEdit = userCanEdit;
    final l$$__typename = $__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$lastKodas = lastKodas;
    final l$lastConfession = lastConfession;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$userCanEdit,
      l$$__typename,
      l$photoUpdatedAt,
      l$blurhash,
      l$lastKodas,
      l$lastConfession,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_UserOverview_person ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
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
    final l$lastKodas = lastKodas;
    final lOther$lastKodas = other.lastKodas;
    if (l$lastKodas != lOther$lastKodas) {
      return false;
    }
    final l$lastConfession = lastConfession;
    final lOther$lastConfession = other.lastConfession;
    if (l$lastConfession != lOther$lastConfession) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Fragment_UserOverview_person
    on Fragment_UserOverview_person {
  CopyWith_Fragment_UserOverview_person<Fragment_UserOverview_person>
  get copyWith => CopyWith_Fragment_UserOverview_person(this, (i) => i);
}

abstract class CopyWith_Fragment_UserOverview_person<TRes> {
  factory CopyWith_Fragment_UserOverview_person(
    Fragment_UserOverview_person instance,
    TRes Function(Fragment_UserOverview_person) then,
  ) = _CopyWithImpl_Fragment_UserOverview_person;

  factory CopyWith_Fragment_UserOverview_person.stub(TRes res) =
      _CopyWithStubImpl_Fragment_UserOverview_person;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Fragment_LatestKodasHistory? lastKodas,
    Fragment_LatestConfessionHistory? lastConfession,
  });
  CopyWith_Fragment_LatestKodasHistory<TRes> get lastKodas;
  CopyWith_Fragment_LatestConfessionHistory<TRes> get lastConfession;
}

class _CopyWithImpl_Fragment_UserOverview_person<TRes>
    implements CopyWith_Fragment_UserOverview_person<TRes> {
  _CopyWithImpl_Fragment_UserOverview_person(this._instance, this._then);

  final Fragment_UserOverview_person _instance;

  final TRes Function(Fragment_UserOverview_person) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? userCanEdit = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? lastKodas = _undefined,
    Object? lastConfession = _undefined,
  }) => _then(
    Fragment_UserOverview_person(
      id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      color: color == _undefined ? _instance.color : (color as int?),
      userCanEdit: userCanEdit == _undefined
          ? _instance.userCanEdit
          : (userCanEdit as bool?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      photoUpdatedAt: photoUpdatedAt == _undefined
          ? _instance.photoUpdatedAt
          : (photoUpdatedAt as DateTime?),
      blurhash: blurhash == _undefined
          ? _instance.blurhash
          : (blurhash as String?),
      lastKodas: lastKodas == _undefined
          ? _instance.lastKodas
          : (lastKodas as Fragment_LatestKodasHistory?),
      lastConfession: lastConfession == _undefined
          ? _instance.lastConfession
          : (lastConfession as Fragment_LatestConfessionHistory?),
    ),
  );

  CopyWith_Fragment_LatestKodasHistory<TRes> get lastKodas {
    final local$lastKodas = _instance.lastKodas;
    return local$lastKodas == null
        ? CopyWith_Fragment_LatestKodasHistory.stub(_then(_instance))
        : CopyWith_Fragment_LatestKodasHistory(
            local$lastKodas,
            (e) => call(lastKodas: e),
          );
  }

  CopyWith_Fragment_LatestConfessionHistory<TRes> get lastConfession {
    final local$lastConfession = _instance.lastConfession;
    return local$lastConfession == null
        ? CopyWith_Fragment_LatestConfessionHistory.stub(_then(_instance))
        : CopyWith_Fragment_LatestConfessionHistory(
            local$lastConfession,
            (e) => call(lastConfession: e),
          );
  }
}

class _CopyWithStubImpl_Fragment_UserOverview_person<TRes>
    implements CopyWith_Fragment_UserOverview_person<TRes> {
  _CopyWithStubImpl_Fragment_UserOverview_person(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Fragment_LatestKodasHistory? lastKodas,
    Fragment_LatestConfessionHistory? lastConfession,
  }) => _res;

  CopyWith_Fragment_LatestKodasHistory<TRes> get lastKodas =>
      CopyWith_Fragment_LatestKodasHistory.stub(_res);

  CopyWith_Fragment_LatestConfessionHistory<TRes> get lastConfession =>
      CopyWith_Fragment_LatestConfessionHistory.stub(_res);
}

class Fragment_UserDetails
    implements
        Fragment_UserOverview,
        Fragment_User,
        Fragment_UserNoPhoto,
        Fragment_UserPermissions,
        Fragment_UserAdminOn {
  Fragment_UserDetails({
    required this.uid,
    required this.name,
    this.email,
    this.$__typename = 'AuthUsersData',
    this.photoUpdatedAt,
    this.blurhash,
    this.currentUserCanManageThisUser,
    required this.permissions,
    this.person,
    this.lastEdit,
    required this.adminOn,
    this.preferences,
    required this.fcmTokens,
  });

  factory Fragment_UserDetails.fromJson(Map<String, dynamic> json) {
    final l$uid = json['uid'];
    final l$name = json['name'];
    final l$email = json['email'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$currentUserCanManageThisUser = json['currentUserCanManageThisUser'];
    final l$permissions = json['permissions'];
    final l$person = json['person'];
    final l$lastEdit = json['lastEdit'];
    final l$adminOn = json['adminOn'];
    final l$preferences = json['preferences'];
    final l$fcmTokens = json['fcmTokens'];
    return Fragment_UserDetails(
      uid: stringToUuid(l$uid),
      name: (l$name as String),
      email: (l$email as String?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      currentUserCanManageThisUser: (l$currentUserCanManageThisUser as bool?),
      permissions: (l$permissions as List<dynamic>)
          .map(
            (e) => Fragment_UserDetails_permissions.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      person: l$person == null
          ? null
          : Fragment_UserDetails_person.fromJson(
              (l$person as Map<String, dynamic>),
            ),
      lastEdit: l$lastEdit == null
          ? null
          : Fragment_LatestEditHistory.fromJson(
              (l$lastEdit as Map<String, dynamic>),
            ),
      adminOn: (l$adminOn as List<dynamic>)
          .map(
            (e) => Fragment_UserDetails_adminOn.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      preferences: l$preferences == null
          ? null
          : Fragment_UserPreferences.fromJson(
              (l$preferences as Map<String, dynamic>),
            ),
      fcmTokens: (l$fcmTokens as List<dynamic>)
          .map((e) => Fragment_FcmToken.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final UuidValue uid;

  final String name;

  final String? email;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final bool? currentUserCanManageThisUser;

  final List<Fragment_UserDetails_permissions> permissions;

  final Fragment_UserDetails_person? person;

  final Fragment_LatestEditHistory? lastEdit;

  final List<Fragment_UserDetails_adminOn> adminOn;

  final Fragment_UserPreferences? preferences;

  final List<Fragment_FcmToken> fcmTokens;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uid = uid;
    _resultData['uid'] = uuidToString(l$uid);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] = l$photoUpdatedAt == null
        ? null
        : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    final l$currentUserCanManageThisUser = currentUserCanManageThisUser;
    _resultData['currentUserCanManageThisUser'] =
        l$currentUserCanManageThisUser;
    final l$permissions = permissions;
    _resultData['permissions'] = l$permissions.map((e) => e.toJson()).toList();
    final l$person = person;
    _resultData['person'] = l$person?.toJson();
    final l$lastEdit = lastEdit;
    _resultData['lastEdit'] = l$lastEdit?.toJson();
    final l$adminOn = adminOn;
    _resultData['adminOn'] = l$adminOn.map((e) => e.toJson()).toList();
    final l$preferences = preferences;
    _resultData['preferences'] = l$preferences?.toJson();
    final l$fcmTokens = fcmTokens;
    _resultData['fcmTokens'] = l$fcmTokens.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uid = uid;
    final l$name = name;
    final l$email = email;
    final l$$__typename = $__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$currentUserCanManageThisUser = currentUserCanManageThisUser;
    final l$permissions = permissions;
    final l$person = person;
    final l$lastEdit = lastEdit;
    final l$adminOn = adminOn;
    final l$preferences = preferences;
    final l$fcmTokens = fcmTokens;
    return Object.hashAll([
      l$uid,
      l$name,
      l$email,
      l$$__typename,
      l$photoUpdatedAt,
      l$blurhash,
      l$currentUserCanManageThisUser,
      Object.hashAll(l$permissions.map((v) => v)),
      l$person,
      l$lastEdit,
      Object.hashAll(l$adminOn.map((v) => v)),
      l$preferences,
      Object.hashAll(l$fcmTokens.map((v) => v)),
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
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
    final l$currentUserCanManageThisUser = currentUserCanManageThisUser;
    final lOther$currentUserCanManageThisUser =
        other.currentUserCanManageThisUser;
    if (l$currentUserCanManageThisUser != lOther$currentUserCanManageThisUser) {
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
    final l$lastEdit = lastEdit;
    final lOther$lastEdit = other.lastEdit;
    if (l$lastEdit != lOther$lastEdit) {
      return false;
    }
    final l$adminOn = adminOn;
    final lOther$adminOn = other.adminOn;
    if (l$adminOn.length != lOther$adminOn.length) {
      return false;
    }
    for (int i = 0; i < l$adminOn.length; i++) {
      final l$adminOn$entry = l$adminOn[i];
      final lOther$adminOn$entry = lOther$adminOn[i];
      if (l$adminOn$entry != lOther$adminOn$entry) {
        return false;
      }
    }
    final l$preferences = preferences;
    final lOther$preferences = other.preferences;
    if (l$preferences != lOther$preferences) {
      return false;
    }
    final l$fcmTokens = fcmTokens;
    final lOther$fcmTokens = other.fcmTokens;
    if (l$fcmTokens.length != lOther$fcmTokens.length) {
      return false;
    }
    for (int i = 0; i < l$fcmTokens.length; i++) {
      final l$fcmTokens$entry = l$fcmTokens[i];
      final lOther$fcmTokens$entry = lOther$fcmTokens[i];
      if (l$fcmTokens$entry != lOther$fcmTokens$entry) {
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
    UuidValue? uid,
    String? name,
    String? email,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    bool? currentUserCanManageThisUser,
    List<Fragment_UserDetails_permissions>? permissions,
    Fragment_UserDetails_person? person,
    Fragment_LatestEditHistory? lastEdit,
    List<Fragment_UserDetails_adminOn>? adminOn,
    Fragment_UserPreferences? preferences,
    List<Fragment_FcmToken>? fcmTokens,
  });
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
  CopyWith_Fragment_UserDetails_person<TRes> get person;
  CopyWith_Fragment_LatestEditHistory<TRes> get lastEdit;
  TRes adminOn(
    Iterable<Fragment_UserDetails_adminOn> Function(
      Iterable<
        CopyWith_Fragment_UserDetails_adminOn<Fragment_UserDetails_adminOn>
      >,
    )
    _fn,
  );
  CopyWith_Fragment_UserPreferences<TRes> get preferences;
  TRes fcmTokens(
    Iterable<Fragment_FcmToken> Function(
      Iterable<CopyWith_Fragment_FcmToken<Fragment_FcmToken>>,
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
    Object? uid = _undefined,
    Object? name = _undefined,
    Object? email = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? currentUserCanManageThisUser = _undefined,
    Object? permissions = _undefined,
    Object? person = _undefined,
    Object? lastEdit = _undefined,
    Object? adminOn = _undefined,
    Object? preferences = _undefined,
    Object? fcmTokens = _undefined,
  }) => _then(
    Fragment_UserDetails(
      uid: uid == _undefined || uid == null
          ? _instance.uid
          : (uid as UuidValue),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      email: email == _undefined ? _instance.email : (email as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      photoUpdatedAt: photoUpdatedAt == _undefined
          ? _instance.photoUpdatedAt
          : (photoUpdatedAt as DateTime?),
      blurhash: blurhash == _undefined
          ? _instance.blurhash
          : (blurhash as String?),
      currentUserCanManageThisUser: currentUserCanManageThisUser == _undefined
          ? _instance.currentUserCanManageThisUser
          : (currentUserCanManageThisUser as bool?),
      permissions: permissions == _undefined || permissions == null
          ? _instance.permissions
          : (permissions as List<Fragment_UserDetails_permissions>),
      person: person == _undefined
          ? _instance.person
          : (person as Fragment_UserDetails_person?),
      lastEdit: lastEdit == _undefined
          ? _instance.lastEdit
          : (lastEdit as Fragment_LatestEditHistory?),
      adminOn: adminOn == _undefined || adminOn == null
          ? _instance.adminOn
          : (adminOn as List<Fragment_UserDetails_adminOn>),
      preferences: preferences == _undefined
          ? _instance.preferences
          : (preferences as Fragment_UserPreferences?),
      fcmTokens: fcmTokens == _undefined || fcmTokens == null
          ? _instance.fcmTokens
          : (fcmTokens as List<Fragment_FcmToken>),
    ),
  );

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

  CopyWith_Fragment_UserDetails_person<TRes> get person {
    final local$person = _instance.person;
    return local$person == null
        ? CopyWith_Fragment_UserDetails_person.stub(_then(_instance))
        : CopyWith_Fragment_UserDetails_person(
            local$person,
            (e) => call(person: e),
          );
  }

  CopyWith_Fragment_LatestEditHistory<TRes> get lastEdit {
    final local$lastEdit = _instance.lastEdit;
    return local$lastEdit == null
        ? CopyWith_Fragment_LatestEditHistory.stub(_then(_instance))
        : CopyWith_Fragment_LatestEditHistory(
            local$lastEdit,
            (e) => call(lastEdit: e),
          );
  }

  TRes adminOn(
    Iterable<Fragment_UserDetails_adminOn> Function(
      Iterable<
        CopyWith_Fragment_UserDetails_adminOn<Fragment_UserDetails_adminOn>
      >,
    )
    _fn,
  ) => call(
    adminOn: _fn(
      _instance.adminOn.map(
        (e) => CopyWith_Fragment_UserDetails_adminOn(e, (i) => i),
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

  TRes fcmTokens(
    Iterable<Fragment_FcmToken> Function(
      Iterable<CopyWith_Fragment_FcmToken<Fragment_FcmToken>>,
    )
    _fn,
  ) => call(
    fcmTokens: _fn(
      _instance.fcmTokens.map((e) => CopyWith_Fragment_FcmToken(e, (i) => i)),
    ).toList(),
  );
}

class _CopyWithStubImpl_Fragment_UserDetails<TRes>
    implements CopyWith_Fragment_UserDetails<TRes> {
  _CopyWithStubImpl_Fragment_UserDetails(this._res);

  TRes _res;

  call({
    UuidValue? uid,
    String? name,
    String? email,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    bool? currentUserCanManageThisUser,
    List<Fragment_UserDetails_permissions>? permissions,
    Fragment_UserDetails_person? person,
    Fragment_LatestEditHistory? lastEdit,
    List<Fragment_UserDetails_adminOn>? adminOn,
    Fragment_UserPreferences? preferences,
    List<Fragment_FcmToken>? fcmTokens,
  }) => _res;

  permissions(_fn) => _res;

  CopyWith_Fragment_UserDetails_person<TRes> get person =>
      CopyWith_Fragment_UserDetails_person.stub(_res);

  CopyWith_Fragment_LatestEditHistory<TRes> get lastEdit =>
      CopyWith_Fragment_LatestEditHistory.stub(_res);

  adminOn(_fn) => _res;

  CopyWith_Fragment_UserPreferences<TRes> get preferences =>
      CopyWith_Fragment_UserPreferences.stub(_res);

  fcmTokens(_fn) => _res;
}

const fragmentDefinitionUserDetails = FragmentDefinitionNode(
  name: NameNode(value: 'UserDetails'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'AuthUsersData'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FragmentSpreadNode(
        name: NameNode(value: 'UserOverview'),
        directives: [],
      ),
      FieldNode(
        name: NameNode(value: 'lastEdit'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'LatestEditHistory'),
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
        name: NameNode(value: 'fcmTokens'),
        alias: null,
        arguments: [],
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
);
const documentNodeFragmentUserDetails = DocumentNode(
  definitions: [
    fragmentDefinitionUserDetails,
    fragmentDefinitionUserOverview,
    fragmentDefinitionUser,
    fragmentDefinitionUserNoPhoto,
    fragmentDefinitionUserPermissions,
    fragmentDefinitionPerson,
    fragmentDefinitionPersonNoPhoto,
    fragmentDefinitionLatestKodasHistory,
    fragmentDefinitionLatestConfessionHistory,
    fragmentDefinitionLatestEditHistory,
    fragmentDefinitionUserAdminOn,
    fragmentDefinitionArea,
    fragmentDefinitionAreaNoPhoto,
    fragmentDefinitionService,
    fragmentDefinitionServiceNoPhoto,
    fragmentDefinitionClass,
    fragmentDefinitionClassNoPhoto,
    fragmentDefinitionGroup,
    fragmentDefinitionGroupNoPhoto,
    fragmentDefinitionUserPreferences,
    fragmentDefinitionFcmToken,
  ],
);

class Fragment_UserDetails_permissions
    implements
        Fragment_UserOverview_permissions,
        Fragment_UserPermissions_permissions {
  Fragment_UserDetails_permissions({
    required this.permission,
    this.$__typename = 'AuthUsersPermissions',
  });

  factory Fragment_UserDetails_permissions.fromJson(Map<String, dynamic> json) {
    final l$permission = json['permission'];
    final l$$__typename = json['__typename'];
    return Fragment_UserDetails_permissions(
      permission: (l$permission as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String permission;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$permission = permission;
    _resultData['permission'] = l$permission;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$permission = permission;
    final l$$__typename = $__typename;
    return Object.hashAll([l$permission, l$$__typename]);
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

  TRes call({String? permission, String? $__typename});
}

class _CopyWithImpl_Fragment_UserDetails_permissions<TRes>
    implements CopyWith_Fragment_UserDetails_permissions<TRes> {
  _CopyWithImpl_Fragment_UserDetails_permissions(this._instance, this._then);

  final Fragment_UserDetails_permissions _instance;

  final TRes Function(Fragment_UserDetails_permissions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? permission = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_UserDetails_permissions(
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

  call({String? permission, String? $__typename}) => _res;
}

class Fragment_UserDetails_person
    implements
        Fragment_UserOverview_person,
        Fragment_Person,
        Fragment_PersonNoPhoto {
  Fragment_UserDetails_person({
    required this.id,
    required this.name,
    this.color,
    this.userCanEdit,
    this.$__typename = 'Persons',
    this.photoUpdatedAt,
    this.blurhash,
    this.lastKodas,
    this.lastConfession,
  });

  factory Fragment_UserDetails_person.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$userCanEdit = json['userCanEdit'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$lastKodas = json['lastKodas'];
    final l$lastConfession = json['lastConfession'];
    return Fragment_UserDetails_person(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      userCanEdit: (l$userCanEdit as bool?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      lastKodas: l$lastKodas == null
          ? null
          : Fragment_LatestKodasHistory.fromJson(
              (l$lastKodas as Map<String, dynamic>),
            ),
      lastConfession: l$lastConfession == null
          ? null
          : Fragment_LatestConfessionHistory.fromJson(
              (l$lastConfession as Map<String, dynamic>),
            ),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final bool? userCanEdit;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final Fragment_LatestKodasHistory? lastKodas;

  final Fragment_LatestConfessionHistory? lastConfession;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$userCanEdit = userCanEdit;
    _resultData['userCanEdit'] = l$userCanEdit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] = l$photoUpdatedAt == null
        ? null
        : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    final l$lastKodas = lastKodas;
    _resultData['lastKodas'] = l$lastKodas?.toJson();
    final l$lastConfession = lastConfession;
    _resultData['lastConfession'] = l$lastConfession?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$userCanEdit = userCanEdit;
    final l$$__typename = $__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$lastKodas = lastKodas;
    final l$lastConfession = lastConfession;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$userCanEdit,
      l$$__typename,
      l$photoUpdatedAt,
      l$blurhash,
      l$lastKodas,
      l$lastConfession,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_UserDetails_person ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
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
    final l$lastKodas = lastKodas;
    final lOther$lastKodas = other.lastKodas;
    if (l$lastKodas != lOther$lastKodas) {
      return false;
    }
    final l$lastConfession = lastConfession;
    final lOther$lastConfession = other.lastConfession;
    if (l$lastConfession != lOther$lastConfession) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Fragment_UserDetails_person
    on Fragment_UserDetails_person {
  CopyWith_Fragment_UserDetails_person<Fragment_UserDetails_person>
  get copyWith => CopyWith_Fragment_UserDetails_person(this, (i) => i);
}

abstract class CopyWith_Fragment_UserDetails_person<TRes> {
  factory CopyWith_Fragment_UserDetails_person(
    Fragment_UserDetails_person instance,
    TRes Function(Fragment_UserDetails_person) then,
  ) = _CopyWithImpl_Fragment_UserDetails_person;

  factory CopyWith_Fragment_UserDetails_person.stub(TRes res) =
      _CopyWithStubImpl_Fragment_UserDetails_person;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Fragment_LatestKodasHistory? lastKodas,
    Fragment_LatestConfessionHistory? lastConfession,
  });
  CopyWith_Fragment_LatestKodasHistory<TRes> get lastKodas;
  CopyWith_Fragment_LatestConfessionHistory<TRes> get lastConfession;
}

class _CopyWithImpl_Fragment_UserDetails_person<TRes>
    implements CopyWith_Fragment_UserDetails_person<TRes> {
  _CopyWithImpl_Fragment_UserDetails_person(this._instance, this._then);

  final Fragment_UserDetails_person _instance;

  final TRes Function(Fragment_UserDetails_person) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? userCanEdit = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? lastKodas = _undefined,
    Object? lastConfession = _undefined,
  }) => _then(
    Fragment_UserDetails_person(
      id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      color: color == _undefined ? _instance.color : (color as int?),
      userCanEdit: userCanEdit == _undefined
          ? _instance.userCanEdit
          : (userCanEdit as bool?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      photoUpdatedAt: photoUpdatedAt == _undefined
          ? _instance.photoUpdatedAt
          : (photoUpdatedAt as DateTime?),
      blurhash: blurhash == _undefined
          ? _instance.blurhash
          : (blurhash as String?),
      lastKodas: lastKodas == _undefined
          ? _instance.lastKodas
          : (lastKodas as Fragment_LatestKodasHistory?),
      lastConfession: lastConfession == _undefined
          ? _instance.lastConfession
          : (lastConfession as Fragment_LatestConfessionHistory?),
    ),
  );

  CopyWith_Fragment_LatestKodasHistory<TRes> get lastKodas {
    final local$lastKodas = _instance.lastKodas;
    return local$lastKodas == null
        ? CopyWith_Fragment_LatestKodasHistory.stub(_then(_instance))
        : CopyWith_Fragment_LatestKodasHistory(
            local$lastKodas,
            (e) => call(lastKodas: e),
          );
  }

  CopyWith_Fragment_LatestConfessionHistory<TRes> get lastConfession {
    final local$lastConfession = _instance.lastConfession;
    return local$lastConfession == null
        ? CopyWith_Fragment_LatestConfessionHistory.stub(_then(_instance))
        : CopyWith_Fragment_LatestConfessionHistory(
            local$lastConfession,
            (e) => call(lastConfession: e),
          );
  }
}

class _CopyWithStubImpl_Fragment_UserDetails_person<TRes>
    implements CopyWith_Fragment_UserDetails_person<TRes> {
  _CopyWithStubImpl_Fragment_UserDetails_person(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Fragment_LatestKodasHistory? lastKodas,
    Fragment_LatestConfessionHistory? lastConfession,
  }) => _res;

  CopyWith_Fragment_LatestKodasHistory<TRes> get lastKodas =>
      CopyWith_Fragment_LatestKodasHistory.stub(_res);

  CopyWith_Fragment_LatestConfessionHistory<TRes> get lastConfession =>
      CopyWith_Fragment_LatestConfessionHistory.stub(_res);
}

class Fragment_UserDetails_adminOn implements Fragment_UserAdminOn_adminOn {
  Fragment_UserDetails_adminOn({
    required this.permissionId,
    this.area,
    this.areaAllowExport,
    this.areaAllowEdit,
    this.areaAdminOnUsers,
    this.service,
    this.serviceStudyYearData,
    this.serviceGender,
    this.serviceAllowExport,
    this.serviceAllowEdit,
    this.serviceAllowRecordAttendance,
    this.serviceAllowRecordServantsAttendance,
    this.serviceAdminOnUsers,
    required this.serviceWriteRelatedFamilies,
    required this.classes,
    this.group,
    this.groupAllowExport,
    this.groupAllowEdit,
    this.groupAllowRecordAttendance,
    this.groupAllowRecordServantsAttendance,
    this.groupAdminOnUsers,
    required this.groupWriteRelatedFamilies,
    this.$__typename = 'AuthUsersAdminOn',
  });

  factory Fragment_UserDetails_adminOn.fromJson(Map<String, dynamic> json) {
    final l$permissionId = json['permissionId'];
    final l$area = json['area'];
    final l$areaAllowExport = json['areaAllowExport'];
    final l$areaAllowEdit = json['areaAllowEdit'];
    final l$areaAdminOnUsers = json['areaAdminOnUsers'];
    final l$service = json['service'];
    final l$serviceStudyYearData = json['serviceStudyYearData'];
    final l$serviceGender = json['serviceGender'];
    final l$serviceAllowExport = json['serviceAllowExport'];
    final l$serviceAllowEdit = json['serviceAllowEdit'];
    final l$serviceAllowRecordAttendance = json['serviceAllowRecordAttendance'];
    final l$serviceAllowRecordServantsAttendance =
        json['serviceAllowRecordServantsAttendance'];
    final l$serviceAdminOnUsers = json['serviceAdminOnUsers'];
    final l$serviceWriteRelatedFamilies = json['serviceWriteRelatedFamilies'];
    final l$classes = json['classes'];
    final l$group = json['group'];
    final l$groupAllowExport = json['groupAllowExport'];
    final l$groupAllowEdit = json['groupAllowEdit'];
    final l$groupAllowRecordAttendance = json['groupAllowRecordAttendance'];
    final l$groupAllowRecordServantsAttendance =
        json['groupAllowRecordServantsAttendance'];
    final l$groupAdminOnUsers = json['groupAdminOnUsers'];
    final l$groupWriteRelatedFamilies = json['groupWriteRelatedFamilies'];
    final l$$__typename = json['__typename'];
    return Fragment_UserDetails_adminOn(
      permissionId: stringToUuid(l$permissionId),
      area: l$area == null
          ? null
          : Fragment_Area.fromJson((l$area as Map<String, dynamic>)),
      areaAllowExport: (l$areaAllowExport as bool?),
      areaAllowEdit: (l$areaAllowEdit as bool?),
      areaAdminOnUsers: (l$areaAdminOnUsers as bool?),
      service: l$service == null
          ? null
          : Fragment_UserDetails_adminOn_service.fromJson(
              (l$service as Map<String, dynamic>),
            ),
      serviceStudyYearData: l$serviceStudyYearData == null
          ? null
          : Fragment_UserDetails_adminOn_serviceStudyYearData.fromJson(
              (l$serviceStudyYearData as Map<String, dynamic>),
            ),
      serviceGender: (l$serviceGender as bool?),
      serviceAllowExport: (l$serviceAllowExport as bool?),
      serviceAllowEdit: (l$serviceAllowEdit as bool?),
      serviceAllowRecordAttendance: (l$serviceAllowRecordAttendance as bool?),
      serviceAllowRecordServantsAttendance:
          (l$serviceAllowRecordServantsAttendance as bool?),
      serviceAdminOnUsers: (l$serviceAdminOnUsers as bool?),
      serviceWriteRelatedFamilies: (l$serviceWriteRelatedFamilies as bool),
      classes: (l$classes as List<dynamic>)
          .map((e) => Fragment_Class.fromJson((e as Map<String, dynamic>)))
          .toList(),
      group: l$group == null
          ? null
          : Fragment_Group.fromJson((l$group as Map<String, dynamic>)),
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

  final UuidValue permissionId;

  final Fragment_Area? area;

  final bool? areaAllowExport;

  final bool? areaAllowEdit;

  final bool? areaAdminOnUsers;

  final Fragment_UserDetails_adminOn_service? service;

  final Fragment_UserDetails_adminOn_serviceStudyYearData? serviceStudyYearData;

  final bool? serviceGender;

  final bool? serviceAllowExport;

  final bool? serviceAllowEdit;

  final bool? serviceAllowRecordAttendance;

  final bool? serviceAllowRecordServantsAttendance;

  final bool? serviceAdminOnUsers;

  final bool serviceWriteRelatedFamilies;

  final List<Fragment_Class> classes;

  final Fragment_Group? group;

  final bool? groupAllowExport;

  final bool? groupAllowEdit;

  final bool? groupAllowRecordAttendance;

  final bool? groupAllowRecordServantsAttendance;

  final bool? groupAdminOnUsers;

  final bool groupWriteRelatedFamilies;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$permissionId = permissionId;
    _resultData['permissionId'] = uuidToString(l$permissionId);
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
    final l$serviceStudyYearData = serviceStudyYearData;
    _resultData['serviceStudyYearData'] = l$serviceStudyYearData?.toJson();
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
    final l$classes = classes;
    _resultData['classes'] = l$classes.map((e) => e.toJson()).toList();
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
    final l$permissionId = permissionId;
    final l$area = area;
    final l$areaAllowExport = areaAllowExport;
    final l$areaAllowEdit = areaAllowEdit;
    final l$areaAdminOnUsers = areaAdminOnUsers;
    final l$service = service;
    final l$serviceStudyYearData = serviceStudyYearData;
    final l$serviceGender = serviceGender;
    final l$serviceAllowExport = serviceAllowExport;
    final l$serviceAllowEdit = serviceAllowEdit;
    final l$serviceAllowRecordAttendance = serviceAllowRecordAttendance;
    final l$serviceAllowRecordServantsAttendance =
        serviceAllowRecordServantsAttendance;
    final l$serviceAdminOnUsers = serviceAdminOnUsers;
    final l$serviceWriteRelatedFamilies = serviceWriteRelatedFamilies;
    final l$classes = classes;
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
      l$permissionId,
      l$area,
      l$areaAllowExport,
      l$areaAllowEdit,
      l$areaAdminOnUsers,
      l$service,
      l$serviceStudyYearData,
      l$serviceGender,
      l$serviceAllowExport,
      l$serviceAllowEdit,
      l$serviceAllowRecordAttendance,
      l$serviceAllowRecordServantsAttendance,
      l$serviceAdminOnUsers,
      l$serviceWriteRelatedFamilies,
      Object.hashAll(l$classes.map((v) => v)),
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
    if (other is! Fragment_UserDetails_adminOn ||
        runtimeType != other.runtimeType) {
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
    final l$serviceStudyYearData = serviceStudyYearData;
    final lOther$serviceStudyYearData = other.serviceStudyYearData;
    if (l$serviceStudyYearData != lOther$serviceStudyYearData) {
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
    final l$classes = classes;
    final lOther$classes = other.classes;
    if (l$classes.length != lOther$classes.length) {
      return false;
    }
    for (int i = 0; i < l$classes.length; i++) {
      final l$classes$entry = l$classes[i];
      final lOther$classes$entry = lOther$classes[i];
      if (l$classes$entry != lOther$classes$entry) {
        return false;
      }
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

extension UtilityExtension_Fragment_UserDetails_adminOn
    on Fragment_UserDetails_adminOn {
  CopyWith_Fragment_UserDetails_adminOn<Fragment_UserDetails_adminOn>
  get copyWith => CopyWith_Fragment_UserDetails_adminOn(this, (i) => i);
}

abstract class CopyWith_Fragment_UserDetails_adminOn<TRes> {
  factory CopyWith_Fragment_UserDetails_adminOn(
    Fragment_UserDetails_adminOn instance,
    TRes Function(Fragment_UserDetails_adminOn) then,
  ) = _CopyWithImpl_Fragment_UserDetails_adminOn;

  factory CopyWith_Fragment_UserDetails_adminOn.stub(TRes res) =
      _CopyWithStubImpl_Fragment_UserDetails_adminOn;

  TRes call({
    UuidValue? permissionId,
    Fragment_Area? area,
    bool? areaAllowExport,
    bool? areaAllowEdit,
    bool? areaAdminOnUsers,
    Fragment_UserDetails_adminOn_service? service,
    Fragment_UserDetails_adminOn_serviceStudyYearData? serviceStudyYearData,
    bool? serviceGender,
    bool? serviceAllowExport,
    bool? serviceAllowEdit,
    bool? serviceAllowRecordAttendance,
    bool? serviceAllowRecordServantsAttendance,
    bool? serviceAdminOnUsers,
    bool? serviceWriteRelatedFamilies,
    List<Fragment_Class>? classes,
    Fragment_Group? group,
    bool? groupAllowExport,
    bool? groupAllowEdit,
    bool? groupAllowRecordAttendance,
    bool? groupAllowRecordServantsAttendance,
    bool? groupAdminOnUsers,
    bool? groupWriteRelatedFamilies,
    String? $__typename,
  });
  CopyWith_Fragment_Area<TRes> get area;
  CopyWith_Fragment_UserDetails_adminOn_service<TRes> get service;
  CopyWith_Fragment_UserDetails_adminOn_serviceStudyYearData<TRes>
  get serviceStudyYearData;
  TRes classes(
    Iterable<Fragment_Class> Function(
      Iterable<CopyWith_Fragment_Class<Fragment_Class>>,
    )
    _fn,
  );
  CopyWith_Fragment_Group<TRes> get group;
}

class _CopyWithImpl_Fragment_UserDetails_adminOn<TRes>
    implements CopyWith_Fragment_UserDetails_adminOn<TRes> {
  _CopyWithImpl_Fragment_UserDetails_adminOn(this._instance, this._then);

  final Fragment_UserDetails_adminOn _instance;

  final TRes Function(Fragment_UserDetails_adminOn) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? permissionId = _undefined,
    Object? area = _undefined,
    Object? areaAllowExport = _undefined,
    Object? areaAllowEdit = _undefined,
    Object? areaAdminOnUsers = _undefined,
    Object? service = _undefined,
    Object? serviceStudyYearData = _undefined,
    Object? serviceGender = _undefined,
    Object? serviceAllowExport = _undefined,
    Object? serviceAllowEdit = _undefined,
    Object? serviceAllowRecordAttendance = _undefined,
    Object? serviceAllowRecordServantsAttendance = _undefined,
    Object? serviceAdminOnUsers = _undefined,
    Object? serviceWriteRelatedFamilies = _undefined,
    Object? classes = _undefined,
    Object? group = _undefined,
    Object? groupAllowExport = _undefined,
    Object? groupAllowEdit = _undefined,
    Object? groupAllowRecordAttendance = _undefined,
    Object? groupAllowRecordServantsAttendance = _undefined,
    Object? groupAdminOnUsers = _undefined,
    Object? groupWriteRelatedFamilies = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_UserDetails_adminOn(
      permissionId: permissionId == _undefined || permissionId == null
          ? _instance.permissionId
          : (permissionId as UuidValue),
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
          : (service as Fragment_UserDetails_adminOn_service?),
      serviceStudyYearData: serviceStudyYearData == _undefined
          ? _instance.serviceStudyYearData
          : (serviceStudyYearData
                as Fragment_UserDetails_adminOn_serviceStudyYearData?),
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
      classes: classes == _undefined || classes == null
          ? _instance.classes
          : (classes as List<Fragment_Class>),
      group: group == _undefined ? _instance.group : (group as Fragment_Group?),
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

  CopyWith_Fragment_UserDetails_adminOn_service<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith_Fragment_UserDetails_adminOn_service.stub(_then(_instance))
        : CopyWith_Fragment_UserDetails_adminOn_service(
            local$service,
            (e) => call(service: e),
          );
  }

  CopyWith_Fragment_UserDetails_adminOn_serviceStudyYearData<TRes>
  get serviceStudyYearData {
    final local$serviceStudyYearData = _instance.serviceStudyYearData;
    return local$serviceStudyYearData == null
        ? CopyWith_Fragment_UserDetails_adminOn_serviceStudyYearData.stub(
            _then(_instance),
          )
        : CopyWith_Fragment_UserDetails_adminOn_serviceStudyYearData(
            local$serviceStudyYearData,
            (e) => call(serviceStudyYearData: e),
          );
  }

  TRes classes(
    Iterable<Fragment_Class> Function(
      Iterable<CopyWith_Fragment_Class<Fragment_Class>>,
    )
    _fn,
  ) => call(
    classes: _fn(
      _instance.classes.map((e) => CopyWith_Fragment_Class(e, (i) => i)),
    ).toList(),
  );

  CopyWith_Fragment_Group<TRes> get group {
    final local$group = _instance.group;
    return local$group == null
        ? CopyWith_Fragment_Group.stub(_then(_instance))
        : CopyWith_Fragment_Group(local$group, (e) => call(group: e));
  }
}

class _CopyWithStubImpl_Fragment_UserDetails_adminOn<TRes>
    implements CopyWith_Fragment_UserDetails_adminOn<TRes> {
  _CopyWithStubImpl_Fragment_UserDetails_adminOn(this._res);

  TRes _res;

  call({
    UuidValue? permissionId,
    Fragment_Area? area,
    bool? areaAllowExport,
    bool? areaAllowEdit,
    bool? areaAdminOnUsers,
    Fragment_UserDetails_adminOn_service? service,
    Fragment_UserDetails_adminOn_serviceStudyYearData? serviceStudyYearData,
    bool? serviceGender,
    bool? serviceAllowExport,
    bool? serviceAllowEdit,
    bool? serviceAllowRecordAttendance,
    bool? serviceAllowRecordServantsAttendance,
    bool? serviceAdminOnUsers,
    bool? serviceWriteRelatedFamilies,
    List<Fragment_Class>? classes,
    Fragment_Group? group,
    bool? groupAllowExport,
    bool? groupAllowEdit,
    bool? groupAllowRecordAttendance,
    bool? groupAllowRecordServantsAttendance,
    bool? groupAdminOnUsers,
    bool? groupWriteRelatedFamilies,
    String? $__typename,
  }) => _res;

  CopyWith_Fragment_Area<TRes> get area => CopyWith_Fragment_Area.stub(_res);

  CopyWith_Fragment_UserDetails_adminOn_service<TRes> get service =>
      CopyWith_Fragment_UserDetails_adminOn_service.stub(_res);

  CopyWith_Fragment_UserDetails_adminOn_serviceStudyYearData<TRes>
  get serviceStudyYearData =>
      CopyWith_Fragment_UserDetails_adminOn_serviceStudyYearData.stub(_res);

  classes(_fn) => _res;

  CopyWith_Fragment_Group<TRes> get group => CopyWith_Fragment_Group.stub(_res);
}

class Fragment_UserDetails_adminOn_service
    implements
        Fragment_UserAdminOn_adminOn_service,
        Fragment_Service,
        Fragment_ServiceNoPhoto {
  Fragment_UserDetails_adminOn_service({
    required this.id,
    required this.name,
    this.color,
    this.userCanEdit,
    this.$__typename = 'Services',
    this.photoUpdatedAt,
    this.blurhash,
    this.studyYearFrom,
    this.studyYearTo,
  });

  factory Fragment_UserDetails_adminOn_service.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$userCanEdit = json['userCanEdit'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$studyYearFrom = json['studyYearFrom'];
    final l$studyYearTo = json['studyYearTo'];
    return Fragment_UserDetails_adminOn_service(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      userCanEdit: (l$userCanEdit as bool?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      studyYearFrom: l$studyYearFrom == null
          ? null
          : Fragment_UserDetails_adminOn_service_studyYearFrom.fromJson(
              (l$studyYearFrom as Map<String, dynamic>),
            ),
      studyYearTo: l$studyYearTo == null
          ? null
          : Fragment_UserDetails_adminOn_service_studyYearTo.fromJson(
              (l$studyYearTo as Map<String, dynamic>),
            ),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final bool? userCanEdit;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final Fragment_UserDetails_adminOn_service_studyYearFrom? studyYearFrom;

  final Fragment_UserDetails_adminOn_service_studyYearTo? studyYearTo;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$userCanEdit = userCanEdit;
    _resultData['userCanEdit'] = l$userCanEdit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] = l$photoUpdatedAt == null
        ? null
        : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
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
    final l$$__typename = $__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$studyYearFrom = studyYearFrom;
    final l$studyYearTo = studyYearTo;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$userCanEdit,
      l$$__typename,
      l$photoUpdatedAt,
      l$blurhash,
      l$studyYearFrom,
      l$studyYearTo,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_UserDetails_adminOn_service ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
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

extension UtilityExtension_Fragment_UserDetails_adminOn_service
    on Fragment_UserDetails_adminOn_service {
  CopyWith_Fragment_UserDetails_adminOn_service<
    Fragment_UserDetails_adminOn_service
  >
  get copyWith => CopyWith_Fragment_UserDetails_adminOn_service(this, (i) => i);
}

abstract class CopyWith_Fragment_UserDetails_adminOn_service<TRes> {
  factory CopyWith_Fragment_UserDetails_adminOn_service(
    Fragment_UserDetails_adminOn_service instance,
    TRes Function(Fragment_UserDetails_adminOn_service) then,
  ) = _CopyWithImpl_Fragment_UserDetails_adminOn_service;

  factory CopyWith_Fragment_UserDetails_adminOn_service.stub(TRes res) =
      _CopyWithStubImpl_Fragment_UserDetails_adminOn_service;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Fragment_UserDetails_adminOn_service_studyYearFrom? studyYearFrom,
    Fragment_UserDetails_adminOn_service_studyYearTo? studyYearTo,
  });
  CopyWith_Fragment_UserDetails_adminOn_service_studyYearFrom<TRes>
  get studyYearFrom;
  CopyWith_Fragment_UserDetails_adminOn_service_studyYearTo<TRes>
  get studyYearTo;
}

class _CopyWithImpl_Fragment_UserDetails_adminOn_service<TRes>
    implements CopyWith_Fragment_UserDetails_adminOn_service<TRes> {
  _CopyWithImpl_Fragment_UserDetails_adminOn_service(
    this._instance,
    this._then,
  );

  final Fragment_UserDetails_adminOn_service _instance;

  final TRes Function(Fragment_UserDetails_adminOn_service) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? userCanEdit = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? studyYearFrom = _undefined,
    Object? studyYearTo = _undefined,
  }) => _then(
    Fragment_UserDetails_adminOn_service(
      id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      color: color == _undefined ? _instance.color : (color as int?),
      userCanEdit: userCanEdit == _undefined
          ? _instance.userCanEdit
          : (userCanEdit as bool?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      photoUpdatedAt: photoUpdatedAt == _undefined
          ? _instance.photoUpdatedAt
          : (photoUpdatedAt as DateTime?),
      blurhash: blurhash == _undefined
          ? _instance.blurhash
          : (blurhash as String?),
      studyYearFrom: studyYearFrom == _undefined
          ? _instance.studyYearFrom
          : (studyYearFrom
                as Fragment_UserDetails_adminOn_service_studyYearFrom?),
      studyYearTo: studyYearTo == _undefined
          ? _instance.studyYearTo
          : (studyYearTo as Fragment_UserDetails_adminOn_service_studyYearTo?),
    ),
  );

  CopyWith_Fragment_UserDetails_adminOn_service_studyYearFrom<TRes>
  get studyYearFrom {
    final local$studyYearFrom = _instance.studyYearFrom;
    return local$studyYearFrom == null
        ? CopyWith_Fragment_UserDetails_adminOn_service_studyYearFrom.stub(
            _then(_instance),
          )
        : CopyWith_Fragment_UserDetails_adminOn_service_studyYearFrom(
            local$studyYearFrom,
            (e) => call(studyYearFrom: e),
          );
  }

  CopyWith_Fragment_UserDetails_adminOn_service_studyYearTo<TRes>
  get studyYearTo {
    final local$studyYearTo = _instance.studyYearTo;
    return local$studyYearTo == null
        ? CopyWith_Fragment_UserDetails_adminOn_service_studyYearTo.stub(
            _then(_instance),
          )
        : CopyWith_Fragment_UserDetails_adminOn_service_studyYearTo(
            local$studyYearTo,
            (e) => call(studyYearTo: e),
          );
  }
}

class _CopyWithStubImpl_Fragment_UserDetails_adminOn_service<TRes>
    implements CopyWith_Fragment_UserDetails_adminOn_service<TRes> {
  _CopyWithStubImpl_Fragment_UserDetails_adminOn_service(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Fragment_UserDetails_adminOn_service_studyYearFrom? studyYearFrom,
    Fragment_UserDetails_adminOn_service_studyYearTo? studyYearTo,
  }) => _res;

  CopyWith_Fragment_UserDetails_adminOn_service_studyYearFrom<TRes>
  get studyYearFrom =>
      CopyWith_Fragment_UserDetails_adminOn_service_studyYearFrom.stub(_res);

  CopyWith_Fragment_UserDetails_adminOn_service_studyYearTo<TRes>
  get studyYearTo =>
      CopyWith_Fragment_UserDetails_adminOn_service_studyYearTo.stub(_res);
}

class Fragment_UserDetails_adminOn_service_studyYearFrom
    implements Fragment_UserAdminOn_adminOn_service_studyYearFrom {
  Fragment_UserDetails_adminOn_service_studyYearFrom({
    required this.name,
    required this.order,
    this.$__typename = 'StudyYears',
  });

  factory Fragment_UserDetails_adminOn_service_studyYearFrom.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$order = json['order'];
    final l$$__typename = json['__typename'];
    return Fragment_UserDetails_adminOn_service_studyYearFrom(
      name: (l$name as String),
      order: (l$order as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final int order;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$order = order;
    _resultData['order'] = l$order;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$order = order;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$order, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_UserDetails_adminOn_service_studyYearFrom ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
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

extension UtilityExtension_Fragment_UserDetails_adminOn_service_studyYearFrom
    on Fragment_UserDetails_adminOn_service_studyYearFrom {
  CopyWith_Fragment_UserDetails_adminOn_service_studyYearFrom<
    Fragment_UserDetails_adminOn_service_studyYearFrom
  >
  get copyWith => CopyWith_Fragment_UserDetails_adminOn_service_studyYearFrom(
    this,
    (i) => i,
  );
}

abstract class CopyWith_Fragment_UserDetails_adminOn_service_studyYearFrom<
  TRes
> {
  factory CopyWith_Fragment_UserDetails_adminOn_service_studyYearFrom(
    Fragment_UserDetails_adminOn_service_studyYearFrom instance,
    TRes Function(Fragment_UserDetails_adminOn_service_studyYearFrom) then,
  ) = _CopyWithImpl_Fragment_UserDetails_adminOn_service_studyYearFrom;

  factory CopyWith_Fragment_UserDetails_adminOn_service_studyYearFrom.stub(
    TRes res,
  ) = _CopyWithStubImpl_Fragment_UserDetails_adminOn_service_studyYearFrom;

  TRes call({String? name, int? order, String? $__typename});
}

class _CopyWithImpl_Fragment_UserDetails_adminOn_service_studyYearFrom<TRes>
    implements
        CopyWith_Fragment_UserDetails_adminOn_service_studyYearFrom<TRes> {
  _CopyWithImpl_Fragment_UserDetails_adminOn_service_studyYearFrom(
    this._instance,
    this._then,
  );

  final Fragment_UserDetails_adminOn_service_studyYearFrom _instance;

  final TRes Function(Fragment_UserDetails_adminOn_service_studyYearFrom) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? order = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_UserDetails_adminOn_service_studyYearFrom(
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      order: order == _undefined || order == null
          ? _instance.order
          : (order as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Fragment_UserDetails_adminOn_service_studyYearFrom<TRes>
    implements
        CopyWith_Fragment_UserDetails_adminOn_service_studyYearFrom<TRes> {
  _CopyWithStubImpl_Fragment_UserDetails_adminOn_service_studyYearFrom(
    this._res,
  );

  TRes _res;

  call({String? name, int? order, String? $__typename}) => _res;
}

class Fragment_UserDetails_adminOn_service_studyYearTo
    implements Fragment_UserAdminOn_adminOn_service_studyYearTo {
  Fragment_UserDetails_adminOn_service_studyYearTo({
    required this.name,
    required this.order,
    this.$__typename = 'StudyYears',
  });

  factory Fragment_UserDetails_adminOn_service_studyYearTo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$order = json['order'];
    final l$$__typename = json['__typename'];
    return Fragment_UserDetails_adminOn_service_studyYearTo(
      name: (l$name as String),
      order: (l$order as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final int order;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$order = order;
    _resultData['order'] = l$order;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$order = order;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$order, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_UserDetails_adminOn_service_studyYearTo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
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

extension UtilityExtension_Fragment_UserDetails_adminOn_service_studyYearTo
    on Fragment_UserDetails_adminOn_service_studyYearTo {
  CopyWith_Fragment_UserDetails_adminOn_service_studyYearTo<
    Fragment_UserDetails_adminOn_service_studyYearTo
  >
  get copyWith =>
      CopyWith_Fragment_UserDetails_adminOn_service_studyYearTo(this, (i) => i);
}

abstract class CopyWith_Fragment_UserDetails_adminOn_service_studyYearTo<TRes> {
  factory CopyWith_Fragment_UserDetails_adminOn_service_studyYearTo(
    Fragment_UserDetails_adminOn_service_studyYearTo instance,
    TRes Function(Fragment_UserDetails_adminOn_service_studyYearTo) then,
  ) = _CopyWithImpl_Fragment_UserDetails_adminOn_service_studyYearTo;

  factory CopyWith_Fragment_UserDetails_adminOn_service_studyYearTo.stub(
    TRes res,
  ) = _CopyWithStubImpl_Fragment_UserDetails_adminOn_service_studyYearTo;

  TRes call({String? name, int? order, String? $__typename});
}

class _CopyWithImpl_Fragment_UserDetails_adminOn_service_studyYearTo<TRes>
    implements CopyWith_Fragment_UserDetails_adminOn_service_studyYearTo<TRes> {
  _CopyWithImpl_Fragment_UserDetails_adminOn_service_studyYearTo(
    this._instance,
    this._then,
  );

  final Fragment_UserDetails_adminOn_service_studyYearTo _instance;

  final TRes Function(Fragment_UserDetails_adminOn_service_studyYearTo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? order = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_UserDetails_adminOn_service_studyYearTo(
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      order: order == _undefined || order == null
          ? _instance.order
          : (order as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Fragment_UserDetails_adminOn_service_studyYearTo<TRes>
    implements CopyWith_Fragment_UserDetails_adminOn_service_studyYearTo<TRes> {
  _CopyWithStubImpl_Fragment_UserDetails_adminOn_service_studyYearTo(this._res);

  TRes _res;

  call({String? name, int? order, String? $__typename}) => _res;
}

class Fragment_UserDetails_adminOn_serviceStudyYearData
    implements Fragment_UserAdminOn_adminOn_serviceStudyYearData {
  Fragment_UserDetails_adminOn_serviceStudyYearData({
    required this.name,
    required this.order,
    this.$__typename = 'StudyYears',
  });

  factory Fragment_UserDetails_adminOn_serviceStudyYearData.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$order = json['order'];
    final l$$__typename = json['__typename'];
    return Fragment_UserDetails_adminOn_serviceStudyYearData(
      name: (l$name as String),
      order: (l$order as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final int order;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$order = order;
    _resultData['order'] = l$order;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$order = order;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$order, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_UserDetails_adminOn_serviceStudyYearData ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
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

extension UtilityExtension_Fragment_UserDetails_adminOn_serviceStudyYearData
    on Fragment_UserDetails_adminOn_serviceStudyYearData {
  CopyWith_Fragment_UserDetails_adminOn_serviceStudyYearData<
    Fragment_UserDetails_adminOn_serviceStudyYearData
  >
  get copyWith => CopyWith_Fragment_UserDetails_adminOn_serviceStudyYearData(
    this,
    (i) => i,
  );
}

abstract class CopyWith_Fragment_UserDetails_adminOn_serviceStudyYearData<
  TRes
> {
  factory CopyWith_Fragment_UserDetails_adminOn_serviceStudyYearData(
    Fragment_UserDetails_adminOn_serviceStudyYearData instance,
    TRes Function(Fragment_UserDetails_adminOn_serviceStudyYearData) then,
  ) = _CopyWithImpl_Fragment_UserDetails_adminOn_serviceStudyYearData;

  factory CopyWith_Fragment_UserDetails_adminOn_serviceStudyYearData.stub(
    TRes res,
  ) = _CopyWithStubImpl_Fragment_UserDetails_adminOn_serviceStudyYearData;

  TRes call({String? name, int? order, String? $__typename});
}

class _CopyWithImpl_Fragment_UserDetails_adminOn_serviceStudyYearData<TRes>
    implements
        CopyWith_Fragment_UserDetails_adminOn_serviceStudyYearData<TRes> {
  _CopyWithImpl_Fragment_UserDetails_adminOn_serviceStudyYearData(
    this._instance,
    this._then,
  );

  final Fragment_UserDetails_adminOn_serviceStudyYearData _instance;

  final TRes Function(Fragment_UserDetails_adminOn_serviceStudyYearData) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? order = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_UserDetails_adminOn_serviceStudyYearData(
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      order: order == _undefined || order == null
          ? _instance.order
          : (order as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Fragment_UserDetails_adminOn_serviceStudyYearData<TRes>
    implements
        CopyWith_Fragment_UserDetails_adminOn_serviceStudyYearData<TRes> {
  _CopyWithStubImpl_Fragment_UserDetails_adminOn_serviceStudyYearData(
    this._res,
  );

  TRes _res;

  call({String? name, int? order, String? $__typename}) => _res;
}

class Fragment_UserPermissions {
  Fragment_UserPermissions({
    required this.permissions,
    this.$__typename = 'AuthUsersData',
  });

  factory Fragment_UserPermissions.fromJson(Map<String, dynamic> json) {
    final l$permissions = json['permissions'];
    final l$$__typename = json['__typename'];
    return Fragment_UserPermissions(
      permissions: (l$permissions as List<dynamic>)
          .map(
            (e) => Fragment_UserPermissions_permissions.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment_UserPermissions_permissions> permissions;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$permissions = permissions;
    _resultData['permissions'] = l$permissions.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$permissions = permissions;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$permissions.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_UserPermissions ||
        runtimeType != other.runtimeType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Fragment_UserPermissions
    on Fragment_UserPermissions {
  CopyWith_Fragment_UserPermissions<Fragment_UserPermissions> get copyWith =>
      CopyWith_Fragment_UserPermissions(this, (i) => i);
}

abstract class CopyWith_Fragment_UserPermissions<TRes> {
  factory CopyWith_Fragment_UserPermissions(
    Fragment_UserPermissions instance,
    TRes Function(Fragment_UserPermissions) then,
  ) = _CopyWithImpl_Fragment_UserPermissions;

  factory CopyWith_Fragment_UserPermissions.stub(TRes res) =
      _CopyWithStubImpl_Fragment_UserPermissions;

  TRes call({
    List<Fragment_UserPermissions_permissions>? permissions,
    String? $__typename,
  });
  TRes permissions(
    Iterable<Fragment_UserPermissions_permissions> Function(
      Iterable<
        CopyWith_Fragment_UserPermissions_permissions<
          Fragment_UserPermissions_permissions
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl_Fragment_UserPermissions<TRes>
    implements CopyWith_Fragment_UserPermissions<TRes> {
  _CopyWithImpl_Fragment_UserPermissions(this._instance, this._then);

  final Fragment_UserPermissions _instance;

  final TRes Function(Fragment_UserPermissions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? permissions = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_UserPermissions(
      permissions: permissions == _undefined || permissions == null
          ? _instance.permissions
          : (permissions as List<Fragment_UserPermissions_permissions>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes permissions(
    Iterable<Fragment_UserPermissions_permissions> Function(
      Iterable<
        CopyWith_Fragment_UserPermissions_permissions<
          Fragment_UserPermissions_permissions
        >
      >,
    )
    _fn,
  ) => call(
    permissions: _fn(
      _instance.permissions.map(
        (e) => CopyWith_Fragment_UserPermissions_permissions(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl_Fragment_UserPermissions<TRes>
    implements CopyWith_Fragment_UserPermissions<TRes> {
  _CopyWithStubImpl_Fragment_UserPermissions(this._res);

  TRes _res;

  call({
    List<Fragment_UserPermissions_permissions>? permissions,
    String? $__typename,
  }) => _res;

  permissions(_fn) => _res;
}

const fragmentDefinitionUserPermissions = FragmentDefinitionNode(
  name: NameNode(value: 'UserPermissions'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'AuthUsersData'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'permissions'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
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
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ],
  ),
);
const documentNodeFragmentUserPermissions = DocumentNode(
  definitions: [fragmentDefinitionUserPermissions],
);

class Fragment_UserPermissions_permissions {
  Fragment_UserPermissions_permissions({
    required this.permission,
    this.$__typename = 'AuthUsersPermissions',
  });

  factory Fragment_UserPermissions_permissions.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$permission = json['permission'];
    final l$$__typename = json['__typename'];
    return Fragment_UserPermissions_permissions(
      permission: (l$permission as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String permission;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$permission = permission;
    _resultData['permission'] = l$permission;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$permission = permission;
    final l$$__typename = $__typename;
    return Object.hashAll([l$permission, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_UserPermissions_permissions ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension_Fragment_UserPermissions_permissions
    on Fragment_UserPermissions_permissions {
  CopyWith_Fragment_UserPermissions_permissions<
    Fragment_UserPermissions_permissions
  >
  get copyWith => CopyWith_Fragment_UserPermissions_permissions(this, (i) => i);
}

abstract class CopyWith_Fragment_UserPermissions_permissions<TRes> {
  factory CopyWith_Fragment_UserPermissions_permissions(
    Fragment_UserPermissions_permissions instance,
    TRes Function(Fragment_UserPermissions_permissions) then,
  ) = _CopyWithImpl_Fragment_UserPermissions_permissions;

  factory CopyWith_Fragment_UserPermissions_permissions.stub(TRes res) =
      _CopyWithStubImpl_Fragment_UserPermissions_permissions;

  TRes call({String? permission, String? $__typename});
}

class _CopyWithImpl_Fragment_UserPermissions_permissions<TRes>
    implements CopyWith_Fragment_UserPermissions_permissions<TRes> {
  _CopyWithImpl_Fragment_UserPermissions_permissions(
    this._instance,
    this._then,
  );

  final Fragment_UserPermissions_permissions _instance;

  final TRes Function(Fragment_UserPermissions_permissions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? permission = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_UserPermissions_permissions(
      permission: permission == _undefined || permission == null
          ? _instance.permission
          : (permission as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Fragment_UserPermissions_permissions<TRes>
    implements CopyWith_Fragment_UserPermissions_permissions<TRes> {
  _CopyWithStubImpl_Fragment_UserPermissions_permissions(this._res);

  TRes _res;

  call({String? permission, String? $__typename}) => _res;
}

class Fragment_UserAdminScopes {
  Fragment_UserAdminScopes({
    required this.adminOn,
    this.$__typename = 'AuthUsersData',
  });

  factory Fragment_UserAdminScopes.fromJson(Map<String, dynamic> json) {
    final l$adminOn = json['adminOn'];
    final l$$__typename = json['__typename'];
    return Fragment_UserAdminScopes(
      adminOn: (l$adminOn as List<dynamic>)
          .map(
            (e) => Fragment_UserAdminScopes_adminOn.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment_UserAdminScopes_adminOn> adminOn;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$adminOn = adminOn;
    _resultData['adminOn'] = l$adminOn.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$adminOn = adminOn;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$adminOn.map((v) => v)),
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
    final l$adminOn = adminOn;
    final lOther$adminOn = other.adminOn;
    if (l$adminOn.length != lOther$adminOn.length) {
      return false;
    }
    for (int i = 0; i < l$adminOn.length; i++) {
      final l$adminOn$entry = l$adminOn[i];
      final lOther$adminOn$entry = lOther$adminOn[i];
      if (l$adminOn$entry != lOther$adminOn$entry) {
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
    List<Fragment_UserAdminScopes_adminOn>? adminOn,
    String? $__typename,
  });
  TRes adminOn(
    Iterable<Fragment_UserAdminScopes_adminOn> Function(
      Iterable<
        CopyWith_Fragment_UserAdminScopes_adminOn<
          Fragment_UserAdminScopes_adminOn
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

  TRes call({Object? adminOn = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Fragment_UserAdminScopes(
          adminOn: adminOn == _undefined || adminOn == null
              ? _instance.adminOn
              : (adminOn as List<Fragment_UserAdminScopes_adminOn>),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  TRes adminOn(
    Iterable<Fragment_UserAdminScopes_adminOn> Function(
      Iterable<
        CopyWith_Fragment_UserAdminScopes_adminOn<
          Fragment_UserAdminScopes_adminOn
        >
      >,
    )
    _fn,
  ) => call(
    adminOn: _fn(
      _instance.adminOn.map(
        (e) => CopyWith_Fragment_UserAdminScopes_adminOn(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl_Fragment_UserAdminScopes<TRes>
    implements CopyWith_Fragment_UserAdminScopes<TRes> {
  _CopyWithStubImpl_Fragment_UserAdminScopes(this._res);

  TRes _res;

  call({
    List<Fragment_UserAdminScopes_adminOn>? adminOn,
    String? $__typename,
  }) => _res;

  adminOn(_fn) => _res;
}

const fragmentDefinitionUserAdminScopes = FragmentDefinitionNode(
  name: NameNode(value: 'UserAdminScopes'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'AuthUsersData'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'adminOn'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
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
                    name: NameNode(value: 'Service'),
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
              name: NameNode(value: 'serviceStudyYearData'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'order'),
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
    fragmentDefinitionAreaNoPhoto,
    fragmentDefinitionService,
    fragmentDefinitionServiceNoPhoto,
  ],
);

class Fragment_UserAdminScopes_adminOn {
  Fragment_UserAdminScopes_adminOn({
    required this.permissionId,
    this.area,
    this.service,
    this.serviceStudyYearData,
    this.$__typename = 'AuthUsersAdminOn',
  });

  factory Fragment_UserAdminScopes_adminOn.fromJson(Map<String, dynamic> json) {
    final l$permissionId = json['permissionId'];
    final l$area = json['area'];
    final l$service = json['service'];
    final l$serviceStudyYearData = json['serviceStudyYearData'];
    final l$$__typename = json['__typename'];
    return Fragment_UserAdminScopes_adminOn(
      permissionId: stringToUuid(l$permissionId),
      area: l$area == null
          ? null
          : Fragment_Area.fromJson((l$area as Map<String, dynamic>)),
      service: l$service == null
          ? null
          : Fragment_Service.fromJson((l$service as Map<String, dynamic>)),
      serviceStudyYearData: l$serviceStudyYearData == null
          ? null
          : Fragment_UserAdminScopes_adminOn_serviceStudyYearData.fromJson(
              (l$serviceStudyYearData as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue permissionId;

  final Fragment_Area? area;

  final Fragment_Service? service;

  final Fragment_UserAdminScopes_adminOn_serviceStudyYearData?
  serviceStudyYearData;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$permissionId = permissionId;
    _resultData['permissionId'] = uuidToString(l$permissionId);
    final l$area = area;
    _resultData['area'] = l$area?.toJson();
    final l$service = service;
    _resultData['service'] = l$service?.toJson();
    final l$serviceStudyYearData = serviceStudyYearData;
    _resultData['serviceStudyYearData'] = l$serviceStudyYearData?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$permissionId = permissionId;
    final l$area = area;
    final l$service = service;
    final l$serviceStudyYearData = serviceStudyYearData;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$permissionId,
      l$area,
      l$service,
      l$serviceStudyYearData,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_UserAdminScopes_adminOn ||
        runtimeType != other.runtimeType) {
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
    final l$serviceStudyYearData = serviceStudyYearData;
    final lOther$serviceStudyYearData = other.serviceStudyYearData;
    if (l$serviceStudyYearData != lOther$serviceStudyYearData) {
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

extension UtilityExtension_Fragment_UserAdminScopes_adminOn
    on Fragment_UserAdminScopes_adminOn {
  CopyWith_Fragment_UserAdminScopes_adminOn<Fragment_UserAdminScopes_adminOn>
  get copyWith => CopyWith_Fragment_UserAdminScopes_adminOn(this, (i) => i);
}

abstract class CopyWith_Fragment_UserAdminScopes_adminOn<TRes> {
  factory CopyWith_Fragment_UserAdminScopes_adminOn(
    Fragment_UserAdminScopes_adminOn instance,
    TRes Function(Fragment_UserAdminScopes_adminOn) then,
  ) = _CopyWithImpl_Fragment_UserAdminScopes_adminOn;

  factory CopyWith_Fragment_UserAdminScopes_adminOn.stub(TRes res) =
      _CopyWithStubImpl_Fragment_UserAdminScopes_adminOn;

  TRes call({
    UuidValue? permissionId,
    Fragment_Area? area,
    Fragment_Service? service,
    Fragment_UserAdminScopes_adminOn_serviceStudyYearData? serviceStudyYearData,
    String? $__typename,
  });
  CopyWith_Fragment_Area<TRes> get area;
  CopyWith_Fragment_Service<TRes> get service;
  CopyWith_Fragment_UserAdminScopes_adminOn_serviceStudyYearData<TRes>
  get serviceStudyYearData;
}

class _CopyWithImpl_Fragment_UserAdminScopes_adminOn<TRes>
    implements CopyWith_Fragment_UserAdminScopes_adminOn<TRes> {
  _CopyWithImpl_Fragment_UserAdminScopes_adminOn(this._instance, this._then);

  final Fragment_UserAdminScopes_adminOn _instance;

  final TRes Function(Fragment_UserAdminScopes_adminOn) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? permissionId = _undefined,
    Object? area = _undefined,
    Object? service = _undefined,
    Object? serviceStudyYearData = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_UserAdminScopes_adminOn(
      permissionId: permissionId == _undefined || permissionId == null
          ? _instance.permissionId
          : (permissionId as UuidValue),
      area: area == _undefined ? _instance.area : (area as Fragment_Area?),
      service: service == _undefined
          ? _instance.service
          : (service as Fragment_Service?),
      serviceStudyYearData: serviceStudyYearData == _undefined
          ? _instance.serviceStudyYearData
          : (serviceStudyYearData
                as Fragment_UserAdminScopes_adminOn_serviceStudyYearData?),
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

  CopyWith_Fragment_Service<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith_Fragment_Service.stub(_then(_instance))
        : CopyWith_Fragment_Service(local$service, (e) => call(service: e));
  }

  CopyWith_Fragment_UserAdminScopes_adminOn_serviceStudyYearData<TRes>
  get serviceStudyYearData {
    final local$serviceStudyYearData = _instance.serviceStudyYearData;
    return local$serviceStudyYearData == null
        ? CopyWith_Fragment_UserAdminScopes_adminOn_serviceStudyYearData.stub(
            _then(_instance),
          )
        : CopyWith_Fragment_UserAdminScopes_adminOn_serviceStudyYearData(
            local$serviceStudyYearData,
            (e) => call(serviceStudyYearData: e),
          );
  }
}

class _CopyWithStubImpl_Fragment_UserAdminScopes_adminOn<TRes>
    implements CopyWith_Fragment_UserAdminScopes_adminOn<TRes> {
  _CopyWithStubImpl_Fragment_UserAdminScopes_adminOn(this._res);

  TRes _res;

  call({
    UuidValue? permissionId,
    Fragment_Area? area,
    Fragment_Service? service,
    Fragment_UserAdminScopes_adminOn_serviceStudyYearData? serviceStudyYearData,
    String? $__typename,
  }) => _res;

  CopyWith_Fragment_Area<TRes> get area => CopyWith_Fragment_Area.stub(_res);

  CopyWith_Fragment_Service<TRes> get service =>
      CopyWith_Fragment_Service.stub(_res);

  CopyWith_Fragment_UserAdminScopes_adminOn_serviceStudyYearData<TRes>
  get serviceStudyYearData =>
      CopyWith_Fragment_UserAdminScopes_adminOn_serviceStudyYearData.stub(_res);
}

class Fragment_UserAdminScopes_adminOn_serviceStudyYearData {
  Fragment_UserAdminScopes_adminOn_serviceStudyYearData({
    required this.name,
    required this.order,
    this.$__typename = 'StudyYears',
  });

  factory Fragment_UserAdminScopes_adminOn_serviceStudyYearData.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$order = json['order'];
    final l$$__typename = json['__typename'];
    return Fragment_UserAdminScopes_adminOn_serviceStudyYearData(
      name: (l$name as String),
      order: (l$order as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final int order;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$order = order;
    _resultData['order'] = l$order;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$order = order;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$order, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_UserAdminScopes_adminOn_serviceStudyYearData ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
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

extension UtilityExtension_Fragment_UserAdminScopes_adminOn_serviceStudyYearData
    on Fragment_UserAdminScopes_adminOn_serviceStudyYearData {
  CopyWith_Fragment_UserAdminScopes_adminOn_serviceStudyYearData<
    Fragment_UserAdminScopes_adminOn_serviceStudyYearData
  >
  get copyWith =>
      CopyWith_Fragment_UserAdminScopes_adminOn_serviceStudyYearData(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Fragment_UserAdminScopes_adminOn_serviceStudyYearData<
  TRes
> {
  factory CopyWith_Fragment_UserAdminScopes_adminOn_serviceStudyYearData(
    Fragment_UserAdminScopes_adminOn_serviceStudyYearData instance,
    TRes Function(Fragment_UserAdminScopes_adminOn_serviceStudyYearData) then,
  ) = _CopyWithImpl_Fragment_UserAdminScopes_adminOn_serviceStudyYearData;

  factory CopyWith_Fragment_UserAdminScopes_adminOn_serviceStudyYearData.stub(
    TRes res,
  ) = _CopyWithStubImpl_Fragment_UserAdminScopes_adminOn_serviceStudyYearData;

  TRes call({String? name, int? order, String? $__typename});
}

class _CopyWithImpl_Fragment_UserAdminScopes_adminOn_serviceStudyYearData<TRes>
    implements
        CopyWith_Fragment_UserAdminScopes_adminOn_serviceStudyYearData<TRes> {
  _CopyWithImpl_Fragment_UserAdminScopes_adminOn_serviceStudyYearData(
    this._instance,
    this._then,
  );

  final Fragment_UserAdminScopes_adminOn_serviceStudyYearData _instance;

  final TRes Function(Fragment_UserAdminScopes_adminOn_serviceStudyYearData)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? order = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_UserAdminScopes_adminOn_serviceStudyYearData(
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      order: order == _undefined || order == null
          ? _instance.order
          : (order as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Fragment_UserAdminScopes_adminOn_serviceStudyYearData<
  TRes
>
    implements
        CopyWith_Fragment_UserAdminScopes_adminOn_serviceStudyYearData<TRes> {
  _CopyWithStubImpl_Fragment_UserAdminScopes_adminOn_serviceStudyYearData(
    this._res,
  );

  TRes _res;

  call({String? name, int? order, String? $__typename}) => _res;
}

class Fragment_UserAdminOn {
  Fragment_UserAdminOn({
    required this.adminOn,
    this.$__typename = 'AuthUsersData',
  });

  factory Fragment_UserAdminOn.fromJson(Map<String, dynamic> json) {
    final l$adminOn = json['adminOn'];
    final l$$__typename = json['__typename'];
    return Fragment_UserAdminOn(
      adminOn: (l$adminOn as List<dynamic>)
          .map(
            (e) => Fragment_UserAdminOn_adminOn.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment_UserAdminOn_adminOn> adminOn;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$adminOn = adminOn;
    _resultData['adminOn'] = l$adminOn.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$adminOn = adminOn;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$adminOn.map((v) => v)),
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
    final l$adminOn = adminOn;
    final lOther$adminOn = other.adminOn;
    if (l$adminOn.length != lOther$adminOn.length) {
      return false;
    }
    for (int i = 0; i < l$adminOn.length; i++) {
      final l$adminOn$entry = l$adminOn[i];
      final lOther$adminOn$entry = lOther$adminOn[i];
      if (l$adminOn$entry != lOther$adminOn$entry) {
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

  TRes call({List<Fragment_UserAdminOn_adminOn>? adminOn, String? $__typename});
  TRes adminOn(
    Iterable<Fragment_UserAdminOn_adminOn> Function(
      Iterable<
        CopyWith_Fragment_UserAdminOn_adminOn<Fragment_UserAdminOn_adminOn>
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

  TRes call({Object? adminOn = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Fragment_UserAdminOn(
          adminOn: adminOn == _undefined || adminOn == null
              ? _instance.adminOn
              : (adminOn as List<Fragment_UserAdminOn_adminOn>),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  TRes adminOn(
    Iterable<Fragment_UserAdminOn_adminOn> Function(
      Iterable<
        CopyWith_Fragment_UserAdminOn_adminOn<Fragment_UserAdminOn_adminOn>
      >,
    )
    _fn,
  ) => call(
    adminOn: _fn(
      _instance.adminOn.map(
        (e) => CopyWith_Fragment_UserAdminOn_adminOn(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl_Fragment_UserAdminOn<TRes>
    implements CopyWith_Fragment_UserAdminOn<TRes> {
  _CopyWithStubImpl_Fragment_UserAdminOn(this._res);

  TRes _res;

  call({List<Fragment_UserAdminOn_adminOn>? adminOn, String? $__typename}) =>
      _res;

  adminOn(_fn) => _res;
}

const fragmentDefinitionUserAdminOn = FragmentDefinitionNode(
  name: NameNode(value: 'UserAdminOn'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'AuthUsersData'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'adminOn'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'orderBy'),
            value: ListValueNode(
              values: [
                ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'area'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'name'),
                            value: EnumValueNode(
                              name: NameNode(value: 'ASC_NULLS_LAST'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'service'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'studyYearFromId'),
                            value: EnumValueNode(name: NameNode(value: 'ASC')),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'studyYearToId'),
                            value: EnumValueNode(name: NameNode(value: 'ASC')),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'serviceStudyYear'),
                      value: EnumValueNode(name: NameNode(value: 'ASC')),
                    ),
                  ],
                ),
                ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'serviceGender'),
                      value: EnumValueNode(
                        name: NameNode(value: 'DESC_NULLS_FIRST'),
                      ),
                    ),
                  ],
                ),
                ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'service'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'name'),
                            value: EnumValueNode(
                              name: NameNode(value: 'ASC_NULLS_LAST'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'group'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'name'),
                            value: EnumValueNode(
                              name: NameNode(value: 'ASC_NULLS_LAST'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
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
                    name: NameNode(value: 'Service'),
                    directives: [],
                  ),
                  FieldNode(
                    name: NameNode(value: 'studyYearFrom'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(
                      selections: [
                        FieldNode(
                          name: NameNode(value: 'name'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null,
                        ),
                        FieldNode(
                          name: NameNode(value: 'order'),
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
                    name: NameNode(value: 'studyYearTo'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(
                      selections: [
                        FieldNode(
                          name: NameNode(value: 'name'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null,
                        ),
                        FieldNode(
                          name: NameNode(value: 'order'),
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
            ),
            FieldNode(
              name: NameNode(value: 'serviceStudyYearData'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'order'),
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
              name: NameNode(value: 'classes'),
              alias: null,
              arguments: [
                ArgumentNode(
                  name: NameNode(value: 'orderBy'),
                  value: ObjectValueNode(
                    fields: [
                      ObjectFieldNode(
                        name: NameNode(value: 'name'),
                        value: EnumValueNode(name: NameNode(value: 'ASC')),
                      ),
                    ],
                  ),
                ),
              ],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'Class'),
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
              name: NameNode(value: 'group'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'Group'),
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
    fragmentDefinitionAreaNoPhoto,
    fragmentDefinitionService,
    fragmentDefinitionServiceNoPhoto,
    fragmentDefinitionClass,
    fragmentDefinitionClassNoPhoto,
    fragmentDefinitionGroup,
    fragmentDefinitionGroupNoPhoto,
  ],
);

class Fragment_UserAdminOn_adminOn {
  Fragment_UserAdminOn_adminOn({
    required this.permissionId,
    this.area,
    this.areaAllowExport,
    this.areaAllowEdit,
    this.areaAdminOnUsers,
    this.service,
    this.serviceStudyYearData,
    this.serviceGender,
    this.serviceAllowExport,
    this.serviceAllowEdit,
    this.serviceAllowRecordAttendance,
    this.serviceAllowRecordServantsAttendance,
    this.serviceAdminOnUsers,
    required this.serviceWriteRelatedFamilies,
    required this.classes,
    this.group,
    this.groupAllowExport,
    this.groupAllowEdit,
    this.groupAllowRecordAttendance,
    this.groupAllowRecordServantsAttendance,
    this.groupAdminOnUsers,
    required this.groupWriteRelatedFamilies,
    this.$__typename = 'AuthUsersAdminOn',
  });

  factory Fragment_UserAdminOn_adminOn.fromJson(Map<String, dynamic> json) {
    final l$permissionId = json['permissionId'];
    final l$area = json['area'];
    final l$areaAllowExport = json['areaAllowExport'];
    final l$areaAllowEdit = json['areaAllowEdit'];
    final l$areaAdminOnUsers = json['areaAdminOnUsers'];
    final l$service = json['service'];
    final l$serviceStudyYearData = json['serviceStudyYearData'];
    final l$serviceGender = json['serviceGender'];
    final l$serviceAllowExport = json['serviceAllowExport'];
    final l$serviceAllowEdit = json['serviceAllowEdit'];
    final l$serviceAllowRecordAttendance = json['serviceAllowRecordAttendance'];
    final l$serviceAllowRecordServantsAttendance =
        json['serviceAllowRecordServantsAttendance'];
    final l$serviceAdminOnUsers = json['serviceAdminOnUsers'];
    final l$serviceWriteRelatedFamilies = json['serviceWriteRelatedFamilies'];
    final l$classes = json['classes'];
    final l$group = json['group'];
    final l$groupAllowExport = json['groupAllowExport'];
    final l$groupAllowEdit = json['groupAllowEdit'];
    final l$groupAllowRecordAttendance = json['groupAllowRecordAttendance'];
    final l$groupAllowRecordServantsAttendance =
        json['groupAllowRecordServantsAttendance'];
    final l$groupAdminOnUsers = json['groupAdminOnUsers'];
    final l$groupWriteRelatedFamilies = json['groupWriteRelatedFamilies'];
    final l$$__typename = json['__typename'];
    return Fragment_UserAdminOn_adminOn(
      permissionId: stringToUuid(l$permissionId),
      area: l$area == null
          ? null
          : Fragment_Area.fromJson((l$area as Map<String, dynamic>)),
      areaAllowExport: (l$areaAllowExport as bool?),
      areaAllowEdit: (l$areaAllowEdit as bool?),
      areaAdminOnUsers: (l$areaAdminOnUsers as bool?),
      service: l$service == null
          ? null
          : Fragment_UserAdminOn_adminOn_service.fromJson(
              (l$service as Map<String, dynamic>),
            ),
      serviceStudyYearData: l$serviceStudyYearData == null
          ? null
          : Fragment_UserAdminOn_adminOn_serviceStudyYearData.fromJson(
              (l$serviceStudyYearData as Map<String, dynamic>),
            ),
      serviceGender: (l$serviceGender as bool?),
      serviceAllowExport: (l$serviceAllowExport as bool?),
      serviceAllowEdit: (l$serviceAllowEdit as bool?),
      serviceAllowRecordAttendance: (l$serviceAllowRecordAttendance as bool?),
      serviceAllowRecordServantsAttendance:
          (l$serviceAllowRecordServantsAttendance as bool?),
      serviceAdminOnUsers: (l$serviceAdminOnUsers as bool?),
      serviceWriteRelatedFamilies: (l$serviceWriteRelatedFamilies as bool),
      classes: (l$classes as List<dynamic>)
          .map((e) => Fragment_Class.fromJson((e as Map<String, dynamic>)))
          .toList(),
      group: l$group == null
          ? null
          : Fragment_Group.fromJson((l$group as Map<String, dynamic>)),
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

  final UuidValue permissionId;

  final Fragment_Area? area;

  final bool? areaAllowExport;

  final bool? areaAllowEdit;

  final bool? areaAdminOnUsers;

  final Fragment_UserAdminOn_adminOn_service? service;

  final Fragment_UserAdminOn_adminOn_serviceStudyYearData? serviceStudyYearData;

  final bool? serviceGender;

  final bool? serviceAllowExport;

  final bool? serviceAllowEdit;

  final bool? serviceAllowRecordAttendance;

  final bool? serviceAllowRecordServantsAttendance;

  final bool? serviceAdminOnUsers;

  final bool serviceWriteRelatedFamilies;

  final List<Fragment_Class> classes;

  final Fragment_Group? group;

  final bool? groupAllowExport;

  final bool? groupAllowEdit;

  final bool? groupAllowRecordAttendance;

  final bool? groupAllowRecordServantsAttendance;

  final bool? groupAdminOnUsers;

  final bool groupWriteRelatedFamilies;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$permissionId = permissionId;
    _resultData['permissionId'] = uuidToString(l$permissionId);
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
    final l$serviceStudyYearData = serviceStudyYearData;
    _resultData['serviceStudyYearData'] = l$serviceStudyYearData?.toJson();
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
    final l$classes = classes;
    _resultData['classes'] = l$classes.map((e) => e.toJson()).toList();
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
    final l$permissionId = permissionId;
    final l$area = area;
    final l$areaAllowExport = areaAllowExport;
    final l$areaAllowEdit = areaAllowEdit;
    final l$areaAdminOnUsers = areaAdminOnUsers;
    final l$service = service;
    final l$serviceStudyYearData = serviceStudyYearData;
    final l$serviceGender = serviceGender;
    final l$serviceAllowExport = serviceAllowExport;
    final l$serviceAllowEdit = serviceAllowEdit;
    final l$serviceAllowRecordAttendance = serviceAllowRecordAttendance;
    final l$serviceAllowRecordServantsAttendance =
        serviceAllowRecordServantsAttendance;
    final l$serviceAdminOnUsers = serviceAdminOnUsers;
    final l$serviceWriteRelatedFamilies = serviceWriteRelatedFamilies;
    final l$classes = classes;
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
      l$permissionId,
      l$area,
      l$areaAllowExport,
      l$areaAllowEdit,
      l$areaAdminOnUsers,
      l$service,
      l$serviceStudyYearData,
      l$serviceGender,
      l$serviceAllowExport,
      l$serviceAllowEdit,
      l$serviceAllowRecordAttendance,
      l$serviceAllowRecordServantsAttendance,
      l$serviceAdminOnUsers,
      l$serviceWriteRelatedFamilies,
      Object.hashAll(l$classes.map((v) => v)),
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
    if (other is! Fragment_UserAdminOn_adminOn ||
        runtimeType != other.runtimeType) {
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
    final l$serviceStudyYearData = serviceStudyYearData;
    final lOther$serviceStudyYearData = other.serviceStudyYearData;
    if (l$serviceStudyYearData != lOther$serviceStudyYearData) {
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
    final l$classes = classes;
    final lOther$classes = other.classes;
    if (l$classes.length != lOther$classes.length) {
      return false;
    }
    for (int i = 0; i < l$classes.length; i++) {
      final l$classes$entry = l$classes[i];
      final lOther$classes$entry = lOther$classes[i];
      if (l$classes$entry != lOther$classes$entry) {
        return false;
      }
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

extension UtilityExtension_Fragment_UserAdminOn_adminOn
    on Fragment_UserAdminOn_adminOn {
  CopyWith_Fragment_UserAdminOn_adminOn<Fragment_UserAdminOn_adminOn>
  get copyWith => CopyWith_Fragment_UserAdminOn_adminOn(this, (i) => i);
}

abstract class CopyWith_Fragment_UserAdminOn_adminOn<TRes> {
  factory CopyWith_Fragment_UserAdminOn_adminOn(
    Fragment_UserAdminOn_adminOn instance,
    TRes Function(Fragment_UserAdminOn_adminOn) then,
  ) = _CopyWithImpl_Fragment_UserAdminOn_adminOn;

  factory CopyWith_Fragment_UserAdminOn_adminOn.stub(TRes res) =
      _CopyWithStubImpl_Fragment_UserAdminOn_adminOn;

  TRes call({
    UuidValue? permissionId,
    Fragment_Area? area,
    bool? areaAllowExport,
    bool? areaAllowEdit,
    bool? areaAdminOnUsers,
    Fragment_UserAdminOn_adminOn_service? service,
    Fragment_UserAdminOn_adminOn_serviceStudyYearData? serviceStudyYearData,
    bool? serviceGender,
    bool? serviceAllowExport,
    bool? serviceAllowEdit,
    bool? serviceAllowRecordAttendance,
    bool? serviceAllowRecordServantsAttendance,
    bool? serviceAdminOnUsers,
    bool? serviceWriteRelatedFamilies,
    List<Fragment_Class>? classes,
    Fragment_Group? group,
    bool? groupAllowExport,
    bool? groupAllowEdit,
    bool? groupAllowRecordAttendance,
    bool? groupAllowRecordServantsAttendance,
    bool? groupAdminOnUsers,
    bool? groupWriteRelatedFamilies,
    String? $__typename,
  });
  CopyWith_Fragment_Area<TRes> get area;
  CopyWith_Fragment_UserAdminOn_adminOn_service<TRes> get service;
  CopyWith_Fragment_UserAdminOn_adminOn_serviceStudyYearData<TRes>
  get serviceStudyYearData;
  TRes classes(
    Iterable<Fragment_Class> Function(
      Iterable<CopyWith_Fragment_Class<Fragment_Class>>,
    )
    _fn,
  );
  CopyWith_Fragment_Group<TRes> get group;
}

class _CopyWithImpl_Fragment_UserAdminOn_adminOn<TRes>
    implements CopyWith_Fragment_UserAdminOn_adminOn<TRes> {
  _CopyWithImpl_Fragment_UserAdminOn_adminOn(this._instance, this._then);

  final Fragment_UserAdminOn_adminOn _instance;

  final TRes Function(Fragment_UserAdminOn_adminOn) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? permissionId = _undefined,
    Object? area = _undefined,
    Object? areaAllowExport = _undefined,
    Object? areaAllowEdit = _undefined,
    Object? areaAdminOnUsers = _undefined,
    Object? service = _undefined,
    Object? serviceStudyYearData = _undefined,
    Object? serviceGender = _undefined,
    Object? serviceAllowExport = _undefined,
    Object? serviceAllowEdit = _undefined,
    Object? serviceAllowRecordAttendance = _undefined,
    Object? serviceAllowRecordServantsAttendance = _undefined,
    Object? serviceAdminOnUsers = _undefined,
    Object? serviceWriteRelatedFamilies = _undefined,
    Object? classes = _undefined,
    Object? group = _undefined,
    Object? groupAllowExport = _undefined,
    Object? groupAllowEdit = _undefined,
    Object? groupAllowRecordAttendance = _undefined,
    Object? groupAllowRecordServantsAttendance = _undefined,
    Object? groupAdminOnUsers = _undefined,
    Object? groupWriteRelatedFamilies = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_UserAdminOn_adminOn(
      permissionId: permissionId == _undefined || permissionId == null
          ? _instance.permissionId
          : (permissionId as UuidValue),
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
          : (service as Fragment_UserAdminOn_adminOn_service?),
      serviceStudyYearData: serviceStudyYearData == _undefined
          ? _instance.serviceStudyYearData
          : (serviceStudyYearData
                as Fragment_UserAdminOn_adminOn_serviceStudyYearData?),
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
      classes: classes == _undefined || classes == null
          ? _instance.classes
          : (classes as List<Fragment_Class>),
      group: group == _undefined ? _instance.group : (group as Fragment_Group?),
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

  CopyWith_Fragment_UserAdminOn_adminOn_service<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith_Fragment_UserAdminOn_adminOn_service.stub(_then(_instance))
        : CopyWith_Fragment_UserAdminOn_adminOn_service(
            local$service,
            (e) => call(service: e),
          );
  }

  CopyWith_Fragment_UserAdminOn_adminOn_serviceStudyYearData<TRes>
  get serviceStudyYearData {
    final local$serviceStudyYearData = _instance.serviceStudyYearData;
    return local$serviceStudyYearData == null
        ? CopyWith_Fragment_UserAdminOn_adminOn_serviceStudyYearData.stub(
            _then(_instance),
          )
        : CopyWith_Fragment_UserAdminOn_adminOn_serviceStudyYearData(
            local$serviceStudyYearData,
            (e) => call(serviceStudyYearData: e),
          );
  }

  TRes classes(
    Iterable<Fragment_Class> Function(
      Iterable<CopyWith_Fragment_Class<Fragment_Class>>,
    )
    _fn,
  ) => call(
    classes: _fn(
      _instance.classes.map((e) => CopyWith_Fragment_Class(e, (i) => i)),
    ).toList(),
  );

  CopyWith_Fragment_Group<TRes> get group {
    final local$group = _instance.group;
    return local$group == null
        ? CopyWith_Fragment_Group.stub(_then(_instance))
        : CopyWith_Fragment_Group(local$group, (e) => call(group: e));
  }
}

class _CopyWithStubImpl_Fragment_UserAdminOn_adminOn<TRes>
    implements CopyWith_Fragment_UserAdminOn_adminOn<TRes> {
  _CopyWithStubImpl_Fragment_UserAdminOn_adminOn(this._res);

  TRes _res;

  call({
    UuidValue? permissionId,
    Fragment_Area? area,
    bool? areaAllowExport,
    bool? areaAllowEdit,
    bool? areaAdminOnUsers,
    Fragment_UserAdminOn_adminOn_service? service,
    Fragment_UserAdminOn_adminOn_serviceStudyYearData? serviceStudyYearData,
    bool? serviceGender,
    bool? serviceAllowExport,
    bool? serviceAllowEdit,
    bool? serviceAllowRecordAttendance,
    bool? serviceAllowRecordServantsAttendance,
    bool? serviceAdminOnUsers,
    bool? serviceWriteRelatedFamilies,
    List<Fragment_Class>? classes,
    Fragment_Group? group,
    bool? groupAllowExport,
    bool? groupAllowEdit,
    bool? groupAllowRecordAttendance,
    bool? groupAllowRecordServantsAttendance,
    bool? groupAdminOnUsers,
    bool? groupWriteRelatedFamilies,
    String? $__typename,
  }) => _res;

  CopyWith_Fragment_Area<TRes> get area => CopyWith_Fragment_Area.stub(_res);

  CopyWith_Fragment_UserAdminOn_adminOn_service<TRes> get service =>
      CopyWith_Fragment_UserAdminOn_adminOn_service.stub(_res);

  CopyWith_Fragment_UserAdminOn_adminOn_serviceStudyYearData<TRes>
  get serviceStudyYearData =>
      CopyWith_Fragment_UserAdminOn_adminOn_serviceStudyYearData.stub(_res);

  classes(_fn) => _res;

  CopyWith_Fragment_Group<TRes> get group => CopyWith_Fragment_Group.stub(_res);
}

class Fragment_UserAdminOn_adminOn_service
    implements Fragment_Service, Fragment_ServiceNoPhoto {
  Fragment_UserAdminOn_adminOn_service({
    required this.id,
    required this.name,
    this.color,
    this.userCanEdit,
    this.$__typename = 'Services',
    this.photoUpdatedAt,
    this.blurhash,
    this.studyYearFrom,
    this.studyYearTo,
  });

  factory Fragment_UserAdminOn_adminOn_service.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$userCanEdit = json['userCanEdit'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$studyYearFrom = json['studyYearFrom'];
    final l$studyYearTo = json['studyYearTo'];
    return Fragment_UserAdminOn_adminOn_service(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      userCanEdit: (l$userCanEdit as bool?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      studyYearFrom: l$studyYearFrom == null
          ? null
          : Fragment_UserAdminOn_adminOn_service_studyYearFrom.fromJson(
              (l$studyYearFrom as Map<String, dynamic>),
            ),
      studyYearTo: l$studyYearTo == null
          ? null
          : Fragment_UserAdminOn_adminOn_service_studyYearTo.fromJson(
              (l$studyYearTo as Map<String, dynamic>),
            ),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final bool? userCanEdit;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final Fragment_UserAdminOn_adminOn_service_studyYearFrom? studyYearFrom;

  final Fragment_UserAdminOn_adminOn_service_studyYearTo? studyYearTo;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$userCanEdit = userCanEdit;
    _resultData['userCanEdit'] = l$userCanEdit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] = l$photoUpdatedAt == null
        ? null
        : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
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
    final l$$__typename = $__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$studyYearFrom = studyYearFrom;
    final l$studyYearTo = studyYearTo;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$userCanEdit,
      l$$__typename,
      l$photoUpdatedAt,
      l$blurhash,
      l$studyYearFrom,
      l$studyYearTo,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_UserAdminOn_adminOn_service ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
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

extension UtilityExtension_Fragment_UserAdminOn_adminOn_service
    on Fragment_UserAdminOn_adminOn_service {
  CopyWith_Fragment_UserAdminOn_adminOn_service<
    Fragment_UserAdminOn_adminOn_service
  >
  get copyWith => CopyWith_Fragment_UserAdminOn_adminOn_service(this, (i) => i);
}

abstract class CopyWith_Fragment_UserAdminOn_adminOn_service<TRes> {
  factory CopyWith_Fragment_UserAdminOn_adminOn_service(
    Fragment_UserAdminOn_adminOn_service instance,
    TRes Function(Fragment_UserAdminOn_adminOn_service) then,
  ) = _CopyWithImpl_Fragment_UserAdminOn_adminOn_service;

  factory CopyWith_Fragment_UserAdminOn_adminOn_service.stub(TRes res) =
      _CopyWithStubImpl_Fragment_UserAdminOn_adminOn_service;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Fragment_UserAdminOn_adminOn_service_studyYearFrom? studyYearFrom,
    Fragment_UserAdminOn_adminOn_service_studyYearTo? studyYearTo,
  });
  CopyWith_Fragment_UserAdminOn_adminOn_service_studyYearFrom<TRes>
  get studyYearFrom;
  CopyWith_Fragment_UserAdminOn_adminOn_service_studyYearTo<TRes>
  get studyYearTo;
}

class _CopyWithImpl_Fragment_UserAdminOn_adminOn_service<TRes>
    implements CopyWith_Fragment_UserAdminOn_adminOn_service<TRes> {
  _CopyWithImpl_Fragment_UserAdminOn_adminOn_service(
    this._instance,
    this._then,
  );

  final Fragment_UserAdminOn_adminOn_service _instance;

  final TRes Function(Fragment_UserAdminOn_adminOn_service) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? userCanEdit = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? studyYearFrom = _undefined,
    Object? studyYearTo = _undefined,
  }) => _then(
    Fragment_UserAdminOn_adminOn_service(
      id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      color: color == _undefined ? _instance.color : (color as int?),
      userCanEdit: userCanEdit == _undefined
          ? _instance.userCanEdit
          : (userCanEdit as bool?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      photoUpdatedAt: photoUpdatedAt == _undefined
          ? _instance.photoUpdatedAt
          : (photoUpdatedAt as DateTime?),
      blurhash: blurhash == _undefined
          ? _instance.blurhash
          : (blurhash as String?),
      studyYearFrom: studyYearFrom == _undefined
          ? _instance.studyYearFrom
          : (studyYearFrom
                as Fragment_UserAdminOn_adminOn_service_studyYearFrom?),
      studyYearTo: studyYearTo == _undefined
          ? _instance.studyYearTo
          : (studyYearTo as Fragment_UserAdminOn_adminOn_service_studyYearTo?),
    ),
  );

  CopyWith_Fragment_UserAdminOn_adminOn_service_studyYearFrom<TRes>
  get studyYearFrom {
    final local$studyYearFrom = _instance.studyYearFrom;
    return local$studyYearFrom == null
        ? CopyWith_Fragment_UserAdminOn_adminOn_service_studyYearFrom.stub(
            _then(_instance),
          )
        : CopyWith_Fragment_UserAdminOn_adminOn_service_studyYearFrom(
            local$studyYearFrom,
            (e) => call(studyYearFrom: e),
          );
  }

  CopyWith_Fragment_UserAdminOn_adminOn_service_studyYearTo<TRes>
  get studyYearTo {
    final local$studyYearTo = _instance.studyYearTo;
    return local$studyYearTo == null
        ? CopyWith_Fragment_UserAdminOn_adminOn_service_studyYearTo.stub(
            _then(_instance),
          )
        : CopyWith_Fragment_UserAdminOn_adminOn_service_studyYearTo(
            local$studyYearTo,
            (e) => call(studyYearTo: e),
          );
  }
}

class _CopyWithStubImpl_Fragment_UserAdminOn_adminOn_service<TRes>
    implements CopyWith_Fragment_UserAdminOn_adminOn_service<TRes> {
  _CopyWithStubImpl_Fragment_UserAdminOn_adminOn_service(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Fragment_UserAdminOn_adminOn_service_studyYearFrom? studyYearFrom,
    Fragment_UserAdminOn_adminOn_service_studyYearTo? studyYearTo,
  }) => _res;

  CopyWith_Fragment_UserAdminOn_adminOn_service_studyYearFrom<TRes>
  get studyYearFrom =>
      CopyWith_Fragment_UserAdminOn_adminOn_service_studyYearFrom.stub(_res);

  CopyWith_Fragment_UserAdminOn_adminOn_service_studyYearTo<TRes>
  get studyYearTo =>
      CopyWith_Fragment_UserAdminOn_adminOn_service_studyYearTo.stub(_res);
}

class Fragment_UserAdminOn_adminOn_service_studyYearFrom {
  Fragment_UserAdminOn_adminOn_service_studyYearFrom({
    required this.name,
    required this.order,
    this.$__typename = 'StudyYears',
  });

  factory Fragment_UserAdminOn_adminOn_service_studyYearFrom.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$order = json['order'];
    final l$$__typename = json['__typename'];
    return Fragment_UserAdminOn_adminOn_service_studyYearFrom(
      name: (l$name as String),
      order: (l$order as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final int order;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$order = order;
    _resultData['order'] = l$order;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$order = order;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$order, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_UserAdminOn_adminOn_service_studyYearFrom ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
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

extension UtilityExtension_Fragment_UserAdminOn_adminOn_service_studyYearFrom
    on Fragment_UserAdminOn_adminOn_service_studyYearFrom {
  CopyWith_Fragment_UserAdminOn_adminOn_service_studyYearFrom<
    Fragment_UserAdminOn_adminOn_service_studyYearFrom
  >
  get copyWith => CopyWith_Fragment_UserAdminOn_adminOn_service_studyYearFrom(
    this,
    (i) => i,
  );
}

abstract class CopyWith_Fragment_UserAdminOn_adminOn_service_studyYearFrom<
  TRes
> {
  factory CopyWith_Fragment_UserAdminOn_adminOn_service_studyYearFrom(
    Fragment_UserAdminOn_adminOn_service_studyYearFrom instance,
    TRes Function(Fragment_UserAdminOn_adminOn_service_studyYearFrom) then,
  ) = _CopyWithImpl_Fragment_UserAdminOn_adminOn_service_studyYearFrom;

  factory CopyWith_Fragment_UserAdminOn_adminOn_service_studyYearFrom.stub(
    TRes res,
  ) = _CopyWithStubImpl_Fragment_UserAdminOn_adminOn_service_studyYearFrom;

  TRes call({String? name, int? order, String? $__typename});
}

class _CopyWithImpl_Fragment_UserAdminOn_adminOn_service_studyYearFrom<TRes>
    implements
        CopyWith_Fragment_UserAdminOn_adminOn_service_studyYearFrom<TRes> {
  _CopyWithImpl_Fragment_UserAdminOn_adminOn_service_studyYearFrom(
    this._instance,
    this._then,
  );

  final Fragment_UserAdminOn_adminOn_service_studyYearFrom _instance;

  final TRes Function(Fragment_UserAdminOn_adminOn_service_studyYearFrom) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? order = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_UserAdminOn_adminOn_service_studyYearFrom(
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      order: order == _undefined || order == null
          ? _instance.order
          : (order as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Fragment_UserAdminOn_adminOn_service_studyYearFrom<TRes>
    implements
        CopyWith_Fragment_UserAdminOn_adminOn_service_studyYearFrom<TRes> {
  _CopyWithStubImpl_Fragment_UserAdminOn_adminOn_service_studyYearFrom(
    this._res,
  );

  TRes _res;

  call({String? name, int? order, String? $__typename}) => _res;
}

class Fragment_UserAdminOn_adminOn_service_studyYearTo {
  Fragment_UserAdminOn_adminOn_service_studyYearTo({
    required this.name,
    required this.order,
    this.$__typename = 'StudyYears',
  });

  factory Fragment_UserAdminOn_adminOn_service_studyYearTo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$order = json['order'];
    final l$$__typename = json['__typename'];
    return Fragment_UserAdminOn_adminOn_service_studyYearTo(
      name: (l$name as String),
      order: (l$order as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final int order;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$order = order;
    _resultData['order'] = l$order;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$order = order;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$order, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_UserAdminOn_adminOn_service_studyYearTo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
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

extension UtilityExtension_Fragment_UserAdminOn_adminOn_service_studyYearTo
    on Fragment_UserAdminOn_adminOn_service_studyYearTo {
  CopyWith_Fragment_UserAdminOn_adminOn_service_studyYearTo<
    Fragment_UserAdminOn_adminOn_service_studyYearTo
  >
  get copyWith =>
      CopyWith_Fragment_UserAdminOn_adminOn_service_studyYearTo(this, (i) => i);
}

abstract class CopyWith_Fragment_UserAdminOn_adminOn_service_studyYearTo<TRes> {
  factory CopyWith_Fragment_UserAdminOn_adminOn_service_studyYearTo(
    Fragment_UserAdminOn_adminOn_service_studyYearTo instance,
    TRes Function(Fragment_UserAdminOn_adminOn_service_studyYearTo) then,
  ) = _CopyWithImpl_Fragment_UserAdminOn_adminOn_service_studyYearTo;

  factory CopyWith_Fragment_UserAdminOn_adminOn_service_studyYearTo.stub(
    TRes res,
  ) = _CopyWithStubImpl_Fragment_UserAdminOn_adminOn_service_studyYearTo;

  TRes call({String? name, int? order, String? $__typename});
}

class _CopyWithImpl_Fragment_UserAdminOn_adminOn_service_studyYearTo<TRes>
    implements CopyWith_Fragment_UserAdminOn_adminOn_service_studyYearTo<TRes> {
  _CopyWithImpl_Fragment_UserAdminOn_adminOn_service_studyYearTo(
    this._instance,
    this._then,
  );

  final Fragment_UserAdminOn_adminOn_service_studyYearTo _instance;

  final TRes Function(Fragment_UserAdminOn_adminOn_service_studyYearTo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? order = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_UserAdminOn_adminOn_service_studyYearTo(
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      order: order == _undefined || order == null
          ? _instance.order
          : (order as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Fragment_UserAdminOn_adminOn_service_studyYearTo<TRes>
    implements CopyWith_Fragment_UserAdminOn_adminOn_service_studyYearTo<TRes> {
  _CopyWithStubImpl_Fragment_UserAdminOn_adminOn_service_studyYearTo(this._res);

  TRes _res;

  call({String? name, int? order, String? $__typename}) => _res;
}

class Fragment_UserAdminOn_adminOn_serviceStudyYearData {
  Fragment_UserAdminOn_adminOn_serviceStudyYearData({
    required this.name,
    required this.order,
    this.$__typename = 'StudyYears',
  });

  factory Fragment_UserAdminOn_adminOn_serviceStudyYearData.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$order = json['order'];
    final l$$__typename = json['__typename'];
    return Fragment_UserAdminOn_adminOn_serviceStudyYearData(
      name: (l$name as String),
      order: (l$order as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final int order;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$order = order;
    _resultData['order'] = l$order;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$order = order;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$order, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_UserAdminOn_adminOn_serviceStudyYearData ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
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

extension UtilityExtension_Fragment_UserAdminOn_adminOn_serviceStudyYearData
    on Fragment_UserAdminOn_adminOn_serviceStudyYearData {
  CopyWith_Fragment_UserAdminOn_adminOn_serviceStudyYearData<
    Fragment_UserAdminOn_adminOn_serviceStudyYearData
  >
  get copyWith => CopyWith_Fragment_UserAdminOn_adminOn_serviceStudyYearData(
    this,
    (i) => i,
  );
}

abstract class CopyWith_Fragment_UserAdminOn_adminOn_serviceStudyYearData<
  TRes
> {
  factory CopyWith_Fragment_UserAdminOn_adminOn_serviceStudyYearData(
    Fragment_UserAdminOn_adminOn_serviceStudyYearData instance,
    TRes Function(Fragment_UserAdminOn_adminOn_serviceStudyYearData) then,
  ) = _CopyWithImpl_Fragment_UserAdminOn_adminOn_serviceStudyYearData;

  factory CopyWith_Fragment_UserAdminOn_adminOn_serviceStudyYearData.stub(
    TRes res,
  ) = _CopyWithStubImpl_Fragment_UserAdminOn_adminOn_serviceStudyYearData;

  TRes call({String? name, int? order, String? $__typename});
}

class _CopyWithImpl_Fragment_UserAdminOn_adminOn_serviceStudyYearData<TRes>
    implements
        CopyWith_Fragment_UserAdminOn_adminOn_serviceStudyYearData<TRes> {
  _CopyWithImpl_Fragment_UserAdminOn_adminOn_serviceStudyYearData(
    this._instance,
    this._then,
  );

  final Fragment_UserAdminOn_adminOn_serviceStudyYearData _instance;

  final TRes Function(Fragment_UserAdminOn_adminOn_serviceStudyYearData) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? order = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_UserAdminOn_adminOn_serviceStudyYearData(
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      order: order == _undefined || order == null
          ? _instance.order
          : (order as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Fragment_UserAdminOn_adminOn_serviceStudyYearData<TRes>
    implements
        CopyWith_Fragment_UserAdminOn_adminOn_serviceStudyYearData<TRes> {
  _CopyWithStubImpl_Fragment_UserAdminOn_adminOn_serviceStudyYearData(
    this._res,
  );

  TRes _res;

  call({String? name, int? order, String? $__typename}) => _res;
}
