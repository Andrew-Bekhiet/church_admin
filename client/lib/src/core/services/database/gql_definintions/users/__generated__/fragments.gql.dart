import '../../areas/__generated__/fragments.gql.dart';
import '../../classes/__generated__/fragments.gql.dart';
import '../../gql/__generated__/fragments.gql.dart';
import '../../groups/__generated__/fragments.gql.dart';
import '../../persons/__generated__/fragments.gql.dart';
import '../../services/__generated__/fragments.gql.dart';
import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Fragment_User implements Fragment_UserNoPhoto {
  Fragment_User({
    required this.uid,
    required this.name,
    required this.email,
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
      email: (l$email as String),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
    );
  }

  final UuidValue uid;

  final String name;

  final String email;

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
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
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
  CopyWith_Fragment_User<Fragment_User> get copyWith => CopyWith_Fragment_User(
        this,
        (i) => i,
      );
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
  _CopyWithImpl_Fragment_User(
    this._instance,
    this._then,
  );

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
  }) =>
      _then(Fragment_User(
        uid: uid == _undefined || uid == null
            ? _instance.uid
            : (uid as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        email: email == _undefined || email == null
            ? _instance.email
            : (email as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        blurhash:
            blurhash == _undefined ? _instance.blurhash : (blurhash as String?),
      ));
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
  }) =>
      _res;
}

const fragmentDefinitionUser = FragmentDefinitionNode(
  name: NameNode(value: 'User'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'AuthUsersData'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
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
  ]),
);
const documentNodeFragmentUser = DocumentNode(definitions: [
  fragmentDefinitionUser,
  fragmentDefinitionUserNoPhoto,
]);

