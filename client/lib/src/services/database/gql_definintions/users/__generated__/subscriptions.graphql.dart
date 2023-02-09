import '../../areas/__generated__/fragments.gql.dart';
import '../../classes/__generated__/fragments.gql.dart';
import '../../groups/__generated__/fragments.gql.dart';
import '../../persons/__generated__/fragments.gql.dart';
import '../../services/__generated__/fragments.gql.dart';
import 'fragments.gql.dart';
import 'fragments.graphql.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables$Subscription$watchUser {
  factory Variables$Subscription$watchUser({
    required UuidValue uid,
    bool? fullData,
  }) =>
      Variables$Subscription$watchUser._({
        r'uid': uid,
        if (fullData != null) r'fullData': fullData,
      });

  Variables$Subscription$watchUser._(this._$data);

  factory Variables$Subscription$watchUser.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$uid = data['uid'];
    result$data['uid'] = stringToUuid(l$uid);
    if (data.containsKey('fullData')) {
      final l$fullData = data['fullData'];
      result$data['fullData'] = (l$fullData as bool?);
    }
    return Variables$Subscription$watchUser._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get uid => (_$data['uid'] as UuidValue);
  bool? get fullData => (_$data['fullData'] as bool?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$uid = uid;
    result$data['uid'] = uuidToString(l$uid);
    if (_$data.containsKey('fullData')) {
      final l$fullData = fullData;
      result$data['fullData'] = l$fullData;
    }
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
    final l$fullData = fullData;
    final lOther$fullData = other.fullData;
    if (_$data.containsKey('fullData') !=
        other._$data.containsKey('fullData')) {
      return false;
    }
    if (l$fullData != lOther$fullData) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$uid = uid;
    final l$fullData = fullData;
    return Object.hashAll([
      l$uid,
      _$data.containsKey('fullData') ? l$fullData : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Subscription$watchUser<TRes> {
  factory CopyWith$Variables$Subscription$watchUser(
    Variables$Subscription$watchUser instance,
    TRes Function(Variables$Subscription$watchUser) then,
  ) = _CopyWithImpl$Variables$Subscription$watchUser;

  factory CopyWith$Variables$Subscription$watchUser.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$watchUser;

  TRes call({
    UuidValue? uid,
    bool? fullData,
  });
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

  TRes call({
    Object? uid = _undefined,
    Object? fullData = _undefined,
  }) =>
      _then(Variables$Subscription$watchUser._({
        ..._instance._$data,
        if (uid != _undefined && uid != null) 'uid': (uid as UuidValue),
        if (fullData != _undefined) 'fullData': (fullData as bool?),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$watchUser<TRes>
    implements CopyWith$Variables$Subscription$watchUser<TRes> {
  _CopyWithStubImpl$Variables$Subscription$watchUser(this._res);

  TRes _res;

  call({
    UuidValue? uid,
    bool? fullData,
  }) =>
      _res;
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
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'fullData')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: BooleanValueNode(value: false)),
        directives: [],
      ),
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
          FragmentSpreadNode(
            name: NameNode(value: 'UserOverview'),
            directives: [
              DirectiveNode(
                name: NameNode(value: 'skip'),
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'if'),
                    value: VariableNode(name: NameNode(value: 'fullData')),
                  )
                ],
              )
            ],
          ),
          FragmentSpreadNode(
            name: NameNode(value: 'UserDetails'),
            directives: [
              DirectiveNode(
                name: NameNode(value: 'include'),
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'if'),
                    value: VariableNode(name: NameNode(value: 'fullData')),
                  )
                ],
              )
            ],
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
  fragmentDefinitionUserOverview,
  fragmentDefinitionUser,
  fragmentDefinitionUserNoPhoto,
  fragmentDefinitionUserPermissions,
  fragmentDefinitionPerson,
  fragmentDefinitionPersonNoPhoto,
  fragmentDefinitionUserDetails,
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

