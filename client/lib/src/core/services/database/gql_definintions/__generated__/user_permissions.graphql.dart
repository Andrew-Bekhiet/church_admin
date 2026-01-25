import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Mutation_approveUser {
  factory Variables_Mutation_approveUser({required UuidValue uid}) =>
      Variables_Mutation_approveUser._({r'uid': uid});

  Variables_Mutation_approveUser._(this._$data);

  factory Variables_Mutation_approveUser.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$uid = data['uid'];
    result$data['uid'] = stringToUuid(l$uid);
    return Variables_Mutation_approveUser._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get uid => (_$data['uid'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$uid = uid;
    result$data['uid'] = uuidToString(l$uid);
    return result$data;
  }

  CopyWith_Variables_Mutation_approveUser<Variables_Mutation_approveUser>
  get copyWith => CopyWith_Variables_Mutation_approveUser(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_approveUser ||
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

abstract class CopyWith_Variables_Mutation_approveUser<TRes> {
  factory CopyWith_Variables_Mutation_approveUser(
    Variables_Mutation_approveUser instance,
    TRes Function(Variables_Mutation_approveUser) then,
  ) = _CopyWithImpl_Variables_Mutation_approveUser;

  factory CopyWith_Variables_Mutation_approveUser.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_approveUser;

  TRes call({UuidValue? uid});
}

class _CopyWithImpl_Variables_Mutation_approveUser<TRes>
    implements CopyWith_Variables_Mutation_approveUser<TRes> {
  _CopyWithImpl_Variables_Mutation_approveUser(this._instance, this._then);

  final Variables_Mutation_approveUser _instance;

  final TRes Function(Variables_Mutation_approveUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? uid = _undefined}) => _then(
    Variables_Mutation_approveUser._({
      ..._instance._$data,
      if (uid != _undefined && uid != null) 'uid': (uid as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_approveUser<TRes>
    implements CopyWith_Variables_Mutation_approveUser<TRes> {
  _CopyWithStubImpl_Variables_Mutation_approveUser(this._res);

  TRes _res;

  call({UuidValue? uid}) => _res;
}

class Mutation_approveUser {
  Mutation_approveUser({
    this.insertAuthUsersPermissionsOne,
    this.$__typename = 'mutation_root',
  });

  factory Mutation_approveUser.fromJson(Map<String, dynamic> json) {
    final l$insertAuthUsersPermissionsOne =
        json['insertAuthUsersPermissionsOne'];
    final l$$__typename = json['__typename'];
    return Mutation_approveUser(
      insertAuthUsersPermissionsOne: l$insertAuthUsersPermissionsOne == null
          ? null
          : Mutation_approveUser_insertAuthUsersPermissionsOne.fromJson(
              (l$insertAuthUsersPermissionsOne as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_approveUser_insertAuthUsersPermissionsOne?
  insertAuthUsersPermissionsOne;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertAuthUsersPermissionsOne = insertAuthUsersPermissionsOne;
    _resultData['insertAuthUsersPermissionsOne'] =
        l$insertAuthUsersPermissionsOne?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertAuthUsersPermissionsOne = insertAuthUsersPermissionsOne;
    final l$$__typename = $__typename;
    return Object.hashAll([l$insertAuthUsersPermissionsOne, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_approveUser || runtimeType != other.runtimeType) {
      return false;
    }
    final l$insertAuthUsersPermissionsOne = insertAuthUsersPermissionsOne;
    final lOther$insertAuthUsersPermissionsOne =
        other.insertAuthUsersPermissionsOne;
    if (l$insertAuthUsersPermissionsOne !=
        lOther$insertAuthUsersPermissionsOne) {
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

extension UtilityExtension_Mutation_approveUser on Mutation_approveUser {
  CopyWith_Mutation_approveUser<Mutation_approveUser> get copyWith =>
      CopyWith_Mutation_approveUser(this, (i) => i);
}

abstract class CopyWith_Mutation_approveUser<TRes> {
  factory CopyWith_Mutation_approveUser(
    Mutation_approveUser instance,
    TRes Function(Mutation_approveUser) then,
  ) = _CopyWithImpl_Mutation_approveUser;

  factory CopyWith_Mutation_approveUser.stub(TRes res) =
      _CopyWithStubImpl_Mutation_approveUser;

  TRes call({
    Mutation_approveUser_insertAuthUsersPermissionsOne?
    insertAuthUsersPermissionsOne,
    String? $__typename,
  });
  CopyWith_Mutation_approveUser_insertAuthUsersPermissionsOne<TRes>
  get insertAuthUsersPermissionsOne;
}

class _CopyWithImpl_Mutation_approveUser<TRes>
    implements CopyWith_Mutation_approveUser<TRes> {
  _CopyWithImpl_Mutation_approveUser(this._instance, this._then);

  final Mutation_approveUser _instance;

  final TRes Function(Mutation_approveUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insertAuthUsersPermissionsOne = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_approveUser(
      insertAuthUsersPermissionsOne: insertAuthUsersPermissionsOne == _undefined
          ? _instance.insertAuthUsersPermissionsOne
          : (insertAuthUsersPermissionsOne
                as Mutation_approveUser_insertAuthUsersPermissionsOne?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_approveUser_insertAuthUsersPermissionsOne<TRes>
  get insertAuthUsersPermissionsOne {
    final local$insertAuthUsersPermissionsOne =
        _instance.insertAuthUsersPermissionsOne;
    return local$insertAuthUsersPermissionsOne == null
        ? CopyWith_Mutation_approveUser_insertAuthUsersPermissionsOne.stub(
            _then(_instance),
          )
        : CopyWith_Mutation_approveUser_insertAuthUsersPermissionsOne(
            local$insertAuthUsersPermissionsOne,
            (e) => call(insertAuthUsersPermissionsOne: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_approveUser<TRes>
    implements CopyWith_Mutation_approveUser<TRes> {
  _CopyWithStubImpl_Mutation_approveUser(this._res);

  TRes _res;

  call({
    Mutation_approveUser_insertAuthUsersPermissionsOne?
    insertAuthUsersPermissionsOne,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_approveUser_insertAuthUsersPermissionsOne<TRes>
  get insertAuthUsersPermissionsOne =>
      CopyWith_Mutation_approveUser_insertAuthUsersPermissionsOne.stub(_res);
}

const documentNodeMutationapproveUser = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'approveUser'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'uid')),
          type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'insertAuthUsersPermissionsOne'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'object'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'uid'),
                      value: VariableNode(name: NameNode(value: 'uid')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'permission'),
                      value: StringValueNode(value: 'approved', isBlock: false),
                    ),
                  ],
                ),
              ),
              ArgumentNode(
                name: NameNode(value: 'onConflict'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'constraint'),
                      value: EnumValueNode(
                        name: NameNode(value: 'users_permissions_pkey'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'updateColumns'),
                      value: ListValueNode(values: []),
                    ),
                  ],
                ),
              ),
            ],
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
    ),
  ],
);

class Mutation_approveUser_insertAuthUsersPermissionsOne {
  Mutation_approveUser_insertAuthUsersPermissionsOne({
    required this.uid,
    required this.permission,
    this.$__typename = 'AuthUsersPermissions',
  });

  factory Mutation_approveUser_insertAuthUsersPermissionsOne.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$uid = json['uid'];
    final l$permission = json['permission'];
    final l$$__typename = json['__typename'];
    return Mutation_approveUser_insertAuthUsersPermissionsOne(
      uid: stringToUuid(l$uid),
      permission: (l$permission as String),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue uid;

  final String permission;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uid = uid;
    _resultData['uid'] = uuidToString(l$uid);
    final l$permission = permission;
    _resultData['permission'] = l$permission;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uid = uid;
    final l$permission = permission;
    final l$$__typename = $__typename;
    return Object.hashAll([l$uid, l$permission, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_approveUser_insertAuthUsersPermissionsOne ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uid = uid;
    final lOther$uid = other.uid;
    if (l$uid != lOther$uid) {
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

extension UtilityExtension_Mutation_approveUser_insertAuthUsersPermissionsOne
    on Mutation_approveUser_insertAuthUsersPermissionsOne {
  CopyWith_Mutation_approveUser_insertAuthUsersPermissionsOne<
    Mutation_approveUser_insertAuthUsersPermissionsOne
  >
  get copyWith => CopyWith_Mutation_approveUser_insertAuthUsersPermissionsOne(
    this,
    (i) => i,
  );
}

abstract class CopyWith_Mutation_approveUser_insertAuthUsersPermissionsOne<
  TRes
> {
  factory CopyWith_Mutation_approveUser_insertAuthUsersPermissionsOne(
    Mutation_approveUser_insertAuthUsersPermissionsOne instance,
    TRes Function(Mutation_approveUser_insertAuthUsersPermissionsOne) then,
  ) = _CopyWithImpl_Mutation_approveUser_insertAuthUsersPermissionsOne;

  factory CopyWith_Mutation_approveUser_insertAuthUsersPermissionsOne.stub(
    TRes res,
  ) = _CopyWithStubImpl_Mutation_approveUser_insertAuthUsersPermissionsOne;

  TRes call({UuidValue? uid, String? permission, String? $__typename});
}

class _CopyWithImpl_Mutation_approveUser_insertAuthUsersPermissionsOne<TRes>
    implements
        CopyWith_Mutation_approveUser_insertAuthUsersPermissionsOne<TRes> {
  _CopyWithImpl_Mutation_approveUser_insertAuthUsersPermissionsOne(
    this._instance,
    this._then,
  );

  final Mutation_approveUser_insertAuthUsersPermissionsOne _instance;

  final TRes Function(Mutation_approveUser_insertAuthUsersPermissionsOne) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uid = _undefined,
    Object? permission = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_approveUser_insertAuthUsersPermissionsOne(
      uid: uid == _undefined || uid == null
          ? _instance.uid
          : (uid as UuidValue),
      permission: permission == _undefined || permission == null
          ? _instance.permission
          : (permission as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Mutation_approveUser_insertAuthUsersPermissionsOne<TRes>
    implements
        CopyWith_Mutation_approveUser_insertAuthUsersPermissionsOne<TRes> {
  _CopyWithStubImpl_Mutation_approveUser_insertAuthUsersPermissionsOne(
    this._res,
  );

  TRes _res;

  call({UuidValue? uid, String? permission, String? $__typename}) => _res;
}

class Variables_Mutation_unapproveUser {
  factory Variables_Mutation_unapproveUser({required UuidValue uid}) =>
      Variables_Mutation_unapproveUser._({r'uid': uid});

  Variables_Mutation_unapproveUser._(this._$data);

  factory Variables_Mutation_unapproveUser.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$uid = data['uid'];
    result$data['uid'] = stringToUuid(l$uid);
    return Variables_Mutation_unapproveUser._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get uid => (_$data['uid'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$uid = uid;
    result$data['uid'] = uuidToString(l$uid);
    return result$data;
  }

  CopyWith_Variables_Mutation_unapproveUser<Variables_Mutation_unapproveUser>
  get copyWith => CopyWith_Variables_Mutation_unapproveUser(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_unapproveUser ||
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

abstract class CopyWith_Variables_Mutation_unapproveUser<TRes> {
  factory CopyWith_Variables_Mutation_unapproveUser(
    Variables_Mutation_unapproveUser instance,
    TRes Function(Variables_Mutation_unapproveUser) then,
  ) = _CopyWithImpl_Variables_Mutation_unapproveUser;

  factory CopyWith_Variables_Mutation_unapproveUser.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_unapproveUser;

  TRes call({UuidValue? uid});
}

class _CopyWithImpl_Variables_Mutation_unapproveUser<TRes>
    implements CopyWith_Variables_Mutation_unapproveUser<TRes> {
  _CopyWithImpl_Variables_Mutation_unapproveUser(this._instance, this._then);

  final Variables_Mutation_unapproveUser _instance;

  final TRes Function(Variables_Mutation_unapproveUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? uid = _undefined}) => _then(
    Variables_Mutation_unapproveUser._({
      ..._instance._$data,
      if (uid != _undefined && uid != null) 'uid': (uid as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_unapproveUser<TRes>
    implements CopyWith_Variables_Mutation_unapproveUser<TRes> {
  _CopyWithStubImpl_Variables_Mutation_unapproveUser(this._res);

  TRes _res;

  call({UuidValue? uid}) => _res;
}

class Mutation_unapproveUser {
  Mutation_unapproveUser({
    this.deleteAuthUsersPermissions,
    this.$__typename = 'mutation_root',
  });

  factory Mutation_unapproveUser.fromJson(Map<String, dynamic> json) {
    final l$deleteAuthUsersPermissions = json['deleteAuthUsersPermissions'];
    final l$$__typename = json['__typename'];
    return Mutation_unapproveUser(
      deleteAuthUsersPermissions: l$deleteAuthUsersPermissions == null
          ? null
          : Mutation_unapproveUser_deleteAuthUsersPermissions.fromJson(
              (l$deleteAuthUsersPermissions as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_unapproveUser_deleteAuthUsersPermissions?
  deleteAuthUsersPermissions;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteAuthUsersPermissions = deleteAuthUsersPermissions;
    _resultData['deleteAuthUsersPermissions'] = l$deleteAuthUsersPermissions
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteAuthUsersPermissions = deleteAuthUsersPermissions;
    final l$$__typename = $__typename;
    return Object.hashAll([l$deleteAuthUsersPermissions, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_unapproveUser || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteAuthUsersPermissions = deleteAuthUsersPermissions;
    final lOther$deleteAuthUsersPermissions = other.deleteAuthUsersPermissions;
    if (l$deleteAuthUsersPermissions != lOther$deleteAuthUsersPermissions) {
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

extension UtilityExtension_Mutation_unapproveUser on Mutation_unapproveUser {
  CopyWith_Mutation_unapproveUser<Mutation_unapproveUser> get copyWith =>
      CopyWith_Mutation_unapproveUser(this, (i) => i);
}

abstract class CopyWith_Mutation_unapproveUser<TRes> {
  factory CopyWith_Mutation_unapproveUser(
    Mutation_unapproveUser instance,
    TRes Function(Mutation_unapproveUser) then,
  ) = _CopyWithImpl_Mutation_unapproveUser;

  factory CopyWith_Mutation_unapproveUser.stub(TRes res) =
      _CopyWithStubImpl_Mutation_unapproveUser;

  TRes call({
    Mutation_unapproveUser_deleteAuthUsersPermissions?
    deleteAuthUsersPermissions,
    String? $__typename,
  });
  CopyWith_Mutation_unapproveUser_deleteAuthUsersPermissions<TRes>
  get deleteAuthUsersPermissions;
}

class _CopyWithImpl_Mutation_unapproveUser<TRes>
    implements CopyWith_Mutation_unapproveUser<TRes> {
  _CopyWithImpl_Mutation_unapproveUser(this._instance, this._then);

  final Mutation_unapproveUser _instance;

  final TRes Function(Mutation_unapproveUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteAuthUsersPermissions = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_unapproveUser(
      deleteAuthUsersPermissions: deleteAuthUsersPermissions == _undefined
          ? _instance.deleteAuthUsersPermissions
          : (deleteAuthUsersPermissions
                as Mutation_unapproveUser_deleteAuthUsersPermissions?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_unapproveUser_deleteAuthUsersPermissions<TRes>
  get deleteAuthUsersPermissions {
    final local$deleteAuthUsersPermissions =
        _instance.deleteAuthUsersPermissions;
    return local$deleteAuthUsersPermissions == null
        ? CopyWith_Mutation_unapproveUser_deleteAuthUsersPermissions.stub(
            _then(_instance),
          )
        : CopyWith_Mutation_unapproveUser_deleteAuthUsersPermissions(
            local$deleteAuthUsersPermissions,
            (e) => call(deleteAuthUsersPermissions: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_unapproveUser<TRes>
    implements CopyWith_Mutation_unapproveUser<TRes> {
  _CopyWithStubImpl_Mutation_unapproveUser(this._res);

  TRes _res;

  call({
    Mutation_unapproveUser_deleteAuthUsersPermissions?
    deleteAuthUsersPermissions,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_unapproveUser_deleteAuthUsersPermissions<TRes>
  get deleteAuthUsersPermissions =>
      CopyWith_Mutation_unapproveUser_deleteAuthUsersPermissions.stub(_res);
}

const documentNodeMutationunapproveUser = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'unapproveUser'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'uid')),
          type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'deleteAuthUsersPermissions'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: '_and'),
                      value: ListValueNode(
                        values: [
                          ObjectValueNode(
                            fields: [
                              ObjectFieldNode(
                                name: NameNode(value: 'uid'),
                                value: ObjectValueNode(
                                  fields: [
                                    ObjectFieldNode(
                                      name: NameNode(value: '_eq'),
                                      value: VariableNode(
                                        name: NameNode(value: 'uid'),
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
                                name: NameNode(value: 'permission'),
                                value: ObjectValueNode(
                                  fields: [
                                    ObjectFieldNode(
                                      name: NameNode(value: '_eq'),
                                      value: StringValueNode(
                                        value: 'approved',
                                        isBlock: false,
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
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'affectedRows'),
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
  ],
);

class Mutation_unapproveUser_deleteAuthUsersPermissions {
  Mutation_unapproveUser_deleteAuthUsersPermissions({
    required this.affectedRows,
    this.$__typename = 'AuthUsersPermissionsMutationResponse',
  });

  factory Mutation_unapproveUser_deleteAuthUsersPermissions.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$affectedRows = json['affectedRows'];
    final l$$__typename = json['__typename'];
    return Mutation_unapproveUser_deleteAuthUsersPermissions(
      affectedRows: (l$affectedRows as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int affectedRows;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$affectedRows = affectedRows;
    _resultData['affectedRows'] = l$affectedRows;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$affectedRows = affectedRows;
    final l$$__typename = $__typename;
    return Object.hashAll([l$affectedRows, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_unapproveUser_deleteAuthUsersPermissions ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$affectedRows = affectedRows;
    final lOther$affectedRows = other.affectedRows;
    if (l$affectedRows != lOther$affectedRows) {
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

extension UtilityExtension_Mutation_unapproveUser_deleteAuthUsersPermissions
    on Mutation_unapproveUser_deleteAuthUsersPermissions {
  CopyWith_Mutation_unapproveUser_deleteAuthUsersPermissions<
    Mutation_unapproveUser_deleteAuthUsersPermissions
  >
  get copyWith => CopyWith_Mutation_unapproveUser_deleteAuthUsersPermissions(
    this,
    (i) => i,
  );
}

abstract class CopyWith_Mutation_unapproveUser_deleteAuthUsersPermissions<
  TRes
> {
  factory CopyWith_Mutation_unapproveUser_deleteAuthUsersPermissions(
    Mutation_unapproveUser_deleteAuthUsersPermissions instance,
    TRes Function(Mutation_unapproveUser_deleteAuthUsersPermissions) then,
  ) = _CopyWithImpl_Mutation_unapproveUser_deleteAuthUsersPermissions;

  factory CopyWith_Mutation_unapproveUser_deleteAuthUsersPermissions.stub(
    TRes res,
  ) = _CopyWithStubImpl_Mutation_unapproveUser_deleteAuthUsersPermissions;

  TRes call({int? affectedRows, String? $__typename});
}

class _CopyWithImpl_Mutation_unapproveUser_deleteAuthUsersPermissions<TRes>
    implements
        CopyWith_Mutation_unapproveUser_deleteAuthUsersPermissions<TRes> {
  _CopyWithImpl_Mutation_unapproveUser_deleteAuthUsersPermissions(
    this._instance,
    this._then,
  );

  final Mutation_unapproveUser_deleteAuthUsersPermissions _instance;

  final TRes Function(Mutation_unapproveUser_deleteAuthUsersPermissions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? affectedRows = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_unapproveUser_deleteAuthUsersPermissions(
      affectedRows: affectedRows == _undefined || affectedRows == null
          ? _instance.affectedRows
          : (affectedRows as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Mutation_unapproveUser_deleteAuthUsersPermissions<TRes>
    implements
        CopyWith_Mutation_unapproveUser_deleteAuthUsersPermissions<TRes> {
  _CopyWithStubImpl_Mutation_unapproveUser_deleteAuthUsersPermissions(
    this._res,
  );

  TRes _res;

  call({int? affectedRows, String? $__typename}) => _res;
}
