import '../../areas/__generated__/fragments.gql.dart';
import '../../classes/__generated__/fragments.gql.dart';
import '../../groups/__generated__/fragments.gql.dart';
import '../../persons/__generated__/fragments.gql.dart';
import '../../services/__generated__/fragments.gql.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Fragment$User implements Fragment$UserNoPhoto {
  Fragment$User({
    required this.uid,
    required this.name,
    required this.email,
    this.$__typename = 'AuthUsersData',
    this.photoUpdatedAt,
  });

  factory Fragment$User.fromJson(Map<String, dynamic> json) {
    final l$uid = json['uid'];
    final l$name = json['name'];
    final l$email = json['email'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    return Fragment$User(
      uid: stringToUuid(l$uid),
      name: (l$name as String),
      email: (l$email as String),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
    );
  }

  final UuidValue uid;

  final String name;

  final String email;

  final String $__typename;

  final DateTime? photoUpdatedAt;

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
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uid = uid;
    final l$name = name;
    final l$email = email;
    final l$$__typename = $__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    return Object.hashAll([
      l$uid,
      l$name,
      l$email,
      l$$__typename,
      l$photoUpdatedAt,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$User) || runtimeType != other.runtimeType) {
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
    return true;
  }
}

extension UtilityExtension$Fragment$User on Fragment$User {
  CopyWith$Fragment$User<Fragment$User> get copyWith => CopyWith$Fragment$User(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$User<TRes> {
  factory CopyWith$Fragment$User(
    Fragment$User instance,
    TRes Function(Fragment$User) then,
  ) = _CopyWithImpl$Fragment$User;

  factory CopyWith$Fragment$User.stub(TRes res) =
      _CopyWithStubImpl$Fragment$User;

  TRes call({
    UuidValue? uid,
    String? name,
    String? email,
    String? $__typename,
    DateTime? photoUpdatedAt,
  });
}

class _CopyWithImpl$Fragment$User<TRes>
    implements CopyWith$Fragment$User<TRes> {
  _CopyWithImpl$Fragment$User(
    this._instance,
    this._then,
  );

  final Fragment$User _instance;

  final TRes Function(Fragment$User) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uid = _undefined,
    Object? name = _undefined,
    Object? email = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
  }) =>
      _then(Fragment$User(
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
      ));
}