class Subscription$watchUser$authUsersDataByPk
    implements
        Fragment$UserOverview,
        Fragment$User,
        Fragment$UserNoPhoto,
        Fragment$UserPermissions,
        Fragment$UserDetails,
        Fragment$UserAdminOn {
  Subscription$watchUser$authUsersDataByPk({
    required this.uid,
    required this.name,
    required this.email,
    required this.$__typename,
    this.photoUpdatedAt,
    required this.permissions,
    this.person,
    this.lastEdit,
    required this.adminOn,
  });

  factory Subscription$watchUser$authUsersDataByPk.fromJson(
      Map<String, dynamic> json) {
    final l$uid = json['uid'];
    final l$name = json['name'];
    final l$email = json['email'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$permissions = json['permissions'];
    final l$person = json['person'];
    final l$lastEdit = json['lastEdit'];
    final l$adminOn = json['adminOn'];
    return Subscription$watchUser$authUsersDataByPk(
      uid: stringToUuid(l$uid),
      name: (l$name as String),
      email: (l$email as String),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      permissions: (l$permissions as List<dynamic>)
          .map((e) =>
              Subscription$watchUser$authUsersDataByPk$permissions.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      person: l$person == null
          ? null
          : Subscription$watchUser$authUsersDataByPk$person.fromJson(
              (l$person as Map<String, dynamic>)),
      lastEdit: (l$lastEdit as Json?),
      adminOn: (l$adminOn as List<dynamic>)
          .map((e) => Subscription$watchUser$authUsersDataByPk$adminOn.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final UuidValue uid;

  final String name;

  final String email;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final List<Subscription$watchUser$authUsersDataByPk$permissions> permissions;

  final Subscription$watchUser$authUsersDataByPk$person? person;

  final Json? lastEdit;

  final List<Subscription$watchUser$authUsersDataByPk$adminOn> adminOn;

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
    String? $__typename,
    DateTime? photoUpdatedAt,
    List<Subscription$watchUser$authUsersDataByPk$permissions>? permissions,
    Subscription$watchUser$authUsersDataByPk$person? person,
    Json? lastEdit,
    List<Subscription$watchUser$authUsersDataByPk$adminOn>? adminOn,
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
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? permissions = _undefined,
    Object? person = _undefined,
    Object? lastEdit = _undefined,
    Object? adminOn = _undefined,
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
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        permissions: permissions == _undefined || permissions == null
            ? _instance.permissions
            : (permissions
                as List<Subscription$watchUser$authUsersDataByPk$permissions>),
        person: person == _undefined
            ? _instance.person
            : (person as Subscription$watchUser$authUsersDataByPk$person?),
        lastEdit:
            lastEdit == _undefined ? _instance.lastEdit : (lastEdit as Json?),
        adminOn: adminOn == _undefined || adminOn == null
            ? _instance.adminOn
            : (adminOn
                as List<Subscription$watchUser$authUsersDataByPk$adminOn>),
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
    String? $__typename,
    DateTime? photoUpdatedAt,
    List<Subscription$watchUser$authUsersDataByPk$permissions>? permissions,
    Subscription$watchUser$authUsersDataByPk$person? person,
    Json? lastEdit,
    List<Subscription$watchUser$authUsersDataByPk$adminOn>? adminOn,
  }) =>
      _res;
  permissions(_fn) => _res;
  CopyWith$Subscription$watchUser$authUsersDataByPk$person<TRes> get person =>
      CopyWith$Subscription$watchUser$authUsersDataByPk$person.stub(_res);
  adminOn(_fn) => _res;
}

class Subscription$watchUser$authUsersDataByPk$permissions
    implements
        Fragment$UserOverview$permissions,
        Fragment$UserPermissions$permissions,
        Fragment$UserDetails$permissions {
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

class Subscription$watchUser$authUsersDataByPk$person
    implements
        Fragment$UserOverview$person,
        Fragment$Person,
        Fragment$PersonNoPhoto,
        Fragment$UserDetails$person {
  Subscription$watchUser$authUsersDataByPk$person({
    required this.id,
    required this.name,
    this.color,
    required this.$__typename,
    this.photoUpdatedAt,
    this.lastKodas,
    this.lastConfession,
  });

  factory Subscription$watchUser$authUsersDataByPk$person.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$lastKodas = json['lastKodas'];
    final l$lastConfession = json['lastConfession'];
    return Subscription$watchUser$authUsersDataByPk$person(
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
    String? $__typename,
    DateTime? photoUpdatedAt,
    Json? lastKodas,
    Json? lastConfession,
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
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? lastKodas = _undefined,
    Object? lastConfession = _undefined,
  }) =>
      _then(Subscription$watchUser$authUsersDataByPk$person(
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

class _CopyWithStubImpl$Subscription$watchUser$authUsersDataByPk$person<TRes>
    implements CopyWith$Subscription$watchUser$authUsersDataByPk$person<TRes> {
  _CopyWithStubImpl$Subscription$watchUser$authUsersDataByPk$person(this._res);

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

class Subscription$watchUser$authUsersDataByPk$adminOn
    implements Fragment$UserDetails$adminOn, Fragment$UserAdminOn$adminOn {
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
          : Fragment$Area.fromJson((l$area as Map<String, dynamic>)),
      areaAllowEdit: (l$areaAllowEdit as bool?),
      areaAdminOnUsers: (l$areaAdminOnUsers as bool?),
      service: l$service == null
          ? null
          : Fragment$Service.fromJson((l$service as Map<String, dynamic>)),
      serviceStudyYearData: l$serviceStudyYearData == null
          ? null
          : Subscription$watchUser$authUsersDataByPk$adminOn$serviceStudyYearData
              .fromJson((l$serviceStudyYearData as Map<String, dynamic>)),
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

  final Subscription$watchUser$authUsersDataByPk$adminOn$serviceStudyYearData?
      serviceStudyYearData;

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
    Fragment$Area? area,
    bool? areaAllowEdit,
    bool? areaAdminOnUsers,
    Fragment$Service? service,
    Subscription$watchUser$authUsersDataByPk$adminOn$serviceStudyYearData?
        serviceStudyYearData,
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
  CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$serviceStudyYearData<
      TRes> get serviceStudyYearData;
  TRes classes(
      Iterable<Fragment$Class> Function(
              Iterable<CopyWith$Fragment$Class<Fragment$Class>>)
          _fn);
  CopyWith$Fragment$Group<TRes> get group;
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

class _CopyWithStubImpl$Subscription$watchUser$authUsersDataByPk$adminOn<TRes>
    implements CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn<TRes> {
  _CopyWithStubImpl$Subscription$watchUser$authUsersDataByPk$adminOn(this._res);

  TRes _res;

  call({
    UuidValue? permissionId,
    Fragment$Area? area,
    bool? areaAllowEdit,
    bool? areaAdminOnUsers,
    Fragment$Service? service,
    Subscription$watchUser$authUsersDataByPk$adminOn$serviceStudyYearData?
        serviceStudyYearData,
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
  CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$serviceStudyYearData<
          TRes>
      get serviceStudyYearData =>
          CopyWith$Subscription$watchUser$authUsersDataByPk$adminOn$serviceStudyYearData
              .stub(_res);
  classes(_fn) => _res;
  CopyWith$Fragment$Group<TRes> get group => CopyWith$Fragment$Group.stub(_res);
}

class Subscription$watchUser$authUsersDataByPk$adminOn$serviceStudyYearData
    implements
        Fragment$UserDetails$adminOn$serviceStudyYearData,
        Fragment$UserAdminOn$adminOn$serviceStudyYearData {
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
