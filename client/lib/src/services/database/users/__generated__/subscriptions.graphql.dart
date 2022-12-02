import '../../../../../graphql/__generated__/schema.graphql.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables$Subscription$getUserInfoStream {
  factory Variables$Subscription$getUserInfoStream({required UuidValue uid}) =>
      Variables$Subscription$getUserInfoStream._({
        r'uid': uid,
      });

  Variables$Subscription$getUserInfoStream._(this._$data);

  factory Variables$Subscription$getUserInfoStream.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$uid = data['uid'];
    result$data['uid'] = stringToUuid(l$uid);
    return Variables$Subscription$getUserInfoStream._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get uid => (_$data['uid'] as UuidValue);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$uid = uid;
    result$data['uid'] = uuidToString(l$uid);
    return result$data;
  }

  CopyWith$Variables$Subscription$getUserInfoStream<
          Variables$Subscription$getUserInfoStream>
      get copyWith => CopyWith$Variables$Subscription$getUserInfoStream(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$getUserInfoStream) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uid = uid;
    final lOther$uid = other.uid;
    if (l$uid != lOther$uid) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$uid = uid;
    return Object.hashAll([l$uid]);
  }
}

abstract class CopyWith$Variables$Subscription$getUserInfoStream<TRes> {
  factory CopyWith$Variables$Subscription$getUserInfoStream(
    Variables$Subscription$getUserInfoStream instance,
    TRes Function(Variables$Subscription$getUserInfoStream) then,
  ) = _CopyWithImpl$Variables$Subscription$getUserInfoStream;

  factory CopyWith$Variables$Subscription$getUserInfoStream.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$getUserInfoStream;

  TRes call({UuidValue? uid});
}