class Fragment_UserNoPhoto {
  Fragment_UserNoPhoto({
    required this.uid,
    required this.name,
    required this.email,
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
      email: (l$email as String),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue uid;

  final String name;

  final String email;

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
    return Object.hashAll([
      l$uid,
      l$name,
      l$email,
      l$$__typename,
    ]);
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
      CopyWith_Fragment_UserNoPhoto(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Fragment_UserNoPhoto<TRes> {
  factory CopyWith_Fragment_UserNoPhoto(
    Fragment_UserNoPhoto instance,
    TRes Function(Fragment_UserNoPhoto) then,
  ) = _CopyWithImpl_Fragment_UserNoPhoto;

  factory CopyWith_Fragment_UserNoPhoto.stub(TRes res) =
      _CopyWithStubImpl_Fragment_UserNoPhoto;

  TRes call({
    UuidValue? uid,
    String? name,
    String? email,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_UserNoPhoto<TRes>
    implements CopyWith_Fragment_UserNoPhoto<TRes> {
  _CopyWithImpl_Fragment_UserNoPhoto(
    this._instance,
    this._then,
  );

  final Fragment_UserNoPhoto _instance;

  final TRes Function(Fragment_UserNoPhoto) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uid = _undefined,
    Object? name = _undefined,
    Object? email = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_UserNoPhoto(
        uid: uid == _undefined || uid == null
            ? _instance.uid
            : (uid as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        email: email == _undefined || email == null
            ? _instance.email
            : (email as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Fragment_UserNoPhoto<TRes>
    implements CopyWith_Fragment_UserNoPhoto<TRes> {
  _CopyWithStubImpl_Fragment_UserNoPhoto(this._res);

  TRes _res;

  call({
    UuidValue? uid,
    String? name,
    String? email,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionUserNoPhoto = FragmentDefinitionNode(
  name: NameNode(value: 'UserNoPhoto'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'AuthUsersData'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
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
  ]),
);
const documentNodeFragmentUserNoPhoto = DocumentNode(definitions: [
  fragmentDefinitionUserNoPhoto,
]);

class Fragment_UserOverview
    implements Fragment_User, Fragment_UserNoPhoto, Fragment_UserPermissions {
  Fragment_UserOverview({
    required this.uid,
    required this.name,
    required this.email,
    this.$__typename = 'AuthUsersData',
    this.photoUpdatedAt,
    this.blurhash,
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
    final l$permissions = json['permissions'];
    final l$person = json['person'];
    return Fragment_UserOverview(
      uid: stringToUuid(l$uid),
      name: (l$name as String),
      email: (l$email as String),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      permissions: (l$permissions as List<dynamic>)
          .map((e) => Fragment_UserOverview_permissions.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      person: l$person == null
          ? null
          : Fragment_UserOverview_person.fromJson(
              (l$person as Map<String, dynamic>)),
    );
  }

  final UuidValue uid;

  final String name;

  final String email;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

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
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
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
    final l$permissions = permissions;
    final l$person = person;
    return Object.hashAll([
      l$uid,
      l$name,
      l$email,
      l$$__typename,
      l$photoUpdatedAt,
      l$blurhash,
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
      CopyWith_Fragment_UserOverview(
        this,
        (i) => i,
      );
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
    List<Fragment_UserOverview_permissions>? permissions,
    Fragment_UserOverview_person? person,
  });
  TRes permissions(
      Iterable<Fragment_UserOverview_permissions> Function(
              Iterable<
                  CopyWith_Fragment_UserOverview_permissions<
                      Fragment_UserOverview_permissions>>)
          _fn);
  CopyWith_Fragment_UserOverview_person<TRes> get person;
}

class _CopyWithImpl_Fragment_UserOverview<TRes>
    implements CopyWith_Fragment_UserOverview<TRes> {
  _CopyWithImpl_Fragment_UserOverview(
    this._instance,
    this._then,
  );

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
    Object? permissions = _undefined,
    Object? person = _undefined,
  }) =>
      _then(Fragment_UserOverview(
        uid: uid == _undefined || uid == null
            ? _instance.uid
            : (uid as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        email: email == _undefined || email == null
            ? _instance.email
            : (email as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        blurhash:
            blurhash == _undefined ? _instance.blurhash : (blurhash as String?),
        permissions: permissions == _undefined || permissions == null
            ? _instance.permissions
            : (permissions as List<Fragment_UserOverview_permissions>),
        person: person == _undefined
            ? _instance.person
            : (person as Fragment_UserOverview_person?),
      ));

  TRes permissions(
          Iterable<Fragment_UserOverview_permissions> Function(
                  Iterable<
                      CopyWith_Fragment_UserOverview_permissions<
                          Fragment_UserOverview_permissions>>)
              _fn) =>
      call(
          permissions: _fn(_instance.permissions
              .map((e) => CopyWith_Fragment_UserOverview_permissions(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith_Fragment_UserOverview_person<TRes> get person {
    final local$person = _instance.person;
    return local$person == null
        ? CopyWith_Fragment_UserOverview_person.stub(_then(_instance))
        : CopyWith_Fragment_UserOverview_person(
            local$person, (e) => call(person: e));
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
    List<Fragment_UserOverview_permissions>? permissions,
    Fragment_UserOverview_person? person,
  }) =>
      _res;

  permissions(_fn) => _res;

  CopyWith_Fragment_UserOverview_person<TRes> get person =>
      CopyWith_Fragment_UserOverview_person.stub(_res);
}

const fragmentDefinitionUserOverview = FragmentDefinitionNode(
  name: NameNode(value: 'UserOverview'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'AuthUsersData'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FragmentSpreadNode(
      name: NameNode(value: 'User'),
      directives: [],
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
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'Person'),
          directives: [],
        ),
        FieldNode(
          name: NameNode(value: 'lastKodas'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
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
          ]),
        ),
        FieldNode(
          name: NameNode(value: 'lastConfession'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
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
          ]),
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentUserOverview = DocumentNode(definitions: [
  fragmentDefinitionUserOverview,
  fragmentDefinitionUser,
  fragmentDefinitionUserNoPhoto,
  fragmentDefinitionUserPermissions,
  fragmentDefinitionPerson,
  fragmentDefinitionPersonNoPhoto,
  fragmentDefinitionLatestKodasHistory,
  fragmentDefinitionLatestConfessionHistory,
]);

class Fragment_UserOverview_permissions
    implements Fragment_UserPermissions_permissions {
  Fragment_UserOverview_permissions({
    required this.permission,
    this.$__typename = 'AuthUsersPermissions',
  });

  factory Fragment_UserOverview_permissions.fromJson(
      Map<String, dynamic> json) {
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
    return Object.hashAll([
      l$permission,
      l$$__typename,
    ]);
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
      get copyWith => CopyWith_Fragment_UserOverview_permissions(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_UserOverview_permissions<TRes> {
  factory CopyWith_Fragment_UserOverview_permissions(
    Fragment_UserOverview_permissions instance,
    TRes Function(Fragment_UserOverview_permissions) then,
  ) = _CopyWithImpl_Fragment_UserOverview_permissions;

  factory CopyWith_Fragment_UserOverview_permissions.stub(TRes res) =
      _CopyWithStubImpl_Fragment_UserOverview_permissions;

  TRes call({
    String? permission,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_UserOverview_permissions<TRes>
    implements CopyWith_Fragment_UserOverview_permissions<TRes> {
  _CopyWithImpl_Fragment_UserOverview_permissions(
    this._instance,
    this._then,
  );

  final Fragment_UserOverview_permissions _instance;

  final TRes Function(Fragment_UserOverview_permissions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? permission = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_UserOverview_permissions(
        permission: permission == _undefined || permission == null
            ? _instance.permission
            : (permission as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Fragment_UserOverview_permissions<TRes>
    implements CopyWith_Fragment_UserOverview_permissions<TRes> {
  _CopyWithStubImpl_Fragment_UserOverview_permissions(this._res);

  TRes _res;

  call({
    String? permission,
    String? $__typename,
  }) =>
      _res;
}

class Fragment_UserOverview_person
    implements Fragment_Person, Fragment_PersonNoPhoto {
  Fragment_UserOverview_person({
    required this.id,
    required this.name,
    this.color,
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
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$lastKodas = json['lastKodas'];
    final l$lastConfession = json['lastConfession'];
    return Fragment_UserOverview_person(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      lastKodas: l$lastKodas == null
          ? null
          : Fragment_LatestKodasHistory.fromJson(
              (l$lastKodas as Map<String, dynamic>)),
      lastConfession: l$lastConfession == null
          ? null
          : Fragment_LatestConfessionHistory.fromJson(
              (l$lastConfession as Map<String, dynamic>)),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

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
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
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
    final l$$__typename = $__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$lastKodas = lastKodas;
    final l$lastConfession = lastConfession;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
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
      get copyWith => CopyWith_Fragment_UserOverview_person(
            this,
            (i) => i,
          );
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
  _CopyWithImpl_Fragment_UserOverview_person(
    this._instance,
    this._then,
  );

  final Fragment_UserOverview_person _instance;

  final TRes Function(Fragment_UserOverview_person) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? lastKodas = _undefined,
    Object? lastConfession = _undefined,
  }) =>
      _then(Fragment_UserOverview_person(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        blurhash:
            blurhash == _undefined ? _instance.blurhash : (blurhash as String?),
        lastKodas: lastKodas == _undefined
            ? _instance.lastKodas
            : (lastKodas as Fragment_LatestKodasHistory?),
        lastConfession: lastConfession == _undefined
            ? _instance.lastConfession
            : (lastConfession as Fragment_LatestConfessionHistory?),
      ));

  CopyWith_Fragment_LatestKodasHistory<TRes> get lastKodas {
    final local$lastKodas = _instance.lastKodas;
    return local$lastKodas == null
        ? CopyWith_Fragment_LatestKodasHistory.stub(_then(_instance))
        : CopyWith_Fragment_LatestKodasHistory(
            local$lastKodas, (e) => call(lastKodas: e));
  }

  CopyWith_Fragment_LatestConfessionHistory<TRes> get lastConfession {
    final local$lastConfession = _instance.lastConfession;
    return local$lastConfession == null
        ? CopyWith_Fragment_LatestConfessionHistory.stub(_then(_instance))
        : CopyWith_Fragment_LatestConfessionHistory(
            local$lastConfession, (e) => call(lastConfession: e));
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
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Fragment_LatestKodasHistory? lastKodas,
    Fragment_LatestConfessionHistory? lastConfession,
  }) =>
      _res;

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
    required this.email,
    this.$__typename = 'AuthUsersData',
    this.photoUpdatedAt,
    this.blurhash,
    required this.permissions,
    this.person,
    this.lastEdit,
    required this.adminOn,
  });

  factory Fragment_UserDetails.fromJson(Map<String, dynamic> json) {
    final l$uid = json['uid'];
    final l$name = json['name'];
    final l$email = json['email'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$permissions = json['permissions'];
    final l$person = json['person'];
    final l$lastEdit = json['lastEdit'];
    final l$adminOn = json['adminOn'];
    return Fragment_UserDetails(
      uid: stringToUuid(l$uid),
      name: (l$name as String),
      email: (l$email as String),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      permissions: (l$permissions as List<dynamic>)
          .map((e) => Fragment_UserDetails_permissions.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      person: l$person == null
          ? null
          : Fragment_UserDetails_person.fromJson(
              (l$person as Map<String, dynamic>)),
      lastEdit: l$lastEdit == null
          ? null
          : Fragment_LatestEditHistory.fromJson(
              (l$lastEdit as Map<String, dynamic>)),
      adminOn: (l$adminOn as List<dynamic>)
          .map((e) => Fragment_UserDetails_adminOn.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final UuidValue uid;

  final String name;

  final String email;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final List<Fragment_UserDetails_permissions> permissions;

  final Fragment_UserDetails_person? person;

  final Fragment_LatestEditHistory? lastEdit;

  final List<Fragment_UserDetails_adminOn> adminOn;

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
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    final l$permissions = permissions;
    _resultData['permissions'] = l$permissions.map((e) => e.toJson()).toList();
    final l$person = person;
    _resultData['person'] = l$person?.toJson();
    final l$lastEdit = lastEdit;
    _resultData['lastEdit'] = l$lastEdit?.toJson();
    final l$adminOn = adminOn;
    _resultData['adminOn'] = l$adminOn.map((e) => e.toJson()).toList();
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
    final l$permissions = permissions;
    final l$person = person;
    final l$lastEdit = lastEdit;
    final l$adminOn = adminOn;
    return Object.hashAll([
      l$uid,
      l$name,
      l$email,
      l$$__typename,
      l$photoUpdatedAt,
      l$blurhash,
      Object.hashAll(l$permissions.map((v) => v)),
      l$person,
      l$lastEdit,
      Object.hashAll(l$adminOn.map((v) => v)),
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
    return true;
  }
}

extension UtilityExtension_Fragment_UserDetails on Fragment_UserDetails {
  CopyWith_Fragment_UserDetails<Fragment_UserDetails> get copyWith =>
      CopyWith_Fragment_UserDetails(
        this,
        (i) => i,
      );
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
    List<Fragment_UserDetails_permissions>? permissions,
    Fragment_UserDetails_person? person,
    Fragment_LatestEditHistory? lastEdit,
    List<Fragment_UserDetails_adminOn>? adminOn,
  });
  TRes permissions(
      Iterable<Fragment_UserDetails_permissions> Function(
              Iterable<
                  CopyWith_Fragment_UserDetails_permissions<
                      Fragment_UserDetails_permissions>>)
          _fn);
  CopyWith_Fragment_UserDetails_person<TRes> get person;
  CopyWith_Fragment_LatestEditHistory<TRes> get lastEdit;
  TRes adminOn(
      Iterable<Fragment_UserDetails_adminOn> Function(
              Iterable<
                  CopyWith_Fragment_UserDetails_adminOn<
                      Fragment_UserDetails_adminOn>>)
          _fn);
}

class _CopyWithImpl_Fragment_UserDetails<TRes>
    implements CopyWith_Fragment_UserDetails<TRes> {
  _CopyWithImpl_Fragment_UserDetails(
    this._instance,
    this._then,
  );

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
    Object? permissions = _undefined,
    Object? person = _undefined,
    Object? lastEdit = _undefined,
    Object? adminOn = _undefined,
  }) =>
      _then(Fragment_UserDetails(
        uid: uid == _undefined || uid == null
            ? _instance.uid
            : (uid as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        email: email == _undefined || email == null
            ? _instance.email
            : (email as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        blurhash:
            blurhash == _undefined ? _instance.blurhash : (blurhash as String?),
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
      ));

  TRes permissions(
          Iterable<Fragment_UserDetails_permissions> Function(
                  Iterable<
                      CopyWith_Fragment_UserDetails_permissions<
                          Fragment_UserDetails_permissions>>)
              _fn) =>
      call(
          permissions: _fn(_instance.permissions
              .map((e) => CopyWith_Fragment_UserDetails_permissions(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith_Fragment_UserDetails_person<TRes> get person {
    final local$person = _instance.person;
    return local$person == null
        ? CopyWith_Fragment_UserDetails_person.stub(_then(_instance))
        : CopyWith_Fragment_UserDetails_person(
            local$person, (e) => call(person: e));
  }

  CopyWith_Fragment_LatestEditHistory<TRes> get lastEdit {
    final local$lastEdit = _instance.lastEdit;
    return local$lastEdit == null
        ? CopyWith_Fragment_LatestEditHistory.stub(_then(_instance))
        : CopyWith_Fragment_LatestEditHistory(
            local$lastEdit, (e) => call(lastEdit: e));
  }

  TRes adminOn(
          Iterable<Fragment_UserDetails_adminOn> Function(
                  Iterable<
                      CopyWith_Fragment_UserDetails_adminOn<
                          Fragment_UserDetails_adminOn>>)
              _fn) =>
      call(
          adminOn: _fn(_instance.adminOn
              .map((e) => CopyWith_Fragment_UserDetails_adminOn(
                    e,
                    (i) => i,
                  ))).toList());
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
    List<Fragment_UserDetails_permissions>? permissions,
    Fragment_UserDetails_person? person,
    Fragment_LatestEditHistory? lastEdit,
    List<Fragment_UserDetails_adminOn>? adminOn,
  }) =>
      _res;

  permissions(_fn) => _res;

  CopyWith_Fragment_UserDetails_person<TRes> get person =>
      CopyWith_Fragment_UserDetails_person.stub(_res);

  CopyWith_Fragment_LatestEditHistory<TRes> get lastEdit =>
      CopyWith_Fragment_LatestEditHistory.stub(_res);

  adminOn(_fn) => _res;
}

const fragmentDefinitionUserDetails = FragmentDefinitionNode(
  name: NameNode(value: 'UserDetails'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'AuthUsersData'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FragmentSpreadNode(
      name: NameNode(value: 'UserOverview'),
      directives: [],
    ),
    FieldNode(
      name: NameNode(value: 'lastEdit'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
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
      ]),
    ),
    FragmentSpreadNode(
      name: NameNode(value: 'UserAdminOn'),
      directives: [],
    ),
    FieldNode(
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentUserDetails = DocumentNode(definitions: [
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
]);

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
    return Object.hashAll([
      l$permission,
      l$$__typename,
    ]);
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
      get copyWith => CopyWith_Fragment_UserDetails_permissions(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_UserDetails_permissions<TRes> {
  factory CopyWith_Fragment_UserDetails_permissions(
    Fragment_UserDetails_permissions instance,
    TRes Function(Fragment_UserDetails_permissions) then,
  ) = _CopyWithImpl_Fragment_UserDetails_permissions;

  factory CopyWith_Fragment_UserDetails_permissions.stub(TRes res) =
      _CopyWithStubImpl_Fragment_UserDetails_permissions;

  TRes call({
    String? permission,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_UserDetails_permissions<TRes>
    implements CopyWith_Fragment_UserDetails_permissions<TRes> {
  _CopyWithImpl_Fragment_UserDetails_permissions(
    this._instance,
    this._then,
  );

  final Fragment_UserDetails_permissions _instance;

  final TRes Function(Fragment_UserDetails_permissions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? permission = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_UserDetails_permissions(
        permission: permission == _undefined || permission == null
            ? _instance.permission
            : (permission as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Fragment_UserDetails_permissions<TRes>
    implements CopyWith_Fragment_UserDetails_permissions<TRes> {
  _CopyWithStubImpl_Fragment_UserDetails_permissions(this._res);

  TRes _res;

  call({
    String? permission,
    String? $__typename,
  }) =>
      _res;
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
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$lastKodas = json['lastKodas'];
    final l$lastConfession = json['lastConfession'];
    return Fragment_UserDetails_person(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      lastKodas: l$lastKodas == null
          ? null
          : Fragment_LatestKodasHistory.fromJson(
              (l$lastKodas as Map<String, dynamic>)),
      lastConfession: l$lastConfession == null
          ? null
          : Fragment_LatestConfessionHistory.fromJson(
              (l$lastConfession as Map<String, dynamic>)),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

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
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
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
    final l$$__typename = $__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$lastKodas = lastKodas;
    final l$lastConfession = lastConfession;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
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
      get copyWith => CopyWith_Fragment_UserDetails_person(
            this,
            (i) => i,
          );
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
  _CopyWithImpl_Fragment_UserDetails_person(
    this._instance,
    this._then,
  );

  final Fragment_UserDetails_person _instance;

  final TRes Function(Fragment_UserDetails_person) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? lastKodas = _undefined,
    Object? lastConfession = _undefined,
  }) =>
      _then(Fragment_UserDetails_person(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        blurhash:
            blurhash == _undefined ? _instance.blurhash : (blurhash as String?),
        lastKodas: lastKodas == _undefined
            ? _instance.lastKodas
            : (lastKodas as Fragment_LatestKodasHistory?),
        lastConfession: lastConfession == _undefined
            ? _instance.lastConfession
            : (lastConfession as Fragment_LatestConfessionHistory?),
      ));

  CopyWith_Fragment_LatestKodasHistory<TRes> get lastKodas {
    final local$lastKodas = _instance.lastKodas;
    return local$lastKodas == null
        ? CopyWith_Fragment_LatestKodasHistory.stub(_then(_instance))
        : CopyWith_Fragment_LatestKodasHistory(
            local$lastKodas, (e) => call(lastKodas: e));
  }

  CopyWith_Fragment_LatestConfessionHistory<TRes> get lastConfession {
    final local$lastConfession = _instance.lastConfession;
    return local$lastConfession == null
        ? CopyWith_Fragment_LatestConfessionHistory.stub(_then(_instance))
        : CopyWith_Fragment_LatestConfessionHistory(
            local$lastConfession, (e) => call(lastConfession: e));
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
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Fragment_LatestKodasHistory? lastKodas,
    Fragment_LatestConfessionHistory? lastConfession,
  }) =>
      _res;

  CopyWith_Fragment_LatestKodasHistory<TRes> get lastKodas =>
      CopyWith_Fragment_LatestKodasHistory.stub(_res);

  CopyWith_Fragment_LatestConfessionHistory<TRes> get lastConfession =>
      CopyWith_Fragment_LatestConfessionHistory.stub(_res);
}

class Fragment_UserDetails_adminOn implements Fragment_UserAdminOn_adminOn {
  Fragment_UserDetails_adminOn({
    required this.permissionId,
    this.area,
    this.areaAllowEdit,
    this.areaAdminOnUsers,
    this.service,
    this.serviceStudyYearData,
    this.serviceGender,
    this.serviceAllowEdit,
    this.serviceAdminOnUsers,
    required this.classes,
    this.group,
    this.groupAllowEdit,
    this.groupAdminOnUsers,
    this.$__typename = 'AuthUsersAdminOn',
  });

  factory Fragment_UserDetails_adminOn.fromJson(Map<String, dynamic> json) {
    final l$permissionId = json['permissionId'];
    final l$area = json['area'];
    final l$areaAllowEdit = json['areaAllowEdit'];
    final l$areaAdminOnUsers = json['areaAdminOnUsers'];
    final l$service = json['service'];
    final l$serviceStudyYearData = json['serviceStudyYearData'];
    final l$serviceGender = json['serviceGender'];
    final l$serviceAllowEdit = json['serviceAllowEdit'];
    final l$serviceAdminOnUsers = json['serviceAdminOnUsers'];
    final l$classes = json['classes'];
    final l$group = json['group'];
    final l$groupAllowEdit = json['groupAllowEdit'];
    final l$groupAdminOnUsers = json['groupAdminOnUsers'];
    final l$$__typename = json['__typename'];
    return Fragment_UserDetails_adminOn(
      permissionId: stringToUuid(l$permissionId),
      area: l$area == null
          ? null
          : Fragment_Area.fromJson((l$area as Map<String, dynamic>)),
      areaAllowEdit: (l$areaAllowEdit as bool?),
      areaAdminOnUsers: (l$areaAdminOnUsers as bool?),
      service: l$service == null
          ? null
          : Fragment_Service.fromJson((l$service as Map<String, dynamic>)),
      serviceStudyYearData: l$serviceStudyYearData == null
          ? null
          : Fragment_UserDetails_adminOn_serviceStudyYearData.fromJson(
              (l$serviceStudyYearData as Map<String, dynamic>)),
      serviceGender: (l$serviceGender as bool?),
      serviceAllowEdit: (l$serviceAllowEdit as bool?),
      serviceAdminOnUsers: (l$serviceAdminOnUsers as bool?),
      classes: (l$classes as List<dynamic>)
          .map((e) => Fragment_Class.fromJson((e as Map<String, dynamic>)))
          .toList(),
      group: l$group == null
          ? null
          : Fragment_Group.fromJson((l$group as Map<String, dynamic>)),
      groupAllowEdit: (l$groupAllowEdit as bool?),
      groupAdminOnUsers: (l$groupAdminOnUsers as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue permissionId;

  final Fragment_Area? area;

  final bool? areaAllowEdit;

  final bool? areaAdminOnUsers;

  final Fragment_Service? service;

  final Fragment_UserDetails_adminOn_serviceStudyYearData? serviceStudyYearData;

  final bool? serviceGender;

  final bool? serviceAllowEdit;

  final bool? serviceAdminOnUsers;

  final List<Fragment_Class> classes;

  final Fragment_Group? group;

  final bool? groupAllowEdit;

  final bool? groupAdminOnUsers;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$permissionId = permissionId;
    _resultData['permissionId'] = uuidToString(l$permissionId);
    final l$area = area;
    _resultData['area'] = l$area?.toJson();
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
    final l$serviceAllowEdit = serviceAllowEdit;
    _resultData['serviceAllowEdit'] = l$serviceAllowEdit;
    final l$serviceAdminOnUsers = serviceAdminOnUsers;
    _resultData['serviceAdminOnUsers'] = l$serviceAdminOnUsers;
    final l$classes = classes;
    _resultData['classes'] = l$classes.map((e) => e.toJson()).toList();
    final l$group = group;
    _resultData['group'] = l$group?.toJson();
    final l$groupAllowEdit = groupAllowEdit;
    _resultData['groupAllowEdit'] = l$groupAllowEdit;
    final l$groupAdminOnUsers = groupAdminOnUsers;
    _resultData['groupAdminOnUsers'] = l$groupAdminOnUsers;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$permissionId = permissionId;
    final l$area = area;
    final l$areaAllowEdit = areaAllowEdit;
    final l$areaAdminOnUsers = areaAdminOnUsers;
    final l$service = service;
    final l$serviceStudyYearData = serviceStudyYearData;
    final l$serviceGender = serviceGender;
    final l$serviceAllowEdit = serviceAllowEdit;
    final l$serviceAdminOnUsers = serviceAdminOnUsers;
    final l$classes = classes;
    final l$group = group;
    final l$groupAllowEdit = groupAllowEdit;
    final l$groupAdminOnUsers = groupAdminOnUsers;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$permissionId,
      l$area,
      l$areaAllowEdit,
      l$areaAdminOnUsers,
      l$service,
      l$serviceStudyYearData,
      l$serviceGender,
      l$serviceAllowEdit,
      l$serviceAdminOnUsers,
      Object.hashAll(l$classes.map((v) => v)),
      l$group,
      l$groupAllowEdit,
      l$groupAdminOnUsers,
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
    final l$serviceAllowEdit = serviceAllowEdit;
    final lOther$serviceAllowEdit = other.serviceAllowEdit;
    if (l$serviceAllowEdit != lOther$serviceAllowEdit) {
      return false;
    }
    final l$serviceAdminOnUsers = serviceAdminOnUsers;
    final lOther$serviceAdminOnUsers = other.serviceAdminOnUsers;
    if (l$serviceAdminOnUsers != lOther$serviceAdminOnUsers) {
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
    final l$groupAllowEdit = groupAllowEdit;
    final lOther$groupAllowEdit = other.groupAllowEdit;
    if (l$groupAllowEdit != lOther$groupAllowEdit) {
      return false;
    }
    final l$groupAdminOnUsers = groupAdminOnUsers;
    final lOther$groupAdminOnUsers = other.groupAdminOnUsers;
    if (l$groupAdminOnUsers != lOther$groupAdminOnUsers) {
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
      get copyWith => CopyWith_Fragment_UserDetails_adminOn(
            this,
            (i) => i,
          );
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
    bool? areaAllowEdit,
    bool? areaAdminOnUsers,
    Fragment_Service? service,
    Fragment_UserDetails_adminOn_serviceStudyYearData? serviceStudyYearData,
    bool? serviceGender,
    bool? serviceAllowEdit,
    bool? serviceAdminOnUsers,
    List<Fragment_Class>? classes,
    Fragment_Group? group,
    bool? groupAllowEdit,
    bool? groupAdminOnUsers,
    String? $__typename,
  });
  CopyWith_Fragment_Area<TRes> get area;
  CopyWith_Fragment_Service<TRes> get service;
  CopyWith_Fragment_UserDetails_adminOn_serviceStudyYearData<TRes>
      get serviceStudyYearData;
  TRes classes(
      Iterable<Fragment_Class> Function(
              Iterable<CopyWith_Fragment_Class<Fragment_Class>>)
          _fn);
  CopyWith_Fragment_Group<TRes> get group;
}

class _CopyWithImpl_Fragment_UserDetails_adminOn<TRes>
    implements CopyWith_Fragment_UserDetails_adminOn<TRes> {
  _CopyWithImpl_Fragment_UserDetails_adminOn(
    this._instance,
    this._then,
  );

  final Fragment_UserDetails_adminOn _instance;

  final TRes Function(Fragment_UserDetails_adminOn) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? permissionId = _undefined,
    Object? area = _undefined,
    Object? areaAllowEdit = _undefined,
    Object? areaAdminOnUsers = _undefined,
    Object? service = _undefined,
    Object? serviceStudyYearData = _undefined,
    Object? serviceGender = _undefined,
    Object? serviceAllowEdit = _undefined,
    Object? serviceAdminOnUsers = _undefined,
    Object? classes = _undefined,
    Object? group = _undefined,
    Object? groupAllowEdit = _undefined,
    Object? groupAdminOnUsers = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_UserDetails_adminOn(
        permissionId: permissionId == _undefined || permissionId == null
            ? _instance.permissionId
            : (permissionId as UuidValue),
        area: area == _undefined ? _instance.area : (area as Fragment_Area?),
        areaAllowEdit: areaAllowEdit == _undefined
            ? _instance.areaAllowEdit
            : (areaAllowEdit as bool?),
        areaAdminOnUsers: areaAdminOnUsers == _undefined
            ? _instance.areaAdminOnUsers
            : (areaAdminOnUsers as bool?),
        service: service == _undefined
            ? _instance.service
            : (service as Fragment_Service?),
        serviceStudyYearData: serviceStudyYearData == _undefined
            ? _instance.serviceStudyYearData
            : (serviceStudyYearData
                as Fragment_UserDetails_adminOn_serviceStudyYearData?),
        serviceGender: serviceGender == _undefined
            ? _instance.serviceGender
            : (serviceGender as bool?),
        serviceAllowEdit: serviceAllowEdit == _undefined
            ? _instance.serviceAllowEdit
            : (serviceAllowEdit as bool?),
        serviceAdminOnUsers: serviceAdminOnUsers == _undefined
            ? _instance.serviceAdminOnUsers
            : (serviceAdminOnUsers as bool?),
        classes: classes == _undefined || classes == null
            ? _instance.classes
            : (classes as List<Fragment_Class>),
        group:
            group == _undefined ? _instance.group : (group as Fragment_Group?),
        groupAllowEdit: groupAllowEdit == _undefined
            ? _instance.groupAllowEdit
            : (groupAllowEdit as bool?),
        groupAdminOnUsers: groupAdminOnUsers == _undefined
            ? _instance.groupAdminOnUsers
            : (groupAdminOnUsers as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

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

  CopyWith_Fragment_UserDetails_adminOn_serviceStudyYearData<TRes>
      get serviceStudyYearData {
    final local$serviceStudyYearData = _instance.serviceStudyYearData;
    return local$serviceStudyYearData == null
        ? CopyWith_Fragment_UserDetails_adminOn_serviceStudyYearData.stub(
            _then(_instance))
        : CopyWith_Fragment_UserDetails_adminOn_serviceStudyYearData(
            local$serviceStudyYearData, (e) => call(serviceStudyYearData: e));
  }

  TRes classes(
          Iterable<Fragment_Class> Function(
                  Iterable<CopyWith_Fragment_Class<Fragment_Class>>)
              _fn) =>
      call(
          classes: _fn(_instance.classes.map((e) => CopyWith_Fragment_Class(
                e,
                (i) => i,
              ))).toList());

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
    bool? areaAllowEdit,
    bool? areaAdminOnUsers,
    Fragment_Service? service,
    Fragment_UserDetails_adminOn_serviceStudyYearData? serviceStudyYearData,
    bool? serviceGender,
    bool? serviceAllowEdit,
    bool? serviceAdminOnUsers,
    List<Fragment_Class>? classes,
    Fragment_Group? group,
    bool? groupAllowEdit,
    bool? groupAdminOnUsers,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_Area<TRes> get area => CopyWith_Fragment_Area.stub(_res);

  CopyWith_Fragment_Service<TRes> get service =>
      CopyWith_Fragment_Service.stub(_res);

  CopyWith_Fragment_UserDetails_adminOn_serviceStudyYearData<TRes>
      get serviceStudyYearData =>
          CopyWith_Fragment_UserDetails_adminOn_serviceStudyYearData.stub(_res);

  classes(_fn) => _res;

  CopyWith_Fragment_Group<TRes> get group => CopyWith_Fragment_Group.stub(_res);
}

class Fragment_UserDetails_adminOn_serviceStudyYearData
    implements Fragment_UserAdminOn_adminOn_serviceStudyYearData {
  Fragment_UserDetails_adminOn_serviceStudyYearData({
    required this.name,
    required this.order,
    this.$__typename = 'StudyYears',
  });

  factory Fragment_UserDetails_adminOn_serviceStudyYearData.fromJson(
      Map<String, dynamic> json) {
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
    return Object.hashAll([
      l$name,
      l$order,
      l$$__typename,
    ]);
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
          Fragment_UserDetails_adminOn_serviceStudyYearData>
      get copyWith =>
          CopyWith_Fragment_UserDetails_adminOn_serviceStudyYearData(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_UserDetails_adminOn_serviceStudyYearData<
    TRes> {
  factory CopyWith_Fragment_UserDetails_adminOn_serviceStudyYearData(
    Fragment_UserDetails_adminOn_serviceStudyYearData instance,
    TRes Function(Fragment_UserDetails_adminOn_serviceStudyYearData) then,
  ) = _CopyWithImpl_Fragment_UserDetails_adminOn_serviceStudyYearData;

  factory CopyWith_Fragment_UserDetails_adminOn_serviceStudyYearData.stub(
          TRes res) =
      _CopyWithStubImpl_Fragment_UserDetails_adminOn_serviceStudyYearData;

  TRes call({
    String? name,
    int? order,
    String? $__typename,
  });
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
  }) =>
      _then(Fragment_UserDetails_adminOn_serviceStudyYearData(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        order: order == _undefined || order == null
            ? _instance.order
            : (order as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Fragment_UserDetails_adminOn_serviceStudyYearData<TRes>
    implements
        CopyWith_Fragment_UserDetails_adminOn_serviceStudyYearData<TRes> {
  _CopyWithStubImpl_Fragment_UserDetails_adminOn_serviceStudyYearData(
      this._res);

  TRes _res;

  call({
    String? name,
    int? order,
    String? $__typename,
  }) =>
      _res;
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
          .map((e) => Fragment_UserPermissions_permissions.fromJson(
              (e as Map<String, dynamic>)))
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
      CopyWith_Fragment_UserPermissions(
        this,
        (i) => i,
      );
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
                      Fragment_UserPermissions_permissions>>)
          _fn);
}

class _CopyWithImpl_Fragment_UserPermissions<TRes>
    implements CopyWith_Fragment_UserPermissions<TRes> {
  _CopyWithImpl_Fragment_UserPermissions(
    this._instance,
    this._then,
  );

  final Fragment_UserPermissions _instance;

  final TRes Function(Fragment_UserPermissions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? permissions = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_UserPermissions(
        permissions: permissions == _undefined || permissions == null
            ? _instance.permissions
            : (permissions as List<Fragment_UserPermissions_permissions>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes permissions(
          Iterable<Fragment_UserPermissions_permissions> Function(
                  Iterable<
                      CopyWith_Fragment_UserPermissions_permissions<
                          Fragment_UserPermissions_permissions>>)
              _fn) =>
      call(
          permissions: _fn(_instance.permissions
              .map((e) => CopyWith_Fragment_UserPermissions_permissions(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl_Fragment_UserPermissions<TRes>
    implements CopyWith_Fragment_UserPermissions<TRes> {
  _CopyWithStubImpl_Fragment_UserPermissions(this._res);

  TRes _res;

  call({
    List<Fragment_UserPermissions_permissions>? permissions,
    String? $__typename,
  }) =>
      _res;

  permissions(_fn) => _res;
}

const fragmentDefinitionUserPermissions = FragmentDefinitionNode(
  name: NameNode(value: 'UserPermissions'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'AuthUsersData'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'permissions'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
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
      ]),
    ),
    FieldNode(
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentUserPermissions = DocumentNode(definitions: [
  fragmentDefinitionUserPermissions,
]);

class Fragment_UserPermissions_permissions {
  Fragment_UserPermissions_permissions({
    required this.permission,
    this.$__typename = 'AuthUsersPermissions',
  });

  factory Fragment_UserPermissions_permissions.fromJson(
      Map<String, dynamic> json) {
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
    return Object.hashAll([
      l$permission,
      l$$__typename,
    ]);
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
          Fragment_UserPermissions_permissions>
      get copyWith => CopyWith_Fragment_UserPermissions_permissions(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_UserPermissions_permissions<TRes> {
  factory CopyWith_Fragment_UserPermissions_permissions(
    Fragment_UserPermissions_permissions instance,
    TRes Function(Fragment_UserPermissions_permissions) then,
  ) = _CopyWithImpl_Fragment_UserPermissions_permissions;

  factory CopyWith_Fragment_UserPermissions_permissions.stub(TRes res) =
      _CopyWithStubImpl_Fragment_UserPermissions_permissions;

  TRes call({
    String? permission,
    String? $__typename,
  });
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
  }) =>
      _then(Fragment_UserPermissions_permissions(
        permission: permission == _undefined || permission == null
            ? _instance.permission
            : (permission as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Fragment_UserPermissions_permissions<TRes>
    implements CopyWith_Fragment_UserPermissions_permissions<TRes> {
  _CopyWithStubImpl_Fragment_UserPermissions_permissions(this._res);

  TRes _res;

  call({
    String? permission,
    String? $__typename,
  }) =>
      _res;
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
          .map((e) => Fragment_UserAdminOn_adminOn.fromJson(
              (e as Map<String, dynamic>)))
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
      CopyWith_Fragment_UserAdminOn(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Fragment_UserAdminOn<TRes> {
  factory CopyWith_Fragment_UserAdminOn(
    Fragment_UserAdminOn instance,
    TRes Function(Fragment_UserAdminOn) then,
  ) = _CopyWithImpl_Fragment_UserAdminOn;

  factory CopyWith_Fragment_UserAdminOn.stub(TRes res) =
      _CopyWithStubImpl_Fragment_UserAdminOn;

  TRes call({
    List<Fragment_UserAdminOn_adminOn>? adminOn,
    String? $__typename,
  });
  TRes adminOn(
      Iterable<Fragment_UserAdminOn_adminOn> Function(
              Iterable<
                  CopyWith_Fragment_UserAdminOn_adminOn<
                      Fragment_UserAdminOn_adminOn>>)
          _fn);
}

class _CopyWithImpl_Fragment_UserAdminOn<TRes>
    implements CopyWith_Fragment_UserAdminOn<TRes> {
  _CopyWithImpl_Fragment_UserAdminOn(
    this._instance,
    this._then,
  );

  final Fragment_UserAdminOn _instance;

  final TRes Function(Fragment_UserAdminOn) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? adminOn = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_UserAdminOn(
        adminOn: adminOn == _undefined || adminOn == null
            ? _instance.adminOn
            : (adminOn as List<Fragment_UserAdminOn_adminOn>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes adminOn(
          Iterable<Fragment_UserAdminOn_adminOn> Function(
                  Iterable<
                      CopyWith_Fragment_UserAdminOn_adminOn<
                          Fragment_UserAdminOn_adminOn>>)
              _fn) =>
      call(
          adminOn: _fn(_instance.adminOn
              .map((e) => CopyWith_Fragment_UserAdminOn_adminOn(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl_Fragment_UserAdminOn<TRes>
    implements CopyWith_Fragment_UserAdminOn<TRes> {
  _CopyWithStubImpl_Fragment_UserAdminOn(this._res);

  TRes _res;

  call({
    List<Fragment_UserAdminOn_adminOn>? adminOn,
    String? $__typename,
  }) =>
      _res;

  adminOn(_fn) => _res;
}

const fragmentDefinitionUserAdminOn = FragmentDefinitionNode(
  name: NameNode(value: 'UserAdminOn'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'AuthUsersData'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'adminOn'),
      alias: null,
      arguments: [
        ArgumentNode(
          name: NameNode(value: 'orderBy'),
          value: ListValueNode(values: [
            ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'area'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'name'),
                    value:
                        EnumValueNode(name: NameNode(value: 'ASC_NULLS_LAST')),
                  )
                ]),
              )
            ]),
            ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'service'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'studyYearFromId'),
                    value: EnumValueNode(name: NameNode(value: 'ASC')),
                  ),
                  ObjectFieldNode(
                    name: NameNode(value: 'studyYearToId'),
                    value: EnumValueNode(name: NameNode(value: 'ASC')),
                  ),
                ]),
              )
            ]),
            ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'serviceStudyYear'),
                value: EnumValueNode(name: NameNode(value: 'ASC')),
              )
            ]),
            ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'serviceGender'),
                value: EnumValueNode(name: NameNode(value: 'DESC_NULLS_FIRST')),
              )
            ]),
            ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'service'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'name'),
                    value:
                        EnumValueNode(name: NameNode(value: 'ASC_NULLS_LAST')),
                  )
                ]),
              )
            ]),
            ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'group'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'name'),
                    value:
                        EnumValueNode(name: NameNode(value: 'ASC_NULLS_LAST')),
                  )
                ]),
              )
            ]),
          ]),
        )
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
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
          selectionSet: SelectionSetNode(selections: [
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
          ]),
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
          selectionSet: SelectionSetNode(selections: [
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
          ]),
        ),
        FieldNode(
          name: NameNode(value: 'serviceStudyYearData'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
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
          ]),
        ),
        FieldNode(
          name: NameNode(value: 'serviceGender'),
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
          name: NameNode(value: 'serviceAdminOnUsers'),
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
              value: ObjectValueNode(fields: [
                ObjectFieldNode(
                  name: NameNode(value: 'name'),
                  value: EnumValueNode(name: NameNode(value: 'ASC')),
                )
              ]),
            )
          ],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
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
          ]),
        ),
        FieldNode(
          name: NameNode(value: 'group'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
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
          ]),
        ),
        FieldNode(
          name: NameNode(value: 'groupAllowEdit'),
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
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentUserAdminOn = DocumentNode(definitions: [
  fragmentDefinitionUserAdminOn,
  fragmentDefinitionArea,
  fragmentDefinitionAreaNoPhoto,
  fragmentDefinitionService,
  fragmentDefinitionServiceNoPhoto,
  fragmentDefinitionClass,
  fragmentDefinitionClassNoPhoto,
  fragmentDefinitionGroup,
  fragmentDefinitionGroupNoPhoto,
]);

class Fragment_UserAdminOn_adminOn {
  Fragment_UserAdminOn_adminOn({
    required this.permissionId,
    this.area,
    this.areaAllowEdit,
    this.areaAdminOnUsers,
    this.service,
    this.serviceStudyYearData,
    this.serviceGender,
    this.serviceAllowEdit,
    this.serviceAdminOnUsers,
    required this.classes,
    this.group,
    this.groupAllowEdit,
    this.groupAdminOnUsers,
    this.$__typename = 'AuthUsersAdminOn',
  });

  factory Fragment_UserAdminOn_adminOn.fromJson(Map<String, dynamic> json) {
    final l$permissionId = json['permissionId'];
    final l$area = json['area'];
    final l$areaAllowEdit = json['areaAllowEdit'];
    final l$areaAdminOnUsers = json['areaAdminOnUsers'];
    final l$service = json['service'];
    final l$serviceStudyYearData = json['serviceStudyYearData'];
    final l$serviceGender = json['serviceGender'];
    final l$serviceAllowEdit = json['serviceAllowEdit'];
    final l$serviceAdminOnUsers = json['serviceAdminOnUsers'];
    final l$classes = json['classes'];
    final l$group = json['group'];
    final l$groupAllowEdit = json['groupAllowEdit'];
    final l$groupAdminOnUsers = json['groupAdminOnUsers'];
    final l$$__typename = json['__typename'];
    return Fragment_UserAdminOn_adminOn(
      permissionId: stringToUuid(l$permissionId),
      area: l$area == null
          ? null
          : Fragment_Area.fromJson((l$area as Map<String, dynamic>)),
      areaAllowEdit: (l$areaAllowEdit as bool?),
      areaAdminOnUsers: (l$areaAdminOnUsers as bool?),
      service: l$service == null
          ? null
          : Fragment_Service.fromJson((l$service as Map<String, dynamic>)),
      serviceStudyYearData: l$serviceStudyYearData == null
          ? null
          : Fragment_UserAdminOn_adminOn_serviceStudyYearData.fromJson(
              (l$serviceStudyYearData as Map<String, dynamic>)),
      serviceGender: (l$serviceGender as bool?),
      serviceAllowEdit: (l$serviceAllowEdit as bool?),
      serviceAdminOnUsers: (l$serviceAdminOnUsers as bool?),
      classes: (l$classes as List<dynamic>)
          .map((e) => Fragment_Class.fromJson((e as Map<String, dynamic>)))
          .toList(),
      group: l$group == null
          ? null
          : Fragment_Group.fromJson((l$group as Map<String, dynamic>)),
      groupAllowEdit: (l$groupAllowEdit as bool?),
      groupAdminOnUsers: (l$groupAdminOnUsers as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue permissionId;

  final Fragment_Area? area;

  final bool? areaAllowEdit;

  final bool? areaAdminOnUsers;

  final Fragment_Service? service;

  final Fragment_UserAdminOn_adminOn_serviceStudyYearData? serviceStudyYearData;

  final bool? serviceGender;

  final bool? serviceAllowEdit;

  final bool? serviceAdminOnUsers;

  final List<Fragment_Class> classes;

  final Fragment_Group? group;

  final bool? groupAllowEdit;

  final bool? groupAdminOnUsers;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$permissionId = permissionId;
    _resultData['permissionId'] = uuidToString(l$permissionId);
    final l$area = area;
    _resultData['area'] = l$area?.toJson();
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
    final l$serviceAllowEdit = serviceAllowEdit;
    _resultData['serviceAllowEdit'] = l$serviceAllowEdit;
    final l$serviceAdminOnUsers = serviceAdminOnUsers;
    _resultData['serviceAdminOnUsers'] = l$serviceAdminOnUsers;
    final l$classes = classes;
    _resultData['classes'] = l$classes.map((e) => e.toJson()).toList();
    final l$group = group;
    _resultData['group'] = l$group?.toJson();
    final l$groupAllowEdit = groupAllowEdit;
    _resultData['groupAllowEdit'] = l$groupAllowEdit;
    final l$groupAdminOnUsers = groupAdminOnUsers;
    _resultData['groupAdminOnUsers'] = l$groupAdminOnUsers;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$permissionId = permissionId;
    final l$area = area;
    final l$areaAllowEdit = areaAllowEdit;
    final l$areaAdminOnUsers = areaAdminOnUsers;
    final l$service = service;
    final l$serviceStudyYearData = serviceStudyYearData;
    final l$serviceGender = serviceGender;
    final l$serviceAllowEdit = serviceAllowEdit;
    final l$serviceAdminOnUsers = serviceAdminOnUsers;
    final l$classes = classes;
    final l$group = group;
    final l$groupAllowEdit = groupAllowEdit;
    final l$groupAdminOnUsers = groupAdminOnUsers;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$permissionId,
      l$area,
      l$areaAllowEdit,
      l$areaAdminOnUsers,
      l$service,
      l$serviceStudyYearData,
      l$serviceGender,
      l$serviceAllowEdit,
      l$serviceAdminOnUsers,
      Object.hashAll(l$classes.map((v) => v)),
      l$group,
      l$groupAllowEdit,
      l$groupAdminOnUsers,
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
    final l$serviceAllowEdit = serviceAllowEdit;
    final lOther$serviceAllowEdit = other.serviceAllowEdit;
    if (l$serviceAllowEdit != lOther$serviceAllowEdit) {
      return false;
    }
    final l$serviceAdminOnUsers = serviceAdminOnUsers;
    final lOther$serviceAdminOnUsers = other.serviceAdminOnUsers;
    if (l$serviceAdminOnUsers != lOther$serviceAdminOnUsers) {
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
    final l$groupAllowEdit = groupAllowEdit;
    final lOther$groupAllowEdit = other.groupAllowEdit;
    if (l$groupAllowEdit != lOther$groupAllowEdit) {
      return false;
    }
    final l$groupAdminOnUsers = groupAdminOnUsers;
    final lOther$groupAdminOnUsers = other.groupAdminOnUsers;
    if (l$groupAdminOnUsers != lOther$groupAdminOnUsers) {
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
      get copyWith => CopyWith_Fragment_UserAdminOn_adminOn(
            this,
            (i) => i,
          );
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
    bool? areaAllowEdit,
    bool? areaAdminOnUsers,
    Fragment_Service? service,
    Fragment_UserAdminOn_adminOn_serviceStudyYearData? serviceStudyYearData,
    bool? serviceGender,
    bool? serviceAllowEdit,
    bool? serviceAdminOnUsers,
    List<Fragment_Class>? classes,
    Fragment_Group? group,
    bool? groupAllowEdit,
    bool? groupAdminOnUsers,
    String? $__typename,
  });
  CopyWith_Fragment_Area<TRes> get area;
  CopyWith_Fragment_Service<TRes> get service;
  CopyWith_Fragment_UserAdminOn_adminOn_serviceStudyYearData<TRes>
      get serviceStudyYearData;
  TRes classes(
      Iterable<Fragment_Class> Function(
              Iterable<CopyWith_Fragment_Class<Fragment_Class>>)
          _fn);
  CopyWith_Fragment_Group<TRes> get group;
}

class _CopyWithImpl_Fragment_UserAdminOn_adminOn<TRes>
    implements CopyWith_Fragment_UserAdminOn_adminOn<TRes> {
  _CopyWithImpl_Fragment_UserAdminOn_adminOn(
    this._instance,
    this._then,
  );

  final Fragment_UserAdminOn_adminOn _instance;

  final TRes Function(Fragment_UserAdminOn_adminOn) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? permissionId = _undefined,
    Object? area = _undefined,
    Object? areaAllowEdit = _undefined,
    Object? areaAdminOnUsers = _undefined,
    Object? service = _undefined,
    Object? serviceStudyYearData = _undefined,
    Object? serviceGender = _undefined,
    Object? serviceAllowEdit = _undefined,
    Object? serviceAdminOnUsers = _undefined,
    Object? classes = _undefined,
    Object? group = _undefined,
    Object? groupAllowEdit = _undefined,
    Object? groupAdminOnUsers = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_UserAdminOn_adminOn(
        permissionId: permissionId == _undefined || permissionId == null
            ? _instance.permissionId
            : (permissionId as UuidValue),
        area: area == _undefined ? _instance.area : (area as Fragment_Area?),
        areaAllowEdit: areaAllowEdit == _undefined
            ? _instance.areaAllowEdit
            : (areaAllowEdit as bool?),
        areaAdminOnUsers: areaAdminOnUsers == _undefined
            ? _instance.areaAdminOnUsers
            : (areaAdminOnUsers as bool?),
        service: service == _undefined
            ? _instance.service
            : (service as Fragment_Service?),
        serviceStudyYearData: serviceStudyYearData == _undefined
            ? _instance.serviceStudyYearData
            : (serviceStudyYearData
                as Fragment_UserAdminOn_adminOn_serviceStudyYearData?),
        serviceGender: serviceGender == _undefined
            ? _instance.serviceGender
            : (serviceGender as bool?),
        serviceAllowEdit: serviceAllowEdit == _undefined
            ? _instance.serviceAllowEdit
            : (serviceAllowEdit as bool?),
        serviceAdminOnUsers: serviceAdminOnUsers == _undefined
            ? _instance.serviceAdminOnUsers
            : (serviceAdminOnUsers as bool?),
        classes: classes == _undefined || classes == null
            ? _instance.classes
            : (classes as List<Fragment_Class>),
        group:
            group == _undefined ? _instance.group : (group as Fragment_Group?),
        groupAllowEdit: groupAllowEdit == _undefined
            ? _instance.groupAllowEdit
            : (groupAllowEdit as bool?),
        groupAdminOnUsers: groupAdminOnUsers == _undefined
            ? _instance.groupAdminOnUsers
            : (groupAdminOnUsers as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

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

  CopyWith_Fragment_UserAdminOn_adminOn_serviceStudyYearData<TRes>
      get serviceStudyYearData {
    final local$serviceStudyYearData = _instance.serviceStudyYearData;
    return local$serviceStudyYearData == null
        ? CopyWith_Fragment_UserAdminOn_adminOn_serviceStudyYearData.stub(
            _then(_instance))
        : CopyWith_Fragment_UserAdminOn_adminOn_serviceStudyYearData(
            local$serviceStudyYearData, (e) => call(serviceStudyYearData: e));
  }

  TRes classes(
          Iterable<Fragment_Class> Function(
                  Iterable<CopyWith_Fragment_Class<Fragment_Class>>)
              _fn) =>
      call(
          classes: _fn(_instance.classes.map((e) => CopyWith_Fragment_Class(
                e,
                (i) => i,
              ))).toList());

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
    bool? areaAllowEdit,
    bool? areaAdminOnUsers,
    Fragment_Service? service,
    Fragment_UserAdminOn_adminOn_serviceStudyYearData? serviceStudyYearData,
    bool? serviceGender,
    bool? serviceAllowEdit,
    bool? serviceAdminOnUsers,
    List<Fragment_Class>? classes,
    Fragment_Group? group,
    bool? groupAllowEdit,
    bool? groupAdminOnUsers,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_Area<TRes> get area => CopyWith_Fragment_Area.stub(_res);

  CopyWith_Fragment_Service<TRes> get service =>
      CopyWith_Fragment_Service.stub(_res);

  CopyWith_Fragment_UserAdminOn_adminOn_serviceStudyYearData<TRes>
      get serviceStudyYearData =>
          CopyWith_Fragment_UserAdminOn_adminOn_serviceStudyYearData.stub(_res);

  classes(_fn) => _res;

  CopyWith_Fragment_Group<TRes> get group => CopyWith_Fragment_Group.stub(_res);
}

class Fragment_UserAdminOn_adminOn_serviceStudyYearData {
  Fragment_UserAdminOn_adminOn_serviceStudyYearData({
    required this.name,
    required this.order,
    this.$__typename = 'StudyYears',
  });

  factory Fragment_UserAdminOn_adminOn_serviceStudyYearData.fromJson(
      Map<String, dynamic> json) {
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
    return Object.hashAll([
      l$name,
      l$order,
      l$$__typename,
    ]);
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
          Fragment_UserAdminOn_adminOn_serviceStudyYearData>
      get copyWith =>
          CopyWith_Fragment_UserAdminOn_adminOn_serviceStudyYearData(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_UserAdminOn_adminOn_serviceStudyYearData<
    TRes> {
  factory CopyWith_Fragment_UserAdminOn_adminOn_serviceStudyYearData(
    Fragment_UserAdminOn_adminOn_serviceStudyYearData instance,
    TRes Function(Fragment_UserAdminOn_adminOn_serviceStudyYearData) then,
  ) = _CopyWithImpl_Fragment_UserAdminOn_adminOn_serviceStudyYearData;

  factory CopyWith_Fragment_UserAdminOn_adminOn_serviceStudyYearData.stub(
          TRes res) =
      _CopyWithStubImpl_Fragment_UserAdminOn_adminOn_serviceStudyYearData;

  TRes call({
    String? name,
    int? order,
    String? $__typename,
  });
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
  }) =>
      _then(Fragment_UserAdminOn_adminOn_serviceStudyYearData(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        order: order == _undefined || order == null
            ? _instance.order
            : (order as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Fragment_UserAdminOn_adminOn_serviceStudyYearData<TRes>
    implements
        CopyWith_Fragment_UserAdminOn_adminOn_serviceStudyYearData<TRes> {
  _CopyWithStubImpl_Fragment_UserAdminOn_adminOn_serviceStudyYearData(
      this._res);

  TRes _res;

  call({
    String? name,
    int? order,
    String? $__typename,
  }) =>
      _res;
}

class Variables_Fragment_AttendanceFields {
  factory Variables_Fragment_AttendanceFields({
    DateTime? dateFrom,
    DateTime? dateTo,
    UuidValue? personId,
    List<UuidValue>? servicesIds,
    List<UuidValue>? classesIds,
    List<UuidValue>? groupsIds,
  }) =>
      Variables_Fragment_AttendanceFields._({
        if (dateFrom != null) r'dateFrom': dateFrom,
        if (dateTo != null) r'dateTo': dateTo,
        if (personId != null) r'personId': personId,
        if (servicesIds != null) r'servicesIds': servicesIds,
        if (classesIds != null) r'classesIds': classesIds,
        if (groupsIds != null) r'groupsIds': groupsIds,
      });

  Variables_Fragment_AttendanceFields._(this._$data);

  factory Variables_Fragment_AttendanceFields.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('dateFrom')) {
      final l$dateFrom = data['dateFrom'];
      result$data['dateFrom'] =
          l$dateFrom == null ? null : dateFromString(l$dateFrom);
    }
    if (data.containsKey('dateTo')) {
      final l$dateTo = data['dateTo'];
      result$data['dateTo'] =
          l$dateTo == null ? null : dateFromString(l$dateTo);
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] =
          l$personId == null ? null : stringToUuid(l$personId);
    }
    if (data.containsKey('servicesIds')) {
      final l$servicesIds = data['servicesIds'];
      result$data['servicesIds'] = (l$servicesIds as List<dynamic>?)
          ?.map((e) => stringToUuid(e))
          .toList();
    }
    if (data.containsKey('classesIds')) {
      final l$classesIds = data['classesIds'];
      result$data['classesIds'] = (l$classesIds as List<dynamic>?)
          ?.map((e) => stringToUuid(e))
          .toList();
    }
    if (data.containsKey('groupsIds')) {
      final l$groupsIds = data['groupsIds'];
      result$data['groupsIds'] =
          (l$groupsIds as List<dynamic>?)?.map((e) => stringToUuid(e)).toList();
    }
    return Variables_Fragment_AttendanceFields._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTime? get dateFrom => (_$data['dateFrom'] as DateTime?);

  DateTime? get dateTo => (_$data['dateTo'] as DateTime?);

  UuidValue? get personId => (_$data['personId'] as UuidValue?);

  List<UuidValue>? get servicesIds =>
      (_$data['servicesIds'] as List<UuidValue>?);

  List<UuidValue>? get classesIds => (_$data['classesIds'] as List<UuidValue>?);

  List<UuidValue>? get groupsIds => (_$data['groupsIds'] as List<UuidValue>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('dateFrom')) {
      final l$dateFrom = dateFrom;
      result$data['dateFrom'] =
          l$dateFrom == null ? null : dateToString(l$dateFrom);
    }
    if (_$data.containsKey('dateTo')) {
      final l$dateTo = dateTo;
      result$data['dateTo'] = l$dateTo == null ? null : dateToString(l$dateTo);
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] =
          l$personId == null ? null : uuidToString(l$personId);
    }
    if (_$data.containsKey('servicesIds')) {
      final l$servicesIds = servicesIds;
      result$data['servicesIds'] =
          l$servicesIds?.map((e) => uuidToString(e)).toList();
    }
    if (_$data.containsKey('classesIds')) {
      final l$classesIds = classesIds;
      result$data['classesIds'] =
          l$classesIds?.map((e) => uuidToString(e)).toList();
    }
    if (_$data.containsKey('groupsIds')) {
      final l$groupsIds = groupsIds;
      result$data['groupsIds'] =
          l$groupsIds?.map((e) => uuidToString(e)).toList();
    }
    return result$data;
  }

  CopyWith_Variables_Fragment_AttendanceFields<
          Variables_Fragment_AttendanceFields>
      get copyWith => CopyWith_Variables_Fragment_AttendanceFields(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Fragment_AttendanceFields ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dateFrom = dateFrom;
    final lOther$dateFrom = other.dateFrom;
    if (_$data.containsKey('dateFrom') !=
        other._$data.containsKey('dateFrom')) {
      return false;
    }
    if (l$dateFrom != lOther$dateFrom) {
      return false;
    }
    final l$dateTo = dateTo;
    final lOther$dateTo = other.dateTo;
    if (_$data.containsKey('dateTo') != other._$data.containsKey('dateTo')) {
      return false;
    }
    if (l$dateTo != lOther$dateTo) {
      return false;
    }
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (_$data.containsKey('personId') !=
        other._$data.containsKey('personId')) {
      return false;
    }
    if (l$personId != lOther$personId) {
      return false;
    }
    final l$servicesIds = servicesIds;
    final lOther$servicesIds = other.servicesIds;
    if (_$data.containsKey('servicesIds') !=
        other._$data.containsKey('servicesIds')) {
      return false;
    }
    if (l$servicesIds != null && lOther$servicesIds != null) {
      if (l$servicesIds.length != lOther$servicesIds.length) {
        return false;
      }
      for (int i = 0; i < l$servicesIds.length; i++) {
        final l$servicesIds$entry = l$servicesIds[i];
        final lOther$servicesIds$entry = lOther$servicesIds[i];
        if (l$servicesIds$entry != lOther$servicesIds$entry) {
          return false;
        }
      }
    } else if (l$servicesIds != lOther$servicesIds) {
      return false;
    }
    final l$classesIds = classesIds;
    final lOther$classesIds = other.classesIds;
    if (_$data.containsKey('classesIds') !=
        other._$data.containsKey('classesIds')) {
      return false;
    }
    if (l$classesIds != null && lOther$classesIds != null) {
      if (l$classesIds.length != lOther$classesIds.length) {
        return false;
      }
      for (int i = 0; i < l$classesIds.length; i++) {
        final l$classesIds$entry = l$classesIds[i];
        final lOther$classesIds$entry = lOther$classesIds[i];
        if (l$classesIds$entry != lOther$classesIds$entry) {
          return false;
        }
      }
    } else if (l$classesIds != lOther$classesIds) {
      return false;
    }
    final l$groupsIds = groupsIds;
    final lOther$groupsIds = other.groupsIds;
    if (_$data.containsKey('groupsIds') !=
        other._$data.containsKey('groupsIds')) {
      return false;
    }
    if (l$groupsIds != null && lOther$groupsIds != null) {
      if (l$groupsIds.length != lOther$groupsIds.length) {
        return false;
      }
      for (int i = 0; i < l$groupsIds.length; i++) {
        final l$groupsIds$entry = l$groupsIds[i];
        final lOther$groupsIds$entry = lOther$groupsIds[i];
        if (l$groupsIds$entry != lOther$groupsIds$entry) {
          return false;
        }
      }
    } else if (l$groupsIds != lOther$groupsIds) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$dateFrom = dateFrom;
    final l$dateTo = dateTo;
    final l$personId = personId;
    final l$servicesIds = servicesIds;
    final l$classesIds = classesIds;
    final l$groupsIds = groupsIds;
    return Object.hashAll([
      _$data.containsKey('dateFrom') ? l$dateFrom : const {},
      _$data.containsKey('dateTo') ? l$dateTo : const {},
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('servicesIds')
          ? l$servicesIds == null
              ? null
              : Object.hashAll(l$servicesIds.map((v) => v))
          : const {},
      _$data.containsKey('classesIds')
          ? l$classesIds == null
              ? null
              : Object.hashAll(l$classesIds.map((v) => v))
          : const {},
      _$data.containsKey('groupsIds')
          ? l$groupsIds == null
              ? null
              : Object.hashAll(l$groupsIds.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith_Variables_Fragment_AttendanceFields<TRes> {
  factory CopyWith_Variables_Fragment_AttendanceFields(
    Variables_Fragment_AttendanceFields instance,
    TRes Function(Variables_Fragment_AttendanceFields) then,
  ) = _CopyWithImpl_Variables_Fragment_AttendanceFields;

  factory CopyWith_Variables_Fragment_AttendanceFields.stub(TRes res) =
      _CopyWithStubImpl_Variables_Fragment_AttendanceFields;

  TRes call({
    DateTime? dateFrom,
    DateTime? dateTo,
    UuidValue? personId,
    List<UuidValue>? servicesIds,
    List<UuidValue>? classesIds,
    List<UuidValue>? groupsIds,
  });
}

class _CopyWithImpl_Variables_Fragment_AttendanceFields<TRes>
    implements CopyWith_Variables_Fragment_AttendanceFields<TRes> {
  _CopyWithImpl_Variables_Fragment_AttendanceFields(
    this._instance,
    this._then,
  );

  final Variables_Fragment_AttendanceFields _instance;

  final TRes Function(Variables_Fragment_AttendanceFields) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dateFrom = _undefined,
    Object? dateTo = _undefined,
    Object? personId = _undefined,
    Object? servicesIds = _undefined,
    Object? classesIds = _undefined,
    Object? groupsIds = _undefined,
  }) =>
      _then(Variables_Fragment_AttendanceFields._({
        ..._instance._$data,
        if (dateFrom != _undefined) 'dateFrom': (dateFrom as DateTime?),
        if (dateTo != _undefined) 'dateTo': (dateTo as DateTime?),
        if (personId != _undefined) 'personId': (personId as UuidValue?),
        if (servicesIds != _undefined)
          'servicesIds': (servicesIds as List<UuidValue>?),
        if (classesIds != _undefined)
          'classesIds': (classesIds as List<UuidValue>?),
        if (groupsIds != _undefined)
          'groupsIds': (groupsIds as List<UuidValue>?),
      }));
}

class _CopyWithStubImpl_Variables_Fragment_AttendanceFields<TRes>
    implements CopyWith_Variables_Fragment_AttendanceFields<TRes> {
  _CopyWithStubImpl_Variables_Fragment_AttendanceFields(this._res);

  TRes _res;

  call({
    DateTime? dateFrom,
    DateTime? dateTo,
    UuidValue? personId,
    List<UuidValue>? servicesIds,
    List<UuidValue>? classesIds,
    List<UuidValue>? groupsIds,
  }) =>
      _res;
}

class Fragment_AttendanceFields {
  Fragment_AttendanceFields({
    required this.servicesHistory,
    required this.classesHistory,
    required this.groupsHistory,
    this.$__typename = 'AuthUsersData',
  });

  factory Fragment_AttendanceFields.fromJson(Map<String, dynamic> json) {
    final l$servicesHistory = json['servicesHistory'];
    final l$classesHistory = json['classesHistory'];
    final l$groupsHistory = json['groupsHistory'];
    final l$$__typename = json['__typename'];
    return Fragment_AttendanceFields(
      servicesHistory: (l$servicesHistory as List<dynamic>)
          .map((e) => Fragment_AttendanceFields_servicesHistory.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      classesHistory: (l$classesHistory as List<dynamic>)
          .map((e) => Fragment_AttendanceFields_classesHistory.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      groupsHistory: (l$groupsHistory as List<dynamic>)
          .map((e) => Fragment_AttendanceFields_groupsHistory.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment_AttendanceFields_servicesHistory> servicesHistory;

  final List<Fragment_AttendanceFields_classesHistory> classesHistory;

  final List<Fragment_AttendanceFields_groupsHistory> groupsHistory;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$servicesHistory = servicesHistory;
    _resultData['servicesHistory'] =
        l$servicesHistory.map((e) => e.toJson()).toList();
    final l$classesHistory = classesHistory;
    _resultData['classesHistory'] =
        l$classesHistory.map((e) => e.toJson()).toList();
    final l$groupsHistory = groupsHistory;
    _resultData['groupsHistory'] =
        l$groupsHistory.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$servicesHistory = servicesHistory;
    final l$classesHistory = classesHistory;
    final l$groupsHistory = groupsHistory;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$servicesHistory.map((v) => v)),
      Object.hashAll(l$classesHistory.map((v) => v)),
      Object.hashAll(l$groupsHistory.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_AttendanceFields ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$servicesHistory = servicesHistory;
    final lOther$servicesHistory = other.servicesHistory;
    if (l$servicesHistory.length != lOther$servicesHistory.length) {
      return false;
    }
    for (int i = 0; i < l$servicesHistory.length; i++) {
      final l$servicesHistory$entry = l$servicesHistory[i];
      final lOther$servicesHistory$entry = lOther$servicesHistory[i];
      if (l$servicesHistory$entry != lOther$servicesHistory$entry) {
        return false;
      }
    }
    final l$classesHistory = classesHistory;
    final lOther$classesHistory = other.classesHistory;
    if (l$classesHistory.length != lOther$classesHistory.length) {
      return false;
    }
    for (int i = 0; i < l$classesHistory.length; i++) {
      final l$classesHistory$entry = l$classesHistory[i];
      final lOther$classesHistory$entry = lOther$classesHistory[i];
      if (l$classesHistory$entry != lOther$classesHistory$entry) {
        return false;
      }
    }
    final l$groupsHistory = groupsHistory;
    final lOther$groupsHistory = other.groupsHistory;
    if (l$groupsHistory.length != lOther$groupsHistory.length) {
      return false;
    }
    for (int i = 0; i < l$groupsHistory.length; i++) {
      final l$groupsHistory$entry = l$groupsHistory[i];
      final lOther$groupsHistory$entry = lOther$groupsHistory[i];
      if (l$groupsHistory$entry != lOther$groupsHistory$entry) {
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

extension UtilityExtension_Fragment_AttendanceFields
    on Fragment_AttendanceFields {
  CopyWith_Fragment_AttendanceFields<Fragment_AttendanceFields> get copyWith =>
      CopyWith_Fragment_AttendanceFields(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Fragment_AttendanceFields<TRes> {
  factory CopyWith_Fragment_AttendanceFields(
    Fragment_AttendanceFields instance,
    TRes Function(Fragment_AttendanceFields) then,
  ) = _CopyWithImpl_Fragment_AttendanceFields;

  factory CopyWith_Fragment_AttendanceFields.stub(TRes res) =
      _CopyWithStubImpl_Fragment_AttendanceFields;

  TRes call({
    List<Fragment_AttendanceFields_servicesHistory>? servicesHistory,
    List<Fragment_AttendanceFields_classesHistory>? classesHistory,
    List<Fragment_AttendanceFields_groupsHistory>? groupsHistory,
    String? $__typename,
  });
  TRes servicesHistory(
      Iterable<Fragment_AttendanceFields_servicesHistory> Function(
              Iterable<
                  CopyWith_Fragment_AttendanceFields_servicesHistory<
                      Fragment_AttendanceFields_servicesHistory>>)
          _fn);
  TRes classesHistory(
      Iterable<Fragment_AttendanceFields_classesHistory> Function(
              Iterable<
                  CopyWith_Fragment_AttendanceFields_classesHistory<
                      Fragment_AttendanceFields_classesHistory>>)
          _fn);
  TRes groupsHistory(
      Iterable<Fragment_AttendanceFields_groupsHistory> Function(
              Iterable<
                  CopyWith_Fragment_AttendanceFields_groupsHistory<
                      Fragment_AttendanceFields_groupsHistory>>)
          _fn);
}

class _CopyWithImpl_Fragment_AttendanceFields<TRes>
    implements CopyWith_Fragment_AttendanceFields<TRes> {
  _CopyWithImpl_Fragment_AttendanceFields(
    this._instance,
    this._then,
  );

  final Fragment_AttendanceFields _instance;

  final TRes Function(Fragment_AttendanceFields) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? servicesHistory = _undefined,
    Object? classesHistory = _undefined,
    Object? groupsHistory = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_AttendanceFields(
        servicesHistory:
            servicesHistory == _undefined || servicesHistory == null
                ? _instance.servicesHistory
                : (servicesHistory
                    as List<Fragment_AttendanceFields_servicesHistory>),
        classesHistory: classesHistory == _undefined || classesHistory == null
            ? _instance.classesHistory
            : (classesHistory
                as List<Fragment_AttendanceFields_classesHistory>),
        groupsHistory: groupsHistory == _undefined || groupsHistory == null
            ? _instance.groupsHistory
            : (groupsHistory as List<Fragment_AttendanceFields_groupsHistory>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes servicesHistory(
          Iterable<Fragment_AttendanceFields_servicesHistory> Function(
                  Iterable<
                      CopyWith_Fragment_AttendanceFields_servicesHistory<
                          Fragment_AttendanceFields_servicesHistory>>)
              _fn) =>
      call(
          servicesHistory: _fn(_instance.servicesHistory
              .map((e) => CopyWith_Fragment_AttendanceFields_servicesHistory(
                    e,
                    (i) => i,
                  ))).toList());

  TRes classesHistory(
          Iterable<Fragment_AttendanceFields_classesHistory> Function(
                  Iterable<
                      CopyWith_Fragment_AttendanceFields_classesHistory<
                          Fragment_AttendanceFields_classesHistory>>)
              _fn) =>
      call(
          classesHistory: _fn(_instance.classesHistory
              .map((e) => CopyWith_Fragment_AttendanceFields_classesHistory(
                    e,
                    (i) => i,
                  ))).toList());

  TRes groupsHistory(
          Iterable<Fragment_AttendanceFields_groupsHistory> Function(
                  Iterable<
                      CopyWith_Fragment_AttendanceFields_groupsHistory<
                          Fragment_AttendanceFields_groupsHistory>>)
              _fn) =>
      call(
          groupsHistory: _fn(_instance.groupsHistory
              .map((e) => CopyWith_Fragment_AttendanceFields_groupsHistory(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl_Fragment_AttendanceFields<TRes>
    implements CopyWith_Fragment_AttendanceFields<TRes> {
  _CopyWithStubImpl_Fragment_AttendanceFields(this._res);

  TRes _res;

  call({
    List<Fragment_AttendanceFields_servicesHistory>? servicesHistory,
    List<Fragment_AttendanceFields_classesHistory>? classesHistory,
    List<Fragment_AttendanceFields_groupsHistory>? groupsHistory,
    String? $__typename,
  }) =>
      _res;

  servicesHistory(_fn) => _res;

  classesHistory(_fn) => _res;

  groupsHistory(_fn) => _res;
}

const fragmentDefinitionAttendanceFields = FragmentDefinitionNode(
  name: NameNode(value: 'AttendanceFields'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'AuthUsersData'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'adminOn'),
      alias: NameNode(value: 'servicesHistory'),
      arguments: [
        ArgumentNode(
          name: NameNode(value: 'where'),
          value: ObjectValueNode(fields: [
            ObjectFieldNode(
              name: NameNode(value: 'service'),
              value: ObjectValueNode(fields: [
                ObjectFieldNode(
                  name: NameNode(value: 'id'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: '_in'),
                      value: VariableNode(name: NameNode(value: 'servicesIds')),
                    )
                  ]),
                )
              ]),
            )
          ]),
        ),
        ArgumentNode(
          name: NameNode(value: 'distinctOn'),
          value: EnumValueNode(name: NameNode(value: 'adminOnService')),
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'permissionId'),
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
          selectionSet: SelectionSetNode(selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'Service'),
              directives: [],
            ),
            FieldNode(
              name: NameNode(value: 'attendanceHistoryAggregate'),
              alias: null,
              arguments: [
                ArgumentNode(
                  name: NameNode(value: 'where'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'dayId'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: '_gte'),
                          value:
                              VariableNode(name: NameNode(value: 'dateFrom')),
                        ),
                        ObjectFieldNode(
                          name: NameNode(value: '_lte'),
                          value: VariableNode(name: NameNode(value: 'dateTo')),
                        ),
                      ]),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'personId'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: '_eq'),
                          value:
                              VariableNode(name: NameNode(value: 'personId')),
                        )
                      ]),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'asAdmin'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: '_eq'),
                          value: BooleanValueNode(value: true),
                        )
                      ]),
                    ),
                  ]),
                )
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                  name: NameNode(value: 'aggregate'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                      name: NameNode(value: 'count'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: null,
                    ),
                    FieldNode(
                      name: NameNode(value: 'max'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: SelectionSetNode(selections: [
                        FieldNode(
                          name: NameNode(value: 'dayId'),
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
                      ]),
                    ),
                    FieldNode(
                      name: NameNode(value: '__typename'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: null,
                    ),
                  ]),
                ),
                FieldNode(
                  name: NameNode(value: 'nodes'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                      name: NameNode(value: 'dayId'),
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
                  ]),
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ]),
            ),
            FieldNode(
              name: NameNode(value: 'attendanceDaysConstraintsAggregate'),
              alias: null,
              arguments: [
                ArgumentNode(
                  name: NameNode(value: 'where'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'dayId'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: '_gte'),
                          value:
                              VariableNode(name: NameNode(value: 'dateFrom')),
                        ),
                        ObjectFieldNode(
                          name: NameNode(value: '_lte'),
                          value: VariableNode(name: NameNode(value: 'dateTo')),
                        ),
                      ]),
                    )
                  ]),
                )
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                  name: NameNode(value: 'aggregate'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                      name: NameNode(value: 'count'),
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
                  ]),
                ),
                FieldNode(
                  name: NameNode(value: 'nodes'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                      name: NameNode(value: 'dayId'),
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
                  ]),
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ]),
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ]),
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'adminOn'),
      alias: NameNode(value: 'classesHistory'),
      arguments: [
        ArgumentNode(
          name: NameNode(value: 'where'),
          value: ObjectValueNode(fields: [
            ObjectFieldNode(
              name: NameNode(value: 'classes'),
              value: ObjectValueNode(fields: [
                ObjectFieldNode(
                  name: NameNode(value: 'id'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: '_in'),
                      value: VariableNode(name: NameNode(value: 'classesIds')),
                    )
                  ]),
                )
              ]),
            )
          ]),
        ),
        ArgumentNode(
          name: NameNode(value: 'distinctOn'),
          value: EnumValueNode(name: NameNode(value: 'adminOnService')),
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'permissionId'),
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
              name: NameNode(value: 'where'),
              value: ObjectValueNode(fields: [
                ObjectFieldNode(
                  name: NameNode(value: 'id'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: '_in'),
                      value: VariableNode(name: NameNode(value: 'classesIds')),
                    )
                  ]),
                )
              ]),
            ),
            ArgumentNode(
              name: NameNode(value: 'distinctOn'),
              value: EnumValueNode(name: NameNode(value: 'id')),
            ),
          ],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'Class'),
              directives: [],
            ),
            FieldNode(
              name: NameNode(value: 'attendanceHistoryAggregate'),
              alias: null,
              arguments: [
                ArgumentNode(
                  name: NameNode(value: 'where'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'dayId'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: '_gte'),
                          value:
                              VariableNode(name: NameNode(value: 'dateFrom')),
                        ),
                        ObjectFieldNode(
                          name: NameNode(value: '_lte'),
                          value: VariableNode(name: NameNode(value: 'dateTo')),
                        ),
                      ]),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'personId'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: '_eq'),
                          value:
                              VariableNode(name: NameNode(value: 'personId')),
                        )
                      ]),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'asAdmin'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: '_eq'),
                          value: BooleanValueNode(value: true),
                        )
                      ]),
                    ),
                  ]),
                )
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                  name: NameNode(value: 'aggregate'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                      name: NameNode(value: 'count'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: null,
                    ),
                    FieldNode(
                      name: NameNode(value: 'max'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: SelectionSetNode(selections: [
                        FieldNode(
                          name: NameNode(value: 'dayId'),
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
                      ]),
                    ),
                    FieldNode(
                      name: NameNode(value: '__typename'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: null,
                    ),
                  ]),
                ),
                FieldNode(
                  name: NameNode(value: 'nodes'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                      name: NameNode(value: 'dayId'),
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
                  ]),
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ]),
            ),
            FieldNode(
              name: NameNode(value: 'attendanceDaysConstraintsAggregate'),
              alias: null,
              arguments: [
                ArgumentNode(
                  name: NameNode(value: 'where'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'dayId'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: '_gte'),
                          value:
                              VariableNode(name: NameNode(value: 'dateFrom')),
                        ),
                        ObjectFieldNode(
                          name: NameNode(value: '_lte'),
                          value: VariableNode(name: NameNode(value: 'dateTo')),
                        ),
                      ]),
                    )
                  ]),
                )
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                  name: NameNode(value: 'aggregate'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                      name: NameNode(value: 'count'),
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
                  ]),
                ),
                FieldNode(
                  name: NameNode(value: 'nodes'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                      name: NameNode(value: 'dayId'),
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
                  ]),
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ]),
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ]),
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'adminOn'),
      alias: NameNode(value: 'groupsHistory'),
      arguments: [
        ArgumentNode(
          name: NameNode(value: 'where'),
          value: ObjectValueNode(fields: [
            ObjectFieldNode(
              name: NameNode(value: 'group'),
              value: ObjectValueNode(fields: [
                ObjectFieldNode(
                  name: NameNode(value: 'id'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: '_in'),
                      value: VariableNode(name: NameNode(value: 'groupsIds')),
                    )
                  ]),
                )
              ]),
            )
          ]),
        ),
        ArgumentNode(
          name: NameNode(value: 'distinctOn'),
          value: EnumValueNode(name: NameNode(value: 'adminOnGroup')),
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'permissionId'),
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
          selectionSet: SelectionSetNode(selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'Group'),
              directives: [],
            ),
            FieldNode(
              name: NameNode(value: 'attendanceHistoryAggregate'),
              alias: null,
              arguments: [
                ArgumentNode(
                  name: NameNode(value: 'where'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'dayId'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: '_gte'),
                          value:
                              VariableNode(name: NameNode(value: 'dateFrom')),
                        ),
                        ObjectFieldNode(
                          name: NameNode(value: '_lte'),
                          value: VariableNode(name: NameNode(value: 'dateTo')),
                        ),
                      ]),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'personId'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: '_eq'),
                          value:
                              VariableNode(name: NameNode(value: 'personId')),
                        )
                      ]),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'asAdmin'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: '_eq'),
                          value: BooleanValueNode(value: true),
                        )
                      ]),
                    ),
                  ]),
                )
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                  name: NameNode(value: 'aggregate'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                      name: NameNode(value: 'count'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: null,
                    ),
                    FieldNode(
                      name: NameNode(value: 'max'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: SelectionSetNode(selections: [
                        FieldNode(
                          name: NameNode(value: 'dayId'),
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
                      ]),
                    ),
                    FieldNode(
                      name: NameNode(value: '__typename'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: null,
                    ),
                  ]),
                ),
                FieldNode(
                  name: NameNode(value: 'nodes'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                      name: NameNode(value: 'dayId'),
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
                  ]),
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ]),
            ),
            FieldNode(
              name: NameNode(value: 'attendanceDaysConstraintsAggregate'),
              alias: null,
              arguments: [
                ArgumentNode(
                  name: NameNode(value: 'where'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'dayId'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: '_gte'),
                          value:
                              VariableNode(name: NameNode(value: 'dateFrom')),
                        ),
                        ObjectFieldNode(
                          name: NameNode(value: '_lte'),
                          value: VariableNode(name: NameNode(value: 'dateTo')),
                        ),
                      ]),
                    )
                  ]),
                )
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                  name: NameNode(value: 'aggregate'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                      name: NameNode(value: 'count'),
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
                  ]),
                ),
                FieldNode(
                  name: NameNode(value: 'nodes'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                      name: NameNode(value: 'dayId'),
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
                  ]),
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ]),
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ]),
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentAttendanceFields = DocumentNode(definitions: [
  fragmentDefinitionAttendanceFields,
  fragmentDefinitionService,
  fragmentDefinitionServiceNoPhoto,
  fragmentDefinitionClass,
  fragmentDefinitionClassNoPhoto,
  fragmentDefinitionGroup,
  fragmentDefinitionGroupNoPhoto,
]);