class _CopyWithStubImpl$Fragment$User<TRes>
    implements CopyWith$Fragment$User<TRes> {
  _CopyWithStubImpl$Fragment$User(this._res);

  TRes _res;

  call({
    UuidValue? uid,
    String? name,
    String? email,
    String? $__typename,
    DateTime? photoUpdatedAt,
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

class Fragment$UserNoPhoto {
  Fragment$UserNoPhoto({
    required this.uid,
    required this.name,
    required this.email,
    this.$__typename = 'AuthUsersData',
  });

  factory Fragment$UserNoPhoto.fromJson(Map<String, dynamic> json) {
    final l$uid = json['uid'];
    final l$name = json['name'];
    final l$email = json['email'];
    final l$$__typename = json['__typename'];
    return Fragment$UserNoPhoto(
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
    if (!(other is Fragment$UserNoPhoto) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$UserNoPhoto on Fragment$UserNoPhoto {
  CopyWith$Fragment$UserNoPhoto<Fragment$UserNoPhoto> get copyWith =>
      CopyWith$Fragment$UserNoPhoto(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$UserNoPhoto<TRes> {
  factory CopyWith$Fragment$UserNoPhoto(
    Fragment$UserNoPhoto instance,
    TRes Function(Fragment$UserNoPhoto) then,
  ) = _CopyWithImpl$Fragment$UserNoPhoto;

  factory CopyWith$Fragment$UserNoPhoto.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserNoPhoto;

  TRes call({
    UuidValue? uid,
    String? name,
    String? email,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$UserNoPhoto<TRes>
    implements CopyWith$Fragment$UserNoPhoto<TRes> {
  _CopyWithImpl$Fragment$UserNoPhoto(
    this._instance,
    this._then,
  );

  final Fragment$UserNoPhoto _instance;

  final TRes Function(Fragment$UserNoPhoto) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uid = _undefined,
    Object? name = _undefined,
    Object? email = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$UserNoPhoto(
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

class _CopyWithStubImpl$Fragment$UserNoPhoto<TRes>
    implements CopyWith$Fragment$UserNoPhoto<TRes> {
  _CopyWithStubImpl$Fragment$UserNoPhoto(this._res);

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

class Fragment$UserOverview
    implements Fragment$User, Fragment$UserNoPhoto, Fragment$UserPermissions {
  Fragment$UserOverview({
    required this.uid,
    required this.name,
    required this.email,
    this.$__typename = 'AuthUsersData',
    this.photoUpdatedAt,
    required this.permissions,
    this.person,
  });

  factory Fragment$UserOverview.fromJson(Map<String, dynamic> json) {
    final l$uid = json['uid'];
    final l$name = json['name'];
    final l$email = json['email'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$permissions = json['permissions'];
    final l$person = json['person'];
    return Fragment$UserOverview(
      uid: stringToUuid(l$uid),
      name: (l$name as String),
      email: (l$email as String),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      permissions: (l$permissions as List<dynamic>)
          .map((e) => Fragment$UserOverview$permissions.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      person: l$person == null
          ? null
          : Fragment$UserOverview$person.fromJson(
              (l$person as Map<String, dynamic>)),
    );
  }

  final UuidValue uid;

  final String name;

  final String email;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final List<Fragment$UserOverview$permissions> permissions;

  final Fragment$UserOverview$person? person;

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
    final l$permissions = permissions;
    final l$person = person;
    return Object.hashAll([
      l$uid,
      l$name,
      l$email,
      l$$__typename,
      l$photoUpdatedAt,
      Object.hashAll(l$permissions.map((v) => v)),
      l$person,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$UserOverview) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$UserOverview on Fragment$UserOverview {
  CopyWith$Fragment$UserOverview<Fragment$UserOverview> get copyWith =>
      CopyWith$Fragment$UserOverview(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$UserOverview<TRes> {
  factory CopyWith$Fragment$UserOverview(
    Fragment$UserOverview instance,
    TRes Function(Fragment$UserOverview) then,
  ) = _CopyWithImpl$Fragment$UserOverview;

  factory CopyWith$Fragment$UserOverview.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserOverview;

  TRes call({
    UuidValue? uid,
    String? name,
    String? email,
    String? $__typename,
    DateTime? photoUpdatedAt,
    List<Fragment$UserOverview$permissions>? permissions,
    Fragment$UserOverview$person? person,
  });
  TRes permissions(
      Iterable<Fragment$UserOverview$permissions> Function(
              Iterable<
                  CopyWith$Fragment$UserOverview$permissions<
                      Fragment$UserOverview$permissions>>)
          _fn);
  CopyWith$Fragment$UserOverview$person<TRes> get person;
}

class _CopyWithImpl$Fragment$UserOverview<TRes>
    implements CopyWith$Fragment$UserOverview<TRes> {
  _CopyWithImpl$Fragment$UserOverview(
    this._instance,
    this._then,
  );

  final Fragment$UserOverview _instance;

  final TRes Function(Fragment$UserOverview) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uid = _undefined,
    Object? name = _undefined,
    Object? email = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? permissions = _undefined,
    Object? person = _undefined,
  }) =>
      _then(Fragment$UserOverview(
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
        permissions: permissions == _undefined || permissions == null
            ? _instance.permissions
            : (permissions as List<Fragment$UserOverview$permissions>),
        person: person == _undefined
            ? _instance.person
            : (person as Fragment$UserOverview$person?),
      ));
  TRes permissions(
          Iterable<Fragment$UserOverview$permissions> Function(
                  Iterable<
                      CopyWith$Fragment$UserOverview$permissions<
                          Fragment$UserOverview$permissions>>)
              _fn) =>
      call(
          permissions: _fn(_instance.permissions
              .map((e) => CopyWith$Fragment$UserOverview$permissions(
                    e,
                    (i) => i,
                  ))).toList());
  CopyWith$Fragment$UserOverview$person<TRes> get person {
    final local$person = _instance.person;
    return local$person == null
        ? CopyWith$Fragment$UserOverview$person.stub(_then(_instance))
        : CopyWith$Fragment$UserOverview$person(
            local$person, (e) => call(person: e));
  }
}

class _CopyWithStubImpl$Fragment$UserOverview<TRes>
    implements CopyWith$Fragment$UserOverview<TRes> {
  _CopyWithStubImpl$Fragment$UserOverview(this._res);

  TRes _res;

  call({
    UuidValue? uid,
    String? name,
    String? email,
    String? $__typename,
    DateTime? photoUpdatedAt,
    List<Fragment$UserOverview$permissions>? permissions,
    Fragment$UserOverview$person? person,
  }) =>
      _res;
  permissions(_fn) => _res;
  CopyWith$Fragment$UserOverview$person<TRes> get person =>
      CopyWith$Fragment$UserOverview$person.stub(_res);
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
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'lastConfession'),
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
const documentNodeFragmentUserOverview = DocumentNode(definitions: [
  fragmentDefinitionUserOverview,
  fragmentDefinitionUser,
  fragmentDefinitionUserNoPhoto,
  fragmentDefinitionUserPermissions,
  fragmentDefinitionPerson,
  fragmentDefinitionPersonNoPhoto,
]);

class Fragment$UserOverview$permissions
    implements Fragment$UserPermissions$permissions {
  Fragment$UserOverview$permissions({
    required this.permission,
    this.$__typename = 'AuthUsersPermissions',
  });

  factory Fragment$UserOverview$permissions.fromJson(
      Map<String, dynamic> json) {
    final l$permission = json['permission'];
    final l$$__typename = json['__typename'];
    return Fragment$UserOverview$permissions(
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
    if (!(other is Fragment$UserOverview$permissions) ||
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

extension UtilityExtension$Fragment$UserOverview$permissions
    on Fragment$UserOverview$permissions {
  CopyWith$Fragment$UserOverview$permissions<Fragment$UserOverview$permissions>
      get copyWith => CopyWith$Fragment$UserOverview$permissions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$UserOverview$permissions<TRes> {
  factory CopyWith$Fragment$UserOverview$permissions(
    Fragment$UserOverview$permissions instance,
    TRes Function(Fragment$UserOverview$permissions) then,
  ) = _CopyWithImpl$Fragment$UserOverview$permissions;

  factory CopyWith$Fragment$UserOverview$permissions.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserOverview$permissions;

  TRes call({
    String? permission,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$UserOverview$permissions<TRes>
    implements CopyWith$Fragment$UserOverview$permissions<TRes> {
  _CopyWithImpl$Fragment$UserOverview$permissions(
    this._instance,
    this._then,
  );

  final Fragment$UserOverview$permissions _instance;

  final TRes Function(Fragment$UserOverview$permissions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? permission = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$UserOverview$permissions(
        permission: permission == _undefined || permission == null
            ? _instance.permission
            : (permission as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$UserOverview$permissions<TRes>
    implements CopyWith$Fragment$UserOverview$permissions<TRes> {
  _CopyWithStubImpl$Fragment$UserOverview$permissions(this._res);

  TRes _res;

  call({
    String? permission,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$UserOverview$person
    implements Fragment$Person, Fragment$PersonNoPhoto {
  Fragment$UserOverview$person({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Persons',
    this.photoUpdatedAt,
    this.lastKodas,
    this.lastConfession,
  });

  factory Fragment$UserOverview$person.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$lastKodas = json['lastKodas'];
    final l$lastConfession = json['lastConfession'];
    return Fragment$UserOverview$person(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      lastKodas: (l$lastKodas as Json?),
      lastConfession: (l$lastConfession as Json?),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final Json? lastKodas;

  final Json? lastConfession;

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
    final l$lastKodas = lastKodas;
    _resultData['lastKodas'] = l$lastKodas;
    final l$lastConfession = lastConfession;
    _resultData['lastConfession'] = l$lastConfession;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$$__typename = $__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$lastKodas = lastKodas;
    final l$lastConfession = lastConfession;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
      l$photoUpdatedAt,
      l$lastKodas,
      l$lastConfession,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$UserOverview$person) ||
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

extension UtilityExtension$Fragment$UserOverview$person
    on Fragment$UserOverview$person {
  CopyWith$Fragment$UserOverview$person<Fragment$UserOverview$person>
      get copyWith => CopyWith$Fragment$UserOverview$person(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$UserOverview$person<TRes> {
  factory CopyWith$Fragment$UserOverview$person(
    Fragment$UserOverview$person instance,
    TRes Function(Fragment$UserOverview$person) then,
  ) = _CopyWithImpl$Fragment$UserOverview$person;

  factory CopyWith$Fragment$UserOverview$person.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserOverview$person;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Json? lastKodas,
    Json? lastConfession,
  });
}

class _CopyWithImpl$Fragment$UserOverview$person<TRes>
    implements CopyWith$Fragment$UserOverview$person<TRes> {
  _CopyWithImpl$Fragment$UserOverview$person(
    this._instance,
    this._then,
  );

  final Fragment$UserOverview$person _instance;

  final TRes Function(Fragment$UserOverview$person) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? lastKodas = _undefined,
    Object? lastConfession = _undefined,
  }) =>
      _then(Fragment$UserOverview$person(
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
        lastKodas: lastKodas == _undefined
            ? _instance.lastKodas
            : (lastKodas as Json?),
        lastConfession: lastConfession == _undefined
            ? _instance.lastConfession
            : (lastConfession as Json?),
      ));
}

class _CopyWithStubImpl$Fragment$UserOverview$person<TRes>
    implements CopyWith$Fragment$UserOverview$person<TRes> {
  _CopyWithStubImpl$Fragment$UserOverview$person(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Json? lastKodas,
    Json? lastConfession,
  }) =>
      _res;
}

class Fragment$UserDetails
    implements
        Fragment$UserOverview,
        Fragment$User,
        Fragment$UserNoPhoto,
        Fragment$UserPermissions,
        Fragment$UserAdminOn {
  Fragment$UserDetails({
    required this.uid,
    required this.name,
    required this.email,
    this.$__typename = 'AuthUsersData',
    this.photoUpdatedAt,
    required this.permissions,
    this.person,
    this.lastEdit,
    required this.adminOn,
  });

  factory Fragment$UserDetails.fromJson(Map<String, dynamic> json) {
    final l$uid = json['uid'];
    final l$name = json['name'];
    final l$email = json['email'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$permissions = json['permissions'];
    final l$person = json['person'];
    final l$lastEdit = json['lastEdit'];
    final l$adminOn = json['adminOn'];
    return Fragment$UserDetails(
      uid: stringToUuid(l$uid),
      name: (l$name as String),
      email: (l$email as String),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      permissions: (l$permissions as List<dynamic>)
          .map((e) => Fragment$UserDetails$permissions.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      person: l$person == null
          ? null
          : Fragment$UserDetails$person.fromJson(
              (l$person as Map<String, dynamic>)),
      lastEdit: (l$lastEdit as Json?),
      adminOn: (l$adminOn as List<dynamic>)
          .map((e) => Fragment$UserDetails$adminOn.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final UuidValue uid;

  final String name;

  final String email;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final List<Fragment$UserDetails$permissions> permissions;

  final Fragment$UserDetails$person? person;

  final Json? lastEdit;

  final List<Fragment$UserDetails$adminOn> adminOn;

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
    final l$permissions = permissions;
    _resultData['permissions'] = l$permissions.map((e) => e.toJson()).toList();
    final l$person = person;
    _resultData['person'] = l$person?.toJson();
    final l$lastEdit = lastEdit;
    _resultData['lastEdit'] = l$lastEdit;
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
    if (!(other is Fragment$UserDetails) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$UserDetails on Fragment$UserDetails {
  CopyWith$Fragment$UserDetails<Fragment$UserDetails> get copyWith =>
      CopyWith$Fragment$UserDetails(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$UserDetails<TRes> {
  factory CopyWith$Fragment$UserDetails(
    Fragment$UserDetails instance,
    TRes Function(Fragment$UserDetails) then,
  ) = _CopyWithImpl$Fragment$UserDetails;

  factory CopyWith$Fragment$UserDetails.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserDetails;

  TRes call({
    UuidValue? uid,
    String? name,
    String? email,
    String? $__typename,
    DateTime? photoUpdatedAt,
    List<Fragment$UserDetails$permissions>? permissions,
    Fragment$UserDetails$person? person,
    Json? lastEdit,
    List<Fragment$UserDetails$adminOn>? adminOn,
  });
  TRes permissions(
      Iterable<Fragment$UserDetails$permissions> Function(
              Iterable<
                  CopyWith$Fragment$UserDetails$permissions<
                      Fragment$UserDetails$permissions>>)
          _fn);
  CopyWith$Fragment$UserDetails$person<TRes> get person;
  TRes adminOn(
      Iterable<Fragment$UserDetails$adminOn> Function(
              Iterable<
                  CopyWith$Fragment$UserDetails$adminOn<
                      Fragment$UserDetails$adminOn>>)
          _fn);
}

class _CopyWithImpl$Fragment$UserDetails<TRes>
    implements CopyWith$Fragment$UserDetails<TRes> {
  _CopyWithImpl$Fragment$UserDetails(
    this._instance,
    this._then,
  );

  final Fragment$UserDetails _instance;

  final TRes Function(Fragment$UserDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uid = _undefined,
    Object? name = _undefined,
    Object? email = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? permissions = _undefined,
    Object? person = _undefined,
    Object? lastEdit = _undefined,
    Object? adminOn = _undefined,
  }) =>
      _then(Fragment$UserDetails(
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
        permissions: permissions == _undefined || permissions == null
            ? _instance.permissions
            : (permissions as List<Fragment$UserDetails$permissions>),
        person: person == _undefined
            ? _instance.person
            : (person as Fragment$UserDetails$person?),
        lastEdit:
            lastEdit == _undefined ? _instance.lastEdit : (lastEdit as Json?),
        adminOn: adminOn == _undefined || adminOn == null
            ? _instance.adminOn
            : (adminOn as List<Fragment$UserDetails$adminOn>),
      ));
  TRes permissions(
          Iterable<Fragment$UserDetails$permissions> Function(
                  Iterable<
                      CopyWith$Fragment$UserDetails$permissions<
                          Fragment$UserDetails$permissions>>)
              _fn) =>
      call(
          permissions: _fn(_instance.permissions
              .map((e) => CopyWith$Fragment$UserDetails$permissions(
                    e,
                    (i) => i,
                  ))).toList());
  CopyWith$Fragment$UserDetails$person<TRes> get person {
    final local$person = _instance.person;
    return local$person == null
        ? CopyWith$Fragment$UserDetails$person.stub(_then(_instance))
        : CopyWith$Fragment$UserDetails$person(
            local$person, (e) => call(person: e));
  }

  TRes adminOn(
          Iterable<Fragment$UserDetails$adminOn> Function(
                  Iterable<
                      CopyWith$Fragment$UserDetails$adminOn<
                          Fragment$UserDetails$adminOn>>)
              _fn) =>
      call(
          adminOn: _fn(_instance.adminOn
              .map((e) => CopyWith$Fragment$UserDetails$adminOn(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Fragment$UserDetails<TRes>
    implements CopyWith$Fragment$UserDetails<TRes> {
  _CopyWithStubImpl$Fragment$UserDetails(this._res);

  TRes _res;

  call({
    UuidValue? uid,
    String? name,
    String? email,
    String? $__typename,
    DateTime? photoUpdatedAt,
    List<Fragment$UserDetails$permissions>? permissions,
    Fragment$UserDetails$person? person,
    Json? lastEdit,
    List<Fragment$UserDetails$adminOn>? adminOn,
  }) =>
      _res;
  permissions(_fn) => _res;
  CopyWith$Fragment$UserDetails$person<TRes> get person =>
      CopyWith$Fragment$UserDetails$person.stub(_res);
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
      selectionSet: null,
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

class Fragment$UserDetails$permissions
    implements
        Fragment$UserOverview$permissions,
        Fragment$UserPermissions$permissions {
  Fragment$UserDetails$permissions({
    required this.permission,
    this.$__typename = 'AuthUsersPermissions',
  });

  factory Fragment$UserDetails$permissions.fromJson(Map<String, dynamic> json) {
    final l$permission = json['permission'];
    final l$$__typename = json['__typename'];
    return Fragment$UserDetails$permissions(
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
    if (!(other is Fragment$UserDetails$permissions) ||
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

extension UtilityExtension$Fragment$UserDetails$permissions
    on Fragment$UserDetails$permissions {
  CopyWith$Fragment$UserDetails$permissions<Fragment$UserDetails$permissions>
      get copyWith => CopyWith$Fragment$UserDetails$permissions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$UserDetails$permissions<TRes> {
  factory CopyWith$Fragment$UserDetails$permissions(
    Fragment$UserDetails$permissions instance,
    TRes Function(Fragment$UserDetails$permissions) then,
  ) = _CopyWithImpl$Fragment$UserDetails$permissions;

  factory CopyWith$Fragment$UserDetails$permissions.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserDetails$permissions;

  TRes call({
    String? permission,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$UserDetails$permissions<TRes>
    implements CopyWith$Fragment$UserDetails$permissions<TRes> {
  _CopyWithImpl$Fragment$UserDetails$permissions(
    this._instance,
    this._then,
  );

  final Fragment$UserDetails$permissions _instance;

  final TRes Function(Fragment$UserDetails$permissions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? permission = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$UserDetails$permissions(
        permission: permission == _undefined || permission == null
            ? _instance.permission
            : (permission as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$UserDetails$permissions<TRes>
    implements CopyWith$Fragment$UserDetails$permissions<TRes> {
  _CopyWithStubImpl$Fragment$UserDetails$permissions(this._res);

  TRes _res;

  call({
    String? permission,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$UserDetails$person
    implements
        Fragment$UserOverview$person,
        Fragment$Person,
        Fragment$PersonNoPhoto {
  Fragment$UserDetails$person({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Persons',
    this.photoUpdatedAt,
    this.lastKodas,
    this.lastConfession,
  });

  factory Fragment$UserDetails$person.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$lastKodas = json['lastKodas'];
    final l$lastConfession = json['lastConfession'];
    return Fragment$UserDetails$person(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      lastKodas: (l$lastKodas as Json?),
      lastConfession: (l$lastConfession as Json?),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final Json? lastKodas;

  final Json? lastConfession;

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
    final l$lastKodas = lastKodas;
    _resultData['lastKodas'] = l$lastKodas;
    final l$lastConfession = lastConfession;
    _resultData['lastConfession'] = l$lastConfession;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$$__typename = $__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$lastKodas = lastKodas;
    final l$lastConfession = lastConfession;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
      l$photoUpdatedAt,
      l$lastKodas,
      l$lastConfession,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$UserDetails$person) ||
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

extension UtilityExtension$Fragment$UserDetails$person
    on Fragment$UserDetails$person {
  CopyWith$Fragment$UserDetails$person<Fragment$UserDetails$person>
      get copyWith => CopyWith$Fragment$UserDetails$person(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$UserDetails$person<TRes> {
  factory CopyWith$Fragment$UserDetails$person(
    Fragment$UserDetails$person instance,
    TRes Function(Fragment$UserDetails$person) then,
  ) = _CopyWithImpl$Fragment$UserDetails$person;

  factory CopyWith$Fragment$UserDetails$person.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserDetails$person;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Json? lastKodas,
    Json? lastConfession,
  });
}

class _CopyWithImpl$Fragment$UserDetails$person<TRes>
    implements CopyWith$Fragment$UserDetails$person<TRes> {
  _CopyWithImpl$Fragment$UserDetails$person(
    this._instance,
    this._then,
  );

  final Fragment$UserDetails$person _instance;

  final TRes Function(Fragment$UserDetails$person) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? lastKodas = _undefined,
    Object? lastConfession = _undefined,
  }) =>
      _then(Fragment$UserDetails$person(
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
        lastKodas: lastKodas == _undefined
            ? _instance.lastKodas
            : (lastKodas as Json?),
        lastConfession: lastConfession == _undefined
            ? _instance.lastConfession
            : (lastConfession as Json?),
      ));
}

class _CopyWithStubImpl$Fragment$UserDetails$person<TRes>
    implements CopyWith$Fragment$UserDetails$person<TRes> {
  _CopyWithStubImpl$Fragment$UserDetails$person(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Json? lastKodas,
    Json? lastConfession,
  }) =>
      _res;
}

class Fragment$UserDetails$adminOn implements Fragment$UserAdminOn$adminOn {
  Fragment$UserDetails$adminOn({
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

  factory Fragment$UserDetails$adminOn.fromJson(Map<String, dynamic> json) {
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
    return Fragment$UserDetails$adminOn(
      permissionId: stringToUuid(l$permissionId),
      area: l$area == null
          ? null
          : Fragment$Area.fromJson((l$area as Map<String, dynamic>)),
      areaAllowEdit: (l$areaAllowEdit as bool?),
      areaAdminOnUsers: (l$areaAdminOnUsers as bool?),
      service: l$service == null
          ? null
          : Fragment$Service.fromJson((l$service as Map<String, dynamic>)),
      serviceStudyYearData: l$serviceStudyYearData == null
          ? null
          : Fragment$UserDetails$adminOn$serviceStudyYearData.fromJson(
              (l$serviceStudyYearData as Map<String, dynamic>)),
      serviceGender: (l$serviceGender as bool?),
      serviceAllowEdit: (l$serviceAllowEdit as bool?),
      serviceAdminOnUsers: (l$serviceAdminOnUsers as bool?),
      classes: (l$classes as List<dynamic>)
          .map((e) => Fragment$Class.fromJson((e as Map<String, dynamic>)))
          .toList(),
      group: l$group == null
          ? null
          : Fragment$Group.fromJson((l$group as Map<String, dynamic>)),
      groupAllowEdit: (l$groupAllowEdit as bool?),
      groupAdminOnUsers: (l$groupAdminOnUsers as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue permissionId;

  final Fragment$Area? area;

  final bool? areaAllowEdit;

  final bool? areaAdminOnUsers;

  final Fragment$Service? service;

  final Fragment$UserDetails$adminOn$serviceStudyYearData? serviceStudyYearData;

  final bool? serviceGender;

  final bool? serviceAllowEdit;

  final bool? serviceAdminOnUsers;

  final List<Fragment$Class> classes;

  final Fragment$Group? group;

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
    if (!(other is Fragment$UserDetails$adminOn) ||
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

extension UtilityExtension$Fragment$UserDetails$adminOn
    on Fragment$UserDetails$adminOn {
  CopyWith$Fragment$UserDetails$adminOn<Fragment$UserDetails$adminOn>
      get copyWith => CopyWith$Fragment$UserDetails$adminOn(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$UserDetails$adminOn<TRes> {
  factory CopyWith$Fragment$UserDetails$adminOn(
    Fragment$UserDetails$adminOn instance,
    TRes Function(Fragment$UserDetails$adminOn) then,
  ) = _CopyWithImpl$Fragment$UserDetails$adminOn;

  factory CopyWith$Fragment$UserDetails$adminOn.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserDetails$adminOn;

  TRes call({
    UuidValue? permissionId,
    Fragment$Area? area,
    bool? areaAllowEdit,
    bool? areaAdminOnUsers,
    Fragment$Service? service,
    Fragment$UserDetails$adminOn$serviceStudyYearData? serviceStudyYearData,
    bool? serviceGender,
    bool? serviceAllowEdit,
    bool? serviceAdminOnUsers,
    List<Fragment$Class>? classes,
    Fragment$Group? group,
    bool? groupAllowEdit,
    bool? groupAdminOnUsers,
    String? $__typename,
  });
  CopyWith$Fragment$Area<TRes> get area;
  CopyWith$Fragment$Service<TRes> get service;
  CopyWith$Fragment$UserDetails$adminOn$serviceStudyYearData<TRes>
      get serviceStudyYearData;
  TRes classes(
      Iterable<Fragment$Class> Function(
              Iterable<CopyWith$Fragment$Class<Fragment$Class>>)
          _fn);
  CopyWith$Fragment$Group<TRes> get group;
}

class _CopyWithImpl$Fragment$UserDetails$adminOn<TRes>
    implements CopyWith$Fragment$UserDetails$adminOn<TRes> {
  _CopyWithImpl$Fragment$UserDetails$adminOn(
    this._instance,
    this._then,
  );

  final Fragment$UserDetails$adminOn _instance;

  final TRes Function(Fragment$UserDetails$adminOn) _then;

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
      _then(Fragment$UserDetails$adminOn(
        permissionId: permissionId == _undefined || permissionId == null
            ? _instance.permissionId
            : (permissionId as UuidValue),
        area: area == _undefined ? _instance.area : (area as Fragment$Area?),
        areaAllowEdit: areaAllowEdit == _undefined
            ? _instance.areaAllowEdit
            : (areaAllowEdit as bool?),
        areaAdminOnUsers: areaAdminOnUsers == _undefined
            ? _instance.areaAdminOnUsers
            : (areaAdminOnUsers as bool?),
        service: service == _undefined
            ? _instance.service
            : (service as Fragment$Service?),
        serviceStudyYearData: serviceStudyYearData == _undefined
            ? _instance.serviceStudyYearData
            : (serviceStudyYearData
                as Fragment$UserDetails$adminOn$serviceStudyYearData?),
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
            : (classes as List<Fragment$Class>),
        group:
            group == _undefined ? _instance.group : (group as Fragment$Group?),
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
  CopyWith$Fragment$Area<TRes> get area {
    final local$area = _instance.area;
    return local$area == null
        ? CopyWith$Fragment$Area.stub(_then(_instance))
        : CopyWith$Fragment$Area(local$area, (e) => call(area: e));
  }

  CopyWith$Fragment$Service<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith$Fragment$Service.stub(_then(_instance))
        : CopyWith$Fragment$Service(local$service, (e) => call(service: e));
  }

  CopyWith$Fragment$UserDetails$adminOn$serviceStudyYearData<TRes>
      get serviceStudyYearData {
    final local$serviceStudyYearData = _instance.serviceStudyYearData;
    return local$serviceStudyYearData == null
        ? CopyWith$Fragment$UserDetails$adminOn$serviceStudyYearData.stub(
            _then(_instance))
        : CopyWith$Fragment$UserDetails$adminOn$serviceStudyYearData(
            local$serviceStudyYearData, (e) => call(serviceStudyYearData: e));
  }

  TRes classes(
          Iterable<Fragment$Class> Function(
                  Iterable<CopyWith$Fragment$Class<Fragment$Class>>)
              _fn) =>
      call(
          classes: _fn(_instance.classes.map((e) => CopyWith$Fragment$Class(
                e,
                (i) => i,
              ))).toList());
  CopyWith$Fragment$Group<TRes> get group {
    final local$group = _instance.group;
    return local$group == null
        ? CopyWith$Fragment$Group.stub(_then(_instance))
        : CopyWith$Fragment$Group(local$group, (e) => call(group: e));
  }
}

class _CopyWithStubImpl$Fragment$UserDetails$adminOn<TRes>
    implements CopyWith$Fragment$UserDetails$adminOn<TRes> {
  _CopyWithStubImpl$Fragment$UserDetails$adminOn(this._res);

  TRes _res;

  call({
    UuidValue? permissionId,
    Fragment$Area? area,
    bool? areaAllowEdit,
    bool? areaAdminOnUsers,
    Fragment$Service? service,
    Fragment$UserDetails$adminOn$serviceStudyYearData? serviceStudyYearData,
    bool? serviceGender,
    bool? serviceAllowEdit,
    bool? serviceAdminOnUsers,
    List<Fragment$Class>? classes,
    Fragment$Group? group,
    bool? groupAllowEdit,
    bool? groupAdminOnUsers,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$Area<TRes> get area => CopyWith$Fragment$Area.stub(_res);
  CopyWith$Fragment$Service<TRes> get service =>
      CopyWith$Fragment$Service.stub(_res);
  CopyWith$Fragment$UserDetails$adminOn$serviceStudyYearData<TRes>
      get serviceStudyYearData =>
          CopyWith$Fragment$UserDetails$adminOn$serviceStudyYearData.stub(_res);
  classes(_fn) => _res;
  CopyWith$Fragment$Group<TRes> get group => CopyWith$Fragment$Group.stub(_res);
}

class Fragment$UserDetails$adminOn$serviceStudyYearData
    implements Fragment$UserAdminOn$adminOn$serviceStudyYearData {
  Fragment$UserDetails$adminOn$serviceStudyYearData({
    required this.name,
    required this.order,
    this.$__typename = 'StudyYears',
  });

  factory Fragment$UserDetails$adminOn$serviceStudyYearData.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$order = json['order'];
    final l$$__typename = json['__typename'];
    return Fragment$UserDetails$adminOn$serviceStudyYearData(
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
    if (!(other is Fragment$UserDetails$adminOn$serviceStudyYearData) ||
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

extension UtilityExtension$Fragment$UserDetails$adminOn$serviceStudyYearData
    on Fragment$UserDetails$adminOn$serviceStudyYearData {
  CopyWith$Fragment$UserDetails$adminOn$serviceStudyYearData<
          Fragment$UserDetails$adminOn$serviceStudyYearData>
      get copyWith =>
          CopyWith$Fragment$UserDetails$adminOn$serviceStudyYearData(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$UserDetails$adminOn$serviceStudyYearData<
    TRes> {
  factory CopyWith$Fragment$UserDetails$adminOn$serviceStudyYearData(
    Fragment$UserDetails$adminOn$serviceStudyYearData instance,
    TRes Function(Fragment$UserDetails$adminOn$serviceStudyYearData) then,
  ) = _CopyWithImpl$Fragment$UserDetails$adminOn$serviceStudyYearData;

  factory CopyWith$Fragment$UserDetails$adminOn$serviceStudyYearData.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$UserDetails$adminOn$serviceStudyYearData;

  TRes call({
    String? name,
    int? order,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$UserDetails$adminOn$serviceStudyYearData<TRes>
    implements
        CopyWith$Fragment$UserDetails$adminOn$serviceStudyYearData<TRes> {
  _CopyWithImpl$Fragment$UserDetails$adminOn$serviceStudyYearData(
    this._instance,
    this._then,
  );

  final Fragment$UserDetails$adminOn$serviceStudyYearData _instance;

  final TRes Function(Fragment$UserDetails$adminOn$serviceStudyYearData) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? order = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$UserDetails$adminOn$serviceStudyYearData(
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

class _CopyWithStubImpl$Fragment$UserDetails$adminOn$serviceStudyYearData<TRes>
    implements
        CopyWith$Fragment$UserDetails$adminOn$serviceStudyYearData<TRes> {
  _CopyWithStubImpl$Fragment$UserDetails$adminOn$serviceStudyYearData(
      this._res);

  TRes _res;

  call({
    String? name,
    int? order,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$UserPermissions {
  Fragment$UserPermissions({
    required this.permissions,
    this.$__typename = 'AuthUsersData',
  });

  factory Fragment$UserPermissions.fromJson(Map<String, dynamic> json) {
    final l$permissions = json['permissions'];
    final l$$__typename = json['__typename'];
    return Fragment$UserPermissions(
      permissions: (l$permissions as List<dynamic>)
          .map((e) => Fragment$UserPermissions$permissions.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$UserPermissions$permissions> permissions;

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
    if (!(other is Fragment$UserPermissions) ||
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

extension UtilityExtension$Fragment$UserPermissions
    on Fragment$UserPermissions {
  CopyWith$Fragment$UserPermissions<Fragment$UserPermissions> get copyWith =>
      CopyWith$Fragment$UserPermissions(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$UserPermissions<TRes> {
  factory CopyWith$Fragment$UserPermissions(
    Fragment$UserPermissions instance,
    TRes Function(Fragment$UserPermissions) then,
  ) = _CopyWithImpl$Fragment$UserPermissions;

  factory CopyWith$Fragment$UserPermissions.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserPermissions;

  TRes call({
    List<Fragment$UserPermissions$permissions>? permissions,
    String? $__typename,
  });
  TRes permissions(
      Iterable<Fragment$UserPermissions$permissions> Function(
              Iterable<
                  CopyWith$Fragment$UserPermissions$permissions<
                      Fragment$UserPermissions$permissions>>)
          _fn);
}

class _CopyWithImpl$Fragment$UserPermissions<TRes>
    implements CopyWith$Fragment$UserPermissions<TRes> {
  _CopyWithImpl$Fragment$UserPermissions(
    this._instance,
    this._then,
  );

  final Fragment$UserPermissions _instance;

  final TRes Function(Fragment$UserPermissions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? permissions = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$UserPermissions(
        permissions: permissions == _undefined || permissions == null
            ? _instance.permissions
            : (permissions as List<Fragment$UserPermissions$permissions>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes permissions(
          Iterable<Fragment$UserPermissions$permissions> Function(
                  Iterable<
                      CopyWith$Fragment$UserPermissions$permissions<
                          Fragment$UserPermissions$permissions>>)
              _fn) =>
      call(
          permissions: _fn(_instance.permissions
              .map((e) => CopyWith$Fragment$UserPermissions$permissions(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Fragment$UserPermissions<TRes>
    implements CopyWith$Fragment$UserPermissions<TRes> {
  _CopyWithStubImpl$Fragment$UserPermissions(this._res);

  TRes _res;

  call({
    List<Fragment$UserPermissions$permissions>? permissions,
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

class Fragment$UserPermissions$permissions {
  Fragment$UserPermissions$permissions({
    required this.permission,
    this.$__typename = 'AuthUsersPermissions',
  });

  factory Fragment$UserPermissions$permissions.fromJson(
      Map<String, dynamic> json) {
    final l$permission = json['permission'];
    final l$$__typename = json['__typename'];
    return Fragment$UserPermissions$permissions(
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
    if (!(other is Fragment$UserPermissions$permissions) ||
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

extension UtilityExtension$Fragment$UserPermissions$permissions
    on Fragment$UserPermissions$permissions {
  CopyWith$Fragment$UserPermissions$permissions<
          Fragment$UserPermissions$permissions>
      get copyWith => CopyWith$Fragment$UserPermissions$permissions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$UserPermissions$permissions<TRes> {
  factory CopyWith$Fragment$UserPermissions$permissions(
    Fragment$UserPermissions$permissions instance,
    TRes Function(Fragment$UserPermissions$permissions) then,
  ) = _CopyWithImpl$Fragment$UserPermissions$permissions;

  factory CopyWith$Fragment$UserPermissions$permissions.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserPermissions$permissions;

  TRes call({
    String? permission,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$UserPermissions$permissions<TRes>
    implements CopyWith$Fragment$UserPermissions$permissions<TRes> {
  _CopyWithImpl$Fragment$UserPermissions$permissions(
    this._instance,
    this._then,
  );

  final Fragment$UserPermissions$permissions _instance;

  final TRes Function(Fragment$UserPermissions$permissions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? permission = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$UserPermissions$permissions(
        permission: permission == _undefined || permission == null
            ? _instance.permission
            : (permission as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$UserPermissions$permissions<TRes>
    implements CopyWith$Fragment$UserPermissions$permissions<TRes> {
  _CopyWithStubImpl$Fragment$UserPermissions$permissions(this._res);

  TRes _res;

  call({
    String? permission,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$UserAdminOn {
  Fragment$UserAdminOn({
    required this.adminOn,
    this.$__typename = 'AuthUsersData',
  });

  factory Fragment$UserAdminOn.fromJson(Map<String, dynamic> json) {
    final l$adminOn = json['adminOn'];
    final l$$__typename = json['__typename'];
    return Fragment$UserAdminOn(
      adminOn: (l$adminOn as List<dynamic>)
          .map((e) => Fragment$UserAdminOn$adminOn.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$UserAdminOn$adminOn> adminOn;

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
    if (!(other is Fragment$UserAdminOn) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$UserAdminOn on Fragment$UserAdminOn {
  CopyWith$Fragment$UserAdminOn<Fragment$UserAdminOn> get copyWith =>
      CopyWith$Fragment$UserAdminOn(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$UserAdminOn<TRes> {
  factory CopyWith$Fragment$UserAdminOn(
    Fragment$UserAdminOn instance,
    TRes Function(Fragment$UserAdminOn) then,
  ) = _CopyWithImpl$Fragment$UserAdminOn;

  factory CopyWith$Fragment$UserAdminOn.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserAdminOn;

  TRes call({
    List<Fragment$UserAdminOn$adminOn>? adminOn,
    String? $__typename,
  });
  TRes adminOn(
      Iterable<Fragment$UserAdminOn$adminOn> Function(
              Iterable<
                  CopyWith$Fragment$UserAdminOn$adminOn<
                      Fragment$UserAdminOn$adminOn>>)
          _fn);
}

class _CopyWithImpl$Fragment$UserAdminOn<TRes>
    implements CopyWith$Fragment$UserAdminOn<TRes> {
  _CopyWithImpl$Fragment$UserAdminOn(
    this._instance,
    this._then,
  );

  final Fragment$UserAdminOn _instance;

  final TRes Function(Fragment$UserAdminOn) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? adminOn = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$UserAdminOn(
        adminOn: adminOn == _undefined || adminOn == null
            ? _instance.adminOn
            : (adminOn as List<Fragment$UserAdminOn$adminOn>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes adminOn(
          Iterable<Fragment$UserAdminOn$adminOn> Function(
                  Iterable<
                      CopyWith$Fragment$UserAdminOn$adminOn<
                          Fragment$UserAdminOn$adminOn>>)
              _fn) =>
      call(
          adminOn: _fn(_instance.adminOn
              .map((e) => CopyWith$Fragment$UserAdminOn$adminOn(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Fragment$UserAdminOn<TRes>
    implements CopyWith$Fragment$UserAdminOn<TRes> {
  _CopyWithStubImpl$Fragment$UserAdminOn(this._res);

  TRes _res;

  call({
    List<Fragment$UserAdminOn$adminOn>? adminOn,
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
                    name: NameNode(value: 'studyYearFrom'),
                    value: EnumValueNode(name: NameNode(value: 'ASC')),
                  ),
                  ObjectFieldNode(
                    name: NameNode(value: 'studyYearTo'),
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

class Fragment$UserAdminOn$adminOn {
  Fragment$UserAdminOn$adminOn({
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

  factory Fragment$UserAdminOn$adminOn.fromJson(Map<String, dynamic> json) {
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
    return Fragment$UserAdminOn$adminOn(
      permissionId: stringToUuid(l$permissionId),
      area: l$area == null
          ? null
          : Fragment$Area.fromJson((l$area as Map<String, dynamic>)),
      areaAllowEdit: (l$areaAllowEdit as bool?),
      areaAdminOnUsers: (l$areaAdminOnUsers as bool?),
      service: l$service == null
          ? null
          : Fragment$Service.fromJson((l$service as Map<String, dynamic>)),
      serviceStudyYearData: l$serviceStudyYearData == null
          ? null
          : Fragment$UserAdminOn$adminOn$serviceStudyYearData.fromJson(
              (l$serviceStudyYearData as Map<String, dynamic>)),
      serviceGender: (l$serviceGender as bool?),
      serviceAllowEdit: (l$serviceAllowEdit as bool?),
      serviceAdminOnUsers: (l$serviceAdminOnUsers as bool?),
      classes: (l$classes as List<dynamic>)
          .map((e) => Fragment$Class.fromJson((e as Map<String, dynamic>)))
          .toList(),
      group: l$group == null
          ? null
          : Fragment$Group.fromJson((l$group as Map<String, dynamic>)),
      groupAllowEdit: (l$groupAllowEdit as bool?),
      groupAdminOnUsers: (l$groupAdminOnUsers as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue permissionId;

  final Fragment$Area? area;

  final bool? areaAllowEdit;

  final bool? areaAdminOnUsers;

  final Fragment$Service? service;

  final Fragment$UserAdminOn$adminOn$serviceStudyYearData? serviceStudyYearData;

  final bool? serviceGender;

  final bool? serviceAllowEdit;

  final bool? serviceAdminOnUsers;

  final List<Fragment$Class> classes;

  final Fragment$Group? group;

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
    if (!(other is Fragment$UserAdminOn$adminOn) ||
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

extension UtilityExtension$Fragment$UserAdminOn$adminOn
    on Fragment$UserAdminOn$adminOn {
  CopyWith$Fragment$UserAdminOn$adminOn<Fragment$UserAdminOn$adminOn>
      get copyWith => CopyWith$Fragment$UserAdminOn$adminOn(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$UserAdminOn$adminOn<TRes> {
  factory CopyWith$Fragment$UserAdminOn$adminOn(
    Fragment$UserAdminOn$adminOn instance,
    TRes Function(Fragment$UserAdminOn$adminOn) then,
  ) = _CopyWithImpl$Fragment$UserAdminOn$adminOn;

  factory CopyWith$Fragment$UserAdminOn$adminOn.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserAdminOn$adminOn;

  TRes call({
    UuidValue? permissionId,
    Fragment$Area? area,
    bool? areaAllowEdit,
    bool? areaAdminOnUsers,
    Fragment$Service? service,
    Fragment$UserAdminOn$adminOn$serviceStudyYearData? serviceStudyYearData,
    bool? serviceGender,
    bool? serviceAllowEdit,
    bool? serviceAdminOnUsers,
    List<Fragment$Class>? classes,
    Fragment$Group? group,
    bool? groupAllowEdit,
    bool? groupAdminOnUsers,
    String? $__typename,
  });
  CopyWith$Fragment$Area<TRes> get area;
  CopyWith$Fragment$Service<TRes> get service;
  CopyWith$Fragment$UserAdminOn$adminOn$serviceStudyYearData<TRes>
      get serviceStudyYearData;
  TRes classes(
      Iterable<Fragment$Class> Function(
              Iterable<CopyWith$Fragment$Class<Fragment$Class>>)
          _fn);
  CopyWith$Fragment$Group<TRes> get group;
}

class _CopyWithImpl$Fragment$UserAdminOn$adminOn<TRes>
    implements CopyWith$Fragment$UserAdminOn$adminOn<TRes> {
  _CopyWithImpl$Fragment$UserAdminOn$adminOn(
    this._instance,
    this._then,
  );

  final Fragment$UserAdminOn$adminOn _instance;

  final TRes Function(Fragment$UserAdminOn$adminOn) _then;

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
      _then(Fragment$UserAdminOn$adminOn(
        permissionId: permissionId == _undefined || permissionId == null
            ? _instance.permissionId
            : (permissionId as UuidValue),
        area: area == _undefined ? _instance.area : (area as Fragment$Area?),
        areaAllowEdit: areaAllowEdit == _undefined
            ? _instance.areaAllowEdit
            : (areaAllowEdit as bool?),
        areaAdminOnUsers: areaAdminOnUsers == _undefined
            ? _instance.areaAdminOnUsers
            : (areaAdminOnUsers as bool?),
        service: service == _undefined
            ? _instance.service
            : (service as Fragment$Service?),
        serviceStudyYearData: serviceStudyYearData == _undefined
            ? _instance.serviceStudyYearData
            : (serviceStudyYearData
                as Fragment$UserAdminOn$adminOn$serviceStudyYearData?),
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
            : (classes as List<Fragment$Class>),
        group:
            group == _undefined ? _instance.group : (group as Fragment$Group?),
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
  CopyWith$Fragment$Area<TRes> get area {
    final local$area = _instance.area;
    return local$area == null
        ? CopyWith$Fragment$Area.stub(_then(_instance))
        : CopyWith$Fragment$Area(local$area, (e) => call(area: e));
  }

  CopyWith$Fragment$Service<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith$Fragment$Service.stub(_then(_instance))
        : CopyWith$Fragment$Service(local$service, (e) => call(service: e));
  }

  CopyWith$Fragment$UserAdminOn$adminOn$serviceStudyYearData<TRes>
      get serviceStudyYearData {
    final local$serviceStudyYearData = _instance.serviceStudyYearData;
    return local$serviceStudyYearData == null
        ? CopyWith$Fragment$UserAdminOn$adminOn$serviceStudyYearData.stub(
            _then(_instance))
        : CopyWith$Fragment$UserAdminOn$adminOn$serviceStudyYearData(
            local$serviceStudyYearData, (e) => call(serviceStudyYearData: e));
  }

  TRes classes(
          Iterable<Fragment$Class> Function(
                  Iterable<CopyWith$Fragment$Class<Fragment$Class>>)
              _fn) =>
      call(
          classes: _fn(_instance.classes.map((e) => CopyWith$Fragment$Class(
                e,
                (i) => i,
              ))).toList());
  CopyWith$Fragment$Group<TRes> get group {
    final local$group = _instance.group;
    return local$group == null
        ? CopyWith$Fragment$Group.stub(_then(_instance))
        : CopyWith$Fragment$Group(local$group, (e) => call(group: e));
  }
}

class _CopyWithStubImpl$Fragment$UserAdminOn$adminOn<TRes>
    implements CopyWith$Fragment$UserAdminOn$adminOn<TRes> {
  _CopyWithStubImpl$Fragment$UserAdminOn$adminOn(this._res);

  TRes _res;

  call({
    UuidValue? permissionId,
    Fragment$Area? area,
    bool? areaAllowEdit,
    bool? areaAdminOnUsers,
    Fragment$Service? service,
    Fragment$UserAdminOn$adminOn$serviceStudyYearData? serviceStudyYearData,
    bool? serviceGender,
    bool? serviceAllowEdit,
    bool? serviceAdminOnUsers,
    List<Fragment$Class>? classes,
    Fragment$Group? group,
    bool? groupAllowEdit,
    bool? groupAdminOnUsers,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$Area<TRes> get area => CopyWith$Fragment$Area.stub(_res);
  CopyWith$Fragment$Service<TRes> get service =>
      CopyWith$Fragment$Service.stub(_res);
  CopyWith$Fragment$UserAdminOn$adminOn$serviceStudyYearData<TRes>
      get serviceStudyYearData =>
          CopyWith$Fragment$UserAdminOn$adminOn$serviceStudyYearData.stub(_res);
  classes(_fn) => _res;
  CopyWith$Fragment$Group<TRes> get group => CopyWith$Fragment$Group.stub(_res);
}

class Fragment$UserAdminOn$adminOn$serviceStudyYearData {
  Fragment$UserAdminOn$adminOn$serviceStudyYearData({
    required this.name,
    required this.order,
    this.$__typename = 'StudyYears',
  });

  factory Fragment$UserAdminOn$adminOn$serviceStudyYearData.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$order = json['order'];
    final l$$__typename = json['__typename'];
    return Fragment$UserAdminOn$adminOn$serviceStudyYearData(
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
    if (!(other is Fragment$UserAdminOn$adminOn$serviceStudyYearData) ||
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

extension UtilityExtension$Fragment$UserAdminOn$adminOn$serviceStudyYearData
    on Fragment$UserAdminOn$adminOn$serviceStudyYearData {
  CopyWith$Fragment$UserAdminOn$adminOn$serviceStudyYearData<
          Fragment$UserAdminOn$adminOn$serviceStudyYearData>
      get copyWith =>
          CopyWith$Fragment$UserAdminOn$adminOn$serviceStudyYearData(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$UserAdminOn$adminOn$serviceStudyYearData<
    TRes> {
  factory CopyWith$Fragment$UserAdminOn$adminOn$serviceStudyYearData(
    Fragment$UserAdminOn$adminOn$serviceStudyYearData instance,
    TRes Function(Fragment$UserAdminOn$adminOn$serviceStudyYearData) then,
  ) = _CopyWithImpl$Fragment$UserAdminOn$adminOn$serviceStudyYearData;

  factory CopyWith$Fragment$UserAdminOn$adminOn$serviceStudyYearData.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$UserAdminOn$adminOn$serviceStudyYearData;

  TRes call({
    String? name,
    int? order,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$UserAdminOn$adminOn$serviceStudyYearData<TRes>
    implements
        CopyWith$Fragment$UserAdminOn$adminOn$serviceStudyYearData<TRes> {
  _CopyWithImpl$Fragment$UserAdminOn$adminOn$serviceStudyYearData(
    this._instance,
    this._then,
  );

  final Fragment$UserAdminOn$adminOn$serviceStudyYearData _instance;

  final TRes Function(Fragment$UserAdminOn$adminOn$serviceStudyYearData) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? order = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$UserAdminOn$adminOn$serviceStudyYearData(
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

class _CopyWithStubImpl$Fragment$UserAdminOn$adminOn$serviceStudyYearData<TRes>
    implements
        CopyWith$Fragment$UserAdminOn$adminOn$serviceStudyYearData<TRes> {
  _CopyWithStubImpl$Fragment$UserAdminOn$adminOn$serviceStudyYearData(
      this._res);

  TRes _res;

  call({
    String? name,
    int? order,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Fragment$AttendanceFields {
  factory Variables$Fragment$AttendanceFields({
    DateTime? dateFrom,
    DateTime? dateTo,
    UuidValue? personId,
    List<UuidValue>? servicesIds,
    List<UuidValue>? classesIds,
    List<UuidValue>? groupsIds,
  }) =>
      Variables$Fragment$AttendanceFields._({
        if (dateFrom != null) r'dateFrom': dateFrom,
        if (dateTo != null) r'dateTo': dateTo,
        if (personId != null) r'personId': personId,
        if (servicesIds != null) r'servicesIds': servicesIds,
        if (classesIds != null) r'classesIds': classesIds,
        if (groupsIds != null) r'groupsIds': groupsIds,
      });

  Variables$Fragment$AttendanceFields._(this._$data);

  factory Variables$Fragment$AttendanceFields.fromJson(
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
    return Variables$Fragment$AttendanceFields._(result$data);
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

  CopyWith$Variables$Fragment$AttendanceFields<
          Variables$Fragment$AttendanceFields>
      get copyWith => CopyWith$Variables$Fragment$AttendanceFields(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Fragment$AttendanceFields) ||
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

abstract class CopyWith$Variables$Fragment$AttendanceFields<TRes> {
  factory CopyWith$Variables$Fragment$AttendanceFields(
    Variables$Fragment$AttendanceFields instance,
    TRes Function(Variables$Fragment$AttendanceFields) then,
  ) = _CopyWithImpl$Variables$Fragment$AttendanceFields;

  factory CopyWith$Variables$Fragment$AttendanceFields.stub(TRes res) =
      _CopyWithStubImpl$Variables$Fragment$AttendanceFields;

  TRes call({
    DateTime? dateFrom,
    DateTime? dateTo,
    UuidValue? personId,
    List<UuidValue>? servicesIds,
    List<UuidValue>? classesIds,
    List<UuidValue>? groupsIds,
  });
}

class _CopyWithImpl$Variables$Fragment$AttendanceFields<TRes>
    implements CopyWith$Variables$Fragment$AttendanceFields<TRes> {
  _CopyWithImpl$Variables$Fragment$AttendanceFields(
    this._instance,
    this._then,
  );

  final Variables$Fragment$AttendanceFields _instance;

  final TRes Function(Variables$Fragment$AttendanceFields) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dateFrom = _undefined,
    Object? dateTo = _undefined,
    Object? personId = _undefined,
    Object? servicesIds = _undefined,
    Object? classesIds = _undefined,
    Object? groupsIds = _undefined,
  }) =>
      _then(Variables$Fragment$AttendanceFields._({
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

class _CopyWithStubImpl$Variables$Fragment$AttendanceFields<TRes>
    implements CopyWith$Variables$Fragment$AttendanceFields<TRes> {
  _CopyWithStubImpl$Variables$Fragment$AttendanceFields(this._res);

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

class Fragment$AttendanceFields {
  Fragment$AttendanceFields({
    required this.servicesHistory,
    required this.classesHistory,
    required this.groupsHistory,
    this.$__typename = 'AuthUsersData',
  });

  factory Fragment$AttendanceFields.fromJson(Map<String, dynamic> json) {
    final l$servicesHistory = json['servicesHistory'];
    final l$classesHistory = json['classesHistory'];
    final l$groupsHistory = json['groupsHistory'];
    final l$$__typename = json['__typename'];
    return Fragment$AttendanceFields(
      servicesHistory: (l$servicesHistory as List<dynamic>)
          .map((e) => Fragment$AttendanceFields$servicesHistory.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      classesHistory: (l$classesHistory as List<dynamic>)
          .map((e) => Fragment$AttendanceFields$classesHistory.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      groupsHistory: (l$groupsHistory as List<dynamic>)
          .map((e) => Fragment$AttendanceFields$groupsHistory.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$AttendanceFields$servicesHistory> servicesHistory;

  final List<Fragment$AttendanceFields$classesHistory> classesHistory;

  final List<Fragment$AttendanceFields$groupsHistory> groupsHistory;

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
    if (!(other is Fragment$AttendanceFields) ||
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

extension UtilityExtension$Fragment$AttendanceFields
    on Fragment$AttendanceFields {
  CopyWith$Fragment$AttendanceFields<Fragment$AttendanceFields> get copyWith =>
      CopyWith$Fragment$AttendanceFields(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$AttendanceFields<TRes> {
  factory CopyWith$Fragment$AttendanceFields(
    Fragment$AttendanceFields instance,
    TRes Function(Fragment$AttendanceFields) then,
  ) = _CopyWithImpl$Fragment$AttendanceFields;

  factory CopyWith$Fragment$AttendanceFields.stub(TRes res) =
      _CopyWithStubImpl$Fragment$AttendanceFields;

  TRes call({
    List<Fragment$AttendanceFields$servicesHistory>? servicesHistory,
    List<Fragment$AttendanceFields$classesHistory>? classesHistory,
    List<Fragment$AttendanceFields$groupsHistory>? groupsHistory,
    String? $__typename,
  });
  TRes servicesHistory(
      Iterable<Fragment$AttendanceFields$servicesHistory> Function(
              Iterable<
                  CopyWith$Fragment$AttendanceFields$servicesHistory<
                      Fragment$AttendanceFields$servicesHistory>>)
          _fn);
  TRes classesHistory(
      Iterable<Fragment$AttendanceFields$classesHistory> Function(
              Iterable<
                  CopyWith$Fragment$AttendanceFields$classesHistory<
                      Fragment$AttendanceFields$classesHistory>>)
          _fn);
  TRes groupsHistory(
      Iterable<Fragment$AttendanceFields$groupsHistory> Function(
              Iterable<
                  CopyWith$Fragment$AttendanceFields$groupsHistory<
                      Fragment$AttendanceFields$groupsHistory>>)
          _fn);
}

class _CopyWithImpl$Fragment$AttendanceFields<TRes>
    implements CopyWith$Fragment$AttendanceFields<TRes> {
  _CopyWithImpl$Fragment$AttendanceFields(
    this._instance,
    this._then,
  );

  final Fragment$AttendanceFields _instance;

  final TRes Function(Fragment$AttendanceFields) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? servicesHistory = _undefined,
    Object? classesHistory = _undefined,
    Object? groupsHistory = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$AttendanceFields(
        servicesHistory:
            servicesHistory == _undefined || servicesHistory == null
                ? _instance.servicesHistory
                : (servicesHistory
                    as List<Fragment$AttendanceFields$servicesHistory>),
        classesHistory: classesHistory == _undefined || classesHistory == null
            ? _instance.classesHistory
            : (classesHistory
                as List<Fragment$AttendanceFields$classesHistory>),
        groupsHistory: groupsHistory == _undefined || groupsHistory == null
            ? _instance.groupsHistory
            : (groupsHistory as List<Fragment$AttendanceFields$groupsHistory>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes servicesHistory(
          Iterable<Fragment$AttendanceFields$servicesHistory> Function(
                  Iterable<
                      CopyWith$Fragment$AttendanceFields$servicesHistory<
                          Fragment$AttendanceFields$servicesHistory>>)
              _fn) =>
      call(
          servicesHistory: _fn(_instance.servicesHistory
              .map((e) => CopyWith$Fragment$AttendanceFields$servicesHistory(
                    e,
                    (i) => i,
                  ))).toList());
  TRes classesHistory(
          Iterable<Fragment$AttendanceFields$classesHistory> Function(
                  Iterable<
                      CopyWith$Fragment$AttendanceFields$classesHistory<
                          Fragment$AttendanceFields$classesHistory>>)
              _fn) =>
      call(
          classesHistory: _fn(_instance.classesHistory
              .map((e) => CopyWith$Fragment$AttendanceFields$classesHistory(
                    e,
                    (i) => i,
                  ))).toList());
  TRes groupsHistory(
          Iterable<Fragment$AttendanceFields$groupsHistory> Function(
                  Iterable<
                      CopyWith$Fragment$AttendanceFields$groupsHistory<
                          Fragment$AttendanceFields$groupsHistory>>)
              _fn) =>
      call(
          groupsHistory: _fn(_instance.groupsHistory
              .map((e) => CopyWith$Fragment$AttendanceFields$groupsHistory(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Fragment$AttendanceFields<TRes>
    implements CopyWith$Fragment$AttendanceFields<TRes> {
  _CopyWithStubImpl$Fragment$AttendanceFields(this._res);

  TRes _res;

  call({
    List<Fragment$AttendanceFields$servicesHistory>? servicesHistory,
    List<Fragment$AttendanceFields$classesHistory>? classesHistory,
    List<Fragment$AttendanceFields$groupsHistory>? groupsHistory,
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

class Fragment$AttendanceFields$servicesHistory {
  Fragment$AttendanceFields$servicesHistory({
    required this.permissionId,
    this.service,
    this.$__typename = 'AuthUsersAdminOn',
  });

  factory Fragment$AttendanceFields$servicesHistory.fromJson(
      Map<String, dynamic> json) {
    final l$permissionId = json['permissionId'];
    final l$service = json['service'];
    final l$$__typename = json['__typename'];
    return Fragment$AttendanceFields$servicesHistory(
      permissionId: stringToUuid(l$permissionId),
      service: l$service == null
          ? null
          : Fragment$AttendanceFields$servicesHistory$service.fromJson(
              (l$service as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue permissionId;

  final Fragment$AttendanceFields$servicesHistory$service? service;

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
    if (!(other is Fragment$AttendanceFields$servicesHistory) ||
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

extension UtilityExtension$Fragment$AttendanceFields$servicesHistory
    on Fragment$AttendanceFields$servicesHistory {
  CopyWith$Fragment$AttendanceFields$servicesHistory<
          Fragment$AttendanceFields$servicesHistory>
      get copyWith => CopyWith$Fragment$AttendanceFields$servicesHistory(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$AttendanceFields$servicesHistory<TRes> {
  factory CopyWith$Fragment$AttendanceFields$servicesHistory(
    Fragment$AttendanceFields$servicesHistory instance,
    TRes Function(Fragment$AttendanceFields$servicesHistory) then,
  ) = _CopyWithImpl$Fragment$AttendanceFields$servicesHistory;

  factory CopyWith$Fragment$AttendanceFields$servicesHistory.stub(TRes res) =
      _CopyWithStubImpl$Fragment$AttendanceFields$servicesHistory;

  TRes call({
    UuidValue? permissionId,
    Fragment$AttendanceFields$servicesHistory$service? service,
    String? $__typename,
  });
  CopyWith$Fragment$AttendanceFields$servicesHistory$service<TRes> get service;
}

class _CopyWithImpl$Fragment$AttendanceFields$servicesHistory<TRes>
    implements CopyWith$Fragment$AttendanceFields$servicesHistory<TRes> {
  _CopyWithImpl$Fragment$AttendanceFields$servicesHistory(
    this._instance,
    this._then,
  );

  final Fragment$AttendanceFields$servicesHistory _instance;

  final TRes Function(Fragment$AttendanceFields$servicesHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? permissionId = _undefined,
    Object? service = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$AttendanceFields$servicesHistory(
        permissionId: permissionId == _undefined || permissionId == null
            ? _instance.permissionId
            : (permissionId as UuidValue),
        service: service == _undefined
            ? _instance.service
            : (service as Fragment$AttendanceFields$servicesHistory$service?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$AttendanceFields$servicesHistory$service<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith$Fragment$AttendanceFields$servicesHistory$service.stub(
            _then(_instance))
        : CopyWith$Fragment$AttendanceFields$servicesHistory$service(
            local$service, (e) => call(service: e));
  }
}

class _CopyWithStubImpl$Fragment$AttendanceFields$servicesHistory<TRes>
    implements CopyWith$Fragment$AttendanceFields$servicesHistory<TRes> {
  _CopyWithStubImpl$Fragment$AttendanceFields$servicesHistory(this._res);

  TRes _res;

  call({
    UuidValue? permissionId,
    Fragment$AttendanceFields$servicesHistory$service? service,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$AttendanceFields$servicesHistory$service<TRes>
      get service =>
          CopyWith$Fragment$AttendanceFields$servicesHistory$service.stub(_res);
}

class Fragment$AttendanceFields$servicesHistory$service
    implements Fragment$Service, Fragment$ServiceNoPhoto {
  Fragment$AttendanceFields$servicesHistory$service({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Services',
    this.photoUpdatedAt,
    required this.attendanceHistoryAggregate,
    required this.attendanceDaysConstraintsAggregate,
  });

  factory Fragment$AttendanceFields$servicesHistory$service.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$attendanceHistoryAggregate = json['attendanceHistoryAggregate'];
    final l$attendanceDaysConstraintsAggregate =
        json['attendanceDaysConstraintsAggregate'];
    return Fragment$AttendanceFields$servicesHistory$service(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      attendanceHistoryAggregate:
          Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate
              .fromJson((l$attendanceHistoryAggregate as Map<String, dynamic>)),
      attendanceDaysConstraintsAggregate:
          Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate
              .fromJson((l$attendanceDaysConstraintsAggregate
                  as Map<String, dynamic>)),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate
      attendanceHistoryAggregate;

  final Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate
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
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final l$attendanceDaysConstraintsAggregate =
        attendanceDaysConstraintsAggregate;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
      l$photoUpdatedAt,
      l$attendanceHistoryAggregate,
      l$attendanceDaysConstraintsAggregate,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$AttendanceFields$servicesHistory$service) ||
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

extension UtilityExtension$Fragment$AttendanceFields$servicesHistory$service
    on Fragment$AttendanceFields$servicesHistory$service {
  CopyWith$Fragment$AttendanceFields$servicesHistory$service<
          Fragment$AttendanceFields$servicesHistory$service>
      get copyWith =>
          CopyWith$Fragment$AttendanceFields$servicesHistory$service(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$AttendanceFields$servicesHistory$service<
    TRes> {
  factory CopyWith$Fragment$AttendanceFields$servicesHistory$service(
    Fragment$AttendanceFields$servicesHistory$service instance,
    TRes Function(Fragment$AttendanceFields$servicesHistory$service) then,
  ) = _CopyWithImpl$Fragment$AttendanceFields$servicesHistory$service;

  factory CopyWith$Fragment$AttendanceFields$servicesHistory$service.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$AttendanceFields$servicesHistory$service;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate?
        attendanceHistoryAggregate,
    Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate?
        attendanceDaysConstraintsAggregate,
  });
  CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate;
  CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate<
      TRes> get attendanceDaysConstraintsAggregate;
}

class _CopyWithImpl$Fragment$AttendanceFields$servicesHistory$service<TRes>
    implements
        CopyWith$Fragment$AttendanceFields$servicesHistory$service<TRes> {
  _CopyWithImpl$Fragment$AttendanceFields$servicesHistory$service(
    this._instance,
    this._then,
  );

  final Fragment$AttendanceFields$servicesHistory$service _instance;

  final TRes Function(Fragment$AttendanceFields$servicesHistory$service) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? attendanceHistoryAggregate = _undefined,
    Object? attendanceDaysConstraintsAggregate = _undefined,
  }) =>
      _then(Fragment$AttendanceFields$servicesHistory$service(
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
        attendanceHistoryAggregate: attendanceHistoryAggregate == _undefined ||
                attendanceHistoryAggregate == null
            ? _instance.attendanceHistoryAggregate
            : (attendanceHistoryAggregate
                as Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate),
        attendanceDaysConstraintsAggregate: attendanceDaysConstraintsAggregate ==
                    _undefined ||
                attendanceDaysConstraintsAggregate == null
            ? _instance.attendanceDaysConstraintsAggregate
            : (attendanceDaysConstraintsAggregate
                as Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate),
      ));
  CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate {
    final local$attendanceHistoryAggregate =
        _instance.attendanceHistoryAggregate;
    return CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate(
        local$attendanceHistoryAggregate,
        (e) => call(attendanceHistoryAggregate: e));
  }

  CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate<
      TRes> get attendanceDaysConstraintsAggregate {
    final local$attendanceDaysConstraintsAggregate =
        _instance.attendanceDaysConstraintsAggregate;
    return CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate(
        local$attendanceDaysConstraintsAggregate,
        (e) => call(attendanceDaysConstraintsAggregate: e));
  }
}

class _CopyWithStubImpl$Fragment$AttendanceFields$servicesHistory$service<TRes>
    implements
        CopyWith$Fragment$AttendanceFields$servicesHistory$service<TRes> {
  _CopyWithStubImpl$Fragment$AttendanceFields$servicesHistory$service(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate?
        attendanceHistoryAggregate,
    Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate?
        attendanceDaysConstraintsAggregate,
  }) =>
      _res;
  CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate<
          TRes>
      get attendanceHistoryAggregate =>
          CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate
              .stub(_res);
  CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate<
          TRes>
      get attendanceDaysConstraintsAggregate =>
          CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate
              .stub(_res);
}

class Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate {
  Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate({
    this.aggregate,
    required this.nodes,
    this.$__typename = 'HistoryAttendanceHistoryAggregate',
  });

  factory Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate(
      aggregate: l$aggregate == null
          ? null
          : Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>)
          .map((e) =>
              Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$nodes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate?
      aggregate;

  final List<
          Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$nodes>
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
    if (!(other
            is Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate) ||
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

extension UtilityExtension$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate
    on Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate {
  CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate<
          Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate>
      get copyWith =>
          CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate<
    TRes> {
  factory CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate(
    Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate
        instance,
    TRes Function(
            Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate)
        then,
  ) = _CopyWithImpl$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate;

  factory CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate;

  TRes call({
    Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate?
        aggregate,
    List<Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$nodes>?
        nodes,
    String? $__typename,
  });
  CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate<
      TRes> get aggregate;
  TRes nodes(
      Iterable<Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$nodes> Function(
              Iterable<
                  CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$nodes<
                      Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$nodes>>)
          _fn);
}

class _CopyWithImpl$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate<
            TRes> {
  _CopyWithImpl$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate(
    this._instance,
    this._then,
  );

  final Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate
      _instance;

  final TRes Function(
          Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aggregate = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate?),
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<
                Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$nodes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate
            .stub(_then(_instance))
        : CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }

  TRes nodes(
          Iterable<Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$nodes> Function(
                  Iterable<
                      CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$nodes<
                          Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$nodes>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes.map((e) =>
              CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$nodes(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate<
            TRes> {
  _CopyWithStubImpl$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate(
      this._res);

  TRes _res;

  call({
    Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate?
        aggregate,
    List<Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$nodes>?
        nodes,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate<
          TRes>
      get aggregate =>
          CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate
              .stub(_res);
  nodes(_fn) => _res;
}

class Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate {
  Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate({
    required this.count,
    this.max,
    this.$__typename = 'HistoryAttendanceHistoryAggregateFields',
  });

  factory Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$max = json['max'];
    final l$$__typename = json['__typename'];
    return Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate(
      count: (l$count as int),
      max: l$max == null
          ? null
          : Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate$max
              .fromJson((l$max as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate$max?
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
    if (!(other
            is Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate) ||
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

extension UtilityExtension$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate
    on Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate {
  CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate<
          Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate>
      get copyWith =>
          CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate<
    TRes> {
  factory CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate(
    Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate
        instance,
    TRes Function(
            Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate)
        then,
  ) = _CopyWithImpl$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate;

  factory CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate;

  TRes call({
    int? count,
    Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  });
  CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate$max<
      TRes> get max;
}

class _CopyWithImpl$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate<
            TRes> {
  _CopyWithImpl$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate(
    this._instance,
    this._then,
  );

  final Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate
      _instance;

  final TRes Function(
          Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        max: max == _undefined
            ? _instance.max
            : (max
                as Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate$max?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate$max<
      TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate$max
            .stub(_then(_instance))
        : CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate$max(
            local$max, (e) => call(max: e));
  }
}

class _CopyWithStubImpl$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate<
            TRes> {
  _CopyWithStubImpl$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate$max<
          TRes>
      get max =>
          CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate$max
              .stub(_res);
}

class Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate$max {
  Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate$max({
    this.dayId,
    this.$__typename = 'HistoryAttendanceHistoryMaxFields',
  });

  factory Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate$max.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate$max(
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
    if (!(other
            is Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate$max) ||
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

extension UtilityExtension$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate$max
    on Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate$max {
  CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate$max<
          Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate$max>
      get copyWith =>
          CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate$max(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate$max<
    TRes> {
  factory CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate$max(
    Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate$max
        instance,
    TRes Function(
            Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate$max)
        then,
  ) = _CopyWithImpl$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate$max;

  factory CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate$max.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate$max;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithImpl$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate$max(
    this._instance,
    this._then,
  );

  final Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate$max
      _instance;

  final TRes Function(
          Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate$max)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate$max(
        dayId: dayId == _undefined ? _instance.dayId : (dayId as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithStubImpl$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$aggregate$max(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$nodes {
  Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$nodes({
    required this.dayId,
    this.$__typename = 'HistoryAttendanceHistory',
  });

  factory Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$nodes(
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
    if (!(other
            is Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$nodes) ||
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

extension UtilityExtension$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$nodes
    on Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$nodes {
  CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$nodes<
          Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$nodes>
      get copyWith =>
          CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$nodes<
    TRes> {
  factory CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$nodes(
    Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$nodes
        instance,
    TRes Function(
            Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$nodes)
        then,
  ) = _CopyWithImpl$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$nodes;

  factory CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$nodes;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$nodes<
        TRes>
    implements
        CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$nodes<
            TRes> {
  _CopyWithImpl$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$nodes(
    this._instance,
    this._then,
  );

  final Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$nodes
      _instance;

  final TRes Function(
          Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$nodes)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$nodes(
        dayId: dayId == _undefined || dayId == null
            ? _instance.dayId
            : (dayId as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$nodes<
        TRes>
    implements
        CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$nodes<
            TRes> {
  _CopyWithStubImpl$Fragment$AttendanceFields$servicesHistory$service$attendanceHistoryAggregate$nodes(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate {
  Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate({
    this.aggregate,
    required this.nodes,
    this.$__typename = 'HistoryAttendanceDaysConstraintsAggregate',
  });

  factory Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate(
      aggregate: l$aggregate == null
          ? null
          : Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>)
          .map((e) =>
              Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate?
      aggregate;

  final List<
          Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes>
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
    if (!(other
            is Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate) ||
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

extension UtilityExtension$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate
    on Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate {
  CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate<
          Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate>
      get copyWith =>
          CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate<
    TRes> {
  factory CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate(
    Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate
        instance,
    TRes Function(
            Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate)
        then,
  ) = _CopyWithImpl$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate;

  factory CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate;

  TRes call({
    Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate?
        aggregate,
    List<Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes>?
        nodes,
    String? $__typename,
  });
  CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate<
      TRes> get aggregate;
  TRes nodes(
      Iterable<Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes> Function(
              Iterable<
                  CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes<
                      Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes>>)
          _fn);
}

class _CopyWithImpl$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate<
        TRes>
    implements
        CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate<
            TRes> {
  _CopyWithImpl$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate(
    this._instance,
    this._then,
  );

  final Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate
      _instance;

  final TRes Function(
          Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aggregate = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate?),
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<
                Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate
            .stub(_then(_instance))
        : CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }

  TRes nodes(
          Iterable<Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes> Function(
                  Iterable<
                      CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes<
                          Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes.map((e) =>
              CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate<
        TRes>
    implements
        CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate<
            TRes> {
  _CopyWithStubImpl$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate(
      this._res);

  TRes _res;

  call({
    Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate?
        aggregate,
    List<Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes>?
        nodes,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate<
          TRes>
      get aggregate =>
          CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate
              .stub(_res);
  nodes(_fn) => _res;
}

class Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate {
  Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate({
    required this.count,
    this.$__typename = 'HistoryAttendanceDaysConstraintsAggregateFields',
  });

  factory Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$$__typename = json['__typename'];
    return Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate(
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
    if (!(other
            is Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate) ||
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

extension UtilityExtension$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate
    on Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate {
  CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate<
          Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate>
      get copyWith =>
          CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate<
    TRes> {
  factory CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate(
    Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate
        instance,
    TRes Function(
            Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate)
        then,
  ) = _CopyWithImpl$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate;

  factory CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate;

  TRes call({
    int? count,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate<
        TRes>
    implements
        CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate<
            TRes> {
  _CopyWithImpl$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate(
    this._instance,
    this._then,
  );

  final Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate
      _instance;

  final TRes Function(
          Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate<
        TRes>
    implements
        CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate<
            TRes> {
  _CopyWithStubImpl$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes {
  Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes({
    required this.dayId,
    this.$__typename = 'HistoryAttendanceDaysConstraints',
  });

  factory Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes(
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
    if (!(other
            is Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes) ||
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

extension UtilityExtension$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes
    on Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes {
  CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes<
          Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes>
      get copyWith =>
          CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes<
    TRes> {
  factory CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes(
    Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes
        instance,
    TRes Function(
            Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes)
        then,
  ) = _CopyWithImpl$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes;

  factory CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes<
        TRes>
    implements
        CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes<
            TRes> {
  _CopyWithImpl$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes(
    this._instance,
    this._then,
  );

  final Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes
      _instance;

  final TRes Function(
          Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes(
        dayId: dayId == _undefined || dayId == null
            ? _instance.dayId
            : (dayId as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes<
        TRes>
    implements
        CopyWith$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes<
            TRes> {
  _CopyWithStubImpl$Fragment$AttendanceFields$servicesHistory$service$attendanceDaysConstraintsAggregate$nodes(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$AttendanceFields$classesHistory {
  Fragment$AttendanceFields$classesHistory({
    required this.permissionId,
    required this.classes,
    this.$__typename = 'AuthUsersAdminOn',
  });

  factory Fragment$AttendanceFields$classesHistory.fromJson(
      Map<String, dynamic> json) {
    final l$permissionId = json['permissionId'];
    final l$classes = json['classes'];
    final l$$__typename = json['__typename'];
    return Fragment$AttendanceFields$classesHistory(
      permissionId: stringToUuid(l$permissionId),
      classes: (l$classes as List<dynamic>)
          .map((e) => Fragment$AttendanceFields$classesHistory$classes.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue permissionId;

  final List<Fragment$AttendanceFields$classesHistory$classes> classes;

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
    if (!(other is Fragment$AttendanceFields$classesHistory) ||
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

extension UtilityExtension$Fragment$AttendanceFields$classesHistory
    on Fragment$AttendanceFields$classesHistory {
  CopyWith$Fragment$AttendanceFields$classesHistory<
          Fragment$AttendanceFields$classesHistory>
      get copyWith => CopyWith$Fragment$AttendanceFields$classesHistory(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$AttendanceFields$classesHistory<TRes> {
  factory CopyWith$Fragment$AttendanceFields$classesHistory(
    Fragment$AttendanceFields$classesHistory instance,
    TRes Function(Fragment$AttendanceFields$classesHistory) then,
  ) = _CopyWithImpl$Fragment$AttendanceFields$classesHistory;

  factory CopyWith$Fragment$AttendanceFields$classesHistory.stub(TRes res) =
      _CopyWithStubImpl$Fragment$AttendanceFields$classesHistory;

  TRes call({
    UuidValue? permissionId,
    List<Fragment$AttendanceFields$classesHistory$classes>? classes,
    String? $__typename,
  });
  TRes classes(
      Iterable<Fragment$AttendanceFields$classesHistory$classes> Function(
              Iterable<
                  CopyWith$Fragment$AttendanceFields$classesHistory$classes<
                      Fragment$AttendanceFields$classesHistory$classes>>)
          _fn);
}

class _CopyWithImpl$Fragment$AttendanceFields$classesHistory<TRes>
    implements CopyWith$Fragment$AttendanceFields$classesHistory<TRes> {
  _CopyWithImpl$Fragment$AttendanceFields$classesHistory(
    this._instance,
    this._then,
  );

  final Fragment$AttendanceFields$classesHistory _instance;

  final TRes Function(Fragment$AttendanceFields$classesHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? permissionId = _undefined,
    Object? classes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$AttendanceFields$classesHistory(
        permissionId: permissionId == _undefined || permissionId == null
            ? _instance.permissionId
            : (permissionId as UuidValue),
        classes: classes == _undefined || classes == null
            ? _instance.classes
            : (classes
                as List<Fragment$AttendanceFields$classesHistory$classes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes classes(
          Iterable<Fragment$AttendanceFields$classesHistory$classes> Function(
                  Iterable<
                      CopyWith$Fragment$AttendanceFields$classesHistory$classes<
                          Fragment$AttendanceFields$classesHistory$classes>>)
              _fn) =>
      call(
          classes: _fn(_instance.classes.map(
              (e) => CopyWith$Fragment$AttendanceFields$classesHistory$classes(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Fragment$AttendanceFields$classesHistory<TRes>
    implements CopyWith$Fragment$AttendanceFields$classesHistory<TRes> {
  _CopyWithStubImpl$Fragment$AttendanceFields$classesHistory(this._res);

  TRes _res;

  call({
    UuidValue? permissionId,
    List<Fragment$AttendanceFields$classesHistory$classes>? classes,
    String? $__typename,
  }) =>
      _res;
  classes(_fn) => _res;
}

class Fragment$AttendanceFields$classesHistory$classes
    implements Fragment$Class, Fragment$ClassNoPhoto {
  Fragment$AttendanceFields$classesHistory$classes({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Classes',
    this.photoUpdatedAt,
    required this.attendanceHistoryAggregate,
    required this.attendanceDaysConstraintsAggregate,
  });

  factory Fragment$AttendanceFields$classesHistory$classes.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$attendanceHistoryAggregate = json['attendanceHistoryAggregate'];
    final l$attendanceDaysConstraintsAggregate =
        json['attendanceDaysConstraintsAggregate'];
    return Fragment$AttendanceFields$classesHistory$classes(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      attendanceHistoryAggregate:
          Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate
              .fromJson((l$attendanceHistoryAggregate as Map<String, dynamic>)),
      attendanceDaysConstraintsAggregate:
          Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate
              .fromJson((l$attendanceDaysConstraintsAggregate
                  as Map<String, dynamic>)),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate
      attendanceHistoryAggregate;

  final Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate
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
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final l$attendanceDaysConstraintsAggregate =
        attendanceDaysConstraintsAggregate;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
      l$photoUpdatedAt,
      l$attendanceHistoryAggregate,
      l$attendanceDaysConstraintsAggregate,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$AttendanceFields$classesHistory$classes) ||
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

extension UtilityExtension$Fragment$AttendanceFields$classesHistory$classes
    on Fragment$AttendanceFields$classesHistory$classes {
  CopyWith$Fragment$AttendanceFields$classesHistory$classes<
          Fragment$AttendanceFields$classesHistory$classes>
      get copyWith => CopyWith$Fragment$AttendanceFields$classesHistory$classes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$AttendanceFields$classesHistory$classes<TRes> {
  factory CopyWith$Fragment$AttendanceFields$classesHistory$classes(
    Fragment$AttendanceFields$classesHistory$classes instance,
    TRes Function(Fragment$AttendanceFields$classesHistory$classes) then,
  ) = _CopyWithImpl$Fragment$AttendanceFields$classesHistory$classes;

  factory CopyWith$Fragment$AttendanceFields$classesHistory$classes.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$AttendanceFields$classesHistory$classes;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate?
        attendanceHistoryAggregate,
    Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate?
        attendanceDaysConstraintsAggregate,
  });
  CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate;
  CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate<
      TRes> get attendanceDaysConstraintsAggregate;
}

class _CopyWithImpl$Fragment$AttendanceFields$classesHistory$classes<TRes>
    implements CopyWith$Fragment$AttendanceFields$classesHistory$classes<TRes> {
  _CopyWithImpl$Fragment$AttendanceFields$classesHistory$classes(
    this._instance,
    this._then,
  );

  final Fragment$AttendanceFields$classesHistory$classes _instance;

  final TRes Function(Fragment$AttendanceFields$classesHistory$classes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? attendanceHistoryAggregate = _undefined,
    Object? attendanceDaysConstraintsAggregate = _undefined,
  }) =>
      _then(Fragment$AttendanceFields$classesHistory$classes(
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
        attendanceHistoryAggregate: attendanceHistoryAggregate == _undefined ||
                attendanceHistoryAggregate == null
            ? _instance.attendanceHistoryAggregate
            : (attendanceHistoryAggregate
                as Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate),
        attendanceDaysConstraintsAggregate: attendanceDaysConstraintsAggregate ==
                    _undefined ||
                attendanceDaysConstraintsAggregate == null
            ? _instance.attendanceDaysConstraintsAggregate
            : (attendanceDaysConstraintsAggregate
                as Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate),
      ));
  CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate {
    final local$attendanceHistoryAggregate =
        _instance.attendanceHistoryAggregate;
    return CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate(
        local$attendanceHistoryAggregate,
        (e) => call(attendanceHistoryAggregate: e));
  }

  CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate<
      TRes> get attendanceDaysConstraintsAggregate {
    final local$attendanceDaysConstraintsAggregate =
        _instance.attendanceDaysConstraintsAggregate;
    return CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate(
        local$attendanceDaysConstraintsAggregate,
        (e) => call(attendanceDaysConstraintsAggregate: e));
  }
}

class _CopyWithStubImpl$Fragment$AttendanceFields$classesHistory$classes<TRes>
    implements CopyWith$Fragment$AttendanceFields$classesHistory$classes<TRes> {
  _CopyWithStubImpl$Fragment$AttendanceFields$classesHistory$classes(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate?
        attendanceHistoryAggregate,
    Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate?
        attendanceDaysConstraintsAggregate,
  }) =>
      _res;
  CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate<
          TRes>
      get attendanceHistoryAggregate =>
          CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate
              .stub(_res);
  CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate<
          TRes>
      get attendanceDaysConstraintsAggregate =>
          CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate
              .stub(_res);
}

class Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate {
  Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate({
    this.aggregate,
    required this.nodes,
    this.$__typename = 'HistoryAttendanceHistoryAggregate',
  });

  factory Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate(
      aggregate: l$aggregate == null
          ? null
          : Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>)
          .map((e) =>
              Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$nodes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate?
      aggregate;

  final List<
          Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$nodes>
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
    if (!(other
            is Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate) ||
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

extension UtilityExtension$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate
    on Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate {
  CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate<
          Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate>
      get copyWith =>
          CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate<
    TRes> {
  factory CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate(
    Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate
        instance,
    TRes Function(
            Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate)
        then,
  ) = _CopyWithImpl$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate;

  factory CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate;

  TRes call({
    Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate?
        aggregate,
    List<Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$nodes>?
        nodes,
    String? $__typename,
  });
  CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate<
      TRes> get aggregate;
  TRes nodes(
      Iterable<Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$nodes> Function(
              Iterable<
                  CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$nodes<
                      Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$nodes>>)
          _fn);
}

class _CopyWithImpl$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate<
            TRes> {
  _CopyWithImpl$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate(
    this._instance,
    this._then,
  );

  final Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate
      _instance;

  final TRes Function(
          Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aggregate = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate?),
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<
                Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$nodes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate
            .stub(_then(_instance))
        : CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }

  TRes nodes(
          Iterable<Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$nodes> Function(
                  Iterable<
                      CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$nodes<
                          Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$nodes>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes.map((e) =>
              CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$nodes(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate<
            TRes> {
  _CopyWithStubImpl$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate(
      this._res);

  TRes _res;

  call({
    Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate?
        aggregate,
    List<Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$nodes>?
        nodes,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate<
          TRes>
      get aggregate =>
          CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate
              .stub(_res);
  nodes(_fn) => _res;
}

class Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate {
  Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate({
    required this.count,
    this.max,
    this.$__typename = 'HistoryAttendanceHistoryAggregateFields',
  });

  factory Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$max = json['max'];
    final l$$__typename = json['__typename'];
    return Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate(
      count: (l$count as int),
      max: l$max == null
          ? null
          : Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate$max
              .fromJson((l$max as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate$max?
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
    if (!(other
            is Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate) ||
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

extension UtilityExtension$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate
    on Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate {
  CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate<
          Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate>
      get copyWith =>
          CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate<
    TRes> {
  factory CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate(
    Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate
        instance,
    TRes Function(
            Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate)
        then,
  ) = _CopyWithImpl$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate;

  factory CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate;

  TRes call({
    int? count,
    Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  });
  CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate$max<
      TRes> get max;
}

class _CopyWithImpl$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate<
            TRes> {
  _CopyWithImpl$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate(
    this._instance,
    this._then,
  );

  final Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate
      _instance;

  final TRes Function(
          Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        max: max == _undefined
            ? _instance.max
            : (max
                as Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate$max?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate$max<
      TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate$max
            .stub(_then(_instance))
        : CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate$max(
            local$max, (e) => call(max: e));
  }
}

class _CopyWithStubImpl$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate<
            TRes> {
  _CopyWithStubImpl$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate$max<
          TRes>
      get max =>
          CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate$max
              .stub(_res);
}

class Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate$max {
  Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate$max({
    this.dayId,
    this.$__typename = 'HistoryAttendanceHistoryMaxFields',
  });

  factory Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate$max.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate$max(
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
    if (!(other
            is Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate$max) ||
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

extension UtilityExtension$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate$max
    on Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate$max {
  CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate$max<
          Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate$max>
      get copyWith =>
          CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate$max(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate$max<
    TRes> {
  factory CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate$max(
    Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate$max
        instance,
    TRes Function(
            Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate$max)
        then,
  ) = _CopyWithImpl$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate$max;

  factory CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate$max.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate$max;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithImpl$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate$max(
    this._instance,
    this._then,
  );

  final Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate$max
      _instance;

  final TRes Function(
          Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate$max)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate$max(
        dayId: dayId == _undefined ? _instance.dayId : (dayId as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithStubImpl$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$aggregate$max(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$nodes {
  Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$nodes({
    required this.dayId,
    this.$__typename = 'HistoryAttendanceHistory',
  });

  factory Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$nodes(
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
    if (!(other
            is Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$nodes) ||
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

extension UtilityExtension$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$nodes
    on Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$nodes {
  CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$nodes<
          Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$nodes>
      get copyWith =>
          CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$nodes<
    TRes> {
  factory CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$nodes(
    Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$nodes
        instance,
    TRes Function(
            Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$nodes)
        then,
  ) = _CopyWithImpl$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$nodes;

  factory CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$nodes;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$nodes<
        TRes>
    implements
        CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$nodes<
            TRes> {
  _CopyWithImpl$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$nodes(
    this._instance,
    this._then,
  );

  final Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$nodes
      _instance;

  final TRes Function(
          Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$nodes)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$nodes(
        dayId: dayId == _undefined || dayId == null
            ? _instance.dayId
            : (dayId as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$nodes<
        TRes>
    implements
        CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$nodes<
            TRes> {
  _CopyWithStubImpl$Fragment$AttendanceFields$classesHistory$classes$attendanceHistoryAggregate$nodes(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate {
  Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate({
    this.aggregate,
    required this.nodes,
    this.$__typename = 'HistoryAttendanceDaysConstraintsAggregate',
  });

  factory Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate(
      aggregate: l$aggregate == null
          ? null
          : Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>)
          .map((e) =>
              Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate?
      aggregate;

  final List<
          Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes>
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
    if (!(other
            is Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate) ||
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

extension UtilityExtension$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate
    on Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate {
  CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate<
          Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate>
      get copyWith =>
          CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate<
    TRes> {
  factory CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate(
    Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate
        instance,
    TRes Function(
            Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate)
        then,
  ) = _CopyWithImpl$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate;

  factory CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate;

  TRes call({
    Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate?
        aggregate,
    List<Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes>?
        nodes,
    String? $__typename,
  });
  CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate<
      TRes> get aggregate;
  TRes nodes(
      Iterable<Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes> Function(
              Iterable<
                  CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes<
                      Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes>>)
          _fn);
}

class _CopyWithImpl$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate<
        TRes>
    implements
        CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate<
            TRes> {
  _CopyWithImpl$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate(
    this._instance,
    this._then,
  );

  final Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate
      _instance;

  final TRes Function(
          Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aggregate = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate?),
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<
                Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate
            .stub(_then(_instance))
        : CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }

  TRes nodes(
          Iterable<Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes> Function(
                  Iterable<
                      CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes<
                          Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes.map((e) =>
              CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate<
        TRes>
    implements
        CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate<
            TRes> {
  _CopyWithStubImpl$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate(
      this._res);

  TRes _res;

  call({
    Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate?
        aggregate,
    List<Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes>?
        nodes,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate<
          TRes>
      get aggregate =>
          CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate
              .stub(_res);
  nodes(_fn) => _res;
}

class Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate {
  Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate({
    required this.count,
    this.$__typename = 'HistoryAttendanceDaysConstraintsAggregateFields',
  });

  factory Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$$__typename = json['__typename'];
    return Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate(
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
    if (!(other
            is Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate) ||
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

extension UtilityExtension$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate
    on Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate {
  CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate<
          Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate>
      get copyWith =>
          CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate<
    TRes> {
  factory CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate(
    Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate
        instance,
    TRes Function(
            Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate)
        then,
  ) = _CopyWithImpl$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate;

  factory CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate;

  TRes call({
    int? count,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate<
        TRes>
    implements
        CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate<
            TRes> {
  _CopyWithImpl$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate(
    this._instance,
    this._then,
  );

  final Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate
      _instance;

  final TRes Function(
          Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate<
        TRes>
    implements
        CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate<
            TRes> {
  _CopyWithStubImpl$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes {
  Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes({
    required this.dayId,
    this.$__typename = 'HistoryAttendanceDaysConstraints',
  });

  factory Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes(
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
    if (!(other
            is Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes) ||
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

extension UtilityExtension$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes
    on Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes {
  CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes<
          Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes>
      get copyWith =>
          CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes<
    TRes> {
  factory CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes(
    Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes
        instance,
    TRes Function(
            Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes)
        then,
  ) = _CopyWithImpl$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes;

  factory CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes<
        TRes>
    implements
        CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes<
            TRes> {
  _CopyWithImpl$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes(
    this._instance,
    this._then,
  );

  final Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes
      _instance;

  final TRes Function(
          Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes(
        dayId: dayId == _undefined || dayId == null
            ? _instance.dayId
            : (dayId as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes<
        TRes>
    implements
        CopyWith$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes<
            TRes> {
  _CopyWithStubImpl$Fragment$AttendanceFields$classesHistory$classes$attendanceDaysConstraintsAggregate$nodes(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$AttendanceFields$groupsHistory {
  Fragment$AttendanceFields$groupsHistory({
    required this.permissionId,
    this.group,
    this.$__typename = 'AuthUsersAdminOn',
  });

  factory Fragment$AttendanceFields$groupsHistory.fromJson(
      Map<String, dynamic> json) {
    final l$permissionId = json['permissionId'];
    final l$group = json['group'];
    final l$$__typename = json['__typename'];
    return Fragment$AttendanceFields$groupsHistory(
      permissionId: stringToUuid(l$permissionId),
      group: l$group == null
          ? null
          : Fragment$AttendanceFields$groupsHistory$group.fromJson(
              (l$group as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue permissionId;

  final Fragment$AttendanceFields$groupsHistory$group? group;

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
    if (!(other is Fragment$AttendanceFields$groupsHistory) ||
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

extension UtilityExtension$Fragment$AttendanceFields$groupsHistory
    on Fragment$AttendanceFields$groupsHistory {
  CopyWith$Fragment$AttendanceFields$groupsHistory<
          Fragment$AttendanceFields$groupsHistory>
      get copyWith => CopyWith$Fragment$AttendanceFields$groupsHistory(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$AttendanceFields$groupsHistory<TRes> {
  factory CopyWith$Fragment$AttendanceFields$groupsHistory(
    Fragment$AttendanceFields$groupsHistory instance,
    TRes Function(Fragment$AttendanceFields$groupsHistory) then,
  ) = _CopyWithImpl$Fragment$AttendanceFields$groupsHistory;

  factory CopyWith$Fragment$AttendanceFields$groupsHistory.stub(TRes res) =
      _CopyWithStubImpl$Fragment$AttendanceFields$groupsHistory;

  TRes call({
    UuidValue? permissionId,
    Fragment$AttendanceFields$groupsHistory$group? group,
    String? $__typename,
  });
  CopyWith$Fragment$AttendanceFields$groupsHistory$group<TRes> get group;
}

class _CopyWithImpl$Fragment$AttendanceFields$groupsHistory<TRes>
    implements CopyWith$Fragment$AttendanceFields$groupsHistory<TRes> {
  _CopyWithImpl$Fragment$AttendanceFields$groupsHistory(
    this._instance,
    this._then,
  );

  final Fragment$AttendanceFields$groupsHistory _instance;

  final TRes Function(Fragment$AttendanceFields$groupsHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? permissionId = _undefined,
    Object? group = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$AttendanceFields$groupsHistory(
        permissionId: permissionId == _undefined || permissionId == null
            ? _instance.permissionId
            : (permissionId as UuidValue),
        group: group == _undefined
            ? _instance.group
            : (group as Fragment$AttendanceFields$groupsHistory$group?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$AttendanceFields$groupsHistory$group<TRes> get group {
    final local$group = _instance.group;
    return local$group == null
        ? CopyWith$Fragment$AttendanceFields$groupsHistory$group.stub(
            _then(_instance))
        : CopyWith$Fragment$AttendanceFields$groupsHistory$group(
            local$group, (e) => call(group: e));
  }
}

class _CopyWithStubImpl$Fragment$AttendanceFields$groupsHistory<TRes>
    implements CopyWith$Fragment$AttendanceFields$groupsHistory<TRes> {
  _CopyWithStubImpl$Fragment$AttendanceFields$groupsHistory(this._res);

  TRes _res;

  call({
    UuidValue? permissionId,
    Fragment$AttendanceFields$groupsHistory$group? group,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$AttendanceFields$groupsHistory$group<TRes> get group =>
      CopyWith$Fragment$AttendanceFields$groupsHistory$group.stub(_res);
}

class Fragment$AttendanceFields$groupsHistory$group
    implements Fragment$Group, Fragment$GroupNoPhoto {
  Fragment$AttendanceFields$groupsHistory$group({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Groups',
    this.photoUpdatedAt,
    required this.attendanceHistoryAggregate,
    required this.attendanceDaysConstraintsAggregate,
  });

  factory Fragment$AttendanceFields$groupsHistory$group.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$attendanceHistoryAggregate = json['attendanceHistoryAggregate'];
    final l$attendanceDaysConstraintsAggregate =
        json['attendanceDaysConstraintsAggregate'];
    return Fragment$AttendanceFields$groupsHistory$group(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      attendanceHistoryAggregate:
          Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate
              .fromJson((l$attendanceHistoryAggregate as Map<String, dynamic>)),
      attendanceDaysConstraintsAggregate:
          Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate
              .fromJson((l$attendanceDaysConstraintsAggregate
                  as Map<String, dynamic>)),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate
      attendanceHistoryAggregate;

  final Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate
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
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final l$attendanceDaysConstraintsAggregate =
        attendanceDaysConstraintsAggregate;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
      l$photoUpdatedAt,
      l$attendanceHistoryAggregate,
      l$attendanceDaysConstraintsAggregate,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$AttendanceFields$groupsHistory$group) ||
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

extension UtilityExtension$Fragment$AttendanceFields$groupsHistory$group
    on Fragment$AttendanceFields$groupsHistory$group {
  CopyWith$Fragment$AttendanceFields$groupsHistory$group<
          Fragment$AttendanceFields$groupsHistory$group>
      get copyWith => CopyWith$Fragment$AttendanceFields$groupsHistory$group(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$AttendanceFields$groupsHistory$group<TRes> {
  factory CopyWith$Fragment$AttendanceFields$groupsHistory$group(
    Fragment$AttendanceFields$groupsHistory$group instance,
    TRes Function(Fragment$AttendanceFields$groupsHistory$group) then,
  ) = _CopyWithImpl$Fragment$AttendanceFields$groupsHistory$group;

  factory CopyWith$Fragment$AttendanceFields$groupsHistory$group.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$AttendanceFields$groupsHistory$group;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate?
        attendanceHistoryAggregate,
    Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate?
        attendanceDaysConstraintsAggregate,
  });
  CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate;
  CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate<
      TRes> get attendanceDaysConstraintsAggregate;
}

class _CopyWithImpl$Fragment$AttendanceFields$groupsHistory$group<TRes>
    implements CopyWith$Fragment$AttendanceFields$groupsHistory$group<TRes> {
  _CopyWithImpl$Fragment$AttendanceFields$groupsHistory$group(
    this._instance,
    this._then,
  );

  final Fragment$AttendanceFields$groupsHistory$group _instance;

  final TRes Function(Fragment$AttendanceFields$groupsHistory$group) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? attendanceHistoryAggregate = _undefined,
    Object? attendanceDaysConstraintsAggregate = _undefined,
  }) =>
      _then(Fragment$AttendanceFields$groupsHistory$group(
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
        attendanceHistoryAggregate: attendanceHistoryAggregate == _undefined ||
                attendanceHistoryAggregate == null
            ? _instance.attendanceHistoryAggregate
            : (attendanceHistoryAggregate
                as Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate),
        attendanceDaysConstraintsAggregate: attendanceDaysConstraintsAggregate ==
                    _undefined ||
                attendanceDaysConstraintsAggregate == null
            ? _instance.attendanceDaysConstraintsAggregate
            : (attendanceDaysConstraintsAggregate
                as Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate),
      ));
  CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate {
    final local$attendanceHistoryAggregate =
        _instance.attendanceHistoryAggregate;
    return CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate(
        local$attendanceHistoryAggregate,
        (e) => call(attendanceHistoryAggregate: e));
  }

  CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate<
      TRes> get attendanceDaysConstraintsAggregate {
    final local$attendanceDaysConstraintsAggregate =
        _instance.attendanceDaysConstraintsAggregate;
    return CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate(
        local$attendanceDaysConstraintsAggregate,
        (e) => call(attendanceDaysConstraintsAggregate: e));
  }
}

class _CopyWithStubImpl$Fragment$AttendanceFields$groupsHistory$group<TRes>
    implements CopyWith$Fragment$AttendanceFields$groupsHistory$group<TRes> {
  _CopyWithStubImpl$Fragment$AttendanceFields$groupsHistory$group(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate?
        attendanceHistoryAggregate,
    Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate?
        attendanceDaysConstraintsAggregate,
  }) =>
      _res;
  CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate<
          TRes>
      get attendanceHistoryAggregate =>
          CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate
              .stub(_res);
  CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate<
          TRes>
      get attendanceDaysConstraintsAggregate =>
          CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate
              .stub(_res);
}

class Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate {
  Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate({
    this.aggregate,
    required this.nodes,
    this.$__typename = 'HistoryAttendanceHistoryAggregate',
  });

  factory Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate(
      aggregate: l$aggregate == null
          ? null
          : Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>)
          .map((e) =>
              Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$nodes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate?
      aggregate;

  final List<
          Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$nodes>
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
    if (!(other
            is Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate) ||
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

extension UtilityExtension$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate
    on Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate {
  CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate<
          Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate>
      get copyWith =>
          CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate<
    TRes> {
  factory CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate(
    Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate
        instance,
    TRes Function(
            Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate)
        then,
  ) = _CopyWithImpl$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate;

  factory CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate;

  TRes call({
    Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate?
        aggregate,
    List<Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$nodes>?
        nodes,
    String? $__typename,
  });
  CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate<
      TRes> get aggregate;
  TRes nodes(
      Iterable<Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$nodes> Function(
              Iterable<
                  CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$nodes<
                      Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$nodes>>)
          _fn);
}

class _CopyWithImpl$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate<
            TRes> {
  _CopyWithImpl$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate(
    this._instance,
    this._then,
  );

  final Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate
      _instance;

  final TRes Function(
          Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aggregate = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate?),
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<
                Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$nodes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate
            .stub(_then(_instance))
        : CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }

  TRes nodes(
          Iterable<Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$nodes> Function(
                  Iterable<
                      CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$nodes<
                          Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$nodes>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes.map((e) =>
              CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$nodes(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate<
            TRes> {
  _CopyWithStubImpl$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate(
      this._res);

  TRes _res;

  call({
    Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate?
        aggregate,
    List<Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$nodes>?
        nodes,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate<
          TRes>
      get aggregate =>
          CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate
              .stub(_res);
  nodes(_fn) => _res;
}

class Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate {
  Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate({
    required this.count,
    this.max,
    this.$__typename = 'HistoryAttendanceHistoryAggregateFields',
  });

  factory Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$max = json['max'];
    final l$$__typename = json['__typename'];
    return Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate(
      count: (l$count as int),
      max: l$max == null
          ? null
          : Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate$max
              .fromJson((l$max as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate$max?
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
    if (!(other
            is Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate) ||
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

extension UtilityExtension$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate
    on Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate {
  CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate<
          Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate>
      get copyWith =>
          CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate<
    TRes> {
  factory CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate(
    Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate
        instance,
    TRes Function(
            Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate)
        then,
  ) = _CopyWithImpl$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate;

  factory CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate;

  TRes call({
    int? count,
    Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  });
  CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate$max<
      TRes> get max;
}

class _CopyWithImpl$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate<
            TRes> {
  _CopyWithImpl$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate(
    this._instance,
    this._then,
  );

  final Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate
      _instance;

  final TRes Function(
          Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        max: max == _undefined
            ? _instance.max
            : (max
                as Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate$max?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate$max<
      TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate$max
            .stub(_then(_instance))
        : CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate$max(
            local$max, (e) => call(max: e));
  }
}

class _CopyWithStubImpl$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate<
            TRes> {
  _CopyWithStubImpl$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate$max<
          TRes>
      get max =>
          CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate$max
              .stub(_res);
}

class Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate$max {
  Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate$max({
    this.dayId,
    this.$__typename = 'HistoryAttendanceHistoryMaxFields',
  });

  factory Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate$max.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate$max(
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
    if (!(other
            is Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate$max) ||
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

extension UtilityExtension$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate$max
    on Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate$max {
  CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate$max<
          Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate$max>
      get copyWith =>
          CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate$max(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate$max<
    TRes> {
  factory CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate$max(
    Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate$max
        instance,
    TRes Function(
            Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate$max)
        then,
  ) = _CopyWithImpl$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate$max;

  factory CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate$max.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate$max;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithImpl$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate$max(
    this._instance,
    this._then,
  );

  final Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate$max
      _instance;

  final TRes Function(
          Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate$max)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate$max(
        dayId: dayId == _undefined ? _instance.dayId : (dayId as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithStubImpl$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$aggregate$max(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$nodes {
  Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$nodes({
    required this.dayId,
    this.$__typename = 'HistoryAttendanceHistory',
  });

  factory Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$nodes(
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
    if (!(other
            is Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$nodes) ||
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

extension UtilityExtension$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$nodes
    on Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$nodes {
  CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$nodes<
          Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$nodes>
      get copyWith =>
          CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$nodes<
    TRes> {
  factory CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$nodes(
    Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$nodes
        instance,
    TRes Function(
            Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$nodes)
        then,
  ) = _CopyWithImpl$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$nodes;

  factory CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$nodes;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$nodes<
        TRes>
    implements
        CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$nodes<
            TRes> {
  _CopyWithImpl$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$nodes(
    this._instance,
    this._then,
  );

  final Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$nodes
      _instance;

  final TRes Function(
          Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$nodes)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$nodes(
        dayId: dayId == _undefined || dayId == null
            ? _instance.dayId
            : (dayId as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$nodes<
        TRes>
    implements
        CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$nodes<
            TRes> {
  _CopyWithStubImpl$Fragment$AttendanceFields$groupsHistory$group$attendanceHistoryAggregate$nodes(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate {
  Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate({
    this.aggregate,
    required this.nodes,
    this.$__typename = 'HistoryAttendanceDaysConstraintsAggregate',
  });

  factory Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate(
      aggregate: l$aggregate == null
          ? null
          : Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>)
          .map((e) =>
              Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate?
      aggregate;

  final List<
          Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes>
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
    if (!(other
            is Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate) ||
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

extension UtilityExtension$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate
    on Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate {
  CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate<
          Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate>
      get copyWith =>
          CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate<
    TRes> {
  factory CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate(
    Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate
        instance,
    TRes Function(
            Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate)
        then,
  ) = _CopyWithImpl$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate;

  factory CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate;

  TRes call({
    Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate?
        aggregate,
    List<Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes>?
        nodes,
    String? $__typename,
  });
  CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate<
      TRes> get aggregate;
  TRes nodes(
      Iterable<Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes> Function(
              Iterable<
                  CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes<
                      Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes>>)
          _fn);
}

class _CopyWithImpl$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate<
        TRes>
    implements
        CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate<
            TRes> {
  _CopyWithImpl$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate(
    this._instance,
    this._then,
  );

  final Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate
      _instance;

  final TRes Function(
          Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aggregate = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate?),
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<
                Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate
            .stub(_then(_instance))
        : CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }

  TRes nodes(
          Iterable<Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes> Function(
                  Iterable<
                      CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes<
                          Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes.map((e) =>
              CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate<
        TRes>
    implements
        CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate<
            TRes> {
  _CopyWithStubImpl$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate(
      this._res);

  TRes _res;

  call({
    Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate?
        aggregate,
    List<Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes>?
        nodes,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate<
          TRes>
      get aggregate =>
          CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate
              .stub(_res);
  nodes(_fn) => _res;
}

class Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate {
  Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate({
    required this.count,
    this.$__typename = 'HistoryAttendanceDaysConstraintsAggregateFields',
  });

  factory Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$$__typename = json['__typename'];
    return Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate(
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
    if (!(other
            is Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate) ||
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

extension UtilityExtension$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate
    on Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate {
  CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate<
          Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate>
      get copyWith =>
          CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate<
    TRes> {
  factory CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate(
    Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate
        instance,
    TRes Function(
            Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate)
        then,
  ) = _CopyWithImpl$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate;

  factory CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate;

  TRes call({
    int? count,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate<
        TRes>
    implements
        CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate<
            TRes> {
  _CopyWithImpl$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate(
    this._instance,
    this._then,
  );

  final Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate
      _instance;

  final TRes Function(
          Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate<
        TRes>
    implements
        CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate<
            TRes> {
  _CopyWithStubImpl$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes {
  Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes({
    required this.dayId,
    this.$__typename = 'HistoryAttendanceDaysConstraints',
  });

  factory Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes(
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
    if (!(other
            is Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes) ||
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

extension UtilityExtension$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes
    on Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes {
  CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes<
          Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes>
      get copyWith =>
          CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes<
    TRes> {
  factory CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes(
    Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes
        instance,
    TRes Function(
            Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes)
        then,
  ) = _CopyWithImpl$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes;

  factory CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes<
        TRes>
    implements
        CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes<
            TRes> {
  _CopyWithImpl$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes(
    this._instance,
    this._then,
  );

  final Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes
      _instance;

  final TRes Function(
          Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes(
        dayId: dayId == _undefined || dayId == null
            ? _instance.dayId
            : (dayId as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes<
        TRes>
    implements
        CopyWith$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes<
            TRes> {
  _CopyWithStubImpl$Fragment$AttendanceFields$groupsHistory$group$attendanceDaysConstraintsAggregate$nodes(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}