class _CopyWithImpl$Variables$Subscription$getUserInfoStream<TRes>
    implements CopyWith$Variables$Subscription$getUserInfoStream<TRes> {
  _CopyWithImpl$Variables$Subscription$getUserInfoStream(
    this._instance,
    this._then,
  );

  final Variables$Subscription$getUserInfoStream _instance;

  final TRes Function(Variables$Subscription$getUserInfoStream) _then;

  static const _undefined = {};

  TRes call({Object? uid = _undefined}) =>
      _then(Variables$Subscription$getUserInfoStream._({
        ..._instance._$data,
        if (uid != _undefined && uid != null) 'uid': (uid as UuidValue),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$getUserInfoStream<TRes>
    implements CopyWith$Variables$Subscription$getUserInfoStream<TRes> {
  _CopyWithStubImpl$Variables$Subscription$getUserInfoStream(this._res);

  TRes _res;

  call({UuidValue? uid}) => _res;
}

class Subscription$getUserInfoStream {
  Subscription$getUserInfoStream({this.authUsersDataByPk});

  factory Subscription$getUserInfoStream.fromJson(Map<String, dynamic> json) {
    final l$authUsersDataByPk = json['authUsersDataByPk'];
    return Subscription$getUserInfoStream(
        authUsersDataByPk: l$authUsersDataByPk == null
            ? null
            : Subscription$getUserInfoStream$authUsersDataByPk.fromJson(
                (l$authUsersDataByPk as Map<String, dynamic>)));
  }

  final Subscription$getUserInfoStream$authUsersDataByPk? authUsersDataByPk;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$authUsersDataByPk = authUsersDataByPk;
    _resultData['authUsersDataByPk'] = l$authUsersDataByPk?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$authUsersDataByPk = authUsersDataByPk;
    return Object.hashAll([l$authUsersDataByPk]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$getUserInfoStream) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$authUsersDataByPk = authUsersDataByPk;
    final lOther$authUsersDataByPk = other.authUsersDataByPk;
    if (l$authUsersDataByPk != lOther$authUsersDataByPk) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$getUserInfoStream
    on Subscription$getUserInfoStream {
  CopyWith$Subscription$getUserInfoStream<Subscription$getUserInfoStream>
      get copyWith => CopyWith$Subscription$getUserInfoStream(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$getUserInfoStream<TRes> {
  factory CopyWith$Subscription$getUserInfoStream(
    Subscription$getUserInfoStream instance,
    TRes Function(Subscription$getUserInfoStream) then,
  ) = _CopyWithImpl$Subscription$getUserInfoStream;

  factory CopyWith$Subscription$getUserInfoStream.stub(TRes res) =
      _CopyWithStubImpl$Subscription$getUserInfoStream;

  TRes call(
      {Subscription$getUserInfoStream$authUsersDataByPk? authUsersDataByPk});
  CopyWith$Subscription$getUserInfoStream$authUsersDataByPk<TRes>
      get authUsersDataByPk;
}

class _CopyWithImpl$Subscription$getUserInfoStream<TRes>
    implements CopyWith$Subscription$getUserInfoStream<TRes> {
  _CopyWithImpl$Subscription$getUserInfoStream(
    this._instance,
    this._then,
  );

  final Subscription$getUserInfoStream _instance;

  final TRes Function(Subscription$getUserInfoStream) _then;

  static const _undefined = {};

  TRes call({Object? authUsersDataByPk = _undefined}) =>
      _then(Subscription$getUserInfoStream(
          authUsersDataByPk: authUsersDataByPk == _undefined
              ? _instance.authUsersDataByPk
              : (authUsersDataByPk
                  as Subscription$getUserInfoStream$authUsersDataByPk?)));
  CopyWith$Subscription$getUserInfoStream$authUsersDataByPk<TRes>
      get authUsersDataByPk {
    final local$authUsersDataByPk = _instance.authUsersDataByPk;
    return local$authUsersDataByPk == null
        ? CopyWith$Subscription$getUserInfoStream$authUsersDataByPk.stub(
            _then(_instance))
        : CopyWith$Subscription$getUserInfoStream$authUsersDataByPk(
            local$authUsersDataByPk, (e) => call(authUsersDataByPk: e));
  }
}

class _CopyWithStubImpl$Subscription$getUserInfoStream<TRes>
    implements CopyWith$Subscription$getUserInfoStream<TRes> {
  _CopyWithStubImpl$Subscription$getUserInfoStream(this._res);

  TRes _res;

  call({Subscription$getUserInfoStream$authUsersDataByPk? authUsersDataByPk}) =>
      _res;
  CopyWith$Subscription$getUserInfoStream$authUsersDataByPk<TRes>
      get authUsersDataByPk =>
          CopyWith$Subscription$getUserInfoStream$authUsersDataByPk.stub(_res);
}

const documentNodeSubscriptiongetUserInfoStream = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'getUserInfoStream'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'uid')),
        type: NamedTypeNode(
          name: NameNode(value: 'uuid'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'authUsersDataByPk'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'uid'),
            value: VariableNode(name: NameNode(value: 'uid')),
          )
        ],
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
            name: NameNode(value: 'photoUpdatedAt'),
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
            name: NameNode(value: 'person'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
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
                name: NameNode(value: 'address'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'geolocation'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'mainPhone'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'otherPhones'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'birthdate'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'gender'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isShammas'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'shammasLevel'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
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
                name: NameNode(value: 'schoolId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'collegeId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'churchId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'fatherId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isStudent'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'jobId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'jobDescription'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'qualificationId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'personTypeId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'stateId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isServant'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'notes'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'familyId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'storeId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'studyYearId'),
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
                name: NameNode(value: 'photoUpdatedAt'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
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
      )
    ]),
  ),
]);

class Subscription$getUserInfoStream$authUsersDataByPk {
  Subscription$getUserInfoStream$authUsersDataByPk({
    required this.uid,
    required this.name,
    this.photoUpdatedAt,
    required this.email,
    required this.permissions,
    this.person,
    required this.$__typename,
  });

  factory Subscription$getUserInfoStream$authUsersDataByPk.fromJson(
      Map<String, dynamic> json) {
    final l$uid = json['uid'];
    final l$name = json['name'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$email = json['email'];
    final l$permissions = json['permissions'];
    final l$person = json['person'];
    final l$$__typename = json['__typename'];
    return Subscription$getUserInfoStream$authUsersDataByPk(
      uid: stringToUuid(l$uid),
      name: (l$name as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      email: (l$email as String),
      permissions: (l$permissions as List<dynamic>)
          .map((e) =>
              Subscription$getUserInfoStream$authUsersDataByPk$permissions
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      person: l$person == null
          ? null
          : Subscription$getUserInfoStream$authUsersDataByPk$person.fromJson(
              (l$person as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue uid;

  final String name;

  final DateTime? photoUpdatedAt;

  final String email;

  final List<Subscription$getUserInfoStream$authUsersDataByPk$permissions>
      permissions;

  final Subscription$getUserInfoStream$authUsersDataByPk$person? person;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uid = uid;
    _resultData['uid'] = uuidToString(l$uid);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$email = email;
    _resultData['email'] = l$email;
    final l$permissions = permissions;
    _resultData['permissions'] = l$permissions.map((e) => e.toJson()).toList();
    final l$person = person;
    _resultData['person'] = l$person?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uid = uid;
    final l$name = name;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$email = email;
    final l$permissions = permissions;
    final l$person = person;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$uid,
      l$name,
      l$photoUpdatedAt,
      l$email,
      Object.hashAll(l$permissions.map((v) => v)),
      l$person,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$getUserInfoStream$authUsersDataByPk) ||
        runtimeType != other.runtimeType) {
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
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$getUserInfoStream$authUsersDataByPk
    on Subscription$getUserInfoStream$authUsersDataByPk {
  CopyWith$Subscription$getUserInfoStream$authUsersDataByPk<
          Subscription$getUserInfoStream$authUsersDataByPk>
      get copyWith => CopyWith$Subscription$getUserInfoStream$authUsersDataByPk(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$getUserInfoStream$authUsersDataByPk<TRes> {
  factory CopyWith$Subscription$getUserInfoStream$authUsersDataByPk(
    Subscription$getUserInfoStream$authUsersDataByPk instance,
    TRes Function(Subscription$getUserInfoStream$authUsersDataByPk) then,
  ) = _CopyWithImpl$Subscription$getUserInfoStream$authUsersDataByPk;

  factory CopyWith$Subscription$getUserInfoStream$authUsersDataByPk.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$getUserInfoStream$authUsersDataByPk;

  TRes call({
    UuidValue? uid,
    String? name,
    DateTime? photoUpdatedAt,
    String? email,
    List<Subscription$getUserInfoStream$authUsersDataByPk$permissions>?
        permissions,
    Subscription$getUserInfoStream$authUsersDataByPk$person? person,
    String? $__typename,
  });
  TRes permissions(
      Iterable<Subscription$getUserInfoStream$authUsersDataByPk$permissions> Function(
              Iterable<
                  CopyWith$Subscription$getUserInfoStream$authUsersDataByPk$permissions<
                      Subscription$getUserInfoStream$authUsersDataByPk$permissions>>)
          _fn);
  CopyWith$Subscription$getUserInfoStream$authUsersDataByPk$person<TRes>
      get person;
}

class _CopyWithImpl$Subscription$getUserInfoStream$authUsersDataByPk<TRes>
    implements CopyWith$Subscription$getUserInfoStream$authUsersDataByPk<TRes> {
  _CopyWithImpl$Subscription$getUserInfoStream$authUsersDataByPk(
    this._instance,
    this._then,
  );

  final Subscription$getUserInfoStream$authUsersDataByPk _instance;

  final TRes Function(Subscription$getUserInfoStream$authUsersDataByPk) _then;

  static const _undefined = {};

  TRes call({
    Object? uid = _undefined,
    Object? name = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? email = _undefined,
    Object? permissions = _undefined,
    Object? person = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$getUserInfoStream$authUsersDataByPk(
        uid: uid == _undefined || uid == null
            ? _instance.uid
            : (uid as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        email: email == _undefined || email == null
            ? _instance.email
            : (email as String),
        permissions: permissions == _undefined || permissions == null
            ? _instance.permissions
            : (permissions as List<
                Subscription$getUserInfoStream$authUsersDataByPk$permissions>),
        person: person == _undefined
            ? _instance.person
            : (person
                as Subscription$getUserInfoStream$authUsersDataByPk$person?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes permissions(
          Iterable<Subscription$getUserInfoStream$authUsersDataByPk$permissions> Function(
                  Iterable<
                      CopyWith$Subscription$getUserInfoStream$authUsersDataByPk$permissions<
                          Subscription$getUserInfoStream$authUsersDataByPk$permissions>>)
              _fn) =>
      call(
          permissions: _fn(_instance.permissions.map((e) =>
              CopyWith$Subscription$getUserInfoStream$authUsersDataByPk$permissions(
                e,
                (i) => i,
              ))).toList());
  CopyWith$Subscription$getUserInfoStream$authUsersDataByPk$person<TRes>
      get person {
    final local$person = _instance.person;
    return local$person == null
        ? CopyWith$Subscription$getUserInfoStream$authUsersDataByPk$person.stub(
            _then(_instance))
        : CopyWith$Subscription$getUserInfoStream$authUsersDataByPk$person(
            local$person, (e) => call(person: e));
  }
}

class _CopyWithStubImpl$Subscription$getUserInfoStream$authUsersDataByPk<TRes>
    implements CopyWith$Subscription$getUserInfoStream$authUsersDataByPk<TRes> {
  _CopyWithStubImpl$Subscription$getUserInfoStream$authUsersDataByPk(this._res);

  TRes _res;

  call({
    UuidValue? uid,
    String? name,
    DateTime? photoUpdatedAt,
    String? email,
    List<Subscription$getUserInfoStream$authUsersDataByPk$permissions>?
        permissions,
    Subscription$getUserInfoStream$authUsersDataByPk$person? person,
    String? $__typename,
  }) =>
      _res;
  permissions(_fn) => _res;
  CopyWith$Subscription$getUserInfoStream$authUsersDataByPk$person<TRes>
      get person =>
          CopyWith$Subscription$getUserInfoStream$authUsersDataByPk$person.stub(
              _res);
}

class Subscription$getUserInfoStream$authUsersDataByPk$permissions {
  Subscription$getUserInfoStream$authUsersDataByPk$permissions({
    required this.permission,
    required this.$__typename,
  });

  factory Subscription$getUserInfoStream$authUsersDataByPk$permissions.fromJson(
      Map<String, dynamic> json) {
    final l$permission = json['permission'];
    final l$$__typename = json['__typename'];
    return Subscription$getUserInfoStream$authUsersDataByPk$permissions(
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
    if (!(other
            is Subscription$getUserInfoStream$authUsersDataByPk$permissions) ||
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

extension UtilityExtension$Subscription$getUserInfoStream$authUsersDataByPk$permissions
    on Subscription$getUserInfoStream$authUsersDataByPk$permissions {
  CopyWith$Subscription$getUserInfoStream$authUsersDataByPk$permissions<
          Subscription$getUserInfoStream$authUsersDataByPk$permissions>
      get copyWith =>
          CopyWith$Subscription$getUserInfoStream$authUsersDataByPk$permissions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$getUserInfoStream$authUsersDataByPk$permissions<
    TRes> {
  factory CopyWith$Subscription$getUserInfoStream$authUsersDataByPk$permissions(
    Subscription$getUserInfoStream$authUsersDataByPk$permissions instance,
    TRes Function(Subscription$getUserInfoStream$authUsersDataByPk$permissions)
        then,
  ) = _CopyWithImpl$Subscription$getUserInfoStream$authUsersDataByPk$permissions;

  factory CopyWith$Subscription$getUserInfoStream$authUsersDataByPk$permissions.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$getUserInfoStream$authUsersDataByPk$permissions;

  TRes call({
    String? permission,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$getUserInfoStream$authUsersDataByPk$permissions<
        TRes>
    implements
        CopyWith$Subscription$getUserInfoStream$authUsersDataByPk$permissions<
            TRes> {
  _CopyWithImpl$Subscription$getUserInfoStream$authUsersDataByPk$permissions(
    this._instance,
    this._then,
  );

  final Subscription$getUserInfoStream$authUsersDataByPk$permissions _instance;

  final TRes Function(
      Subscription$getUserInfoStream$authUsersDataByPk$permissions) _then;

  static const _undefined = {};

  TRes call({
    Object? permission = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$getUserInfoStream$authUsersDataByPk$permissions(
        permission: permission == _undefined || permission == null
            ? _instance.permission
            : (permission as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$getUserInfoStream$authUsersDataByPk$permissions<
        TRes>
    implements
        CopyWith$Subscription$getUserInfoStream$authUsersDataByPk$permissions<
            TRes> {
  _CopyWithStubImpl$Subscription$getUserInfoStream$authUsersDataByPk$permissions(
      this._res);

  TRes _res;

  call({
    String? permission,
    String? $__typename,
  }) =>
      _res;
}

class Subscription$getUserInfoStream$authUsersDataByPk$person {
  Subscription$getUserInfoStream$authUsersDataByPk$person({
    required this.id,
    required this.name,
    this.address,
    this.geolocation,
    this.mainPhone,
    required this.otherPhones,
    this.birthdate,
    required this.gender,
    required this.isShammas,
    this.shammasLevel,
    this.schoolId,
    this.collegeId,
    this.churchId,
    this.fatherId,
    this.isStudent,
    this.jobId,
    this.jobDescription,
    this.qualificationId,
    this.personTypeId,
    this.stateId,
    required this.isServant,
    this.notes,
    this.familyId,
    this.storeId,
    this.studyYearId,
    this.color,
    this.photoUpdatedAt,
    this.lastKodas,
    this.lastConfession,
    required this.$__typename,
  });

  factory Subscription$getUserInfoStream$authUsersDataByPk$person.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$address = json['address'];
    final l$geolocation = json['geolocation'];
    final l$mainPhone = json['mainPhone'];
    final l$otherPhones = json['otherPhones'];
    final l$birthdate = json['birthdate'];
    final l$gender = json['gender'];
    final l$isShammas = json['isShammas'];
    final l$shammasLevel = json['shammasLevel'];
    final l$schoolId = json['schoolId'];
    final l$collegeId = json['collegeId'];
    final l$churchId = json['churchId'];
    final l$fatherId = json['fatherId'];
    final l$isStudent = json['isStudent'];
    final l$jobId = json['jobId'];
    final l$jobDescription = json['jobDescription'];
    final l$qualificationId = json['qualificationId'];
    final l$personTypeId = json['personTypeId'];
    final l$stateId = json['stateId'];
    final l$isServant = json['isServant'];
    final l$notes = json['notes'];
    final l$familyId = json['familyId'];
    final l$storeId = json['storeId'];
    final l$studyYearId = json['studyYearId'];
    final l$color = json['color'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$lastKodas = json['lastKodas'];
    final l$lastConfession = json['lastConfession'];
    final l$$__typename = json['__typename'];
    return Subscription$getUserInfoStream$authUsersDataByPk$person(
      id: stringToUuid(l$id),
      name: (l$name as String),
      address: (l$address as String?),
      geolocation: (l$geolocation as Map<String, dynamic>?),
      mainPhone: (l$mainPhone as String?),
      otherPhones: (l$otherPhones as Json),
      birthdate: l$birthdate == null ? null : dateFromString(l$birthdate),
      gender: (l$gender as bool),
      isShammas: (l$isShammas as bool),
      shammasLevel: l$shammasLevel == null
          ? null
          : Subscription$getUserInfoStream$authUsersDataByPk$person$shammasLevel
              .fromJson((l$shammasLevel as Map<String, dynamic>)),
      schoolId: l$schoolId == null ? null : stringToUuid(l$schoolId),
      collegeId: l$collegeId == null ? null : stringToUuid(l$collegeId),
      churchId: l$churchId == null ? null : stringToUuid(l$churchId),
      fatherId: l$fatherId == null ? null : stringToUuid(l$fatherId),
      isStudent: (l$isStudent as bool?),
      jobId: l$jobId == null ? null : stringToUuid(l$jobId),
      jobDescription: (l$jobDescription as String?),
      qualificationId:
          l$qualificationId == null ? null : stringToUuid(l$qualificationId),
      personTypeId:
          l$personTypeId == null ? null : stringToUuid(l$personTypeId),
      stateId: l$stateId == null ? null : stringToUuid(l$stateId),
      isServant: (l$isServant as bool),
      notes: (l$notes as String?),
      familyId: l$familyId == null ? null : stringToUuid(l$familyId),
      storeId: l$storeId == null ? null : stringToUuid(l$storeId),
      studyYearId: (l$studyYearId as int?),
      color: (l$color as int?),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      lastKodas: (l$lastKodas as Json?),
      lastConfession: (l$lastConfession as Json?),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final String? address;

  final Map<String, dynamic>? geolocation;

  final String? mainPhone;

  final Json otherPhones;

  final DateTime? birthdate;

  final bool gender;

  final bool isShammas;

  final Subscription$getUserInfoStream$authUsersDataByPk$person$shammasLevel?
      shammasLevel;

  final UuidValue? schoolId;

  final UuidValue? collegeId;

  final UuidValue? churchId;

  final UuidValue? fatherId;

  final bool? isStudent;

  final UuidValue? jobId;

  final String? jobDescription;

  final UuidValue? qualificationId;

  final UuidValue? personTypeId;

  final UuidValue? stateId;

  final bool isServant;

  final String? notes;

  final UuidValue? familyId;

  final UuidValue? storeId;

  final int? studyYearId;

  final int? color;

  final DateTime? photoUpdatedAt;

  final Json? lastKodas;

  final Json? lastConfession;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$address = address;
    _resultData['address'] = l$address;
    final l$geolocation = geolocation;
    _resultData['geolocation'] = l$geolocation;
    final l$mainPhone = mainPhone;
    _resultData['mainPhone'] = l$mainPhone;
    final l$otherPhones = otherPhones;
    _resultData['otherPhones'] = l$otherPhones;
    final l$birthdate = birthdate;
    _resultData['birthdate'] =
        l$birthdate == null ? null : dateToString(l$birthdate);
    final l$gender = gender;
    _resultData['gender'] = l$gender;
    final l$isShammas = isShammas;
    _resultData['isShammas'] = l$isShammas;
    final l$shammasLevel = shammasLevel;
    _resultData['shammasLevel'] = l$shammasLevel?.toJson();
    final l$schoolId = schoolId;
    _resultData['schoolId'] =
        l$schoolId == null ? null : uuidToString(l$schoolId);
    final l$collegeId = collegeId;
    _resultData['collegeId'] =
        l$collegeId == null ? null : uuidToString(l$collegeId);
    final l$churchId = churchId;
    _resultData['churchId'] =
        l$churchId == null ? null : uuidToString(l$churchId);
    final l$fatherId = fatherId;
    _resultData['fatherId'] =
        l$fatherId == null ? null : uuidToString(l$fatherId);
    final l$isStudent = isStudent;
    _resultData['isStudent'] = l$isStudent;
    final l$jobId = jobId;
    _resultData['jobId'] = l$jobId == null ? null : uuidToString(l$jobId);
    final l$jobDescription = jobDescription;
    _resultData['jobDescription'] = l$jobDescription;
    final l$qualificationId = qualificationId;
    _resultData['qualificationId'] =
        l$qualificationId == null ? null : uuidToString(l$qualificationId);
    final l$personTypeId = personTypeId;
    _resultData['personTypeId'] =
        l$personTypeId == null ? null : uuidToString(l$personTypeId);
    final l$stateId = stateId;
    _resultData['stateId'] = l$stateId == null ? null : uuidToString(l$stateId);
    final l$isServant = isServant;
    _resultData['isServant'] = l$isServant;
    final l$notes = notes;
    _resultData['notes'] = l$notes;
    final l$familyId = familyId;
    _resultData['familyId'] =
        l$familyId == null ? null : uuidToString(l$familyId);
    final l$storeId = storeId;
    _resultData['storeId'] = l$storeId == null ? null : uuidToString(l$storeId);
    final l$studyYearId = studyYearId;
    _resultData['studyYearId'] = l$studyYearId;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$lastKodas = lastKodas;
    _resultData['lastKodas'] = l$lastKodas;
    final l$lastConfession = lastConfession;
    _resultData['lastConfession'] = l$lastConfession;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$address = address;
    final l$geolocation = geolocation;
    final l$mainPhone = mainPhone;
    final l$otherPhones = otherPhones;
    final l$birthdate = birthdate;
    final l$gender = gender;
    final l$isShammas = isShammas;
    final l$shammasLevel = shammasLevel;
    final l$schoolId = schoolId;
    final l$collegeId = collegeId;
    final l$churchId = churchId;
    final l$fatherId = fatherId;
    final l$isStudent = isStudent;
    final l$jobId = jobId;
    final l$jobDescription = jobDescription;
    final l$qualificationId = qualificationId;
    final l$personTypeId = personTypeId;
    final l$stateId = stateId;
    final l$isServant = isServant;
    final l$notes = notes;
    final l$familyId = familyId;
    final l$storeId = storeId;
    final l$studyYearId = studyYearId;
    final l$color = color;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$lastKodas = lastKodas;
    final l$lastConfession = lastConfession;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$address,
      l$geolocation,
      l$mainPhone,
      l$otherPhones,
      l$birthdate,
      l$gender,
      l$isShammas,
      l$shammasLevel,
      l$schoolId,
      l$collegeId,
      l$churchId,
      l$fatherId,
      l$isStudent,
      l$jobId,
      l$jobDescription,
      l$qualificationId,
      l$personTypeId,
      l$stateId,
      l$isServant,
      l$notes,
      l$familyId,
      l$storeId,
      l$studyYearId,
      l$color,
      l$photoUpdatedAt,
      l$lastKodas,
      l$lastConfession,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$getUserInfoStream$authUsersDataByPk$person) ||
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
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
      return false;
    }
    final l$geolocation = geolocation;
    final lOther$geolocation = other.geolocation;
    if (l$geolocation != lOther$geolocation) {
      return false;
    }
    final l$mainPhone = mainPhone;
    final lOther$mainPhone = other.mainPhone;
    if (l$mainPhone != lOther$mainPhone) {
      return false;
    }
    final l$otherPhones = otherPhones;
    final lOther$otherPhones = other.otherPhones;
    if (l$otherPhones != lOther$otherPhones) {
      return false;
    }
    final l$birthdate = birthdate;
    final lOther$birthdate = other.birthdate;
    if (l$birthdate != lOther$birthdate) {
      return false;
    }
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$isShammas = isShammas;
    final lOther$isShammas = other.isShammas;
    if (l$isShammas != lOther$isShammas) {
      return false;
    }
    final l$shammasLevel = shammasLevel;
    final lOther$shammasLevel = other.shammasLevel;
    if (l$shammasLevel != lOther$shammasLevel) {
      return false;
    }
    final l$schoolId = schoolId;
    final lOther$schoolId = other.schoolId;
    if (l$schoolId != lOther$schoolId) {
      return false;
    }
    final l$collegeId = collegeId;
    final lOther$collegeId = other.collegeId;
    if (l$collegeId != lOther$collegeId) {
      return false;
    }
    final l$churchId = churchId;
    final lOther$churchId = other.churchId;
    if (l$churchId != lOther$churchId) {
      return false;
    }
    final l$fatherId = fatherId;
    final lOther$fatherId = other.fatherId;
    if (l$fatherId != lOther$fatherId) {
      return false;
    }
    final l$isStudent = isStudent;
    final lOther$isStudent = other.isStudent;
    if (l$isStudent != lOther$isStudent) {
      return false;
    }
    final l$jobId = jobId;
    final lOther$jobId = other.jobId;
    if (l$jobId != lOther$jobId) {
      return false;
    }
    final l$jobDescription = jobDescription;
    final lOther$jobDescription = other.jobDescription;
    if (l$jobDescription != lOther$jobDescription) {
      return false;
    }
    final l$qualificationId = qualificationId;
    final lOther$qualificationId = other.qualificationId;
    if (l$qualificationId != lOther$qualificationId) {
      return false;
    }
    final l$personTypeId = personTypeId;
    final lOther$personTypeId = other.personTypeId;
    if (l$personTypeId != lOther$personTypeId) {
      return false;
    }
    final l$stateId = stateId;
    final lOther$stateId = other.stateId;
    if (l$stateId != lOther$stateId) {
      return false;
    }
    final l$isServant = isServant;
    final lOther$isServant = other.isServant;
    if (l$isServant != lOther$isServant) {
      return false;
    }
    final l$notes = notes;
    final lOther$notes = other.notes;
    if (l$notes != lOther$notes) {
      return false;
    }
    final l$familyId = familyId;
    final lOther$familyId = other.familyId;
    if (l$familyId != lOther$familyId) {
      return false;
    }
    final l$storeId = storeId;
    final lOther$storeId = other.storeId;
    if (l$storeId != lOther$storeId) {
      return false;
    }
    final l$studyYearId = studyYearId;
    final lOther$studyYearId = other.studyYearId;
    if (l$studyYearId != lOther$studyYearId) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$getUserInfoStream$authUsersDataByPk$person
    on Subscription$getUserInfoStream$authUsersDataByPk$person {
  CopyWith$Subscription$getUserInfoStream$authUsersDataByPk$person<
          Subscription$getUserInfoStream$authUsersDataByPk$person>
      get copyWith =>
          CopyWith$Subscription$getUserInfoStream$authUsersDataByPk$person(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$getUserInfoStream$authUsersDataByPk$person<
    TRes> {
  factory CopyWith$Subscription$getUserInfoStream$authUsersDataByPk$person(
    Subscription$getUserInfoStream$authUsersDataByPk$person instance,
    TRes Function(Subscription$getUserInfoStream$authUsersDataByPk$person) then,
  ) = _CopyWithImpl$Subscription$getUserInfoStream$authUsersDataByPk$person;

  factory CopyWith$Subscription$getUserInfoStream$authUsersDataByPk$person.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$getUserInfoStream$authUsersDataByPk$person;

  TRes call({
    UuidValue? id,
    String? name,
    String? address,
    Map<String, dynamic>? geolocation,
    String? mainPhone,
    Json? otherPhones,
    DateTime? birthdate,
    bool? gender,
    bool? isShammas,
    Subscription$getUserInfoStream$authUsersDataByPk$person$shammasLevel?
        shammasLevel,
    UuidValue? schoolId,
    UuidValue? collegeId,
    UuidValue? churchId,
    UuidValue? fatherId,
    bool? isStudent,
    UuidValue? jobId,
    String? jobDescription,
    UuidValue? qualificationId,
    UuidValue? personTypeId,
    UuidValue? stateId,
    bool? isServant,
    String? notes,
    UuidValue? familyId,
    UuidValue? storeId,
    int? studyYearId,
    int? color,
    DateTime? photoUpdatedAt,
    Json? lastKodas,
    Json? lastConfession,
    String? $__typename,
  });
  CopyWith$Subscription$getUserInfoStream$authUsersDataByPk$person$shammasLevel<
      TRes> get shammasLevel;
}

class _CopyWithImpl$Subscription$getUserInfoStream$authUsersDataByPk$person<
        TRes>
    implements
        CopyWith$Subscription$getUserInfoStream$authUsersDataByPk$person<TRes> {
  _CopyWithImpl$Subscription$getUserInfoStream$authUsersDataByPk$person(
    this._instance,
    this._then,
  );

  final Subscription$getUserInfoStream$authUsersDataByPk$person _instance;

  final TRes Function(Subscription$getUserInfoStream$authUsersDataByPk$person)
      _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? address = _undefined,
    Object? geolocation = _undefined,
    Object? mainPhone = _undefined,
    Object? otherPhones = _undefined,
    Object? birthdate = _undefined,
    Object? gender = _undefined,
    Object? isShammas = _undefined,
    Object? shammasLevel = _undefined,
    Object? schoolId = _undefined,
    Object? collegeId = _undefined,
    Object? churchId = _undefined,
    Object? fatherId = _undefined,
    Object? isStudent = _undefined,
    Object? jobId = _undefined,
    Object? jobDescription = _undefined,
    Object? qualificationId = _undefined,
    Object? personTypeId = _undefined,
    Object? stateId = _undefined,
    Object? isServant = _undefined,
    Object? notes = _undefined,
    Object? familyId = _undefined,
    Object? storeId = _undefined,
    Object? studyYearId = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? lastKodas = _undefined,
    Object? lastConfession = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$getUserInfoStream$authUsersDataByPk$person(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        address:
            address == _undefined ? _instance.address : (address as String?),
        geolocation: geolocation == _undefined
            ? _instance.geolocation
            : (geolocation as Map<String, dynamic>?),
        mainPhone: mainPhone == _undefined
            ? _instance.mainPhone
            : (mainPhone as String?),
        otherPhones: otherPhones == _undefined || otherPhones == null
            ? _instance.otherPhones
            : (otherPhones as Json),
        birthdate: birthdate == _undefined
            ? _instance.birthdate
            : (birthdate as DateTime?),
        gender: gender == _undefined || gender == null
            ? _instance.gender
            : (gender as bool),
        isShammas: isShammas == _undefined || isShammas == null
            ? _instance.isShammas
            : (isShammas as bool),
        shammasLevel: shammasLevel == _undefined
            ? _instance.shammasLevel
            : (shammasLevel
                as Subscription$getUserInfoStream$authUsersDataByPk$person$shammasLevel?),
        schoolId: schoolId == _undefined
            ? _instance.schoolId
            : (schoolId as UuidValue?),
        collegeId: collegeId == _undefined
            ? _instance.collegeId
            : (collegeId as UuidValue?),
        churchId: churchId == _undefined
            ? _instance.churchId
            : (churchId as UuidValue?),
        fatherId: fatherId == _undefined
            ? _instance.fatherId
            : (fatherId as UuidValue?),
        isStudent: isStudent == _undefined
            ? _instance.isStudent
            : (isStudent as bool?),
        jobId: jobId == _undefined ? _instance.jobId : (jobId as UuidValue?),
        jobDescription: jobDescription == _undefined
            ? _instance.jobDescription
            : (jobDescription as String?),
        qualificationId: qualificationId == _undefined
            ? _instance.qualificationId
            : (qualificationId as UuidValue?),
        personTypeId: personTypeId == _undefined
            ? _instance.personTypeId
            : (personTypeId as UuidValue?),
        stateId:
            stateId == _undefined ? _instance.stateId : (stateId as UuidValue?),
        isServant: isServant == _undefined || isServant == null
            ? _instance.isServant
            : (isServant as bool),
        notes: notes == _undefined ? _instance.notes : (notes as String?),
        familyId: familyId == _undefined
            ? _instance.familyId
            : (familyId as UuidValue?),
        storeId:
            storeId == _undefined ? _instance.storeId : (storeId as UuidValue?),
        studyYearId: studyYearId == _undefined
            ? _instance.studyYearId
            : (studyYearId as int?),
        color: color == _undefined ? _instance.color : (color as int?),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        lastKodas: lastKodas == _undefined
            ? _instance.lastKodas
            : (lastKodas as Json?),
        lastConfession: lastConfession == _undefined
            ? _instance.lastConfession
            : (lastConfession as Json?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Subscription$getUserInfoStream$authUsersDataByPk$person$shammasLevel<
      TRes> get shammasLevel {
    final local$shammasLevel = _instance.shammasLevel;
    return local$shammasLevel == null
        ? CopyWith$Subscription$getUserInfoStream$authUsersDataByPk$person$shammasLevel
            .stub(_then(_instance))
        : CopyWith$Subscription$getUserInfoStream$authUsersDataByPk$person$shammasLevel(
            local$shammasLevel, (e) => call(shammasLevel: e));
  }
}

class _CopyWithStubImpl$Subscription$getUserInfoStream$authUsersDataByPk$person<
        TRes>
    implements
        CopyWith$Subscription$getUserInfoStream$authUsersDataByPk$person<TRes> {
  _CopyWithStubImpl$Subscription$getUserInfoStream$authUsersDataByPk$person(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? address,
    Map<String, dynamic>? geolocation,
    String? mainPhone,
    Json? otherPhones,
    DateTime? birthdate,
    bool? gender,
    bool? isShammas,
    Subscription$getUserInfoStream$authUsersDataByPk$person$shammasLevel?
        shammasLevel,
    UuidValue? schoolId,
    UuidValue? collegeId,
    UuidValue? churchId,
    UuidValue? fatherId,
    bool? isStudent,
    UuidValue? jobId,
    String? jobDescription,
    UuidValue? qualificationId,
    UuidValue? personTypeId,
    UuidValue? stateId,
    bool? isServant,
    String? notes,
    UuidValue? familyId,
    UuidValue? storeId,
    int? studyYearId,
    int? color,
    DateTime? photoUpdatedAt,
    Json? lastKodas,
    Json? lastConfession,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Subscription$getUserInfoStream$authUsersDataByPk$person$shammasLevel<
          TRes>
      get shammasLevel =>
          CopyWith$Subscription$getUserInfoStream$authUsersDataByPk$person$shammasLevel
              .stub(_res);
}

class Subscription$getUserInfoStream$authUsersDataByPk$person$shammasLevel {
  Subscription$getUserInfoStream$authUsersDataByPk$person$shammasLevel({
    required this.id,
    required this.name,
    required this.order,
    required this.$__typename,
  });

  factory Subscription$getUserInfoStream$authUsersDataByPk$person$shammasLevel.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$order = json['order'];
    final l$$__typename = json['__typename'];
    return Subscription$getUserInfoStream$authUsersDataByPk$person$shammasLevel(
      id: stringToUuid(l$id),
      name: (l$name as String),
      order: (l$order as int),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int order;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
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
    final l$id = id;
    final l$name = name;
    final l$order = order;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
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
    if (!(other
            is Subscription$getUserInfoStream$authUsersDataByPk$person$shammasLevel) ||
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

extension UtilityExtension$Subscription$getUserInfoStream$authUsersDataByPk$person$shammasLevel
    on Subscription$getUserInfoStream$authUsersDataByPk$person$shammasLevel {
  CopyWith$Subscription$getUserInfoStream$authUsersDataByPk$person$shammasLevel<
          Subscription$getUserInfoStream$authUsersDataByPk$person$shammasLevel>
      get copyWith =>
          CopyWith$Subscription$getUserInfoStream$authUsersDataByPk$person$shammasLevel(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$getUserInfoStream$authUsersDataByPk$person$shammasLevel<
    TRes> {
  factory CopyWith$Subscription$getUserInfoStream$authUsersDataByPk$person$shammasLevel(
    Subscription$getUserInfoStream$authUsersDataByPk$person$shammasLevel
        instance,
    TRes Function(
            Subscription$getUserInfoStream$authUsersDataByPk$person$shammasLevel)
        then,
  ) = _CopyWithImpl$Subscription$getUserInfoStream$authUsersDataByPk$person$shammasLevel;

  factory CopyWith$Subscription$getUserInfoStream$authUsersDataByPk$person$shammasLevel.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$getUserInfoStream$authUsersDataByPk$person$shammasLevel;

  TRes call({
    UuidValue? id,
    String? name,
    int? order,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$getUserInfoStream$authUsersDataByPk$person$shammasLevel<
        TRes>
    implements
        CopyWith$Subscription$getUserInfoStream$authUsersDataByPk$person$shammasLevel<
            TRes> {
  _CopyWithImpl$Subscription$getUserInfoStream$authUsersDataByPk$person$shammasLevel(
    this._instance,
    this._then,
  );

  final Subscription$getUserInfoStream$authUsersDataByPk$person$shammasLevel
      _instance;

  final TRes Function(
          Subscription$getUserInfoStream$authUsersDataByPk$person$shammasLevel)
      _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? order = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Subscription$getUserInfoStream$authUsersDataByPk$person$shammasLevel(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
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

class _CopyWithStubImpl$Subscription$getUserInfoStream$authUsersDataByPk$person$shammasLevel<
        TRes>
    implements
        CopyWith$Subscription$getUserInfoStream$authUsersDataByPk$person$shammasLevel<
            TRes> {
  _CopyWithStubImpl$Subscription$getUserInfoStream$authUsersDataByPk$person$shammasLevel(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? order,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Subscription$watchUser {
  factory Variables$Subscription$watchUser({required UuidValue uid}) =>
      Variables$Subscription$watchUser._({
        r'uid': uid,
      });

  Variables$Subscription$watchUser._(this._$data);

  factory Variables$Subscription$watchUser.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$uid = data['uid'];
    result$data['uid'] = stringToUuid(l$uid);
    return Variables$Subscription$watchUser._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get uid => (_$data['uid'] as UuidValue);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$uid = uid;
    result$data['uid'] = uuidToString(l$uid);
    return result$data;
  }

  CopyWith$Variables$Subscription$watchUser<Variables$Subscription$watchUser>
      get copyWith => CopyWith$Variables$Subscription$watchUser(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$watchUser) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uid = uid;
    final lOther$uid = other.uid;
    if (l$uid != lOther$uid) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$uid = uid;
    return Object.hashAll([l$uid]);
  }
}

abstract class CopyWith$Variables$Subscription$watchUser<TRes> {
  factory CopyWith$Variables$Subscription$watchUser(
    Variables$Subscription$watchUser instance,
    TRes Function(Variables$Subscription$watchUser) then,
  ) = _CopyWithImpl$Variables$Subscription$watchUser;

  factory CopyWith$Variables$Subscription$watchUser.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$watchUser;

  TRes call({UuidValue? uid});
}

class _CopyWithImpl$Variables$Subscription$watchUser<TRes>
    implements CopyWith$Variables$Subscription$watchUser<TRes> {
  _CopyWithImpl$Variables$Subscription$watchUser(
    this._instance,
    this._then,
  );

  final Variables$Subscription$watchUser _instance;

  final TRes Function(Variables$Subscription$watchUser) _then;

  static const _undefined = {};

  TRes call({Object? uid = _undefined}) =>
      _then(Variables$Subscription$watchUser._({
        ..._instance._$data,
        if (uid != _undefined && uid != null) 'uid': (uid as UuidValue),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$watchUser<TRes>
    implements CopyWith$Variables$Subscription$watchUser<TRes> {
  _CopyWithStubImpl$Variables$Subscription$watchUser(this._res);

  TRes _res;

  call({UuidValue? uid}) => _res;
}

class Subscription$watchUser {
  Subscription$watchUser({this.authUsersDataByPk});

  factory Subscription$watchUser.fromJson(Map<String, dynamic> json) {
    final l$authUsersDataByPk = json['authUsersDataByPk'];
    return Subscription$watchUser(
        authUsersDataByPk: l$authUsersDataByPk == null
            ? null
            : Subscription$watchUser$authUsersDataByPk.fromJson(
                (l$authUsersDataByPk as Map<String, dynamic>)));
  }

  final Subscription$watchUser$authUsersDataByPk? authUsersDataByPk;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$authUsersDataByPk = authUsersDataByPk;
    _resultData['authUsersDataByPk'] = l$authUsersDataByPk?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$authUsersDataByPk = authUsersDataByPk;
    return Object.hashAll([l$authUsersDataByPk]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$watchUser) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$authUsersDataByPk = authUsersDataByPk;
    final lOther$authUsersDataByPk = other.authUsersDataByPk;
    if (l$authUsersDataByPk != lOther$authUsersDataByPk) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$watchUser on Subscription$watchUser {
  CopyWith$Subscription$watchUser<Subscription$watchUser> get copyWith =>
      CopyWith$Subscription$watchUser(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Subscription$watchUser<TRes> {
  factory CopyWith$Subscription$watchUser(
    Subscription$watchUser instance,
    TRes Function(Subscription$watchUser) then,
  ) = _CopyWithImpl$Subscription$watchUser;

  factory CopyWith$Subscription$watchUser.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchUser;

  TRes call({Subscription$watchUser$authUsersDataByPk? authUsersDataByPk});
  CopyWith$Subscription$watchUser$authUsersDataByPk<TRes> get authUsersDataByPk;
}

class _CopyWithImpl$Subscription$watchUser<TRes>
    implements CopyWith$Subscription$watchUser<TRes> {
  _CopyWithImpl$Subscription$watchUser(
    this._instance,
    this._then,
  );

  final Subscription$watchUser _instance;

  final TRes Function(Subscription$watchUser) _then;

  static const _undefined = {};

  TRes call({Object? authUsersDataByPk = _undefined}) =>
      _then(Subscription$watchUser(
          authUsersDataByPk: authUsersDataByPk == _undefined
              ? _instance.authUsersDataByPk
              : (authUsersDataByPk
                  as Subscription$watchUser$authUsersDataByPk?)));
  CopyWith$Subscription$watchUser$authUsersDataByPk<TRes>
      get authUsersDataByPk {
    final local$authUsersDataByPk = _instance.authUsersDataByPk;
    return local$authUsersDataByPk == null
        ? CopyWith$Subscription$watchUser$authUsersDataByPk.stub(
            _then(_instance))
        : CopyWith$Subscription$watchUser$authUsersDataByPk(
            local$authUsersDataByPk, (e) => call(authUsersDataByPk: e));
  }
}

class _CopyWithStubImpl$Subscription$watchUser<TRes>
    implements CopyWith$Subscription$watchUser<TRes> {
  _CopyWithStubImpl$Subscription$watchUser(this._res);

  TRes _res;

  call({Subscription$watchUser$authUsersDataByPk? authUsersDataByPk}) => _res;
  CopyWith$Subscription$watchUser$authUsersDataByPk<TRes>
      get authUsersDataByPk =>
          CopyWith$Subscription$watchUser$authUsersDataByPk.stub(_res);
}

const documentNodeSubscriptionwatchUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'watchUser'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'uid')),
        type: NamedTypeNode(
          name: NameNode(value: 'uuid'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'authUsersDataByPk'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'uid'),
            value: VariableNode(name: NameNode(value: 'uid')),
          )
        ],
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
            name: NameNode(value: 'photoUpdatedAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'lastEdit'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
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
            name: NameNode(value: 'person'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
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
          ),
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
                          value: EnumValueNode(
                              name: NameNode(value: 'ASC_NULLS_LAST')),
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
                      value: EnumValueNode(
                          name: NameNode(value: 'DESC_NULLS_FIRST')),
                    )
                  ]),
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'service'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: 'name'),
                          value: EnumValueNode(
                              name: NameNode(value: 'ASC_NULLS_LAST')),
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
                          value: EnumValueNode(
                              name: NameNode(value: 'ASC_NULLS_LAST')),
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
              ),
              FieldNode(
                name: NameNode(value: 'group'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
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
      )
    ]),
  ),
]);

class Subscription$watchUser$authUsersDataByPk {
  Subscription$watchUser$authUsersDataByPk({
    required this.uid,
    required this.name,
    required this.email,
    this.photoUpdatedAt,
    this.lastEdit,
    required this.permissions,
    this.person,
    required this.adminOn,
    required this.$__typename,
  });

  factory Subscription$watchUser$authUsersDataByPk.fromJson(
      Map<String, dynamic> json) {
    final l$uid = json['uid'];
    final l$name = json['name'];
    final l$email = json['email'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$lastEdit = json['lastEdit'];
    final l$permissions = json['permissions'];
    final l$person = json['person'];
    final l$adminOn = json['adminOn'];
    final l$$__typename = json['__typename'];
    return Subscription$watchUser$authUsersDataByPk(
      uid: stringToUuid(l$uid),
      name: (l$name as String),
      email: (l$email as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      lastEdit: (l$lastEdit as Json?),
      permissions: (l$permissions as List<dynamic>)
          .map((e) =>
              Subscription$watchUser$authUsersDataByPk$permissions.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      person: l$person == null
          ? null
          : Subscription$watchUser$authUsersDataByPk$person.fromJson(
              (l$person as Map<String, dynamic>)),
      adminOn: (l$adminOn as List<dynamic>)
          .map((e) => Subscription$watchUser$authUsersDataByPk$adminOn.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue uid;

  final String name;

  final String email;

  final DateTime? photoUpdatedAt;

  final Json? lastEdit;

  final List<Subscription$watchUser$authUsersDataByPk$permissions> permissions;

  final Subscription$watchUser$authUsersDataByPk$person? person;

  final List<Subscription$watchUser$authUsersDataByPk$adminOn> adminOn;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uid = uid;
    _resultData['uid'] = uuidToString(l$uid);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$lastEdit = lastEdit;
    _resultData['lastEdit'] = l$lastEdit;
    final l$permissions = permissions;
    _resultData['permissions'] = l$permissions.map((e) => e.toJson()).toList();
    final l$person = person;
    _resultData['person'] = l$person?.toJson();
    final l$adminOn = adminOn;
    _resultData['adminOn'] = l$adminOn.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uid = uid;
    final l$name = name;
    final l$email = email;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$lastEdit = lastEdit;
    final l$permissions = permissions;
    final l$person = person;
    final l$adminOn = adminOn;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$uid,
      l$name,
      l$email,
      l$photoUpdatedAt,
      l$lastEdit,
      Object.hashAll(l$permissions.map((v) => v)),
      l$person,
      Object.hashAll(l$adminOn.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$watchUser$authUsersDataByPk) ||
        runtimeType != other.runtimeType) {
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
    final l$lastEdit = lastEdit;
    final lOther$lastEdit = other.lastEdit;
    if (l$lastEdit != lOther$lastEdit) {
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

extension UtilityExtension$Subscription$watchUser$authUsersDataByPk
    on Subscription$watchUser$authUsersDataByPk {
  CopyWith$Subscription$watchUser$authUsersDataByPk<
          Subscription$watchUser$authUsersDataByPk>
      get copyWith => CopyWith$Subscription$watchUser$authUsersDataByPk(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchUser$authUsersDataByPk<TRes> {
  factory CopyWith$Subscription$watchUser$authUsersDataByPk(
    Subscription$watchUser$authUsersDataByPk instance,
    TRes Function(Subscription$watchUser$authUsersDataByPk) then,
  ) = _CopyWithImpl$Subscription$watchUser$authUsersDataByPk;

  factory CopyWith$Subscription$watchUser$authUsersDataByPk.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchUser$authUsersDataByPk;

  TRes call({
    UuidValue? uid,
    String? name,
    String? email,
    DateTime? photoUpdatedAt,
    Json? lastEdit,
    List<Subscription$watchUser$authUsersDataByPk$permissions>? permissions,
    Subscription$watchUser$authUsersDataByPk$person? person,
    List<Subscription$watchUser$authUsersDataByPk$adminOn>? adminOn,
    String? $__typename,
  });
  TRes permissions(
      Iterable<Subscription$watchUser$authUsersDataByPk$permissions> Function(
              Iterable<
                  CopyWith$Subscription$watchUser$authUsersDataByPk$permissions<
                      Subscription$watchUser$authUsersDataByPk$permissions>>)
          _fn);
  CopyWith$Subscription$watchUser$authUsersDataByPk$person<TRes> get person;
  TRes adminOn(
      Iterable<Subscription$watchUser$authUsersDataByPk$adminOn> Function(
              Iterable<
                  CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn<
                      Subscription$watchUser$authUsersDataByPk$adminOn>>)
          _fn);
}

class _CopyWithImpl$Subscription$watchUser$authUsersDataByPk<TRes>
    implements CopyWith$Subscription$watchUser$authUsersDataByPk<TRes> {
  _CopyWithImpl$Subscription$watchUser$authUsersDataByPk(
    this._instance,
    this._then,
  );

  final Subscription$watchUser$authUsersDataByPk _instance;

  final TRes Function(Subscription$watchUser$authUsersDataByPk) _then;

  static const _undefined = {};

  TRes call({
    Object? uid = _undefined,
    Object? name = _undefined,
    Object? email = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? lastEdit = _undefined,
    Object? permissions = _undefined,
    Object? person = _undefined,
    Object? adminOn = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$watchUser$authUsersDataByPk(
        uid: uid == _undefined || uid == null
            ? _instance.uid
            : (uid as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        email: email == _undefined || email == null
            ? _instance.email
            : (email as String),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        lastEdit:
            lastEdit == _undefined ? _instance.lastEdit : (lastEdit as Json?),
        permissions: permissions == _undefined || permissions == null
            ? _instance.permissions
            : (permissions
                as List<Subscription$watchUser$authUsersDataByPk$permissions>),
        person: person == _undefined
            ? _instance.person
            : (person as Subscription$watchUser$authUsersDataByPk$person?),
        adminOn: adminOn == _undefined || adminOn == null
            ? _instance.adminOn
            : (adminOn
                as List<Subscription$watchUser$authUsersDataByPk$adminOn>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes permissions(
          Iterable<Subscription$watchUser$authUsersDataByPk$permissions> Function(
                  Iterable<
                      CopyWith$Subscription$watchUser$authUsersDataByPk$permissions<
                          Subscription$watchUser$authUsersDataByPk$permissions>>)
              _fn) =>
      call(
          permissions: _fn(_instance.permissions.map((e) =>
              CopyWith$Subscription$watchUser$authUsersDataByPk$permissions(
                e,
                (i) => i,
              ))).toList());
  CopyWith$Subscription$watchUser$authUsersDataByPk$person<TRes> get person {
    final local$person = _instance.person;
    return local$person == null
        ? CopyWith$Subscription$watchUser$authUsersDataByPk$person.stub(
            _then(_instance))
        : CopyWith$Subscription$watchUser$authUsersDataByPk$person(
            local$person, (e) => call(person: e));
  }

  TRes adminOn(
          Iterable<Subscription$watchUser$authUsersDataByPk$adminOn> Function(
                  Iterable<
                      CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn<
                          Subscription$watchUser$authUsersDataByPk$adminOn>>)
              _fn) =>
      call(
          adminOn: _fn(_instance.adminOn.map(
              (e) => CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Subscription$watchUser$authUsersDataByPk<TRes>
    implements CopyWith$Subscription$watchUser$authUsersDataByPk<TRes> {
  _CopyWithStubImpl$Subscription$watchUser$authUsersDataByPk(this._res);

  TRes _res;

  call({
    UuidValue? uid,
    String? name,
    String? email,
    DateTime? photoUpdatedAt,
    Json? lastEdit,
    List<Subscription$watchUser$authUsersDataByPk$permissions>? permissions,
    Subscription$watchUser$authUsersDataByPk$person? person,
    List<Subscription$watchUser$authUsersDataByPk$adminOn>? adminOn,
    String? $__typename,
  }) =>
      _res;
  permissions(_fn) => _res;
  CopyWith$Subscription$watchUser$authUsersDataByPk$person<TRes> get person =>
      CopyWith$Subscription$watchUser$authUsersDataByPk$person.stub(_res);
  adminOn(_fn) => _res;
}

class Subscription$watchUser$authUsersDataByPk$permissions {
  Subscription$watchUser$authUsersDataByPk$permissions({
    required this.permission,
    required this.$__typename,
  });

  factory Subscription$watchUser$authUsersDataByPk$permissions.fromJson(
      Map<String, dynamic> json) {
    final l$permission = json['permission'];
    final l$$__typename = json['__typename'];
    return Subscription$watchUser$authUsersDataByPk$permissions(
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
    if (!(other is Subscription$watchUser$authUsersDataByPk$permissions) ||
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

extension UtilityExtension$Subscription$watchUser$authUsersDataByPk$permissions
    on Subscription$watchUser$authUsersDataByPk$permissions {
  CopyWith$Subscription$watchUser$authUsersDataByPk$permissions<
          Subscription$watchUser$authUsersDataByPk$permissions>
      get copyWith =>
          CopyWith$Subscription$watchUser$authUsersDataByPk$permissions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchUser$authUsersDataByPk$permissions<
    TRes> {
  factory CopyWith$Subscription$watchUser$authUsersDataByPk$permissions(
    Subscription$watchUser$authUsersDataByPk$permissions instance,
    TRes Function(Subscription$watchUser$authUsersDataByPk$permissions) then,
  ) = _CopyWithImpl$Subscription$watchUser$authUsersDataByPk$permissions;

  factory CopyWith$Subscription$watchUser$authUsersDataByPk$permissions.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$watchUser$authUsersDataByPk$permissions;

  TRes call({
    String? permission,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$watchUser$authUsersDataByPk$permissions<TRes>
    implements
        CopyWith$Subscription$watchUser$authUsersDataByPk$permissions<TRes> {
  _CopyWithImpl$Subscription$watchUser$authUsersDataByPk$permissions(
    this._instance,
    this._then,
  );

  final Subscription$watchUser$authUsersDataByPk$permissions _instance;

  final TRes Function(Subscription$watchUser$authUsersDataByPk$permissions)
      _then;

  static const _undefined = {};

  TRes call({
    Object? permission = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$watchUser$authUsersDataByPk$permissions(
        permission: permission == _undefined || permission == null
            ? _instance.permission
            : (permission as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$watchUser$authUsersDataByPk$permissions<
        TRes>
    implements
        CopyWith$Subscription$watchUser$authUsersDataByPk$permissions<TRes> {
  _CopyWithStubImpl$Subscription$watchUser$authUsersDataByPk$permissions(
      this._res);

  TRes _res;

  call({
    String? permission,
    String? $__typename,
  }) =>
      _res;
}

class Subscription$watchUser$authUsersDataByPk$person {
  Subscription$watchUser$authUsersDataByPk$person({
    required this.id,
    required this.name,
    this.color,
    this.photoUpdatedAt,
    required this.$__typename,
  });

  factory Subscription$watchUser$authUsersDataByPk$person.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$$__typename = json['__typename'];
    return Subscription$watchUser$authUsersDataByPk$person(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final DateTime? photoUpdatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$photoUpdatedAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$watchUser$authUsersDataByPk$person) ||
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
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
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

extension UtilityExtension$Subscription$watchUser$authUsersDataByPk$person
    on Subscription$watchUser$authUsersDataByPk$person {
  CopyWith$Subscription$watchUser$authUsersDataByPk$person<
          Subscription$watchUser$authUsersDataByPk$person>
      get copyWith => CopyWith$Subscription$watchUser$authUsersDataByPk$person(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchUser$authUsersDataByPk$person<TRes> {
  factory CopyWith$Subscription$watchUser$authUsersDataByPk$person(
    Subscription$watchUser$authUsersDataByPk$person instance,
    TRes Function(Subscription$watchUser$authUsersDataByPk$person) then,
  ) = _CopyWithImpl$Subscription$watchUser$authUsersDataByPk$person;

  factory CopyWith$Subscription$watchUser$authUsersDataByPk$person.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$watchUser$authUsersDataByPk$person;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$watchUser$authUsersDataByPk$person<TRes>
    implements CopyWith$Subscription$watchUser$authUsersDataByPk$person<TRes> {
  _CopyWithImpl$Subscription$watchUser$authUsersDataByPk$person(
    this._instance,
    this._then,
  );

  final Subscription$watchUser$authUsersDataByPk$person _instance;

  final TRes Function(Subscription$watchUser$authUsersDataByPk$person) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$watchUser$authUsersDataByPk$person(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$watchUser$authUsersDataByPk$person<TRes>
    implements CopyWith$Subscription$watchUser$authUsersDataByPk$person<TRes> {
  _CopyWithStubImpl$Subscription$watchUser$authUsersDataByPk$person(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? $__typename,
  }) =>
      _res;
}

class Subscription$watchUser$authUsersDataByPk$adminOn {
  Subscription$watchUser$authUsersDataByPk$adminOn({
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
    required this.$__typename,
  });

  factory Subscription$watchUser$authUsersDataByPk$adminOn.fromJson(
      Map<String, dynamic> json) {
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
    return Subscription$watchUser$authUsersDataByPk$adminOn(
      permissionId: stringToUuid(l$permissionId),
      area: l$area == null
          ? null
          : Subscription$watchUser$authUsersDataByPk$adminOn$area.fromJson(
              (l$area as Map<String, dynamic>)),
      areaAllowEdit: (l$areaAllowEdit as bool?),
      areaAdminOnUsers: (l$areaAdminOnUsers as bool?),
      service: l$service == null
          ? null
          : Subscription$watchUser$authUsersDataByPk$adminOn$service.fromJson(
              (l$service as Map<String, dynamic>)),
      serviceStudyYearData: l$serviceStudyYearData == null
          ? null
          : Subscription$watchUser$authUsersDataByPk$adminOn$serviceStudyYearData
              .fromJson((l$serviceStudyYearData as Map<String, dynamic>)),
      serviceGender: (l$serviceGender as bool?),
      serviceAllowEdit: (l$serviceAllowEdit as bool?),
      serviceAdminOnUsers: (l$serviceAdminOnUsers as bool?),
      classes: (l$classes as List<dynamic>)
          .map((e) =>
              Subscription$watchUser$authUsersDataByPk$adminOn$classes.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      group: l$group == null
          ? null
          : Subscription$watchUser$authUsersDataByPk$adminOn$group.fromJson(
              (l$group as Map<String, dynamic>)),
      groupAllowEdit: (l$groupAllowEdit as bool?),
      groupAdminOnUsers: (l$groupAdminOnUsers as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue permissionId;

  final Subscription$watchUser$authUsersDataByPk$adminOn$area? area;

  final bool? areaAllowEdit;

  final bool? areaAdminOnUsers;

  final Subscription$watchUser$authUsersDataByPk$adminOn$service? service;

  final Subscription$watchUser$authUsersDataByPk$adminOn$serviceStudyYearData?
      serviceStudyYearData;

  final bool? serviceGender;

  final bool? serviceAllowEdit;

  final bool? serviceAdminOnUsers;

  final List<Subscription$watchUser$authUsersDataByPk$adminOn$classes> classes;

  final Subscription$watchUser$authUsersDataByPk$adminOn$group? group;

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
    if (!(other is Subscription$watchUser$authUsersDataByPk$adminOn) ||
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

extension UtilityExtension$Subscription$watchUser$authUsersDataByPk$adminOn
    on Subscription$watchUser$authUsersDataByPk$adminOn {
  CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn<
          Subscription$watchUser$authUsersDataByPk$adminOn>
      get copyWith => CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn<TRes> {
  factory CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn(
    Subscription$watchUser$authUsersDataByPk$adminOn instance,
    TRes Function(Subscription$watchUser$authUsersDataByPk$adminOn) then,
  ) = _CopyWithImpl$Subscription$watchUser$authUsersDataByPk$adminOn;

  factory CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$watchUser$authUsersDataByPk$adminOn;

  TRes call({
    UuidValue? permissionId,
    Subscription$watchUser$authUsersDataByPk$adminOn$area? area,
    bool? areaAllowEdit,
    bool? areaAdminOnUsers,
    Subscription$watchUser$authUsersDataByPk$adminOn$service? service,
    Subscription$watchUser$authUsersDataByPk$adminOn$serviceStudyYearData?
        serviceStudyYearData,
    bool? serviceGender,
    bool? serviceAllowEdit,
    bool? serviceAdminOnUsers,
    List<Subscription$watchUser$authUsersDataByPk$adminOn$classes>? classes,
    Subscription$watchUser$authUsersDataByPk$adminOn$group? group,
    bool? groupAllowEdit,
    bool? groupAdminOnUsers,
    String? $__typename,
  });
  CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$area<TRes> get area;
  CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$service<TRes>
      get service;
  CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$serviceStudyYearData<
      TRes> get serviceStudyYearData;
  TRes classes(
      Iterable<Subscription$watchUser$authUsersDataByPk$adminOn$classes> Function(
              Iterable<
                  CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$classes<
                      Subscription$watchUser$authUsersDataByPk$adminOn$classes>>)
          _fn);
  CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$group<TRes>
      get group;
}

class _CopyWithImpl$Subscription$watchUser$authUsersDataByPk$adminOn<TRes>
    implements CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn<TRes> {
  _CopyWithImpl$Subscription$watchUser$authUsersDataByPk$adminOn(
    this._instance,
    this._then,
  );

  final Subscription$watchUser$authUsersDataByPk$adminOn _instance;

  final TRes Function(Subscription$watchUser$authUsersDataByPk$adminOn) _then;

  static const _undefined = {};

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
      _then(Subscription$watchUser$authUsersDataByPk$adminOn(
        permissionId: permissionId == _undefined || permissionId == null
            ? _instance.permissionId
            : (permissionId as UuidValue),
        area: area == _undefined
            ? _instance.area
            : (area as Subscription$watchUser$authUsersDataByPk$adminOn$area?),
        areaAllowEdit: areaAllowEdit == _undefined
            ? _instance.areaAllowEdit
            : (areaAllowEdit as bool?),
        areaAdminOnUsers: areaAdminOnUsers == _undefined
            ? _instance.areaAdminOnUsers
            : (areaAdminOnUsers as bool?),
        service: service == _undefined
            ? _instance.service
            : (service
                as Subscription$watchUser$authUsersDataByPk$adminOn$service?),
        serviceStudyYearData: serviceStudyYearData == _undefined
            ? _instance.serviceStudyYearData
            : (serviceStudyYearData
                as Subscription$watchUser$authUsersDataByPk$adminOn$serviceStudyYearData?),
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
            : (classes as List<
                Subscription$watchUser$authUsersDataByPk$adminOn$classes>),
        group: group == _undefined
            ? _instance.group
            : (group
                as Subscription$watchUser$authUsersDataByPk$adminOn$group?),
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
  CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$area<TRes>
      get area {
    final local$area = _instance.area;
    return local$area == null
        ? CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$area.stub(
            _then(_instance))
        : CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$area(
            local$area, (e) => call(area: e));
  }

  CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$service<TRes>
      get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$service
            .stub(_then(_instance))
        : CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$service(
            local$service, (e) => call(service: e));
  }

  CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$serviceStudyYearData<
      TRes> get serviceStudyYearData {
    final local$serviceStudyYearData = _instance.serviceStudyYearData;
    return local$serviceStudyYearData == null
        ? CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$serviceStudyYearData
            .stub(_then(_instance))
        : CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$serviceStudyYearData(
            local$serviceStudyYearData, (e) => call(serviceStudyYearData: e));
  }

  TRes classes(
          Iterable<Subscription$watchUser$authUsersDataByPk$adminOn$classes> Function(
                  Iterable<
                      CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$classes<
                          Subscription$watchUser$authUsersDataByPk$adminOn$classes>>)
              _fn) =>
      call(
          classes: _fn(_instance.classes.map((e) =>
              CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$classes(
                e,
                (i) => i,
              ))).toList());
  CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$group<TRes>
      get group {
    final local$group = _instance.group;
    return local$group == null
        ? CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$group.stub(
            _then(_instance))
        : CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$group(
            local$group, (e) => call(group: e));
  }
}

class _CopyWithStubImpl$Subscription$watchUser$authUsersDataByPk$adminOn<TRes>
    implements CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn<TRes> {
  _CopyWithStubImpl$Subscription$watchUser$authUsersDataByPk$adminOn(this._res);

  TRes _res;

  call({
    UuidValue? permissionId,
    Subscription$watchUser$authUsersDataByPk$adminOn$area? area,
    bool? areaAllowEdit,
    bool? areaAdminOnUsers,
    Subscription$watchUser$authUsersDataByPk$adminOn$service? service,
    Subscription$watchUser$authUsersDataByPk$adminOn$serviceStudyYearData?
        serviceStudyYearData,
    bool? serviceGender,
    bool? serviceAllowEdit,
    bool? serviceAdminOnUsers,
    List<Subscription$watchUser$authUsersDataByPk$adminOn$classes>? classes,
    Subscription$watchUser$authUsersDataByPk$adminOn$group? group,
    bool? groupAllowEdit,
    bool? groupAdminOnUsers,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$area<TRes>
      get area =>
          CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$area.stub(
              _res);
  CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$service<TRes>
      get service =>
          CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$service
              .stub(_res);
  CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$serviceStudyYearData<
          TRes>
      get serviceStudyYearData =>
          CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$serviceStudyYearData
              .stub(_res);
  classes(_fn) => _res;
  CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$group<TRes>
      get group =>
          CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$group.stub(
              _res);
}

class Subscription$watchUser$authUsersDataByPk$adminOn$area {
  Subscription$watchUser$authUsersDataByPk$adminOn$area({
    required this.id,
    required this.name,
    this.color,
    this.photoUpdatedAt,
    required this.$__typename,
  });

  factory Subscription$watchUser$authUsersDataByPk$adminOn$area.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$$__typename = json['__typename'];
    return Subscription$watchUser$authUsersDataByPk$adminOn$area(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final DateTime? photoUpdatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$photoUpdatedAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$watchUser$authUsersDataByPk$adminOn$area) ||
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
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
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

extension UtilityExtension$Subscription$watchUser$authUsersDataByPk$adminOn$area
    on Subscription$watchUser$authUsersDataByPk$adminOn$area {
  CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$area<
          Subscription$watchUser$authUsersDataByPk$adminOn$area>
      get copyWith =>
          CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$area(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$area<
    TRes> {
  factory CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$area(
    Subscription$watchUser$authUsersDataByPk$adminOn$area instance,
    TRes Function(Subscription$watchUser$authUsersDataByPk$adminOn$area) then,
  ) = _CopyWithImpl$Subscription$watchUser$authUsersDataByPk$adminOn$area;

  factory CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$area.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$watchUser$authUsersDataByPk$adminOn$area;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$watchUser$authUsersDataByPk$adminOn$area<TRes>
    implements
        CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$area<TRes> {
  _CopyWithImpl$Subscription$watchUser$authUsersDataByPk$adminOn$area(
    this._instance,
    this._then,
  );

  final Subscription$watchUser$authUsersDataByPk$adminOn$area _instance;

  final TRes Function(Subscription$watchUser$authUsersDataByPk$adminOn$area)
      _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$watchUser$authUsersDataByPk$adminOn$area(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$watchUser$authUsersDataByPk$adminOn$area<
        TRes>
    implements
        CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$area<TRes> {
  _CopyWithStubImpl$Subscription$watchUser$authUsersDataByPk$adminOn$area(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? $__typename,
  }) =>
      _res;
}

class Subscription$watchUser$authUsersDataByPk$adminOn$service {
  Subscription$watchUser$authUsersDataByPk$adminOn$service({
    required this.id,
    required this.name,
    this.color,
    this.photoUpdatedAt,
    required this.$__typename,
  });

  factory Subscription$watchUser$authUsersDataByPk$adminOn$service.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$$__typename = json['__typename'];
    return Subscription$watchUser$authUsersDataByPk$adminOn$service(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final DateTime? photoUpdatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$photoUpdatedAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$watchUser$authUsersDataByPk$adminOn$service) ||
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
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
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

extension UtilityExtension$Subscription$watchUser$authUsersDataByPk$adminOn$service
    on Subscription$watchUser$authUsersDataByPk$adminOn$service {
  CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$service<
          Subscription$watchUser$authUsersDataByPk$adminOn$service>
      get copyWith =>
          CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$service(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$service<
    TRes> {
  factory CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$service(
    Subscription$watchUser$authUsersDataByPk$adminOn$service instance,
    TRes Function(Subscription$watchUser$authUsersDataByPk$adminOn$service)
        then,
  ) = _CopyWithImpl$Subscription$watchUser$authUsersDataByPk$adminOn$service;

  factory CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$service.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$watchUser$authUsersDataByPk$adminOn$service;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$watchUser$authUsersDataByPk$adminOn$service<
        TRes>
    implements
        CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$service<
            TRes> {
  _CopyWithImpl$Subscription$watchUser$authUsersDataByPk$adminOn$service(
    this._instance,
    this._then,
  );

  final Subscription$watchUser$authUsersDataByPk$adminOn$service _instance;

  final TRes Function(Subscription$watchUser$authUsersDataByPk$adminOn$service)
      _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$watchUser$authUsersDataByPk$adminOn$service(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$watchUser$authUsersDataByPk$adminOn$service<
        TRes>
    implements
        CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$service<
            TRes> {
  _CopyWithStubImpl$Subscription$watchUser$authUsersDataByPk$adminOn$service(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? $__typename,
  }) =>
      _res;
}

class Subscription$watchUser$authUsersDataByPk$adminOn$serviceStudyYearData {
  Subscription$watchUser$authUsersDataByPk$adminOn$serviceStudyYearData({
    required this.name,
    required this.order,
    required this.$__typename,
  });

  factory Subscription$watchUser$authUsersDataByPk$adminOn$serviceStudyYearData.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$order = json['order'];
    final l$$__typename = json['__typename'];
    return Subscription$watchUser$authUsersDataByPk$adminOn$serviceStudyYearData(
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
    if (!(other
            is Subscription$watchUser$authUsersDataByPk$adminOn$serviceStudyYearData) ||
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

extension UtilityExtension$Subscription$watchUser$authUsersDataByPk$adminOn$serviceStudyYearData
    on Subscription$watchUser$authUsersDataByPk$adminOn$serviceStudyYearData {
  CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$serviceStudyYearData<
          Subscription$watchUser$authUsersDataByPk$adminOn$serviceStudyYearData>
      get copyWith =>
          CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$serviceStudyYearData(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$serviceStudyYearData<
    TRes> {
  factory CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$serviceStudyYearData(
    Subscription$watchUser$authUsersDataByPk$adminOn$serviceStudyYearData
        instance,
    TRes Function(
            Subscription$watchUser$authUsersDataByPk$adminOn$serviceStudyYearData)
        then,
  ) = _CopyWithImpl$Subscription$watchUser$authUsersDataByPk$adminOn$serviceStudyYearData;

  factory CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$serviceStudyYearData.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$watchUser$authUsersDataByPk$adminOn$serviceStudyYearData;

  TRes call({
    String? name,
    int? order,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$watchUser$authUsersDataByPk$adminOn$serviceStudyYearData<
        TRes>
    implements
        CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$serviceStudyYearData<
            TRes> {
  _CopyWithImpl$Subscription$watchUser$authUsersDataByPk$adminOn$serviceStudyYearData(
    this._instance,
    this._then,
  );

  final Subscription$watchUser$authUsersDataByPk$adminOn$serviceStudyYearData
      _instance;

  final TRes Function(
          Subscription$watchUser$authUsersDataByPk$adminOn$serviceStudyYearData)
      _then;

  static const _undefined = {};

  TRes call({
    Object? name = _undefined,
    Object? order = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Subscription$watchUser$authUsersDataByPk$adminOn$serviceStudyYearData(
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

class _CopyWithStubImpl$Subscription$watchUser$authUsersDataByPk$adminOn$serviceStudyYearData<
        TRes>
    implements
        CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$serviceStudyYearData<
            TRes> {
  _CopyWithStubImpl$Subscription$watchUser$authUsersDataByPk$adminOn$serviceStudyYearData(
      this._res);

  TRes _res;

  call({
    String? name,
    int? order,
    String? $__typename,
  }) =>
      _res;
}

class Subscription$watchUser$authUsersDataByPk$adminOn$classes {
  Subscription$watchUser$authUsersDataByPk$adminOn$classes({
    required this.id,
    required this.name,
    this.color,
    this.photoUpdatedAt,
    required this.$__typename,
  });

  factory Subscription$watchUser$authUsersDataByPk$adminOn$classes.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$$__typename = json['__typename'];
    return Subscription$watchUser$authUsersDataByPk$adminOn$classes(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final DateTime? photoUpdatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$photoUpdatedAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$watchUser$authUsersDataByPk$adminOn$classes) ||
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
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
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

extension UtilityExtension$Subscription$watchUser$authUsersDataByPk$adminOn$classes
    on Subscription$watchUser$authUsersDataByPk$adminOn$classes {
  CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$classes<
          Subscription$watchUser$authUsersDataByPk$adminOn$classes>
      get copyWith =>
          CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$classes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$classes<
    TRes> {
  factory CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$classes(
    Subscription$watchUser$authUsersDataByPk$adminOn$classes instance,
    TRes Function(Subscription$watchUser$authUsersDataByPk$adminOn$classes)
        then,
  ) = _CopyWithImpl$Subscription$watchUser$authUsersDataByPk$adminOn$classes;

  factory CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$classes.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$watchUser$authUsersDataByPk$adminOn$classes;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$watchUser$authUsersDataByPk$adminOn$classes<
        TRes>
    implements
        CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$classes<
            TRes> {
  _CopyWithImpl$Subscription$watchUser$authUsersDataByPk$adminOn$classes(
    this._instance,
    this._then,
  );

  final Subscription$watchUser$authUsersDataByPk$adminOn$classes _instance;

  final TRes Function(Subscription$watchUser$authUsersDataByPk$adminOn$classes)
      _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$watchUser$authUsersDataByPk$adminOn$classes(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$watchUser$authUsersDataByPk$adminOn$classes<
        TRes>
    implements
        CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$classes<
            TRes> {
  _CopyWithStubImpl$Subscription$watchUser$authUsersDataByPk$adminOn$classes(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? $__typename,
  }) =>
      _res;
}

class Subscription$watchUser$authUsersDataByPk$adminOn$group {
  Subscription$watchUser$authUsersDataByPk$adminOn$group({
    required this.id,
    required this.name,
    this.color,
    this.photoUpdatedAt,
    required this.$__typename,
  });

  factory Subscription$watchUser$authUsersDataByPk$adminOn$group.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$$__typename = json['__typename'];
    return Subscription$watchUser$authUsersDataByPk$adminOn$group(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final DateTime? photoUpdatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$photoUpdatedAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$watchUser$authUsersDataByPk$adminOn$group) ||
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
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
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

extension UtilityExtension$Subscription$watchUser$authUsersDataByPk$adminOn$group
    on Subscription$watchUser$authUsersDataByPk$adminOn$group {
  CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$group<
          Subscription$watchUser$authUsersDataByPk$adminOn$group>
      get copyWith =>
          CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$group(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$group<
    TRes> {
  factory CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$group(
    Subscription$watchUser$authUsersDataByPk$adminOn$group instance,
    TRes Function(Subscription$watchUser$authUsersDataByPk$adminOn$group) then,
  ) = _CopyWithImpl$Subscription$watchUser$authUsersDataByPk$adminOn$group;

  factory CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$group.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$watchUser$authUsersDataByPk$adminOn$group;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$watchUser$authUsersDataByPk$adminOn$group<TRes>
    implements
        CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$group<TRes> {
  _CopyWithImpl$Subscription$watchUser$authUsersDataByPk$adminOn$group(
    this._instance,
    this._then,
  );

  final Subscription$watchUser$authUsersDataByPk$adminOn$group _instance;

  final TRes Function(Subscription$watchUser$authUsersDataByPk$adminOn$group)
      _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$watchUser$authUsersDataByPk$adminOn$group(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$watchUser$authUsersDataByPk$adminOn$group<
        TRes>
    implements
        CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$group<TRes> {
  _CopyWithStubImpl$Subscription$watchUser$authUsersDataByPk$adminOn$group(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Subscription$userEditHistory {
  factory Variables$Subscription$userEditHistory({
    required UuidValue userId,
    List<Input$HistoryEditHistoryBoolExp>? where,
    int? limit,
  }) =>
      Variables$Subscription$userEditHistory._({
        r'userId': userId,
        if (where != null) r'where': where,
        if (limit != null) r'limit': limit,
      });

  Variables$Subscription$userEditHistory._(this._$data);

  factory Variables$Subscription$userEditHistory.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$userId = data['userId'];
    result$data['userId'] = stringToUuid(l$userId);
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map((e) => Input$HistoryEditHistoryBoolExp.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables$Subscription$userEditHistory._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get userId => (_$data['userId'] as UuidValue);
  List<Input$HistoryEditHistoryBoolExp>? get where =>
      (_$data['where'] as List<Input$HistoryEditHistoryBoolExp>?);
  int? get limit => (_$data['limit'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$userId = userId;
    result$data['userId'] = uuidToString(l$userId);
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('limit')) {
      final l$limit = limit;
      result$data['limit'] = l$limit;
    }
    return result$data;
  }

  CopyWith$Variables$Subscription$userEditHistory<
          Variables$Subscription$userEditHistory>
      get copyWith => CopyWith$Variables$Subscription$userEditHistory(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$userEditHistory) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (_$data.containsKey('where') != other._$data.containsKey('where')) {
      return false;
    }
    if (l$where != null && lOther$where != null) {
      if (l$where.length != lOther$where.length) {
        return false;
      }
      for (int i = 0; i < l$where.length; i++) {
        final l$where$entry = l$where[i];
        final lOther$where$entry = lOther$where[i];
        if (l$where$entry != lOther$where$entry) {
          return false;
        }
      }
    } else if (l$where != lOther$where) {
      return false;
    }
    final l$limit = limit;
    final lOther$limit = other.limit;
    if (_$data.containsKey('limit') != other._$data.containsKey('limit')) {
      return false;
    }
    if (l$limit != lOther$limit) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$userId = userId;
    final l$where = where;
    final l$limit = limit;
    return Object.hashAll([
      l$userId,
      _$data.containsKey('where')
          ? l$where == null
              ? null
              : Object.hashAll(l$where.map((v) => v))
          : const {},
      _$data.containsKey('limit') ? l$limit : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Subscription$userEditHistory<TRes> {
  factory CopyWith$Variables$Subscription$userEditHistory(
    Variables$Subscription$userEditHistory instance,
    TRes Function(Variables$Subscription$userEditHistory) then,
  ) = _CopyWithImpl$Variables$Subscription$userEditHistory;

  factory CopyWith$Variables$Subscription$userEditHistory.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$userEditHistory;

  TRes call({
    UuidValue? userId,
    List<Input$HistoryEditHistoryBoolExp>? where,
    int? limit,
  });
}

class _CopyWithImpl$Variables$Subscription$userEditHistory<TRes>
    implements CopyWith$Variables$Subscription$userEditHistory<TRes> {
  _CopyWithImpl$Variables$Subscription$userEditHistory(
    this._instance,
    this._then,
  );

  final Variables$Subscription$userEditHistory _instance;

  final TRes Function(Variables$Subscription$userEditHistory) _then;

  static const _undefined = {};

  TRes call({
    Object? userId = _undefined,
    Object? where = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Variables$Subscription$userEditHistory._({
        ..._instance._$data,
        if (userId != _undefined && userId != null)
          'userId': (userId as UuidValue),
        if (where != _undefined)
          'where': (where as List<Input$HistoryEditHistoryBoolExp>?),
        if (limit != _undefined) 'limit': (limit as int?),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$userEditHistory<TRes>
    implements CopyWith$Variables$Subscription$userEditHistory<TRes> {
  _CopyWithStubImpl$Variables$Subscription$userEditHistory(this._res);

  TRes _res;

  call({
    UuidValue? userId,
    List<Input$HistoryEditHistoryBoolExp>? where,
    int? limit,
  }) =>
      _res;
}

class Subscription$userEditHistory {
  Subscription$userEditHistory({required this.historyEditHistory});

  factory Subscription$userEditHistory.fromJson(Map<String, dynamic> json) {
    final l$historyEditHistory = json['historyEditHistory'];
    return Subscription$userEditHistory(
        historyEditHistory: (l$historyEditHistory as List<dynamic>)
            .map((e) =>
                Subscription$userEditHistory$historyEditHistory.fromJson(
                    (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Subscription$userEditHistory$historyEditHistory>
      historyEditHistory;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$historyEditHistory = historyEditHistory;
    _resultData['historyEditHistory'] =
        l$historyEditHistory.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$historyEditHistory = historyEditHistory;
    return Object.hashAll([Object.hashAll(l$historyEditHistory.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$userEditHistory) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$historyEditHistory = historyEditHistory;
    final lOther$historyEditHistory = other.historyEditHistory;
    if (l$historyEditHistory.length != lOther$historyEditHistory.length) {
      return false;
    }
    for (int i = 0; i < l$historyEditHistory.length; i++) {
      final l$historyEditHistory$entry = l$historyEditHistory[i];
      final lOther$historyEditHistory$entry = lOther$historyEditHistory[i];
      if (l$historyEditHistory$entry != lOther$historyEditHistory$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Subscription$userEditHistory
    on Subscription$userEditHistory {
  CopyWith$Subscription$userEditHistory<Subscription$userEditHistory>
      get copyWith => CopyWith$Subscription$userEditHistory(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$userEditHistory<TRes> {
  factory CopyWith$Subscription$userEditHistory(
    Subscription$userEditHistory instance,
    TRes Function(Subscription$userEditHistory) then,
  ) = _CopyWithImpl$Subscription$userEditHistory;

  factory CopyWith$Subscription$userEditHistory.stub(TRes res) =
      _CopyWithStubImpl$Subscription$userEditHistory;

  TRes call(
      {List<Subscription$userEditHistory$historyEditHistory>?
          historyEditHistory});
  TRes historyEditHistory(
      Iterable<Subscription$userEditHistory$historyEditHistory> Function(
              Iterable<
                  CopyWith$Subscription$userEditHistory$historyEditHistory<
                      Subscription$userEditHistory$historyEditHistory>>)
          _fn);
}

class _CopyWithImpl$Subscription$userEditHistory<TRes>
    implements CopyWith$Subscription$userEditHistory<TRes> {
  _CopyWithImpl$Subscription$userEditHistory(
    this._instance,
    this._then,
  );

  final Subscription$userEditHistory _instance;

  final TRes Function(Subscription$userEditHistory) _then;

  static const _undefined = {};

  TRes call({Object? historyEditHistory = _undefined}) =>
      _then(Subscription$userEditHistory(
          historyEditHistory: historyEditHistory == _undefined ||
                  historyEditHistory == null
              ? _instance.historyEditHistory
              : (historyEditHistory
                  as List<Subscription$userEditHistory$historyEditHistory>)));
  TRes historyEditHistory(
          Iterable<Subscription$userEditHistory$historyEditHistory> Function(
                  Iterable<
                      CopyWith$Subscription$userEditHistory$historyEditHistory<
                          Subscription$userEditHistory$historyEditHistory>>)
              _fn) =>
      call(
          historyEditHistory: _fn(_instance.historyEditHistory.map(
              (e) => CopyWith$Subscription$userEditHistory$historyEditHistory(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Subscription$userEditHistory<TRes>
    implements CopyWith$Subscription$userEditHistory<TRes> {
  _CopyWithStubImpl$Subscription$userEditHistory(this._res);

  TRes _res;

  call(
          {List<Subscription$userEditHistory$historyEditHistory>?
              historyEditHistory}) =>
      _res;
  historyEditHistory(_fn) => _res;
}

const documentNodeSubscriptionuserEditHistory = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'userEditHistory'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userId')),
        type: NamedTypeNode(
          name: NameNode(value: 'uuid'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'HistoryEditHistoryBoolExp'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: ObjectValueNode(fields: [])),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'limit')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: IntValueNode(value: '200')),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'historyEditHistory'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: '_and'),
                value: ListValueNode(values: [
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'table'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: '_eq'),
                          value: StringValueNode(
                            value: 'users',
                            isBlock: false,
                          ),
                        )
                      ]),
                    )
                  ]),
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'recordId'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: '_eq'),
                          value: VariableNode(name: NameNode(value: 'userId')),
                        )
                      ]),
                    )
                  ]),
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: '_and'),
                      value: VariableNode(name: NameNode(value: 'where')),
                    )
                  ]),
                ]),
              )
            ]),
          ),
          ArgumentNode(
            name: NameNode(value: 'limit'),
            value: VariableNode(name: NameNode(value: 'limit')),
          ),
          ArgumentNode(
            name: NameNode(value: 'orderBy'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'time'),
                value: EnumValueNode(name: NameNode(value: 'DESC')),
              )
            ]),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'time'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'user'),
            alias: null,
            arguments: [],
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
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      )
    ]),
  ),
]);

class Subscription$userEditHistory$historyEditHistory {
  Subscription$userEditHistory$historyEditHistory({
    required this.time,
    this.user,
    required this.$__typename,
  });

  factory Subscription$userEditHistory$historyEditHistory.fromJson(
      Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Subscription$userEditHistory$historyEditHistory(
      time: tstzFromString(l$time),
      user: l$user == null
          ? null
          : Subscription$userEditHistory$historyEditHistory$user.fromJson(
              (l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime time;

  final Subscription$userEditHistory$historyEditHistory$user? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$time = time;
    _resultData['time'] = tstzToString(l$time);
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$time = time;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$time,
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$userEditHistory$historyEditHistory) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension$Subscription$userEditHistory$historyEditHistory
    on Subscription$userEditHistory$historyEditHistory {
  CopyWith$Subscription$userEditHistory$historyEditHistory<
          Subscription$userEditHistory$historyEditHistory>
      get copyWith => CopyWith$Subscription$userEditHistory$historyEditHistory(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$userEditHistory$historyEditHistory<TRes> {
  factory CopyWith$Subscription$userEditHistory$historyEditHistory(
    Subscription$userEditHistory$historyEditHistory instance,
    TRes Function(Subscription$userEditHistory$historyEditHistory) then,
  ) = _CopyWithImpl$Subscription$userEditHistory$historyEditHistory;

  factory CopyWith$Subscription$userEditHistory$historyEditHistory.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$userEditHistory$historyEditHistory;

  TRes call({
    DateTime? time,
    Subscription$userEditHistory$historyEditHistory$user? user,
    String? $__typename,
  });
  CopyWith$Subscription$userEditHistory$historyEditHistory$user<TRes> get user;
}

class _CopyWithImpl$Subscription$userEditHistory$historyEditHistory<TRes>
    implements CopyWith$Subscription$userEditHistory$historyEditHistory<TRes> {
  _CopyWithImpl$Subscription$userEditHistory$historyEditHistory(
    this._instance,
    this._then,
  );

  final Subscription$userEditHistory$historyEditHistory _instance;

  final TRes Function(Subscription$userEditHistory$historyEditHistory) _then;

  static const _undefined = {};

  TRes call({
    Object? time = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$userEditHistory$historyEditHistory(
        time: time == _undefined || time == null
            ? _instance.time
            : (time as DateTime),
        user: user == _undefined
            ? _instance.user
            : (user as Subscription$userEditHistory$historyEditHistory$user?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Subscription$userEditHistory$historyEditHistory$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Subscription$userEditHistory$historyEditHistory$user.stub(
            _then(_instance))
        : CopyWith$Subscription$userEditHistory$historyEditHistory$user(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Subscription$userEditHistory$historyEditHistory<TRes>
    implements CopyWith$Subscription$userEditHistory$historyEditHistory<TRes> {
  _CopyWithStubImpl$Subscription$userEditHistory$historyEditHistory(this._res);

  TRes _res;

  call({
    DateTime? time,
    Subscription$userEditHistory$historyEditHistory$user? user,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Subscription$userEditHistory$historyEditHistory$user<TRes>
      get user =>
          CopyWith$Subscription$userEditHistory$historyEditHistory$user.stub(
              _res);
}

class Subscription$userEditHistory$historyEditHistory$user {
  Subscription$userEditHistory$historyEditHistory$user({
    required this.uid,
    required this.name,
    this.photoUpdatedAt,
    required this.$__typename,
  });

  factory Subscription$userEditHistory$historyEditHistory$user.fromJson(
      Map<String, dynamic> json) {
    final l$uid = json['uid'];
    final l$name = json['name'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$$__typename = json['__typename'];
    return Subscription$userEditHistory$historyEditHistory$user(
      uid: stringToUuid(l$uid),
      name: (l$name as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue uid;

  final String name;

  final DateTime? photoUpdatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uid = uid;
    _resultData['uid'] = uuidToString(l$uid);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uid = uid;
    final l$name = name;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$uid,
      l$name,
      l$photoUpdatedAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$userEditHistory$historyEditHistory$user) ||
        runtimeType != other.runtimeType) {
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
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
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

extension UtilityExtension$Subscription$userEditHistory$historyEditHistory$user
    on Subscription$userEditHistory$historyEditHistory$user {
  CopyWith$Subscription$userEditHistory$historyEditHistory$user<
          Subscription$userEditHistory$historyEditHistory$user>
      get copyWith =>
          CopyWith$Subscription$userEditHistory$historyEditHistory$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$userEditHistory$historyEditHistory$user<
    TRes> {
  factory CopyWith$Subscription$userEditHistory$historyEditHistory$user(
    Subscription$userEditHistory$historyEditHistory$user instance,
    TRes Function(Subscription$userEditHistory$historyEditHistory$user) then,
  ) = _CopyWithImpl$Subscription$userEditHistory$historyEditHistory$user;

  factory CopyWith$Subscription$userEditHistory$historyEditHistory$user.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$userEditHistory$historyEditHistory$user;

  TRes call({
    UuidValue? uid,
    String? name,
    DateTime? photoUpdatedAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$userEditHistory$historyEditHistory$user<TRes>
    implements
        CopyWith$Subscription$userEditHistory$historyEditHistory$user<TRes> {
  _CopyWithImpl$Subscription$userEditHistory$historyEditHistory$user(
    this._instance,
    this._then,
  );

  final Subscription$userEditHistory$historyEditHistory$user _instance;

  final TRes Function(Subscription$userEditHistory$historyEditHistory$user)
      _then;

  static const _undefined = {};

  TRes call({
    Object? uid = _undefined,
    Object? name = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$userEditHistory$historyEditHistory$user(
        uid: uid == _undefined || uid == null
            ? _instance.uid
            : (uid as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$userEditHistory$historyEditHistory$user<
        TRes>
    implements
        CopyWith$Subscription$userEditHistory$historyEditHistory$user<TRes> {
  _CopyWithStubImpl$Subscription$userEditHistory$historyEditHistory$user(
      this._res);

  TRes _res;

  call({
    UuidValue? uid,
    String? name,
    DateTime? photoUpdatedAt,
    String? $__typename,
  }) =>
      _res;
}
