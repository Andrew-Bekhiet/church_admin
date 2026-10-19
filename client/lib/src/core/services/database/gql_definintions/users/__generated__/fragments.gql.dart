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
