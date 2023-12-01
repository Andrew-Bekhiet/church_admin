import '../../../../../../graphql/__generated__/schema.graphql.dart';
import '../../areas/__generated__/fragments.gql.dart';
import '../../classes/__generated__/fragments.gql.dart';
import '../../gql/__generated__/fragments.gql.dart';
import '../../groups/__generated__/fragments.gql.dart';
import '../../persons/__generated__/fragments.gql.dart';
import '../../services/__generated__/fragments.gql.dart';
import 'fragments.gql.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Subscription_watchUser {
  factory Variables_Subscription_watchUser({
    required UuidValue uid,
    bool? fullData,
  }) =>
      Variables_Subscription_watchUser._({
        r'uid': uid,
        if (fullData != null) r'fullData': fullData,
      });

  Variables_Subscription_watchUser._(this._$data);

  factory Variables_Subscription_watchUser.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$uid = data['uid'];
    result$data['uid'] = stringToUuid(l$uid);
    if (data.containsKey('fullData')) {
      final l$fullData = data['fullData'];
      result$data['fullData'] = (l$fullData as bool?);
    }
    return Variables_Subscription_watchUser._(result$data);
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

  CopyWith_Variables_Subscription_watchUser<Variables_Subscription_watchUser>
      get copyWith => CopyWith_Variables_Subscription_watchUser(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables_Subscription_watchUser) ||
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

abstract class CopyWith_Variables_Subscription_watchUser<TRes> {
  factory CopyWith_Variables_Subscription_watchUser(
    Variables_Subscription_watchUser instance,
    TRes Function(Variables_Subscription_watchUser) then,
  ) = _CopyWithImpl_Variables_Subscription_watchUser;

  factory CopyWith_Variables_Subscription_watchUser.stub(TRes res) =
      _CopyWithStubImpl_Variables_Subscription_watchUser;

  TRes call({
    UuidValue? uid,
    bool? fullData,
  });
}

class _CopyWithImpl_Variables_Subscription_watchUser<TRes>
    implements CopyWith_Variables_Subscription_watchUser<TRes> {
  _CopyWithImpl_Variables_Subscription_watchUser(
    this._instance,
    this._then,
  );

  final Variables_Subscription_watchUser _instance;

  final TRes Function(Variables_Subscription_watchUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uid = _undefined,
    Object? fullData = _undefined,
  }) =>
      _then(Variables_Subscription_watchUser._({
        ..._instance._$data,
        if (uid != _undefined && uid != null) 'uid': (uid as UuidValue),
        if (fullData != _undefined) 'fullData': (fullData as bool?),
      }));
}

class _CopyWithStubImpl_Variables_Subscription_watchUser<TRes>
    implements CopyWith_Variables_Subscription_watchUser<TRes> {
  _CopyWithStubImpl_Variables_Subscription_watchUser(this._res);

  TRes _res;

  call({
    UuidValue? uid,
    bool? fullData,
  }) =>
      _res;
}

class Subscription_watchUser {
  Subscription_watchUser({this.authUsersDataByPk});

  factory Subscription_watchUser.fromJson(Map<String, dynamic> json) {
    final l$authUsersDataByPk = json['authUsersDataByPk'];
    return Subscription_watchUser(
        authUsersDataByPk: l$authUsersDataByPk == null
            ? null
            : Subscription_watchUser_authUsersDataByPk.fromJson(
                (l$authUsersDataByPk as Map<String, dynamic>)));
  }