class Fragment_AttendanceFields_servicesHistory {
  Fragment_AttendanceFields_servicesHistory({
    required this.permissionId,
    this.service,
    this.$__typename = 'AuthUsersAdminOn',
  });

  factory Fragment_AttendanceFields_servicesHistory.fromJson(
      Map<String, dynamic> json) {
    final l$permissionId = json['permissionId'];
    final l$service = json['service'];
    final l$$__typename = json['__typename'];
    return Fragment_AttendanceFields_servicesHistory(
      permissionId: stringToUuid(l$permissionId),
      service: l$service == null
          ? null
          : Fragment_AttendanceFields_servicesHistory_service.fromJson(
              (l$service as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue permissionId;

  final Fragment_AttendanceFields_servicesHistory_service? service;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$permissionId = permissionId;
    _resultData['permissionId'] = uuidToString(l$permissionId);
    final l$service = service;
    _resultData['service'] = l$service?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$permissionId = permissionId;
    final l$service = service;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$permissionId,
      l$service,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_AttendanceFields_servicesHistory ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$permissionId = permissionId;
    final lOther$permissionId = other.permissionId;
    if (l$permissionId != lOther$permissionId) {
      return false;
    }
    final l$service = service;
    final lOther$service = other.service;
    if (l$service != lOther$service) {
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

extension UtilityExtension_Fragment_AttendanceFields_servicesHistory
    on Fragment_AttendanceFields_servicesHistory {
  CopyWith_Fragment_AttendanceFields_servicesHistory<
          Fragment_AttendanceFields_servicesHistory>
      get copyWith => CopyWith_Fragment_AttendanceFields_servicesHistory(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_AttendanceFields_servicesHistory<TRes> {
  factory CopyWith_Fragment_AttendanceFields_servicesHistory(
    Fragment_AttendanceFields_servicesHistory instance,
    TRes Function(Fragment_AttendanceFields_servicesHistory) then,
  ) = _CopyWithImpl_Fragment_AttendanceFields_servicesHistory;

  factory CopyWith_Fragment_AttendanceFields_servicesHistory.stub(TRes res) =
      _CopyWithStubImpl_Fragment_AttendanceFields_servicesHistory;

  TRes call({
    UuidValue? permissionId,
    Fragment_AttendanceFields_servicesHistory_service? service,
    String? $__typename,
  });
  CopyWith_Fragment_AttendanceFields_servicesHistory_service<TRes> get service;
}

class _CopyWithImpl_Fragment_AttendanceFields_servicesHistory<TRes>
    implements CopyWith_Fragment_AttendanceFields_servicesHistory<TRes> {
  _CopyWithImpl_Fragment_AttendanceFields_servicesHistory(
    this._instance,
    this._then,
  );

  final Fragment_AttendanceFields_servicesHistory _instance;

  final TRes Function(Fragment_AttendanceFields_servicesHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? permissionId = _undefined,
    Object? service = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_AttendanceFields_servicesHistory(
        permissionId: permissionId == _undefined || permissionId == null
            ? _instance.permissionId
            : (permissionId as UuidValue),
        service: service == _undefined
            ? _instance.service
            : (service as Fragment_AttendanceFields_servicesHistory_service?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_AttendanceFields_servicesHistory_service<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith_Fragment_AttendanceFields_servicesHistory_service.stub(
            _then(_instance))
        : CopyWith_Fragment_AttendanceFields_servicesHistory_service(
            local$service, (e) => call(service: e));
  }
}

class _CopyWithStubImpl_Fragment_AttendanceFields_servicesHistory<TRes>
    implements CopyWith_Fragment_AttendanceFields_servicesHistory<TRes> {
  _CopyWithStubImpl_Fragment_AttendanceFields_servicesHistory(this._res);

  TRes _res;

  call({
    UuidValue? permissionId,
    Fragment_AttendanceFields_servicesHistory_service? service,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_AttendanceFields_servicesHistory_service<TRes>
      get service =>
          CopyWith_Fragment_AttendanceFields_servicesHistory_service.stub(_res);
}

class Fragment_AttendanceFields_servicesHistory_service
    implements Fragment_Service, Fragment_ServiceNoPhoto {
  Fragment_AttendanceFields_servicesHistory_service({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Services',
    this.photoUpdatedAt,
    this.blurhash,
    required this.attendanceHistoryAggregate,
    required this.attendanceDaysConstraintsAggregate,
  });

  factory Fragment_AttendanceFields_servicesHistory_service.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$attendanceHistoryAggregate = json['attendanceHistoryAggregate'];
    final l$attendanceDaysConstraintsAggregate =
        json['attendanceDaysConstraintsAggregate'];
    return Fragment_AttendanceFields_servicesHistory_service(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      attendanceHistoryAggregate:
          Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate
              .fromJson((l$attendanceHistoryAggregate as Map<String, dynamic>)),
      attendanceDaysConstraintsAggregate:
          Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate
              .fromJson((l$attendanceDaysConstraintsAggregate
                  as Map<String, dynamic>)),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate
      attendanceHistoryAggregate;

  final Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate
      attendanceDaysConstraintsAggregate;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    _resultData['attendanceHistoryAggregate'] =
        l$attendanceHistoryAggregate.toJson();
    final l$attendanceDaysConstraintsAggregate =
        attendanceDaysConstraintsAggregate;
    _resultData['attendanceDaysConstraintsAggregate'] =
        l$attendanceDaysConstraintsAggregate.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$$__typename = $__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final l$attendanceDaysConstraintsAggregate =
        attendanceDaysConstraintsAggregate;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
      l$photoUpdatedAt,
      l$blurhash,
      l$attendanceHistoryAggregate,
      l$attendanceDaysConstraintsAggregate,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_AttendanceFields_servicesHistory_service ||
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
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final lOther$attendanceHistoryAggregate = other.attendanceHistoryAggregate;
    if (l$attendanceHistoryAggregate != lOther$attendanceHistoryAggregate) {
      return false;
    }
    final l$attendanceDaysConstraintsAggregate =
        attendanceDaysConstraintsAggregate;
    final lOther$attendanceDaysConstraintsAggregate =
        other.attendanceDaysConstraintsAggregate;
    if (l$attendanceDaysConstraintsAggregate !=
        lOther$attendanceDaysConstraintsAggregate) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Fragment_AttendanceFields_servicesHistory_service
    on Fragment_AttendanceFields_servicesHistory_service {
  CopyWith_Fragment_AttendanceFields_servicesHistory_service<
          Fragment_AttendanceFields_servicesHistory_service>
      get copyWith =>
          CopyWith_Fragment_AttendanceFields_servicesHistory_service(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_AttendanceFields_servicesHistory_service<
    TRes> {
  factory CopyWith_Fragment_AttendanceFields_servicesHistory_service(
    Fragment_AttendanceFields_servicesHistory_service instance,
    TRes Function(Fragment_AttendanceFields_servicesHistory_service) then,
  ) = _CopyWithImpl_Fragment_AttendanceFields_servicesHistory_service;

  factory CopyWith_Fragment_AttendanceFields_servicesHistory_service.stub(
          TRes res) =
      _CopyWithStubImpl_Fragment_AttendanceFields_servicesHistory_service;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate?
        attendanceHistoryAggregate,
    Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate?
        attendanceDaysConstraintsAggregate,
  });
  CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate;
  CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate<
      TRes> get attendanceDaysConstraintsAggregate;
}

class _CopyWithImpl_Fragment_AttendanceFields_servicesHistory_service<TRes>
    implements
        CopyWith_Fragment_AttendanceFields_servicesHistory_service<TRes> {
  _CopyWithImpl_Fragment_AttendanceFields_servicesHistory_service(
    this._instance,
    this._then,
  );

  final Fragment_AttendanceFields_servicesHistory_service _instance;

  final TRes Function(Fragment_AttendanceFields_servicesHistory_service) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? attendanceHistoryAggregate = _undefined,
    Object? attendanceDaysConstraintsAggregate = _undefined,
  }) =>
      _then(Fragment_AttendanceFields_servicesHistory_service(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        blurhash:
            blurhash == _undefined ? _instance.blurhash : (blurhash as String?),
        attendanceHistoryAggregate: attendanceHistoryAggregate == _undefined ||
                attendanceHistoryAggregate == null
            ? _instance.attendanceHistoryAggregate
            : (attendanceHistoryAggregate
                as Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate),
        attendanceDaysConstraintsAggregate: attendanceDaysConstraintsAggregate ==
                    _undefined ||
                attendanceDaysConstraintsAggregate == null
            ? _instance.attendanceDaysConstraintsAggregate
            : (attendanceDaysConstraintsAggregate
                as Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate),
      ));

  CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate {
    final local$attendanceHistoryAggregate =
        _instance.attendanceHistoryAggregate;
    return CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate(
        local$attendanceHistoryAggregate,
        (e) => call(attendanceHistoryAggregate: e));
  }

  CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate<
      TRes> get attendanceDaysConstraintsAggregate {
    final local$attendanceDaysConstraintsAggregate =
        _instance.attendanceDaysConstraintsAggregate;
    return CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate(
        local$attendanceDaysConstraintsAggregate,
        (e) => call(attendanceDaysConstraintsAggregate: e));
  }
}

class _CopyWithStubImpl_Fragment_AttendanceFields_servicesHistory_service<TRes>
    implements
        CopyWith_Fragment_AttendanceFields_servicesHistory_service<TRes> {
  _CopyWithStubImpl_Fragment_AttendanceFields_servicesHistory_service(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate?
        attendanceHistoryAggregate,
    Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate?
        attendanceDaysConstraintsAggregate,
  }) =>
      _res;

  CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate<
          TRes>
      get attendanceHistoryAggregate =>
          CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate
              .stub(_res);

  CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate<
          TRes>
      get attendanceDaysConstraintsAggregate =>
          CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate
              .stub(_res);
}

class Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate {
  Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate({
    this.aggregate,
    required this.nodes,
    this.$__typename = 'HistoryAttendanceHistoryAggregate',
  });

  factory Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate(
      aggregate: l$aggregate == null
          ? null
          : Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>)
          .map((e) =>
              Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_nodes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate?
      aggregate;

  final List<
          Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_nodes>
      nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$aggregate = aggregate;
    _resultData['aggregate'] = l$aggregate?.toJson();
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$aggregate = aggregate;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$aggregate,
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$aggregate = aggregate;
    final lOther$aggregate = other.aggregate;
    if (l$aggregate != lOther$aggregate) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
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

extension UtilityExtension_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate
    on Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate {
  CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate<
          Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate>
      get copyWith =>
          CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate<
    TRes> {
  factory CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate(
    Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate
        instance,
    TRes Function(
            Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate)
        then,
  ) = _CopyWithImpl_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate;

  factory CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate.stub(
          TRes res) =
      _CopyWithStubImpl_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate;

  TRes call({
    Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate?
        aggregate,
    List<Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_nodes>?
        nodes,
    String? $__typename,
  });
  CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate<
      TRes> get aggregate;
  TRes nodes(
      Iterable<Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_nodes> Function(
              Iterable<
                  CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_nodes<
                      Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_nodes>>)
          _fn);
}

class _CopyWithImpl_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate<
            TRes> {
  _CopyWithImpl_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate(
    this._instance,
    this._then,
  );

  final Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate
      _instance;

  final TRes Function(
          Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aggregate = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate?),
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<
                Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_nodes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate
            .stub(_then(_instance))
        : CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }

  TRes nodes(
          Iterable<Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_nodes> Function(
                  Iterable<
                      CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_nodes<
                          Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_nodes>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes.map((e) =>
              CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_nodes(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate<
            TRes> {
  _CopyWithStubImpl_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate(
      this._res);

  TRes _res;

  call({
    Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate?
        aggregate,
    List<Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_nodes>?
        nodes,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate<
          TRes>
      get aggregate =>
          CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate
              .stub(_res);

  nodes(_fn) => _res;
}

class Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate {
  Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate({
    required this.count,
    this.max,
    this.$__typename = 'HistoryAttendanceHistoryAggregateFields',
  });

  factory Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$max = json['max'];
    final l$$__typename = json['__typename'];
    return Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate(
      count: (l$count as int),
      max: l$max == null
          ? null
          : Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate_max
              .fromJson((l$max as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate_max?
      max;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$max = max;
    _resultData['max'] = l$max?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$max = max;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$max,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$max = max;
    final lOther$max = other.max;
    if (l$max != lOther$max) {
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

extension UtilityExtension_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate
    on Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate {
  CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate<
          Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate>
      get copyWith =>
          CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate<
    TRes> {
  factory CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate(
    Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate
        instance,
    TRes Function(
            Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate)
        then,
  ) = _CopyWithImpl_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate;

  factory CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate.stub(
          TRes res) =
      _CopyWithStubImpl_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate;

  TRes call({
    int? count,
    Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate_max?
        max,
    String? $__typename,
  });
  CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate_max<
      TRes> get max;
}

class _CopyWithImpl_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate<
        TRes>
    implements
        CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate<
            TRes> {
  _CopyWithImpl_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate(
    this._instance,
    this._then,
  );

  final Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate
      _instance;

  final TRes Function(
          Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        max: max == _undefined
            ? _instance.max
            : (max
                as Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate_max?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate_max<
      TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate_max
            .stub(_then(_instance))
        : CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate_max(
            local$max, (e) => call(max: e));
  }
}

class _CopyWithStubImpl_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate<
        TRes>
    implements
        CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate<
            TRes> {
  _CopyWithStubImpl_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate_max?
        max,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate_max<
          TRes>
      get max =>
          CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate_max
              .stub(_res);
}

class Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate_max {
  Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate_max({
    this.dayId,
    this.$__typename = 'HistoryAttendanceHistoryMaxFields',
  });

  factory Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate_max.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate_max(
      dayId: l$dayId == null ? null : dateFromString(l$dayId),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime? dayId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dayId = dayId;
    _resultData['dayId'] = l$dayId == null ? null : dateToString(l$dayId);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dayId = dayId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$dayId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate_max ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dayId = dayId;
    final lOther$dayId = other.dayId;
    if (l$dayId != lOther$dayId) {
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

extension UtilityExtension_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate_max
    on Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate_max {
  CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate_max<
          Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate_max>
      get copyWith =>
          CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate_max(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate_max<
    TRes> {
  factory CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate_max(
    Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate_max
        instance,
    TRes Function(
            Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate_max)
        then,
  ) = _CopyWithImpl_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate_max;

  factory CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate_max.stub(
          TRes res) =
      _CopyWithStubImpl_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate_max;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate_max<
        TRes>
    implements
        CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate_max<
            TRes> {
  _CopyWithImpl_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate_max(
    this._instance,
    this._then,
  );

  final Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate_max
      _instance;

  final TRes Function(
          Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate_max)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate_max(
        dayId: dayId == _undefined ? _instance.dayId : (dayId as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate_max<
        TRes>
    implements
        CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate_max<
            TRes> {
  _CopyWithStubImpl_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_aggregate_max(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}

class Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_nodes {
  Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_nodes({
    required this.dayId,
    this.$__typename = 'HistoryAttendanceHistory',
  });

  factory Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_nodes.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_nodes(
      dayId: dateFromString(l$dayId),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime dayId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dayId = dayId;
    _resultData['dayId'] = dateToString(l$dayId);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dayId = dayId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$dayId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dayId = dayId;
    final lOther$dayId = other.dayId;
    if (l$dayId != lOther$dayId) {
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

extension UtilityExtension_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_nodes
    on Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_nodes {
  CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_nodes<
          Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_nodes>
      get copyWith =>
          CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_nodes<
    TRes> {
  factory CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_nodes(
    Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_nodes
        instance,
    TRes Function(
            Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_nodes)
        then,
  ) = _CopyWithImpl_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_nodes;

  factory CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_nodes.stub(
          TRes res) =
      _CopyWithStubImpl_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_nodes;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_nodes<
        TRes>
    implements
        CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_nodes<
            TRes> {
  _CopyWithImpl_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_nodes(
    this._instance,
    this._then,
  );

  final Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_nodes
      _instance;

  final TRes Function(
          Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_nodes)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_nodes(
        dayId: dayId == _undefined || dayId == null
            ? _instance.dayId
            : (dayId as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_nodes<
        TRes>
    implements
        CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_nodes<
            TRes> {
  _CopyWithStubImpl_Fragment_AttendanceFields_servicesHistory_service_attendanceHistoryAggregate_nodes(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}

class Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate {
  Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate({
    this.aggregate,
    required this.nodes,
    this.$__typename = 'HistoryAttendanceDaysConstraintsAggregate',
  });

  factory Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate(
      aggregate: l$aggregate == null
          ? null
          : Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>)
          .map((e) =>
              Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_nodes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_aggregate?
      aggregate;

  final List<
          Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_nodes>
      nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$aggregate = aggregate;
    _resultData['aggregate'] = l$aggregate?.toJson();
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$aggregate = aggregate;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$aggregate,
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$aggregate = aggregate;
    final lOther$aggregate = other.aggregate;
    if (l$aggregate != lOther$aggregate) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
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

extension UtilityExtension_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate
    on Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate {
  CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate<
          Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate>
      get copyWith =>
          CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate<
    TRes> {
  factory CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate(
    Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate
        instance,
    TRes Function(
            Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate)
        then,
  ) = _CopyWithImpl_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate;

  factory CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate.stub(
          TRes res) =
      _CopyWithStubImpl_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate;

  TRes call({
    Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_aggregate?
        aggregate,
    List<Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_nodes>?
        nodes,
    String? $__typename,
  });
  CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_aggregate<
      TRes> get aggregate;
  TRes nodes(
      Iterable<Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_nodes> Function(
              Iterable<
                  CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_nodes<
                      Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_nodes>>)
          _fn);
}

class _CopyWithImpl_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate<
        TRes>
    implements
        CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate<
            TRes> {
  _CopyWithImpl_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate(
    this._instance,
    this._then,
  );

  final Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate
      _instance;

  final TRes Function(
          Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aggregate = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_aggregate?),
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<
                Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_nodes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_aggregate
            .stub(_then(_instance))
        : CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }

  TRes nodes(
          Iterable<Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_nodes> Function(
                  Iterable<
                      CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_nodes<
                          Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_nodes>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes.map((e) =>
              CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_nodes(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate<
        TRes>
    implements
        CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate<
            TRes> {
  _CopyWithStubImpl_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate(
      this._res);

  TRes _res;

  call({
    Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_aggregate?
        aggregate,
    List<Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_nodes>?
        nodes,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_aggregate<
          TRes>
      get aggregate =>
          CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_aggregate
              .stub(_res);

  nodes(_fn) => _res;
}

class Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_aggregate {
  Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_aggregate({
    required this.count,
    this.$__typename = 'HistoryAttendanceDaysConstraintsAggregateFields',
  });

  factory Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$$__typename = json['__typename'];
    return Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_aggregate(
      count: (l$count as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_aggregate ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
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

extension UtilityExtension_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_aggregate
    on Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_aggregate {
  CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_aggregate<
          Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_aggregate>
      get copyWith =>
          CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_aggregate<
    TRes> {
  factory CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_aggregate(
    Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_aggregate
        instance,
    TRes Function(
            Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_aggregate)
        then,
  ) = _CopyWithImpl_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_aggregate;

  factory CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_aggregate.stub(
          TRes res) =
      _CopyWithStubImpl_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_aggregate;

  TRes call({
    int? count,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_aggregate<
        TRes>
    implements
        CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_aggregate<
            TRes> {
  _CopyWithImpl_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_aggregate(
    this._instance,
    this._then,
  );

  final Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_aggregate
      _instance;

  final TRes Function(
          Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_aggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_aggregate<
        TRes>
    implements
        CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_aggregate<
            TRes> {
  _CopyWithStubImpl_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    String? $__typename,
  }) =>
      _res;
}

class Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_nodes {
  Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_nodes({
    required this.dayId,
    this.$__typename = 'HistoryAttendanceDaysConstraints',
  });

  factory Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_nodes.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_nodes(
      dayId: dateFromString(l$dayId),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime dayId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dayId = dayId;
    _resultData['dayId'] = dateToString(l$dayId);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dayId = dayId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$dayId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dayId = dayId;
    final lOther$dayId = other.dayId;
    if (l$dayId != lOther$dayId) {
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

extension UtilityExtension_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_nodes
    on Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_nodes {
  CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_nodes<
          Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_nodes>
      get copyWith =>
          CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_nodes<
    TRes> {
  factory CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_nodes(
    Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_nodes
        instance,
    TRes Function(
            Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_nodes)
        then,
  ) = _CopyWithImpl_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_nodes;

  factory CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_nodes.stub(
          TRes res) =
      _CopyWithStubImpl_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_nodes;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_nodes<
        TRes>
    implements
        CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_nodes<
            TRes> {
  _CopyWithImpl_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_nodes(
    this._instance,
    this._then,
  );

  final Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_nodes
      _instance;

  final TRes Function(
          Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_nodes)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_nodes(
        dayId: dayId == _undefined || dayId == null
            ? _instance.dayId
            : (dayId as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_nodes<
        TRes>
    implements
        CopyWith_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_nodes<
            TRes> {
  _CopyWithStubImpl_Fragment_AttendanceFields_servicesHistory_service_attendanceDaysConstraintsAggregate_nodes(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}

class Fragment_AttendanceFields_classesHistory {
  Fragment_AttendanceFields_classesHistory({
    required this.permissionId,
    required this.classes,
    this.$__typename = 'AuthUsersAdminOn',
  });

  factory Fragment_AttendanceFields_classesHistory.fromJson(
      Map<String, dynamic> json) {
    final l$permissionId = json['permissionId'];
    final l$classes = json['classes'];
    final l$$__typename = json['__typename'];
    return Fragment_AttendanceFields_classesHistory(
      permissionId: stringToUuid(l$permissionId),
      classes: (l$classes as List<dynamic>)
          .map((e) => Fragment_AttendanceFields_classesHistory_classes.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue permissionId;

  final List<Fragment_AttendanceFields_classesHistory_classes> classes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$permissionId = permissionId;
    _resultData['permissionId'] = uuidToString(l$permissionId);
    final l$classes = classes;
    _resultData['classes'] = l$classes.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$permissionId = permissionId;
    final l$classes = classes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$permissionId,
      Object.hashAll(l$classes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_AttendanceFields_classesHistory ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$permissionId = permissionId;
    final lOther$permissionId = other.permissionId;
    if (l$permissionId != lOther$permissionId) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Fragment_AttendanceFields_classesHistory
    on Fragment_AttendanceFields_classesHistory {
  CopyWith_Fragment_AttendanceFields_classesHistory<
          Fragment_AttendanceFields_classesHistory>
      get copyWith => CopyWith_Fragment_AttendanceFields_classesHistory(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_AttendanceFields_classesHistory<TRes> {
  factory CopyWith_Fragment_AttendanceFields_classesHistory(
    Fragment_AttendanceFields_classesHistory instance,
    TRes Function(Fragment_AttendanceFields_classesHistory) then,
  ) = _CopyWithImpl_Fragment_AttendanceFields_classesHistory;

  factory CopyWith_Fragment_AttendanceFields_classesHistory.stub(TRes res) =
      _CopyWithStubImpl_Fragment_AttendanceFields_classesHistory;

  TRes call({
    UuidValue? permissionId,
    List<Fragment_AttendanceFields_classesHistory_classes>? classes,
    String? $__typename,
  });
  TRes classes(
      Iterable<Fragment_AttendanceFields_classesHistory_classes> Function(
              Iterable<
                  CopyWith_Fragment_AttendanceFields_classesHistory_classes<
                      Fragment_AttendanceFields_classesHistory_classes>>)
          _fn);
}

class _CopyWithImpl_Fragment_AttendanceFields_classesHistory<TRes>
    implements CopyWith_Fragment_AttendanceFields_classesHistory<TRes> {
  _CopyWithImpl_Fragment_AttendanceFields_classesHistory(
    this._instance,
    this._then,
  );

  final Fragment_AttendanceFields_classesHistory _instance;

  final TRes Function(Fragment_AttendanceFields_classesHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? permissionId = _undefined,
    Object? classes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_AttendanceFields_classesHistory(
        permissionId: permissionId == _undefined || permissionId == null
            ? _instance.permissionId
            : (permissionId as UuidValue),
        classes: classes == _undefined || classes == null
            ? _instance.classes
            : (classes
                as List<Fragment_AttendanceFields_classesHistory_classes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes classes(
          Iterable<Fragment_AttendanceFields_classesHistory_classes> Function(
                  Iterable<
                      CopyWith_Fragment_AttendanceFields_classesHistory_classes<
                          Fragment_AttendanceFields_classesHistory_classes>>)
              _fn) =>
      call(
          classes: _fn(_instance.classes.map(
              (e) => CopyWith_Fragment_AttendanceFields_classesHistory_classes(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl_Fragment_AttendanceFields_classesHistory<TRes>
    implements CopyWith_Fragment_AttendanceFields_classesHistory<TRes> {
  _CopyWithStubImpl_Fragment_AttendanceFields_classesHistory(this._res);

  TRes _res;

  call({
    UuidValue? permissionId,
    List<Fragment_AttendanceFields_classesHistory_classes>? classes,
    String? $__typename,
  }) =>
      _res;

  classes(_fn) => _res;
}

class Fragment_AttendanceFields_classesHistory_classes
    implements Fragment_Class, Fragment_ClassNoPhoto {
  Fragment_AttendanceFields_classesHistory_classes({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Classes',
    this.photoUpdatedAt,
    this.blurhash,
    required this.attendanceHistoryAggregate,
    required this.attendanceDaysConstraintsAggregate,
  });

  factory Fragment_AttendanceFields_classesHistory_classes.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$attendanceHistoryAggregate = json['attendanceHistoryAggregate'];
    final l$attendanceDaysConstraintsAggregate =
        json['attendanceDaysConstraintsAggregate'];
    return Fragment_AttendanceFields_classesHistory_classes(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      attendanceHistoryAggregate:
          Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate
              .fromJson((l$attendanceHistoryAggregate as Map<String, dynamic>)),
      attendanceDaysConstraintsAggregate:
          Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate
              .fromJson((l$attendanceDaysConstraintsAggregate
                  as Map<String, dynamic>)),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate
      attendanceHistoryAggregate;

  final Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate
      attendanceDaysConstraintsAggregate;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    _resultData['attendanceHistoryAggregate'] =
        l$attendanceHistoryAggregate.toJson();
    final l$attendanceDaysConstraintsAggregate =
        attendanceDaysConstraintsAggregate;
    _resultData['attendanceDaysConstraintsAggregate'] =
        l$attendanceDaysConstraintsAggregate.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$$__typename = $__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final l$attendanceDaysConstraintsAggregate =
        attendanceDaysConstraintsAggregate;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
      l$photoUpdatedAt,
      l$blurhash,
      l$attendanceHistoryAggregate,
      l$attendanceDaysConstraintsAggregate,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_AttendanceFields_classesHistory_classes ||
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
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final lOther$attendanceHistoryAggregate = other.attendanceHistoryAggregate;
    if (l$attendanceHistoryAggregate != lOther$attendanceHistoryAggregate) {
      return false;
    }
    final l$attendanceDaysConstraintsAggregate =
        attendanceDaysConstraintsAggregate;
    final lOther$attendanceDaysConstraintsAggregate =
        other.attendanceDaysConstraintsAggregate;
    if (l$attendanceDaysConstraintsAggregate !=
        lOther$attendanceDaysConstraintsAggregate) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Fragment_AttendanceFields_classesHistory_classes
    on Fragment_AttendanceFields_classesHistory_classes {
  CopyWith_Fragment_AttendanceFields_classesHistory_classes<
          Fragment_AttendanceFields_classesHistory_classes>
      get copyWith => CopyWith_Fragment_AttendanceFields_classesHistory_classes(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_AttendanceFields_classesHistory_classes<TRes> {
  factory CopyWith_Fragment_AttendanceFields_classesHistory_classes(
    Fragment_AttendanceFields_classesHistory_classes instance,
    TRes Function(Fragment_AttendanceFields_classesHistory_classes) then,
  ) = _CopyWithImpl_Fragment_AttendanceFields_classesHistory_classes;

  factory CopyWith_Fragment_AttendanceFields_classesHistory_classes.stub(
          TRes res) =
      _CopyWithStubImpl_Fragment_AttendanceFields_classesHistory_classes;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate?
        attendanceHistoryAggregate,
    Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate?
        attendanceDaysConstraintsAggregate,
  });
  CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate;
  CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate<
      TRes> get attendanceDaysConstraintsAggregate;
}

class _CopyWithImpl_Fragment_AttendanceFields_classesHistory_classes<TRes>
    implements CopyWith_Fragment_AttendanceFields_classesHistory_classes<TRes> {
  _CopyWithImpl_Fragment_AttendanceFields_classesHistory_classes(
    this._instance,
    this._then,
  );

  final Fragment_AttendanceFields_classesHistory_classes _instance;

  final TRes Function(Fragment_AttendanceFields_classesHistory_classes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? attendanceHistoryAggregate = _undefined,
    Object? attendanceDaysConstraintsAggregate = _undefined,
  }) =>
      _then(Fragment_AttendanceFields_classesHistory_classes(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        blurhash:
            blurhash == _undefined ? _instance.blurhash : (blurhash as String?),
        attendanceHistoryAggregate: attendanceHistoryAggregate == _undefined ||
                attendanceHistoryAggregate == null
            ? _instance.attendanceHistoryAggregate
            : (attendanceHistoryAggregate
                as Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate),
        attendanceDaysConstraintsAggregate: attendanceDaysConstraintsAggregate ==
                    _undefined ||
                attendanceDaysConstraintsAggregate == null
            ? _instance.attendanceDaysConstraintsAggregate
            : (attendanceDaysConstraintsAggregate
                as Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate),
      ));

  CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate {
    final local$attendanceHistoryAggregate =
        _instance.attendanceHistoryAggregate;
    return CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate(
        local$attendanceHistoryAggregate,
        (e) => call(attendanceHistoryAggregate: e));
  }

  CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate<
      TRes> get attendanceDaysConstraintsAggregate {
    final local$attendanceDaysConstraintsAggregate =
        _instance.attendanceDaysConstraintsAggregate;
    return CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate(
        local$attendanceDaysConstraintsAggregate,
        (e) => call(attendanceDaysConstraintsAggregate: e));
  }
}

class _CopyWithStubImpl_Fragment_AttendanceFields_classesHistory_classes<TRes>
    implements CopyWith_Fragment_AttendanceFields_classesHistory_classes<TRes> {
  _CopyWithStubImpl_Fragment_AttendanceFields_classesHistory_classes(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate?
        attendanceHistoryAggregate,
    Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate?
        attendanceDaysConstraintsAggregate,
  }) =>
      _res;

  CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate<
          TRes>
      get attendanceHistoryAggregate =>
          CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate
              .stub(_res);

  CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate<
          TRes>
      get attendanceDaysConstraintsAggregate =>
          CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate
              .stub(_res);
}

class Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate {
  Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate({
    this.aggregate,
    required this.nodes,
    this.$__typename = 'HistoryAttendanceHistoryAggregate',
  });

  factory Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate(
      aggregate: l$aggregate == null
          ? null
          : Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>)
          .map((e) =>
              Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_nodes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate?
      aggregate;

  final List<
          Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_nodes>
      nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$aggregate = aggregate;
    _resultData['aggregate'] = l$aggregate?.toJson();
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$aggregate = aggregate;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$aggregate,
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$aggregate = aggregate;
    final lOther$aggregate = other.aggregate;
    if (l$aggregate != lOther$aggregate) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
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

extension UtilityExtension_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate
    on Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate {
  CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate<
          Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate>
      get copyWith =>
          CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate<
    TRes> {
  factory CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate(
    Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate
        instance,
    TRes Function(
            Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate)
        then,
  ) = _CopyWithImpl_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate;

  factory CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate.stub(
          TRes res) =
      _CopyWithStubImpl_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate;

  TRes call({
    Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate?
        aggregate,
    List<Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_nodes>?
        nodes,
    String? $__typename,
  });
  CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate<
      TRes> get aggregate;
  TRes nodes(
      Iterable<Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_nodes> Function(
              Iterable<
                  CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_nodes<
                      Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_nodes>>)
          _fn);
}

class _CopyWithImpl_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate<
            TRes> {
  _CopyWithImpl_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate(
    this._instance,
    this._then,
  );

  final Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate
      _instance;

  final TRes Function(
          Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aggregate = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate?),
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<
                Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_nodes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate
            .stub(_then(_instance))
        : CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }

  TRes nodes(
          Iterable<Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_nodes> Function(
                  Iterable<
                      CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_nodes<
                          Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_nodes>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes.map((e) =>
              CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_nodes(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate<
            TRes> {
  _CopyWithStubImpl_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate(
      this._res);

  TRes _res;

  call({
    Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate?
        aggregate,
    List<Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_nodes>?
        nodes,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate<
          TRes>
      get aggregate =>
          CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate
              .stub(_res);

  nodes(_fn) => _res;
}

class Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate {
  Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate({
    required this.count,
    this.max,
    this.$__typename = 'HistoryAttendanceHistoryAggregateFields',
  });

  factory Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$max = json['max'];
    final l$$__typename = json['__typename'];
    return Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate(
      count: (l$count as int),
      max: l$max == null
          ? null
          : Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate_max
              .fromJson((l$max as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate_max?
      max;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$max = max;
    _resultData['max'] = l$max?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$max = max;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$max,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$max = max;
    final lOther$max = other.max;
    if (l$max != lOther$max) {
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

extension UtilityExtension_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate
    on Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate {
  CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate<
          Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate>
      get copyWith =>
          CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate<
    TRes> {
  factory CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate(
    Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate
        instance,
    TRes Function(
            Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate)
        then,
  ) = _CopyWithImpl_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate;

  factory CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate.stub(
          TRes res) =
      _CopyWithStubImpl_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate;

  TRes call({
    int? count,
    Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate_max?
        max,
    String? $__typename,
  });
  CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate_max<
      TRes> get max;
}

class _CopyWithImpl_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate<
        TRes>
    implements
        CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate<
            TRes> {
  _CopyWithImpl_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate(
    this._instance,
    this._then,
  );

  final Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate
      _instance;

  final TRes Function(
          Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        max: max == _undefined
            ? _instance.max
            : (max
                as Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate_max?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate_max<
      TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate_max
            .stub(_then(_instance))
        : CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate_max(
            local$max, (e) => call(max: e));
  }
}

class _CopyWithStubImpl_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate<
        TRes>
    implements
        CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate<
            TRes> {
  _CopyWithStubImpl_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate_max?
        max,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate_max<
          TRes>
      get max =>
          CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate_max
              .stub(_res);
}

class Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate_max {
  Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate_max({
    this.dayId,
    this.$__typename = 'HistoryAttendanceHistoryMaxFields',
  });

  factory Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate_max.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate_max(
      dayId: l$dayId == null ? null : dateFromString(l$dayId),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime? dayId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dayId = dayId;
    _resultData['dayId'] = l$dayId == null ? null : dateToString(l$dayId);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dayId = dayId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$dayId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate_max ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dayId = dayId;
    final lOther$dayId = other.dayId;
    if (l$dayId != lOther$dayId) {
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

extension UtilityExtension_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate_max
    on Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate_max {
  CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate_max<
          Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate_max>
      get copyWith =>
          CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate_max(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate_max<
    TRes> {
  factory CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate_max(
    Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate_max
        instance,
    TRes Function(
            Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate_max)
        then,
  ) = _CopyWithImpl_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate_max;

  factory CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate_max.stub(
          TRes res) =
      _CopyWithStubImpl_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate_max;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate_max<
        TRes>
    implements
        CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate_max<
            TRes> {
  _CopyWithImpl_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate_max(
    this._instance,
    this._then,
  );

  final Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate_max
      _instance;

  final TRes Function(
          Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate_max)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate_max(
        dayId: dayId == _undefined ? _instance.dayId : (dayId as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate_max<
        TRes>
    implements
        CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate_max<
            TRes> {
  _CopyWithStubImpl_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_aggregate_max(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}

class Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_nodes {
  Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_nodes({
    required this.dayId,
    this.$__typename = 'HistoryAttendanceHistory',
  });

  factory Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_nodes.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_nodes(
      dayId: dateFromString(l$dayId),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime dayId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dayId = dayId;
    _resultData['dayId'] = dateToString(l$dayId);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dayId = dayId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$dayId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dayId = dayId;
    final lOther$dayId = other.dayId;
    if (l$dayId != lOther$dayId) {
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

extension UtilityExtension_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_nodes
    on Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_nodes {
  CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_nodes<
          Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_nodes>
      get copyWith =>
          CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_nodes<
    TRes> {
  factory CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_nodes(
    Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_nodes
        instance,
    TRes Function(
            Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_nodes)
        then,
  ) = _CopyWithImpl_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_nodes;

  factory CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_nodes.stub(
          TRes res) =
      _CopyWithStubImpl_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_nodes;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_nodes<
        TRes>
    implements
        CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_nodes<
            TRes> {
  _CopyWithImpl_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_nodes(
    this._instance,
    this._then,
  );

  final Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_nodes
      _instance;

  final TRes Function(
          Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_nodes)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_nodes(
        dayId: dayId == _undefined || dayId == null
            ? _instance.dayId
            : (dayId as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_nodes<
        TRes>
    implements
        CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_nodes<
            TRes> {
  _CopyWithStubImpl_Fragment_AttendanceFields_classesHistory_classes_attendanceHistoryAggregate_nodes(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}

class Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate {
  Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate({
    this.aggregate,
    required this.nodes,
    this.$__typename = 'HistoryAttendanceDaysConstraintsAggregate',
  });

  factory Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate(
      aggregate: l$aggregate == null
          ? null
          : Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>)
          .map((e) =>
              Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_nodes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_aggregate?
      aggregate;

  final List<
          Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_nodes>
      nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$aggregate = aggregate;
    _resultData['aggregate'] = l$aggregate?.toJson();
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$aggregate = aggregate;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$aggregate,
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$aggregate = aggregate;
    final lOther$aggregate = other.aggregate;
    if (l$aggregate != lOther$aggregate) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
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

extension UtilityExtension_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate
    on Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate {
  CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate<
          Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate>
      get copyWith =>
          CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate<
    TRes> {
  factory CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate(
    Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate
        instance,
    TRes Function(
            Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate)
        then,
  ) = _CopyWithImpl_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate;

  factory CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate.stub(
          TRes res) =
      _CopyWithStubImpl_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate;

  TRes call({
    Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_aggregate?
        aggregate,
    List<Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_nodes>?
        nodes,
    String? $__typename,
  });
  CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_aggregate<
      TRes> get aggregate;
  TRes nodes(
      Iterable<Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_nodes> Function(
              Iterable<
                  CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_nodes<
                      Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_nodes>>)
          _fn);
}

class _CopyWithImpl_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate<
        TRes>
    implements
        CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate<
            TRes> {
  _CopyWithImpl_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate(
    this._instance,
    this._then,
  );

  final Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate
      _instance;

  final TRes Function(
          Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aggregate = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_aggregate?),
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<
                Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_nodes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_aggregate
            .stub(_then(_instance))
        : CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }

  TRes nodes(
          Iterable<Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_nodes> Function(
                  Iterable<
                      CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_nodes<
                          Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_nodes>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes.map((e) =>
              CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_nodes(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate<
        TRes>
    implements
        CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate<
            TRes> {
  _CopyWithStubImpl_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate(
      this._res);

  TRes _res;

  call({
    Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_aggregate?
        aggregate,
    List<Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_nodes>?
        nodes,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_aggregate<
          TRes>
      get aggregate =>
          CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_aggregate
              .stub(_res);

  nodes(_fn) => _res;
}

class Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_aggregate {
  Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_aggregate({
    required this.count,
    this.$__typename = 'HistoryAttendanceDaysConstraintsAggregateFields',
  });

  factory Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$$__typename = json['__typename'];
    return Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_aggregate(
      count: (l$count as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_aggregate ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
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

extension UtilityExtension_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_aggregate
    on Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_aggregate {
  CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_aggregate<
          Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_aggregate>
      get copyWith =>
          CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_aggregate<
    TRes> {
  factory CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_aggregate(
    Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_aggregate
        instance,
    TRes Function(
            Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_aggregate)
        then,
  ) = _CopyWithImpl_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_aggregate;

  factory CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_aggregate.stub(
          TRes res) =
      _CopyWithStubImpl_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_aggregate;

  TRes call({
    int? count,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_aggregate<
        TRes>
    implements
        CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_aggregate<
            TRes> {
  _CopyWithImpl_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_aggregate(
    this._instance,
    this._then,
  );

  final Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_aggregate
      _instance;

  final TRes Function(
          Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_aggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_aggregate<
        TRes>
    implements
        CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_aggregate<
            TRes> {
  _CopyWithStubImpl_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    String? $__typename,
  }) =>
      _res;
}

class Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_nodes {
  Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_nodes({
    required this.dayId,
    this.$__typename = 'HistoryAttendanceDaysConstraints',
  });

  factory Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_nodes.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_nodes(
      dayId: dateFromString(l$dayId),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime dayId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dayId = dayId;
    _resultData['dayId'] = dateToString(l$dayId);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dayId = dayId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$dayId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dayId = dayId;
    final lOther$dayId = other.dayId;
    if (l$dayId != lOther$dayId) {
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

extension UtilityExtension_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_nodes
    on Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_nodes {
  CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_nodes<
          Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_nodes>
      get copyWith =>
          CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_nodes<
    TRes> {
  factory CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_nodes(
    Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_nodes
        instance,
    TRes Function(
            Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_nodes)
        then,
  ) = _CopyWithImpl_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_nodes;

  factory CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_nodes.stub(
          TRes res) =
      _CopyWithStubImpl_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_nodes;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_nodes<
        TRes>
    implements
        CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_nodes<
            TRes> {
  _CopyWithImpl_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_nodes(
    this._instance,
    this._then,
  );

  final Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_nodes
      _instance;

  final TRes Function(
          Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_nodes)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_nodes(
        dayId: dayId == _undefined || dayId == null
            ? _instance.dayId
            : (dayId as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_nodes<
        TRes>
    implements
        CopyWith_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_nodes<
            TRes> {
  _CopyWithStubImpl_Fragment_AttendanceFields_classesHistory_classes_attendanceDaysConstraintsAggregate_nodes(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}

class Fragment_AttendanceFields_groupsHistory {
  Fragment_AttendanceFields_groupsHistory({
    required this.permissionId,
    this.group,
    this.$__typename = 'AuthUsersAdminOn',
  });

  factory Fragment_AttendanceFields_groupsHistory.fromJson(
      Map<String, dynamic> json) {
    final l$permissionId = json['permissionId'];
    final l$group = json['group'];
    final l$$__typename = json['__typename'];
    return Fragment_AttendanceFields_groupsHistory(
      permissionId: stringToUuid(l$permissionId),
      group: l$group == null
          ? null
          : Fragment_AttendanceFields_groupsHistory_group.fromJson(
              (l$group as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue permissionId;

  final Fragment_AttendanceFields_groupsHistory_group? group;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$permissionId = permissionId;
    _resultData['permissionId'] = uuidToString(l$permissionId);
    final l$group = group;
    _resultData['group'] = l$group?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$permissionId = permissionId;
    final l$group = group;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$permissionId,
      l$group,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_AttendanceFields_groupsHistory ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$permissionId = permissionId;
    final lOther$permissionId = other.permissionId;
    if (l$permissionId != lOther$permissionId) {
      return false;
    }
    final l$group = group;
    final lOther$group = other.group;
    if (l$group != lOther$group) {
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

extension UtilityExtension_Fragment_AttendanceFields_groupsHistory
    on Fragment_AttendanceFields_groupsHistory {
  CopyWith_Fragment_AttendanceFields_groupsHistory<
          Fragment_AttendanceFields_groupsHistory>
      get copyWith => CopyWith_Fragment_AttendanceFields_groupsHistory(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_AttendanceFields_groupsHistory<TRes> {
  factory CopyWith_Fragment_AttendanceFields_groupsHistory(
    Fragment_AttendanceFields_groupsHistory instance,
    TRes Function(Fragment_AttendanceFields_groupsHistory) then,
  ) = _CopyWithImpl_Fragment_AttendanceFields_groupsHistory;

  factory CopyWith_Fragment_AttendanceFields_groupsHistory.stub(TRes res) =
      _CopyWithStubImpl_Fragment_AttendanceFields_groupsHistory;

  TRes call({
    UuidValue? permissionId,
    Fragment_AttendanceFields_groupsHistory_group? group,
    String? $__typename,
  });
  CopyWith_Fragment_AttendanceFields_groupsHistory_group<TRes> get group;
}

class _CopyWithImpl_Fragment_AttendanceFields_groupsHistory<TRes>
    implements CopyWith_Fragment_AttendanceFields_groupsHistory<TRes> {
  _CopyWithImpl_Fragment_AttendanceFields_groupsHistory(
    this._instance,
    this._then,
  );

  final Fragment_AttendanceFields_groupsHistory _instance;

  final TRes Function(Fragment_AttendanceFields_groupsHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? permissionId = _undefined,
    Object? group = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_AttendanceFields_groupsHistory(
        permissionId: permissionId == _undefined || permissionId == null
            ? _instance.permissionId
            : (permissionId as UuidValue),
        group: group == _undefined
            ? _instance.group
            : (group as Fragment_AttendanceFields_groupsHistory_group?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_AttendanceFields_groupsHistory_group<TRes> get group {
    final local$group = _instance.group;
    return local$group == null
        ? CopyWith_Fragment_AttendanceFields_groupsHistory_group.stub(
            _then(_instance))
        : CopyWith_Fragment_AttendanceFields_groupsHistory_group(
            local$group, (e) => call(group: e));
  }
}

class _CopyWithStubImpl_Fragment_AttendanceFields_groupsHistory<TRes>
    implements CopyWith_Fragment_AttendanceFields_groupsHistory<TRes> {
  _CopyWithStubImpl_Fragment_AttendanceFields_groupsHistory(this._res);

  TRes _res;

  call({
    UuidValue? permissionId,
    Fragment_AttendanceFields_groupsHistory_group? group,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_AttendanceFields_groupsHistory_group<TRes> get group =>
      CopyWith_Fragment_AttendanceFields_groupsHistory_group.stub(_res);
}

class Fragment_AttendanceFields_groupsHistory_group
    implements Fragment_Group, Fragment_GroupNoPhoto {
  Fragment_AttendanceFields_groupsHistory_group({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Groups',
    this.photoUpdatedAt,
    this.blurhash,
    required this.attendanceHistoryAggregate,
    required this.attendanceDaysConstraintsAggregate,
  });

  factory Fragment_AttendanceFields_groupsHistory_group.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$attendanceHistoryAggregate = json['attendanceHistoryAggregate'];
    final l$attendanceDaysConstraintsAggregate =
        json['attendanceDaysConstraintsAggregate'];
    return Fragment_AttendanceFields_groupsHistory_group(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      attendanceHistoryAggregate:
          Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate
              .fromJson((l$attendanceHistoryAggregate as Map<String, dynamic>)),
      attendanceDaysConstraintsAggregate:
          Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate
              .fromJson((l$attendanceDaysConstraintsAggregate
                  as Map<String, dynamic>)),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate
      attendanceHistoryAggregate;

  final Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate
      attendanceDaysConstraintsAggregate;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    _resultData['attendanceHistoryAggregate'] =
        l$attendanceHistoryAggregate.toJson();
    final l$attendanceDaysConstraintsAggregate =
        attendanceDaysConstraintsAggregate;
    _resultData['attendanceDaysConstraintsAggregate'] =
        l$attendanceDaysConstraintsAggregate.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$$__typename = $__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final l$attendanceDaysConstraintsAggregate =
        attendanceDaysConstraintsAggregate;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
      l$photoUpdatedAt,
      l$blurhash,
      l$attendanceHistoryAggregate,
      l$attendanceDaysConstraintsAggregate,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_AttendanceFields_groupsHistory_group ||
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
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final lOther$attendanceHistoryAggregate = other.attendanceHistoryAggregate;
    if (l$attendanceHistoryAggregate != lOther$attendanceHistoryAggregate) {
      return false;
    }
    final l$attendanceDaysConstraintsAggregate =
        attendanceDaysConstraintsAggregate;
    final lOther$attendanceDaysConstraintsAggregate =
        other.attendanceDaysConstraintsAggregate;
    if (l$attendanceDaysConstraintsAggregate !=
        lOther$attendanceDaysConstraintsAggregate) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Fragment_AttendanceFields_groupsHistory_group
    on Fragment_AttendanceFields_groupsHistory_group {
  CopyWith_Fragment_AttendanceFields_groupsHistory_group<
          Fragment_AttendanceFields_groupsHistory_group>
      get copyWith => CopyWith_Fragment_AttendanceFields_groupsHistory_group(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_AttendanceFields_groupsHistory_group<TRes> {
  factory CopyWith_Fragment_AttendanceFields_groupsHistory_group(
    Fragment_AttendanceFields_groupsHistory_group instance,
    TRes Function(Fragment_AttendanceFields_groupsHistory_group) then,
  ) = _CopyWithImpl_Fragment_AttendanceFields_groupsHistory_group;

  factory CopyWith_Fragment_AttendanceFields_groupsHistory_group.stub(
          TRes res) =
      _CopyWithStubImpl_Fragment_AttendanceFields_groupsHistory_group;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate?
        attendanceHistoryAggregate,
    Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate?
        attendanceDaysConstraintsAggregate,
  });
  CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate;
  CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate<
      TRes> get attendanceDaysConstraintsAggregate;
}

class _CopyWithImpl_Fragment_AttendanceFields_groupsHistory_group<TRes>
    implements CopyWith_Fragment_AttendanceFields_groupsHistory_group<TRes> {
  _CopyWithImpl_Fragment_AttendanceFields_groupsHistory_group(
    this._instance,
    this._then,
  );

  final Fragment_AttendanceFields_groupsHistory_group _instance;

  final TRes Function(Fragment_AttendanceFields_groupsHistory_group) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? attendanceHistoryAggregate = _undefined,
    Object? attendanceDaysConstraintsAggregate = _undefined,
  }) =>
      _then(Fragment_AttendanceFields_groupsHistory_group(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        blurhash:
            blurhash == _undefined ? _instance.blurhash : (blurhash as String?),
        attendanceHistoryAggregate: attendanceHistoryAggregate == _undefined ||
                attendanceHistoryAggregate == null
            ? _instance.attendanceHistoryAggregate
            : (attendanceHistoryAggregate
                as Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate),
        attendanceDaysConstraintsAggregate: attendanceDaysConstraintsAggregate ==
                    _undefined ||
                attendanceDaysConstraintsAggregate == null
            ? _instance.attendanceDaysConstraintsAggregate
            : (attendanceDaysConstraintsAggregate
                as Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate),
      ));

  CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate {
    final local$attendanceHistoryAggregate =
        _instance.attendanceHistoryAggregate;
    return CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate(
        local$attendanceHistoryAggregate,
        (e) => call(attendanceHistoryAggregate: e));
  }

  CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate<
      TRes> get attendanceDaysConstraintsAggregate {
    final local$attendanceDaysConstraintsAggregate =
        _instance.attendanceDaysConstraintsAggregate;
    return CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate(
        local$attendanceDaysConstraintsAggregate,
        (e) => call(attendanceDaysConstraintsAggregate: e));
  }
}

class _CopyWithStubImpl_Fragment_AttendanceFields_groupsHistory_group<TRes>
    implements CopyWith_Fragment_AttendanceFields_groupsHistory_group<TRes> {
  _CopyWithStubImpl_Fragment_AttendanceFields_groupsHistory_group(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate?
        attendanceHistoryAggregate,
    Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate?
        attendanceDaysConstraintsAggregate,
  }) =>
      _res;

  CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate<
          TRes>
      get attendanceHistoryAggregate =>
          CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate
              .stub(_res);

  CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate<
          TRes>
      get attendanceDaysConstraintsAggregate =>
          CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate
              .stub(_res);
}

class Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate {
  Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate({
    this.aggregate,
    required this.nodes,
    this.$__typename = 'HistoryAttendanceHistoryAggregate',
  });

  factory Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate(
      aggregate: l$aggregate == null
          ? null
          : Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>)
          .map((e) =>
              Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_nodes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate?
      aggregate;

  final List<
          Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_nodes>
      nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$aggregate = aggregate;
    _resultData['aggregate'] = l$aggregate?.toJson();
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$aggregate = aggregate;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$aggregate,
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$aggregate = aggregate;
    final lOther$aggregate = other.aggregate;
    if (l$aggregate != lOther$aggregate) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
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

extension UtilityExtension_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate
    on Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate {
  CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate<
          Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate>
      get copyWith =>
          CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate<
    TRes> {
  factory CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate(
    Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate
        instance,
    TRes Function(
            Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate)
        then,
  ) = _CopyWithImpl_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate;

  factory CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate.stub(
          TRes res) =
      _CopyWithStubImpl_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate;

  TRes call({
    Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate?
        aggregate,
    List<Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_nodes>?
        nodes,
    String? $__typename,
  });
  CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate<
      TRes> get aggregate;
  TRes nodes(
      Iterable<Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_nodes> Function(
              Iterable<
                  CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_nodes<
                      Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_nodes>>)
          _fn);
}

class _CopyWithImpl_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate<
            TRes> {
  _CopyWithImpl_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate(
    this._instance,
    this._then,
  );

  final Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate
      _instance;

  final TRes Function(
          Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aggregate = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate?),
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<
                Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_nodes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate
            .stub(_then(_instance))
        : CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }

  TRes nodes(
          Iterable<Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_nodes> Function(
                  Iterable<
                      CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_nodes<
                          Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_nodes>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes.map((e) =>
              CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_nodes(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate<
            TRes> {
  _CopyWithStubImpl_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate(
      this._res);

  TRes _res;

  call({
    Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate?
        aggregate,
    List<Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_nodes>?
        nodes,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate<
          TRes>
      get aggregate =>
          CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate
              .stub(_res);

  nodes(_fn) => _res;
}

class Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate {
  Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate({
    required this.count,
    this.max,
    this.$__typename = 'HistoryAttendanceHistoryAggregateFields',
  });

  factory Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$max = json['max'];
    final l$$__typename = json['__typename'];
    return Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate(
      count: (l$count as int),
      max: l$max == null
          ? null
          : Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate_max
              .fromJson((l$max as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate_max?
      max;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$max = max;
    _resultData['max'] = l$max?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$max = max;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$max,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$max = max;
    final lOther$max = other.max;
    if (l$max != lOther$max) {
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

extension UtilityExtension_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate
    on Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate {
  CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate<
          Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate>
      get copyWith =>
          CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate<
    TRes> {
  factory CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate(
    Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate
        instance,
    TRes Function(
            Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate)
        then,
  ) = _CopyWithImpl_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate;

  factory CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate.stub(
          TRes res) =
      _CopyWithStubImpl_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate;

  TRes call({
    int? count,
    Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate_max?
        max,
    String? $__typename,
  });
  CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate_max<
      TRes> get max;
}

class _CopyWithImpl_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate<
        TRes>
    implements
        CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate<
            TRes> {
  _CopyWithImpl_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate(
    this._instance,
    this._then,
  );

  final Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate
      _instance;

  final TRes Function(
          Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        max: max == _undefined
            ? _instance.max
            : (max
                as Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate_max?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate_max<
      TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate_max
            .stub(_then(_instance))
        : CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate_max(
            local$max, (e) => call(max: e));
  }
}

class _CopyWithStubImpl_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate<
        TRes>
    implements
        CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate<
            TRes> {
  _CopyWithStubImpl_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate_max?
        max,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate_max<
          TRes>
      get max =>
          CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate_max
              .stub(_res);
}

class Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate_max {
  Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate_max({
    this.dayId,
    this.$__typename = 'HistoryAttendanceHistoryMaxFields',
  });

  factory Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate_max.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate_max(
      dayId: l$dayId == null ? null : dateFromString(l$dayId),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime? dayId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dayId = dayId;
    _resultData['dayId'] = l$dayId == null ? null : dateToString(l$dayId);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dayId = dayId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$dayId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate_max ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dayId = dayId;
    final lOther$dayId = other.dayId;
    if (l$dayId != lOther$dayId) {
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

extension UtilityExtension_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate_max
    on Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate_max {
  CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate_max<
          Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate_max>
      get copyWith =>
          CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate_max(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate_max<
    TRes> {
  factory CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate_max(
    Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate_max
        instance,
    TRes Function(
            Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate_max)
        then,
  ) = _CopyWithImpl_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate_max;

  factory CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate_max.stub(
          TRes res) =
      _CopyWithStubImpl_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate_max;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate_max<
        TRes>
    implements
        CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate_max<
            TRes> {
  _CopyWithImpl_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate_max(
    this._instance,
    this._then,
  );

  final Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate_max
      _instance;

  final TRes Function(
          Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate_max)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate_max(
        dayId: dayId == _undefined ? _instance.dayId : (dayId as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate_max<
        TRes>
    implements
        CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate_max<
            TRes> {
  _CopyWithStubImpl_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_aggregate_max(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}

class Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_nodes {
  Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_nodes({
    required this.dayId,
    this.$__typename = 'HistoryAttendanceHistory',
  });

  factory Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_nodes.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_nodes(
      dayId: dateFromString(l$dayId),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime dayId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dayId = dayId;
    _resultData['dayId'] = dateToString(l$dayId);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dayId = dayId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$dayId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dayId = dayId;
    final lOther$dayId = other.dayId;
    if (l$dayId != lOther$dayId) {
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

extension UtilityExtension_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_nodes
    on Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_nodes {
  CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_nodes<
          Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_nodes>
      get copyWith =>
          CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_nodes<
    TRes> {
  factory CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_nodes(
    Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_nodes
        instance,
    TRes Function(
            Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_nodes)
        then,
  ) = _CopyWithImpl_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_nodes;

  factory CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_nodes.stub(
          TRes res) =
      _CopyWithStubImpl_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_nodes;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_nodes<
        TRes>
    implements
        CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_nodes<
            TRes> {
  _CopyWithImpl_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_nodes(
    this._instance,
    this._then,
  );

  final Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_nodes
      _instance;

  final TRes Function(
          Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_nodes)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_nodes(
        dayId: dayId == _undefined || dayId == null
            ? _instance.dayId
            : (dayId as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_nodes<
        TRes>
    implements
        CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_nodes<
            TRes> {
  _CopyWithStubImpl_Fragment_AttendanceFields_groupsHistory_group_attendanceHistoryAggregate_nodes(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}

class Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate {
  Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate({
    this.aggregate,
    required this.nodes,
    this.$__typename = 'HistoryAttendanceDaysConstraintsAggregate',
  });

  factory Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate(
      aggregate: l$aggregate == null
          ? null
          : Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>)
          .map((e) =>
              Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_nodes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_aggregate?
      aggregate;

  final List<
          Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_nodes>
      nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$aggregate = aggregate;
    _resultData['aggregate'] = l$aggregate?.toJson();
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$aggregate = aggregate;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$aggregate,
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$aggregate = aggregate;
    final lOther$aggregate = other.aggregate;
    if (l$aggregate != lOther$aggregate) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
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

extension UtilityExtension_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate
    on Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate {
  CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate<
          Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate>
      get copyWith =>
          CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate<
    TRes> {
  factory CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate(
    Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate
        instance,
    TRes Function(
            Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate)
        then,
  ) = _CopyWithImpl_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate;

  factory CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate.stub(
          TRes res) =
      _CopyWithStubImpl_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate;

  TRes call({
    Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_aggregate?
        aggregate,
    List<Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_nodes>?
        nodes,
    String? $__typename,
  });
  CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_aggregate<
      TRes> get aggregate;
  TRes nodes(
      Iterable<Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_nodes> Function(
              Iterable<
                  CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_nodes<
                      Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_nodes>>)
          _fn);
}

class _CopyWithImpl_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate<
        TRes>
    implements
        CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate<
            TRes> {
  _CopyWithImpl_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate(
    this._instance,
    this._then,
  );

  final Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate
      _instance;

  final TRes Function(
          Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aggregate = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_aggregate?),
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<
                Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_nodes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_aggregate
            .stub(_then(_instance))
        : CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }

  TRes nodes(
          Iterable<Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_nodes> Function(
                  Iterable<
                      CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_nodes<
                          Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_nodes>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes.map((e) =>
              CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_nodes(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate<
        TRes>
    implements
        CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate<
            TRes> {
  _CopyWithStubImpl_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate(
      this._res);

  TRes _res;

  call({
    Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_aggregate?
        aggregate,
    List<Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_nodes>?
        nodes,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_aggregate<
          TRes>
      get aggregate =>
          CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_aggregate
              .stub(_res);

  nodes(_fn) => _res;
}

class Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_aggregate {
  Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_aggregate({
    required this.count,
    this.$__typename = 'HistoryAttendanceDaysConstraintsAggregateFields',
  });

  factory Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$$__typename = json['__typename'];
    return Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_aggregate(
      count: (l$count as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_aggregate ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
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

extension UtilityExtension_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_aggregate
    on Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_aggregate {
  CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_aggregate<
          Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_aggregate>
      get copyWith =>
          CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_aggregate<
    TRes> {
  factory CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_aggregate(
    Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_aggregate
        instance,
    TRes Function(
            Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_aggregate)
        then,
  ) = _CopyWithImpl_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_aggregate;

  factory CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_aggregate.stub(
          TRes res) =
      _CopyWithStubImpl_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_aggregate;

  TRes call({
    int? count,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_aggregate<
        TRes>
    implements
        CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_aggregate<
            TRes> {
  _CopyWithImpl_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_aggregate(
    this._instance,
    this._then,
  );

  final Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_aggregate
      _instance;

  final TRes Function(
          Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_aggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_aggregate<
        TRes>
    implements
        CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_aggregate<
            TRes> {
  _CopyWithStubImpl_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    String? $__typename,
  }) =>
      _res;
}

class Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_nodes {
  Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_nodes({
    required this.dayId,
    this.$__typename = 'HistoryAttendanceDaysConstraints',
  });

  factory Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_nodes.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_nodes(
      dayId: dateFromString(l$dayId),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime dayId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dayId = dayId;
    _resultData['dayId'] = dateToString(l$dayId);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dayId = dayId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$dayId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dayId = dayId;
    final lOther$dayId = other.dayId;
    if (l$dayId != lOther$dayId) {
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

extension UtilityExtension_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_nodes
    on Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_nodes {
  CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_nodes<
          Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_nodes>
      get copyWith =>
          CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_nodes<
    TRes> {
  factory CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_nodes(
    Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_nodes
        instance,
    TRes Function(
            Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_nodes)
        then,
  ) = _CopyWithImpl_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_nodes;

  factory CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_nodes.stub(
          TRes res) =
      _CopyWithStubImpl_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_nodes;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_nodes<
        TRes>
    implements
        CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_nodes<
            TRes> {
  _CopyWithImpl_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_nodes(
    this._instance,
    this._then,
  );

  final Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_nodes
      _instance;

  final TRes Function(
          Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_nodes)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_nodes(
        dayId: dayId == _undefined || dayId == null
            ? _instance.dayId
            : (dayId as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_nodes<
        TRes>
    implements
        CopyWith_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_nodes<
            TRes> {
  _CopyWithStubImpl_Fragment_AttendanceFields_groupsHistory_group_attendanceDaysConstraintsAggregate_nodes(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}
