import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Fragment_User {
  Fragment_User({
    required this.id,
    required this.uid,
    required this.name,
    this.email,
    this.photoUpdatedAt,
    this.blurhash,
    this.$__typename = 'User',
  });

  factory Fragment_User.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$uid = json['uid'];
    final l$name = json['name'];
    final l$email = json['email'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$$__typename = json['__typename'];
    return Fragment_User(
      id: (l$id as String),
      uid: (l$uid as String),
      name: (l$name as String),
      email: (l$email as String?),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String uid;

  final String name;

  final String? email;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final String $__typename;

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
    return Object.hashAll([
      l$id,
      l$uid,
      l$name,
      l$email,
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
    if (other is! Fragment_User || runtimeType != other.runtimeType) {
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
    String? id,
    String? uid,
    String? name,
    String? email,
    DateTime? photoUpdatedAt,
    String? blurhash,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_User<TRes>
    implements CopyWith_Fragment_User<TRes> {
  _CopyWithImpl_Fragment_User(this._instance, this._then);

  final Fragment_User _instance;

  final TRes Function(Fragment_User) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? uid = _undefined,
    Object? name = _undefined,
    Object? email = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_User(
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
    ),
  );
}

class _CopyWithStubImpl_Fragment_User<TRes>
    implements CopyWith_Fragment_User<TRes> {
  _CopyWithStubImpl_Fragment_User(this._res);

  TRes _res;

  call({
    String? id,
    String? uid,
    String? name,
    String? email,
    DateTime? photoUpdatedAt,
    String? blurhash,
    String? $__typename,
  }) => _res;
}

const fragmentDefinitionUser = FragmentDefinitionNode(
  name: NameNode(value: 'User'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'User'), isNonNull: false),
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
  definitions: [fragmentDefinitionUser],
);