  final Subscription_watchUser_authUsersDataByPk? authUsersDataByPk;

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
    if (!(other is Subscription_watchUser) ||
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

extension UtilityExtension_Subscription_watchUser on Subscription_watchUser {
  CopyWith_Subscription_watchUser<Subscription_watchUser> get copyWith =>
      CopyWith_Subscription_watchUser(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Subscription_watchUser<TRes> {
  factory CopyWith_Subscription_watchUser(
    Subscription_watchUser instance,
    TRes Function(Subscription_watchUser) then,
  ) = _CopyWithImpl_Subscription_watchUser;

  factory CopyWith_Subscription_watchUser.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchUser;

  TRes call({Subscription_watchUser_authUsersDataByPk? authUsersDataByPk});
  CopyWith_Subscription_watchUser_authUsersDataByPk<TRes> get authUsersDataByPk;
}

class _CopyWithImpl_Subscription_watchUser<TRes>
    implements CopyWith_Subscription_watchUser<TRes> {
  _CopyWithImpl_Subscription_watchUser(
    this._instance,
    this._then,
  );

  final Subscription_watchUser _instance;

  final TRes Function(Subscription_watchUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? authUsersDataByPk = _undefined}) =>
      _then(Subscription_watchUser(
          authUsersDataByPk: authUsersDataByPk == _undefined
              ? _instance.authUsersDataByPk
              : (authUsersDataByPk
                  as Subscription_watchUser_authUsersDataByPk?)));

  CopyWith_Subscription_watchUser_authUsersDataByPk<TRes>
      get authUsersDataByPk {
    final local$authUsersDataByPk = _instance.authUsersDataByPk;
    return local$authUsersDataByPk == null
        ? CopyWith_Subscription_watchUser_authUsersDataByPk.stub(
            _then(_instance))
        : CopyWith_Subscription_watchUser_authUsersDataByPk(
            local$authUsersDataByPk, (e) => call(authUsersDataByPk: e));
  }
}

class _CopyWithStubImpl_Subscription_watchUser<TRes>
    implements CopyWith_Subscription_watchUser<TRes> {
  _CopyWithStubImpl_Subscription_watchUser(this._res);

  TRes _res;

  call({Subscription_watchUser_authUsersDataByPk? authUsersDataByPk}) => _res;

  CopyWith_Subscription_watchUser_authUsersDataByPk<TRes>
      get authUsersDataByPk =>
          CopyWith_Subscription_watchUser_authUsersDataByPk.stub(_res);
}

const documentNodeSubscriptionwatchUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'watchUser'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'uid')),
        type: NamedTypeNode(
          name: NameNode(value: 'Uuid'),
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
  fragmentDefinitionKodasHistory,
  fragmentDefinitionConfessionHistory,
  fragmentDefinitionUserDetails,
  fragmentDefinitionEditHistory,
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

class Subscription_watchUser_authUsersDataByPk
    implements
        Fragment_UserOverview,
        Fragment_User,
        Fragment_UserNoPhoto,
        Fragment_UserPermissions,
        Fragment_UserDetails,
        Fragment_UserAdminOn {
  Subscription_watchUser_authUsersDataByPk({
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

  factory Subscription_watchUser_authUsersDataByPk.fromJson(
      Map<String, dynamic> json) {
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
    return Subscription_watchUser_authUsersDataByPk(
      uid: stringToUuid(l$uid),
      name: (l$name as String),
      email: (l$email as String),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      permissions: (l$permissions as List<dynamic>)
          .map((e) =>
              Subscription_watchUser_authUsersDataByPk_permissions.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      person: l$person == null
          ? null
          : Subscription_watchUser_authUsersDataByPk_person.fromJson(
              (l$person as Map<String, dynamic>)),
      lastEdit: l$lastEdit == null
          ? null
          : Subscription_watchUser_authUsersDataByPk_lastEdit.fromJson(
              (l$lastEdit as Map<String, dynamic>)),
      adminOn: (l$adminOn as List<dynamic>)
          .map((e) => Subscription_watchUser_authUsersDataByPk_adminOn.fromJson(
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

  final List<Subscription_watchUser_authUsersDataByPk_permissions> permissions;

  final Subscription_watchUser_authUsersDataByPk_person? person;

  final Subscription_watchUser_authUsersDataByPk_lastEdit? lastEdit;

  final List<Subscription_watchUser_authUsersDataByPk_adminOn> adminOn;

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
    if (!(other is Subscription_watchUser_authUsersDataByPk) ||
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

extension UtilityExtension_Subscription_watchUser_authUsersDataByPk
    on Subscription_watchUser_authUsersDataByPk {
  CopyWith_Subscription_watchUser_authUsersDataByPk<
          Subscription_watchUser_authUsersDataByPk>
      get copyWith => CopyWith_Subscription_watchUser_authUsersDataByPk(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchUser_authUsersDataByPk<TRes> {
  factory CopyWith_Subscription_watchUser_authUsersDataByPk(
    Subscription_watchUser_authUsersDataByPk instance,
    TRes Function(Subscription_watchUser_authUsersDataByPk) then,
  ) = _CopyWithImpl_Subscription_watchUser_authUsersDataByPk;

  factory CopyWith_Subscription_watchUser_authUsersDataByPk.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchUser_authUsersDataByPk;

  TRes call({
    UuidValue? uid,
    String? name,
    String? email,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    List<Subscription_watchUser_authUsersDataByPk_permissions>? permissions,
    Subscription_watchUser_authUsersDataByPk_person? person,
    Subscription_watchUser_authUsersDataByPk_lastEdit? lastEdit,
    List<Subscription_watchUser_authUsersDataByPk_adminOn>? adminOn,
  });
  TRes permissions(
      Iterable<Subscription_watchUser_authUsersDataByPk_permissions> Function(
              Iterable<
                  CopyWith_Subscription_watchUser_authUsersDataByPk_permissions<
                      Subscription_watchUser_authUsersDataByPk_permissions>>)
          _fn);
  CopyWith_Subscription_watchUser_authUsersDataByPk_person<TRes> get person;
  CopyWith_Subscription_watchUser_authUsersDataByPk_lastEdit<TRes> get lastEdit;
  TRes adminOn(
      Iterable<Subscription_watchUser_authUsersDataByPk_adminOn> Function(
              Iterable<
                  CopyWith_Subscription_watchUser_authUsersDataByPk_adminOn<
                      Subscription_watchUser_authUsersDataByPk_adminOn>>)
          _fn);
}

class _CopyWithImpl_Subscription_watchUser_authUsersDataByPk<TRes>
    implements CopyWith_Subscription_watchUser_authUsersDataByPk<TRes> {
  _CopyWithImpl_Subscription_watchUser_authUsersDataByPk(
    this._instance,
    this._then,
  );

  final Subscription_watchUser_authUsersDataByPk _instance;

  final TRes Function(Subscription_watchUser_authUsersDataByPk) _then;

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
      _then(Subscription_watchUser_authUsersDataByPk(
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
            : (permissions
                as List<Subscription_watchUser_authUsersDataByPk_permissions>),
        person: person == _undefined
            ? _instance.person
            : (person as Subscription_watchUser_authUsersDataByPk_person?),
        lastEdit: lastEdit == _undefined
            ? _instance.lastEdit
            : (lastEdit as Subscription_watchUser_authUsersDataByPk_lastEdit?),
        adminOn: adminOn == _undefined || adminOn == null
            ? _instance.adminOn
            : (adminOn
                as List<Subscription_watchUser_authUsersDataByPk_adminOn>),
      ));

  TRes permissions(
          Iterable<Subscription_watchUser_authUsersDataByPk_permissions> Function(
                  Iterable<
                      CopyWith_Subscription_watchUser_authUsersDataByPk_permissions<
                          Subscription_watchUser_authUsersDataByPk_permissions>>)
              _fn) =>
      call(
          permissions: _fn(_instance.permissions.map((e) =>
              CopyWith_Subscription_watchUser_authUsersDataByPk_permissions(
                e,
                (i) => i,
              ))).toList());

  CopyWith_Subscription_watchUser_authUsersDataByPk_person<TRes> get person {
    final local$person = _instance.person;
    return local$person == null
        ? CopyWith_Subscription_watchUser_authUsersDataByPk_person.stub(
            _then(_instance))
        : CopyWith_Subscription_watchUser_authUsersDataByPk_person(
            local$person, (e) => call(person: e));
  }

  CopyWith_Subscription_watchUser_authUsersDataByPk_lastEdit<TRes>
      get lastEdit {
    final local$lastEdit = _instance.lastEdit;
    return local$lastEdit == null
        ? CopyWith_Subscription_watchUser_authUsersDataByPk_lastEdit.stub(
            _then(_instance))
        : CopyWith_Subscription_watchUser_authUsersDataByPk_lastEdit(
            local$lastEdit, (e) => call(lastEdit: e));
  }

  TRes adminOn(
          Iterable<Subscription_watchUser_authUsersDataByPk_adminOn> Function(
                  Iterable<
                      CopyWith_Subscription_watchUser_authUsersDataByPk_adminOn<
                          Subscription_watchUser_authUsersDataByPk_adminOn>>)
              _fn) =>
      call(
          adminOn: _fn(_instance.adminOn.map(
              (e) => CopyWith_Subscription_watchUser_authUsersDataByPk_adminOn(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl_Subscription_watchUser_authUsersDataByPk<TRes>
    implements CopyWith_Subscription_watchUser_authUsersDataByPk<TRes> {
  _CopyWithStubImpl_Subscription_watchUser_authUsersDataByPk(this._res);

  TRes _res;

  call({
    UuidValue? uid,
    String? name,
    String? email,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    List<Subscription_watchUser_authUsersDataByPk_permissions>? permissions,
    Subscription_watchUser_authUsersDataByPk_person? person,
    Subscription_watchUser_authUsersDataByPk_lastEdit? lastEdit,
    List<Subscription_watchUser_authUsersDataByPk_adminOn>? adminOn,
  }) =>
      _res;

  permissions(_fn) => _res;

  CopyWith_Subscription_watchUser_authUsersDataByPk_person<TRes> get person =>
      CopyWith_Subscription_watchUser_authUsersDataByPk_person.stub(_res);

  CopyWith_Subscription_watchUser_authUsersDataByPk_lastEdit<TRes>
      get lastEdit =>
          CopyWith_Subscription_watchUser_authUsersDataByPk_lastEdit.stub(_res);

  adminOn(_fn) => _res;
}

class Subscription_watchUser_authUsersDataByPk_permissions
    implements
        Fragment_UserOverview_permissions,
        Fragment_UserPermissions_permissions,
        Fragment_UserDetails_permissions {
  Subscription_watchUser_authUsersDataByPk_permissions({
    required this.permission,
    this.$__typename = 'AuthUsersPermissions',
  });

  factory Subscription_watchUser_authUsersDataByPk_permissions.fromJson(
      Map<String, dynamic> json) {
    final l$permission = json['permission'];
    final l$$__typename = json['__typename'];
    return Subscription_watchUser_authUsersDataByPk_permissions(
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
    if (!(other is Subscription_watchUser_authUsersDataByPk_permissions) ||
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

extension UtilityExtension_Subscription_watchUser_authUsersDataByPk_permissions
    on Subscription_watchUser_authUsersDataByPk_permissions {
  CopyWith_Subscription_watchUser_authUsersDataByPk_permissions<
          Subscription_watchUser_authUsersDataByPk_permissions>
      get copyWith =>
          CopyWith_Subscription_watchUser_authUsersDataByPk_permissions(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchUser_authUsersDataByPk_permissions<
    TRes> {
  factory CopyWith_Subscription_watchUser_authUsersDataByPk_permissions(
    Subscription_watchUser_authUsersDataByPk_permissions instance,
    TRes Function(Subscription_watchUser_authUsersDataByPk_permissions) then,
  ) = _CopyWithImpl_Subscription_watchUser_authUsersDataByPk_permissions;

  factory CopyWith_Subscription_watchUser_authUsersDataByPk_permissions.stub(
          TRes res) =
      _CopyWithStubImpl_Subscription_watchUser_authUsersDataByPk_permissions;

  TRes call({
    String? permission,
    String? $__typename,
  });
}

class _CopyWithImpl_Subscription_watchUser_authUsersDataByPk_permissions<TRes>
    implements
        CopyWith_Subscription_watchUser_authUsersDataByPk_permissions<TRes> {
  _CopyWithImpl_Subscription_watchUser_authUsersDataByPk_permissions(
    this._instance,
    this._then,
  );

  final Subscription_watchUser_authUsersDataByPk_permissions _instance;

  final TRes Function(Subscription_watchUser_authUsersDataByPk_permissions)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? permission = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription_watchUser_authUsersDataByPk_permissions(
        permission: permission == _undefined || permission == null
            ? _instance.permission
            : (permission as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Subscription_watchUser_authUsersDataByPk_permissions<
        TRes>
    implements
        CopyWith_Subscription_watchUser_authUsersDataByPk_permissions<TRes> {
  _CopyWithStubImpl_Subscription_watchUser_authUsersDataByPk_permissions(
      this._res);

  TRes _res;

  call({
    String? permission,
    String? $__typename,
  }) =>
      _res;
}

class Subscription_watchUser_authUsersDataByPk_person
    implements
        Fragment_UserOverview_person,
        Fragment_Person,
        Fragment_PersonNoPhoto,
        Fragment_UserDetails_person {
  Subscription_watchUser_authUsersDataByPk_person({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Persons',
    this.photoUpdatedAt,
    this.blurhash,
    this.lastKodas,
    this.lastConfession,
  });

  factory Subscription_watchUser_authUsersDataByPk_person.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$lastKodas = json['lastKodas'];
    final l$lastConfession = json['lastConfession'];
    return Subscription_watchUser_authUsersDataByPk_person(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      lastKodas: l$lastKodas == null
          ? null
          : Subscription_watchUser_authUsersDataByPk_person_lastKodas.fromJson(
              (l$lastKodas as Map<String, dynamic>)),
      lastConfession: l$lastConfession == null
          ? null
          : Subscription_watchUser_authUsersDataByPk_person_lastConfession
              .fromJson((l$lastConfession as Map<String, dynamic>)),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final Subscription_watchUser_authUsersDataByPk_person_lastKodas? lastKodas;

  final Subscription_watchUser_authUsersDataByPk_person_lastConfession?
      lastConfession;

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
    if (!(other is Subscription_watchUser_authUsersDataByPk_person) ||
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

extension UtilityExtension_Subscription_watchUser_authUsersDataByPk_person
    on Subscription_watchUser_authUsersDataByPk_person {
  CopyWith_Subscription_watchUser_authUsersDataByPk_person<
          Subscription_watchUser_authUsersDataByPk_person>
      get copyWith => CopyWith_Subscription_watchUser_authUsersDataByPk_person(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchUser_authUsersDataByPk_person<TRes> {
  factory CopyWith_Subscription_watchUser_authUsersDataByPk_person(
    Subscription_watchUser_authUsersDataByPk_person instance,
    TRes Function(Subscription_watchUser_authUsersDataByPk_person) then,
  ) = _CopyWithImpl_Subscription_watchUser_authUsersDataByPk_person;

  factory CopyWith_Subscription_watchUser_authUsersDataByPk_person.stub(
          TRes res) =
      _CopyWithStubImpl_Subscription_watchUser_authUsersDataByPk_person;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Subscription_watchUser_authUsersDataByPk_person_lastKodas? lastKodas,
    Subscription_watchUser_authUsersDataByPk_person_lastConfession?
        lastConfession,
  });
  CopyWith_Subscription_watchUser_authUsersDataByPk_person_lastKodas<TRes>
      get lastKodas;
  CopyWith_Subscription_watchUser_authUsersDataByPk_person_lastConfession<TRes>
      get lastConfession;
}

class _CopyWithImpl_Subscription_watchUser_authUsersDataByPk_person<TRes>
    implements CopyWith_Subscription_watchUser_authUsersDataByPk_person<TRes> {
  _CopyWithImpl_Subscription_watchUser_authUsersDataByPk_person(
    this._instance,
    this._then,
  );

  final Subscription_watchUser_authUsersDataByPk_person _instance;

  final TRes Function(Subscription_watchUser_authUsersDataByPk_person) _then;

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
      _then(Subscription_watchUser_authUsersDataByPk_person(
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
            : (lastKodas
                as Subscription_watchUser_authUsersDataByPk_person_lastKodas?),
        lastConfession: lastConfession == _undefined
            ? _instance.lastConfession
            : (lastConfession
                as Subscription_watchUser_authUsersDataByPk_person_lastConfession?),
      ));

  CopyWith_Subscription_watchUser_authUsersDataByPk_person_lastKodas<TRes>
      get lastKodas {
    final local$lastKodas = _instance.lastKodas;
    return local$lastKodas == null
        ? CopyWith_Subscription_watchUser_authUsersDataByPk_person_lastKodas
            .stub(_then(_instance))
        : CopyWith_Subscription_watchUser_authUsersDataByPk_person_lastKodas(
            local$lastKodas, (e) => call(lastKodas: e));
  }

  CopyWith_Subscription_watchUser_authUsersDataByPk_person_lastConfession<TRes>
      get lastConfession {
    final local$lastConfession = _instance.lastConfession;
    return local$lastConfession == null
        ? CopyWith_Subscription_watchUser_authUsersDataByPk_person_lastConfession
            .stub(_then(_instance))
        : CopyWith_Subscription_watchUser_authUsersDataByPk_person_lastConfession(
            local$lastConfession, (e) => call(lastConfession: e));
  }
}

class _CopyWithStubImpl_Subscription_watchUser_authUsersDataByPk_person<TRes>
    implements CopyWith_Subscription_watchUser_authUsersDataByPk_person<TRes> {
  _CopyWithStubImpl_Subscription_watchUser_authUsersDataByPk_person(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Subscription_watchUser_authUsersDataByPk_person_lastKodas? lastKodas,
    Subscription_watchUser_authUsersDataByPk_person_lastConfession?
        lastConfession,
  }) =>
      _res;

  CopyWith_Subscription_watchUser_authUsersDataByPk_person_lastKodas<TRes>
      get lastKodas =>
          CopyWith_Subscription_watchUser_authUsersDataByPk_person_lastKodas
              .stub(_res);

  CopyWith_Subscription_watchUser_authUsersDataByPk_person_lastConfession<TRes>
      get lastConfession =>
          CopyWith_Subscription_watchUser_authUsersDataByPk_person_lastConfession
              .stub(_res);
}

class Subscription_watchUser_authUsersDataByPk_person_lastKodas
    implements
        Fragment_UserOverview_person_lastKodas,
        Fragment_UserDetails_person_lastKodas {
  Subscription_watchUser_authUsersDataByPk_person_lastKodas(
      {this.$__typename = 'HistoryLatestKodases'});

  factory Subscription_watchUser_authUsersDataByPk_person_lastKodas.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Subscription_watchUser_authUsersDataByPk_person_lastKodas(
        $__typename: (l$$__typename as String));
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription_watchUser_authUsersDataByPk_person_lastKodas) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension_Subscription_watchUser_authUsersDataByPk_person_lastKodas
    on Subscription_watchUser_authUsersDataByPk_person_lastKodas {
  CopyWith_Subscription_watchUser_authUsersDataByPk_person_lastKodas<
          Subscription_watchUser_authUsersDataByPk_person_lastKodas>
      get copyWith =>
          CopyWith_Subscription_watchUser_authUsersDataByPk_person_lastKodas(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchUser_authUsersDataByPk_person_lastKodas<
    TRes> {
  factory CopyWith_Subscription_watchUser_authUsersDataByPk_person_lastKodas(
    Subscription_watchUser_authUsersDataByPk_person_lastKodas instance,
    TRes Function(Subscription_watchUser_authUsersDataByPk_person_lastKodas)
        then,
  ) = _CopyWithImpl_Subscription_watchUser_authUsersDataByPk_person_lastKodas;

  factory CopyWith_Subscription_watchUser_authUsersDataByPk_person_lastKodas.stub(
          TRes res) =
      _CopyWithStubImpl_Subscription_watchUser_authUsersDataByPk_person_lastKodas;

  TRes call({String? $__typename});
}

class _CopyWithImpl_Subscription_watchUser_authUsersDataByPk_person_lastKodas<
        TRes>
    implements
        CopyWith_Subscription_watchUser_authUsersDataByPk_person_lastKodas<
            TRes> {
  _CopyWithImpl_Subscription_watchUser_authUsersDataByPk_person_lastKodas(
    this._instance,
    this._then,
  );

  final Subscription_watchUser_authUsersDataByPk_person_lastKodas _instance;

  final TRes Function(Subscription_watchUser_authUsersDataByPk_person_lastKodas)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Subscription_watchUser_authUsersDataByPk_person_lastKodas(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl_Subscription_watchUser_authUsersDataByPk_person_lastKodas<
        TRes>
    implements
        CopyWith_Subscription_watchUser_authUsersDataByPk_person_lastKodas<
            TRes> {
  _CopyWithStubImpl_Subscription_watchUser_authUsersDataByPk_person_lastKodas(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Subscription_watchUser_authUsersDataByPk_person_lastConfession
    implements
        Fragment_UserOverview_person_lastConfession,
        Fragment_UserDetails_person_lastConfession {
  Subscription_watchUser_authUsersDataByPk_person_lastConfession(
      {this.$__typename = 'HistoryLatestConfessions'});

  factory Subscription_watchUser_authUsersDataByPk_person_lastConfession.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Subscription_watchUser_authUsersDataByPk_person_lastConfession(
        $__typename: (l$$__typename as String));
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Subscription_watchUser_authUsersDataByPk_person_lastConfession) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension_Subscription_watchUser_authUsersDataByPk_person_lastConfession
    on Subscription_watchUser_authUsersDataByPk_person_lastConfession {
  CopyWith_Subscription_watchUser_authUsersDataByPk_person_lastConfession<
          Subscription_watchUser_authUsersDataByPk_person_lastConfession>
      get copyWith =>
          CopyWith_Subscription_watchUser_authUsersDataByPk_person_lastConfession(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchUser_authUsersDataByPk_person_lastConfession<
    TRes> {
  factory CopyWith_Subscription_watchUser_authUsersDataByPk_person_lastConfession(
    Subscription_watchUser_authUsersDataByPk_person_lastConfession instance,
    TRes Function(
            Subscription_watchUser_authUsersDataByPk_person_lastConfession)
        then,
  ) = _CopyWithImpl_Subscription_watchUser_authUsersDataByPk_person_lastConfession;

  factory CopyWith_Subscription_watchUser_authUsersDataByPk_person_lastConfession.stub(
          TRes res) =
      _CopyWithStubImpl_Subscription_watchUser_authUsersDataByPk_person_lastConfession;

  TRes call({String? $__typename});
}

class _CopyWithImpl_Subscription_watchUser_authUsersDataByPk_person_lastConfession<
        TRes>
    implements
        CopyWith_Subscription_watchUser_authUsersDataByPk_person_lastConfession<
            TRes> {
  _CopyWithImpl_Subscription_watchUser_authUsersDataByPk_person_lastConfession(
    this._instance,
    this._then,
  );

  final Subscription_watchUser_authUsersDataByPk_person_lastConfession
      _instance;

  final TRes Function(
      Subscription_watchUser_authUsersDataByPk_person_lastConfession) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Subscription_watchUser_authUsersDataByPk_person_lastConfession(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl_Subscription_watchUser_authUsersDataByPk_person_lastConfession<
        TRes>
    implements
        CopyWith_Subscription_watchUser_authUsersDataByPk_person_lastConfession<
            TRes> {
  _CopyWithStubImpl_Subscription_watchUser_authUsersDataByPk_person_lastConfession(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Subscription_watchUser_authUsersDataByPk_lastEdit
    implements Fragment_UserDetails_lastEdit {
  Subscription_watchUser_authUsersDataByPk_lastEdit(
      {this.$__typename = 'HistoryLatestEdits'});

  factory Subscription_watchUser_authUsersDataByPk_lastEdit.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Subscription_watchUser_authUsersDataByPk_lastEdit(
        $__typename: (l$$__typename as String));
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription_watchUser_authUsersDataByPk_lastEdit) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension_Subscription_watchUser_authUsersDataByPk_lastEdit
    on Subscription_watchUser_authUsersDataByPk_lastEdit {
  CopyWith_Subscription_watchUser_authUsersDataByPk_lastEdit<
          Subscription_watchUser_authUsersDataByPk_lastEdit>
      get copyWith =>
          CopyWith_Subscription_watchUser_authUsersDataByPk_lastEdit(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchUser_authUsersDataByPk_lastEdit<
    TRes> {
  factory CopyWith_Subscription_watchUser_authUsersDataByPk_lastEdit(
    Subscription_watchUser_authUsersDataByPk_lastEdit instance,
    TRes Function(Subscription_watchUser_authUsersDataByPk_lastEdit) then,
  ) = _CopyWithImpl_Subscription_watchUser_authUsersDataByPk_lastEdit;

  factory CopyWith_Subscription_watchUser_authUsersDataByPk_lastEdit.stub(
          TRes res) =
      _CopyWithStubImpl_Subscription_watchUser_authUsersDataByPk_lastEdit;

  TRes call({String? $__typename});
}

class _CopyWithImpl_Subscription_watchUser_authUsersDataByPk_lastEdit<TRes>
    implements
        CopyWith_Subscription_watchUser_authUsersDataByPk_lastEdit<TRes> {
  _CopyWithImpl_Subscription_watchUser_authUsersDataByPk_lastEdit(
    this._instance,
    this._then,
  );

  final Subscription_watchUser_authUsersDataByPk_lastEdit _instance;

  final TRes Function(Subscription_watchUser_authUsersDataByPk_lastEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Subscription_watchUser_authUsersDataByPk_lastEdit(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl_Subscription_watchUser_authUsersDataByPk_lastEdit<TRes>
    implements
        CopyWith_Subscription_watchUser_authUsersDataByPk_lastEdit<TRes> {
  _CopyWithStubImpl_Subscription_watchUser_authUsersDataByPk_lastEdit(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Subscription_watchUser_authUsersDataByPk_adminOn
    implements Fragment_UserDetails_adminOn, Fragment_UserAdminOn_adminOn {
  Subscription_watchUser_authUsersDataByPk_adminOn({
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

  factory Subscription_watchUser_authUsersDataByPk_adminOn.fromJson(
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
    return Subscription_watchUser_authUsersDataByPk_adminOn(
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
          : Subscription_watchUser_authUsersDataByPk_adminOn_serviceStudyYearData
              .fromJson((l$serviceStudyYearData as Map<String, dynamic>)),
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

  final Subscription_watchUser_authUsersDataByPk_adminOn_serviceStudyYearData?
      serviceStudyYearData;

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
    if (!(other is Subscription_watchUser_authUsersDataByPk_adminOn) ||
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

extension UtilityExtension_Subscription_watchUser_authUsersDataByPk_adminOn
    on Subscription_watchUser_authUsersDataByPk_adminOn {
  CopyWith_Subscription_watchUser_authUsersDataByPk_adminOn<
          Subscription_watchUser_authUsersDataByPk_adminOn>
      get copyWith => CopyWith_Subscription_watchUser_authUsersDataByPk_adminOn(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchUser_authUsersDataByPk_adminOn<TRes> {
  factory CopyWith_Subscription_watchUser_authUsersDataByPk_adminOn(
    Subscription_watchUser_authUsersDataByPk_adminOn instance,
    TRes Function(Subscription_watchUser_authUsersDataByPk_adminOn) then,
  ) = _CopyWithImpl_Subscription_watchUser_authUsersDataByPk_adminOn;

  factory CopyWith_Subscription_watchUser_authUsersDataByPk_adminOn.stub(
          TRes res) =
      _CopyWithStubImpl_Subscription_watchUser_authUsersDataByPk_adminOn;

  TRes call({
    UuidValue? permissionId,
    Fragment_Area? area,
    bool? areaAllowEdit,
    bool? areaAdminOnUsers,
    Fragment_Service? service,
    Subscription_watchUser_authUsersDataByPk_adminOn_serviceStudyYearData?
        serviceStudyYearData,
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
  CopyWith_Subscription_watchUser_authUsersDataByPk_adminOn_serviceStudyYearData<
      TRes> get serviceStudyYearData;
  TRes classes(
      Iterable<Fragment_Class> Function(
              Iterable<CopyWith_Fragment_Class<Fragment_Class>>)
          _fn);
  CopyWith_Fragment_Group<TRes> get group;
}

class _CopyWithImpl_Subscription_watchUser_authUsersDataByPk_adminOn<TRes>
    implements CopyWith_Subscription_watchUser_authUsersDataByPk_adminOn<TRes> {
  _CopyWithImpl_Subscription_watchUser_authUsersDataByPk_adminOn(
    this._instance,
    this._then,
  );

  final Subscription_watchUser_authUsersDataByPk_adminOn _instance;

  final TRes Function(Subscription_watchUser_authUsersDataByPk_adminOn) _then;

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
      _then(Subscription_watchUser_authUsersDataByPk_adminOn(
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
                as Subscription_watchUser_authUsersDataByPk_adminOn_serviceStudyYearData?),
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

  CopyWith_Subscription_watchUser_authUsersDataByPk_adminOn_serviceStudyYearData<
      TRes> get serviceStudyYearData {
    final local$serviceStudyYearData = _instance.serviceStudyYearData;
    return local$serviceStudyYearData == null
        ? CopyWith_Subscription_watchUser_authUsersDataByPk_adminOn_serviceStudyYearData
            .stub(_then(_instance))
        : CopyWith_Subscription_watchUser_authUsersDataByPk_adminOn_serviceStudyYearData(
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

class _CopyWithStubImpl_Subscription_watchUser_authUsersDataByPk_adminOn<TRes>
    implements CopyWith_Subscription_watchUser_authUsersDataByPk_adminOn<TRes> {
  _CopyWithStubImpl_Subscription_watchUser_authUsersDataByPk_adminOn(this._res);

  TRes _res;

  call({
    UuidValue? permissionId,
    Fragment_Area? area,
    bool? areaAllowEdit,
    bool? areaAdminOnUsers,
    Fragment_Service? service,
    Subscription_watchUser_authUsersDataByPk_adminOn_serviceStudyYearData?
        serviceStudyYearData,
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

  CopyWith_Subscription_watchUser_authUsersDataByPk_adminOn_serviceStudyYearData<
          TRes>
      get serviceStudyYearData =>
          CopyWith_Subscription_watchUser_authUsersDataByPk_adminOn_serviceStudyYearData
              .stub(_res);

  classes(_fn) => _res;

  CopyWith_Fragment_Group<TRes> get group => CopyWith_Fragment_Group.stub(_res);
}

class Subscription_watchUser_authUsersDataByPk_adminOn_serviceStudyYearData
    implements
        Fragment_UserDetails_adminOn_serviceStudyYearData,
        Fragment_UserAdminOn_adminOn_serviceStudyYearData {
  Subscription_watchUser_authUsersDataByPk_adminOn_serviceStudyYearData({
    required this.name,
    required this.order,
    this.$__typename = 'StudyYears',
  });

  factory Subscription_watchUser_authUsersDataByPk_adminOn_serviceStudyYearData.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$order = json['order'];
    final l$$__typename = json['__typename'];
    return Subscription_watchUser_authUsersDataByPk_adminOn_serviceStudyYearData(
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
            is Subscription_watchUser_authUsersDataByPk_adminOn_serviceStudyYearData) ||
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

extension UtilityExtension_Subscription_watchUser_authUsersDataByPk_adminOn_serviceStudyYearData
    on Subscription_watchUser_authUsersDataByPk_adminOn_serviceStudyYearData {
  CopyWith_Subscription_watchUser_authUsersDataByPk_adminOn_serviceStudyYearData<
          Subscription_watchUser_authUsersDataByPk_adminOn_serviceStudyYearData>
      get copyWith =>
          CopyWith_Subscription_watchUser_authUsersDataByPk_adminOn_serviceStudyYearData(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchUser_authUsersDataByPk_adminOn_serviceStudyYearData<
    TRes> {
  factory CopyWith_Subscription_watchUser_authUsersDataByPk_adminOn_serviceStudyYearData(
    Subscription_watchUser_authUsersDataByPk_adminOn_serviceStudyYearData
        instance,
    TRes Function(
            Subscription_watchUser_authUsersDataByPk_adminOn_serviceStudyYearData)
        then,
  ) = _CopyWithImpl_Subscription_watchUser_authUsersDataByPk_adminOn_serviceStudyYearData;

  factory CopyWith_Subscription_watchUser_authUsersDataByPk_adminOn_serviceStudyYearData.stub(
          TRes res) =
      _CopyWithStubImpl_Subscription_watchUser_authUsersDataByPk_adminOn_serviceStudyYearData;

  TRes call({
    String? name,
    int? order,
    String? $__typename,
  });
}

class _CopyWithImpl_Subscription_watchUser_authUsersDataByPk_adminOn_serviceStudyYearData<
        TRes>
    implements
        CopyWith_Subscription_watchUser_authUsersDataByPk_adminOn_serviceStudyYearData<
            TRes> {
  _CopyWithImpl_Subscription_watchUser_authUsersDataByPk_adminOn_serviceStudyYearData(
    this._instance,
    this._then,
  );

  final Subscription_watchUser_authUsersDataByPk_adminOn_serviceStudyYearData
      _instance;

  final TRes Function(
          Subscription_watchUser_authUsersDataByPk_adminOn_serviceStudyYearData)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? order = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Subscription_watchUser_authUsersDataByPk_adminOn_serviceStudyYearData(
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

class _CopyWithStubImpl_Subscription_watchUser_authUsersDataByPk_adminOn_serviceStudyYearData<
        TRes>
    implements
        CopyWith_Subscription_watchUser_authUsersDataByPk_adminOn_serviceStudyYearData<
            TRes> {
  _CopyWithStubImpl_Subscription_watchUser_authUsersDataByPk_adminOn_serviceStudyYearData(
      this._res);

  TRes _res;

  call({
    String? name,
    int? order,
    String? $__typename,
  }) =>
      _res;
}

class Variables_Subscription_watchAllUsers {
  factory Variables_Subscription_watchAllUsers({
    List<Input_AuthUsersDataBoolExp>? where,
    List<Input_AuthUsersDataOrderBy>? orderBy,
    int? limit,
  }) =>
      Variables_Subscription_watchAllUsers._({
        if (where != null) r'where': where,
        if (orderBy != null) r'orderBy': orderBy,
        if (limit != null) r'limit': limit,
      });

  Variables_Subscription_watchAllUsers._(this._$data);

  factory Variables_Subscription_watchAllUsers.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map((e) =>
              Input_AuthUsersDataBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) =>
              Input_AuthUsersDataOrderBy.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables_Subscription_watchAllUsers._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_AuthUsersDataBoolExp>? get where =>
      (_$data['where'] as List<Input_AuthUsersDataBoolExp>?);

  List<Input_AuthUsersDataOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input_AuthUsersDataOrderBy>?);

  int? get limit => (_$data['limit'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('orderBy')) {
      final l$orderBy = orderBy;
      result$data['orderBy'] = l$orderBy?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('limit')) {
      final l$limit = limit;
      result$data['limit'] = l$limit;
    }
    return result$data;
  }

  CopyWith_Variables_Subscription_watchAllUsers<
          Variables_Subscription_watchAllUsers>
      get copyWith => CopyWith_Variables_Subscription_watchAllUsers(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables_Subscription_watchAllUsers) ||
        runtimeType != other.runtimeType) {
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
    final l$orderBy = orderBy;
    final lOther$orderBy = other.orderBy;
    if (_$data.containsKey('orderBy') != other._$data.containsKey('orderBy')) {
      return false;
    }
    if (l$orderBy != null && lOther$orderBy != null) {
      if (l$orderBy.length != lOther$orderBy.length) {
        return false;
      }
      for (int i = 0; i < l$orderBy.length; i++) {
        final l$orderBy$entry = l$orderBy[i];
        final lOther$orderBy$entry = lOther$orderBy[i];
        if (l$orderBy$entry != lOther$orderBy$entry) {
          return false;
        }
      }
    } else if (l$orderBy != lOther$orderBy) {
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
    final l$where = where;
    final l$orderBy = orderBy;
    final l$limit = limit;
    return Object.hashAll([
      _$data.containsKey('where')
          ? l$where == null
              ? null
              : Object.hashAll(l$where.map((v) => v))
          : const {},
      _$data.containsKey('orderBy')
          ? l$orderBy == null
              ? null
              : Object.hashAll(l$orderBy.map((v) => v))
          : const {},
      _$data.containsKey('limit') ? l$limit : const {},
    ]);
  }
}

abstract class CopyWith_Variables_Subscription_watchAllUsers<TRes> {
  factory CopyWith_Variables_Subscription_watchAllUsers(
    Variables_Subscription_watchAllUsers instance,
    TRes Function(Variables_Subscription_watchAllUsers) then,
  ) = _CopyWithImpl_Variables_Subscription_watchAllUsers;

  factory CopyWith_Variables_Subscription_watchAllUsers.stub(TRes res) =
      _CopyWithStubImpl_Variables_Subscription_watchAllUsers;

  TRes call({
    List<Input_AuthUsersDataBoolExp>? where,
    List<Input_AuthUsersDataOrderBy>? orderBy,
    int? limit,
  });
}

class _CopyWithImpl_Variables_Subscription_watchAllUsers<TRes>
    implements CopyWith_Variables_Subscription_watchAllUsers<TRes> {
  _CopyWithImpl_Variables_Subscription_watchAllUsers(
    this._instance,
    this._then,
  );

  final Variables_Subscription_watchAllUsers _instance;

  final TRes Function(Variables_Subscription_watchAllUsers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? orderBy = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Variables_Subscription_watchAllUsers._({
        ..._instance._$data,
        if (where != _undefined)
          'where': (where as List<Input_AuthUsersDataBoolExp>?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input_AuthUsersDataOrderBy>?),
        if (limit != _undefined) 'limit': (limit as int?),
      }));
}

class _CopyWithStubImpl_Variables_Subscription_watchAllUsers<TRes>
    implements CopyWith_Variables_Subscription_watchAllUsers<TRes> {
  _CopyWithStubImpl_Variables_Subscription_watchAllUsers(this._res);

  TRes _res;

  call({
    List<Input_AuthUsersDataBoolExp>? where,
    List<Input_AuthUsersDataOrderBy>? orderBy,
    int? limit,
  }) =>
      _res;
}

class Subscription_watchAllUsers {
  Subscription_watchAllUsers({required this.authUsersData});

  factory Subscription_watchAllUsers.fromJson(Map<String, dynamic> json) {
    final l$authUsersData = json['authUsersData'];
    return Subscription_watchAllUsers(
        authUsersData: (l$authUsersData as List<dynamic>)
            .map((e) =>
                Fragment_UserOverview.fromJson((e as Map<String, dynamic>)))
            .toList());
  }

  final List<Fragment_UserOverview> authUsersData;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$authUsersData = authUsersData;
    _resultData['authUsersData'] =
        l$authUsersData.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$authUsersData = authUsersData;
    return Object.hashAll([Object.hashAll(l$authUsersData.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription_watchAllUsers) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$authUsersData = authUsersData;
    final lOther$authUsersData = other.authUsersData;
    if (l$authUsersData.length != lOther$authUsersData.length) {
      return false;
    }
    for (int i = 0; i < l$authUsersData.length; i++) {
      final l$authUsersData$entry = l$authUsersData[i];
      final lOther$authUsersData$entry = lOther$authUsersData[i];
      if (l$authUsersData$entry != lOther$authUsersData$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension_Subscription_watchAllUsers
    on Subscription_watchAllUsers {
  CopyWith_Subscription_watchAllUsers<Subscription_watchAllUsers>
      get copyWith => CopyWith_Subscription_watchAllUsers(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchAllUsers<TRes> {
  factory CopyWith_Subscription_watchAllUsers(
    Subscription_watchAllUsers instance,
    TRes Function(Subscription_watchAllUsers) then,
  ) = _CopyWithImpl_Subscription_watchAllUsers;

  factory CopyWith_Subscription_watchAllUsers.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchAllUsers;

  TRes call({List<Fragment_UserOverview>? authUsersData});
  TRes authUsersData(
      Iterable<Fragment_UserOverview> Function(
              Iterable<CopyWith_Fragment_UserOverview<Fragment_UserOverview>>)
          _fn);
}

class _CopyWithImpl_Subscription_watchAllUsers<TRes>
    implements CopyWith_Subscription_watchAllUsers<TRes> {
  _CopyWithImpl_Subscription_watchAllUsers(
    this._instance,
    this._then,
  );

  final Subscription_watchAllUsers _instance;

  final TRes Function(Subscription_watchAllUsers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? authUsersData = _undefined}) =>
      _then(Subscription_watchAllUsers(
          authUsersData: authUsersData == _undefined || authUsersData == null
              ? _instance.authUsersData
              : (authUsersData as List<Fragment_UserOverview>)));

  TRes authUsersData(
          Iterable<Fragment_UserOverview> Function(
                  Iterable<
                      CopyWith_Fragment_UserOverview<Fragment_UserOverview>>)
              _fn) =>
      call(
          authUsersData: _fn(
              _instance.authUsersData.map((e) => CopyWith_Fragment_UserOverview(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl_Subscription_watchAllUsers<TRes>
    implements CopyWith_Subscription_watchAllUsers<TRes> {
  _CopyWithStubImpl_Subscription_watchAllUsers(this._res);

  TRes _res;

  call({List<Fragment_UserOverview>? authUsersData}) => _res;

  authUsersData(_fn) => _res;
}

const documentNodeSubscriptionwatchAllUsers = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'watchAllUsers'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'AuthUsersDataBoolExp'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: ObjectValueNode(fields: [])),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'orderBy')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'AuthUsersDataOrderBy'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(
            value: ObjectValueNode(fields: [
          ObjectFieldNode(
            name: NameNode(value: 'name'),
            value: EnumValueNode(name: NameNode(value: 'ASC')),
          )
        ])),
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
        name: NameNode(value: 'authUsersData'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: '_and'),
                value: VariableNode(name: NameNode(value: 'where')),
              )
            ]),
          ),
          ArgumentNode(
            name: NameNode(value: 'orderBy'),
            value: VariableNode(name: NameNode(value: 'orderBy')),
          ),
          ArgumentNode(
            name: NameNode(value: 'limit'),
            value: VariableNode(name: NameNode(value: 'limit')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'UserOverview'),
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
      )
    ]),
  ),
  fragmentDefinitionUserOverview,
  fragmentDefinitionUser,
  fragmentDefinitionUserNoPhoto,
  fragmentDefinitionUserPermissions,
  fragmentDefinitionPerson,
  fragmentDefinitionPersonNoPhoto,
  fragmentDefinitionKodasHistory,
  fragmentDefinitionConfessionHistory,
]);
