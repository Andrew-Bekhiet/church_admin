import '../../../../../graphql/__generated__/schema.graphql.dart';
import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Mutation_updateUserPermissions {
  factory Variables_Mutation_updateUserPermissions({
    required UuidValue uid,
    required List<Input_AuthUsersPermissionsInsertInput> permissions,
    bool? deletePermissions,
    bool? insertPermissions,
  }) => Variables_Mutation_updateUserPermissions._({
    r'uid': uid,
    r'permissions': permissions,
    if (deletePermissions != null) r'deletePermissions': deletePermissions,
    if (insertPermissions != null) r'insertPermissions': insertPermissions,
  });

  Variables_Mutation_updateUserPermissions._(this._$data);

  factory Variables_Mutation_updateUserPermissions.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$uid = data['uid'];
    result$data['uid'] = stringToUuid(l$uid);
    final l$permissions = data['permissions'];
    result$data['permissions'] = (l$permissions as List<dynamic>)
        .map(
          (e) => Input_AuthUsersPermissionsInsertInput.fromJson(
            (e as Map<String, dynamic>),
          ),
        )
        .toList();
    if (data.containsKey('deletePermissions')) {
      final l$deletePermissions = data['deletePermissions'];
      result$data['deletePermissions'] = (l$deletePermissions as bool);
    }
    if (data.containsKey('insertPermissions')) {
      final l$insertPermissions = data['insertPermissions'];
      result$data['insertPermissions'] = (l$insertPermissions as bool);
    }
    return Variables_Mutation_updateUserPermissions._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get uid => (_$data['uid'] as UuidValue);

  List<Input_AuthUsersPermissionsInsertInput> get permissions =>
      (_$data['permissions'] as List<Input_AuthUsersPermissionsInsertInput>);

  bool? get deletePermissions => (_$data['deletePermissions'] as bool?);

  bool? get insertPermissions => (_$data['insertPermissions'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$uid = uid;
    result$data['uid'] = uuidToString(l$uid);
    final l$permissions = permissions;
    result$data['permissions'] = l$permissions.map((e) => e.toJson()).toList();
    if (_$data.containsKey('deletePermissions')) {
      final l$deletePermissions = deletePermissions;
      result$data['deletePermissions'] = (l$deletePermissions as bool);
    }
    if (_$data.containsKey('insertPermissions')) {
      final l$insertPermissions = insertPermissions;
      result$data['insertPermissions'] = (l$insertPermissions as bool);
    }
    return result$data;
  }

  CopyWith_Variables_Mutation_updateUserPermissions<
    Variables_Mutation_updateUserPermissions
  >
  get copyWith =>
      CopyWith_Variables_Mutation_updateUserPermissions(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_updateUserPermissions ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uid = uid;
    final lOther$uid = other.uid;
    if (l$uid != lOther$uid) {
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
    final l$deletePermissions = deletePermissions;
    final lOther$deletePermissions = other.deletePermissions;
    if (_$data.containsKey('deletePermissions') !=
        other._$data.containsKey('deletePermissions')) {
      return false;
    }
    if (l$deletePermissions != lOther$deletePermissions) {
      return false;
    }
    final l$insertPermissions = insertPermissions;
    final lOther$insertPermissions = other.insertPermissions;
    if (_$data.containsKey('insertPermissions') !=
        other._$data.containsKey('insertPermissions')) {
      return false;
    }
    if (l$insertPermissions != lOther$insertPermissions) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$uid = uid;
    final l$permissions = permissions;
    final l$deletePermissions = deletePermissions;
    final l$insertPermissions = insertPermissions;
    return Object.hashAll([
      l$uid,
      Object.hashAll(l$permissions.map((v) => v)),
      _$data.containsKey('deletePermissions') ? l$deletePermissions : const {},
      _$data.containsKey('insertPermissions') ? l$insertPermissions : const {},
    ]);
  }
}

abstract class CopyWith_Variables_Mutation_updateUserPermissions<TRes> {
  factory CopyWith_Variables_Mutation_updateUserPermissions(
    Variables_Mutation_updateUserPermissions instance,
    TRes Function(Variables_Mutation_updateUserPermissions) then,
  ) = _CopyWithImpl_Variables_Mutation_updateUserPermissions;

  factory CopyWith_Variables_Mutation_updateUserPermissions.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_updateUserPermissions;

  TRes call({
    UuidValue? uid,
    List<Input_AuthUsersPermissionsInsertInput>? permissions,
    bool? deletePermissions,
    bool? insertPermissions,
  });
}

class _CopyWithImpl_Variables_Mutation_updateUserPermissions<TRes>
    implements CopyWith_Variables_Mutation_updateUserPermissions<TRes> {
  _CopyWithImpl_Variables_Mutation_updateUserPermissions(
    this._instance,
    this._then,
  );

  final Variables_Mutation_updateUserPermissions _instance;

  final TRes Function(Variables_Mutation_updateUserPermissions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uid = _undefined,
    Object? permissions = _undefined,
    Object? deletePermissions = _undefined,
    Object? insertPermissions = _undefined,
  }) => _then(
    Variables_Mutation_updateUserPermissions._({
      ..._instance._$data,
      if (uid != _undefined && uid != null) 'uid': (uid as UuidValue),
      if (permissions != _undefined && permissions != null)
        'permissions':
            (permissions as List<Input_AuthUsersPermissionsInsertInput>),
      if (deletePermissions != _undefined && deletePermissions != null)
        'deletePermissions': (deletePermissions as bool),
      if (insertPermissions != _undefined && insertPermissions != null)
        'insertPermissions': (insertPermissions as bool),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_updateUserPermissions<TRes>
    implements CopyWith_Variables_Mutation_updateUserPermissions<TRes> {
  _CopyWithStubImpl_Variables_Mutation_updateUserPermissions(this._res);

  TRes _res;

  call({
    UuidValue? uid,
    List<Input_AuthUsersPermissionsInsertInput>? permissions,
    bool? deletePermissions,
    bool? insertPermissions,
  }) => _res;
}

class Mutation_updateUserPermissions {
  Mutation_updateUserPermissions({
    this.deleteAuthUsersPermissions,
    this.insertAuthUsersPermissions,
    this.$__typename = 'mutation_root',
  });

  factory Mutation_updateUserPermissions.fromJson(Map<String, dynamic> json) {
    final l$deleteAuthUsersPermissions = json['deleteAuthUsersPermissions'];
    final l$insertAuthUsersPermissions = json['insertAuthUsersPermissions'];
    final l$$__typename = json['__typename'];
    return Mutation_updateUserPermissions(
      deleteAuthUsersPermissions: l$deleteAuthUsersPermissions == null
          ? null
          : Mutation_updateUserPermissions_deleteAuthUsersPermissions.fromJson(
              (l$deleteAuthUsersPermissions as Map<String, dynamic>),
            ),
      insertAuthUsersPermissions: l$insertAuthUsersPermissions == null
          ? null
          : Mutation_updateUserPermissions_insertAuthUsersPermissions.fromJson(
              (l$insertAuthUsersPermissions as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_updateUserPermissions_deleteAuthUsersPermissions?
  deleteAuthUsersPermissions;

  final Mutation_updateUserPermissions_insertAuthUsersPermissions?
  insertAuthUsersPermissions;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteAuthUsersPermissions = deleteAuthUsersPermissions;
    _resultData['deleteAuthUsersPermissions'] = l$deleteAuthUsersPermissions
        ?.toJson();
    final l$insertAuthUsersPermissions = insertAuthUsersPermissions;
    _resultData['insertAuthUsersPermissions'] = l$insertAuthUsersPermissions
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteAuthUsersPermissions = deleteAuthUsersPermissions;
    final l$insertAuthUsersPermissions = insertAuthUsersPermissions;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteAuthUsersPermissions,
      l$insertAuthUsersPermissions,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_updateUserPermissions ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteAuthUsersPermissions = deleteAuthUsersPermissions;
    final lOther$deleteAuthUsersPermissions = other.deleteAuthUsersPermissions;
    if (l$deleteAuthUsersPermissions != lOther$deleteAuthUsersPermissions) {
      return false;
    }
    final l$insertAuthUsersPermissions = insertAuthUsersPermissions;
    final lOther$insertAuthUsersPermissions = other.insertAuthUsersPermissions;
    if (l$insertAuthUsersPermissions != lOther$insertAuthUsersPermissions) {
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

extension UtilityExtension_Mutation_updateUserPermissions
    on Mutation_updateUserPermissions {
  CopyWith_Mutation_updateUserPermissions<Mutation_updateUserPermissions>
  get copyWith => CopyWith_Mutation_updateUserPermissions(this, (i) => i);
}

abstract class CopyWith_Mutation_updateUserPermissions<TRes> {
  factory CopyWith_Mutation_updateUserPermissions(
    Mutation_updateUserPermissions instance,
    TRes Function(Mutation_updateUserPermissions) then,
  ) = _CopyWithImpl_Mutation_updateUserPermissions;

  factory CopyWith_Mutation_updateUserPermissions.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updateUserPermissions;

  TRes call({
    Mutation_updateUserPermissions_deleteAuthUsersPermissions?
    deleteAuthUsersPermissions,
    Mutation_updateUserPermissions_insertAuthUsersPermissions?
    insertAuthUsersPermissions,
    String? $__typename,
  });
  CopyWith_Mutation_updateUserPermissions_deleteAuthUsersPermissions<TRes>
  get deleteAuthUsersPermissions;
  CopyWith_Mutation_updateUserPermissions_insertAuthUsersPermissions<TRes>
  get insertAuthUsersPermissions;
}

class _CopyWithImpl_Mutation_updateUserPermissions<TRes>
    implements CopyWith_Mutation_updateUserPermissions<TRes> {
  _CopyWithImpl_Mutation_updateUserPermissions(this._instance, this._then);

  final Mutation_updateUserPermissions _instance;

  final TRes Function(Mutation_updateUserPermissions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteAuthUsersPermissions = _undefined,
    Object? insertAuthUsersPermissions = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_updateUserPermissions(
      deleteAuthUsersPermissions: deleteAuthUsersPermissions == _undefined
          ? _instance.deleteAuthUsersPermissions
          : (deleteAuthUsersPermissions
                as Mutation_updateUserPermissions_deleteAuthUsersPermissions?),
      insertAuthUsersPermissions: insertAuthUsersPermissions == _undefined
          ? _instance.insertAuthUsersPermissions
          : (insertAuthUsersPermissions
                as Mutation_updateUserPermissions_insertAuthUsersPermissions?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_updateUserPermissions_deleteAuthUsersPermissions<TRes>
  get deleteAuthUsersPermissions {
    final local$deleteAuthUsersPermissions =
        _instance.deleteAuthUsersPermissions;
    return local$deleteAuthUsersPermissions == null
        ? CopyWith_Mutation_updateUserPermissions_deleteAuthUsersPermissions.stub(
            _then(_instance),
          )
        : CopyWith_Mutation_updateUserPermissions_deleteAuthUsersPermissions(
            local$deleteAuthUsersPermissions,
            (e) => call(deleteAuthUsersPermissions: e),
          );
  }

  CopyWith_Mutation_updateUserPermissions_insertAuthUsersPermissions<TRes>
  get insertAuthUsersPermissions {
    final local$insertAuthUsersPermissions =
        _instance.insertAuthUsersPermissions;
    return local$insertAuthUsersPermissions == null
        ? CopyWith_Mutation_updateUserPermissions_insertAuthUsersPermissions.stub(
            _then(_instance),
          )
        : CopyWith_Mutation_updateUserPermissions_insertAuthUsersPermissions(
            local$insertAuthUsersPermissions,
            (e) => call(insertAuthUsersPermissions: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_updateUserPermissions<TRes>
    implements CopyWith_Mutation_updateUserPermissions<TRes> {
  _CopyWithStubImpl_Mutation_updateUserPermissions(this._res);

  TRes _res;

  call({
    Mutation_updateUserPermissions_deleteAuthUsersPermissions?
    deleteAuthUsersPermissions,
    Mutation_updateUserPermissions_insertAuthUsersPermissions?
    insertAuthUsersPermissions,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_updateUserPermissions_deleteAuthUsersPermissions<TRes>
  get deleteAuthUsersPermissions =>
      CopyWith_Mutation_updateUserPermissions_deleteAuthUsersPermissions.stub(
        _res,
      );

  CopyWith_Mutation_updateUserPermissions_insertAuthUsersPermissions<TRes>
  get insertAuthUsersPermissions =>
      CopyWith_Mutation_updateUserPermissions_insertAuthUsersPermissions.stub(
        _res,
      );
}

const documentNodeMutationupdateUserPermissions = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'updateUserPermissions'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'uid')),
          type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'permissions')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'AuthUsersPermissionsInsertInput'),
              isNonNull: true,
            ),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'deletePermissions')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: BooleanValueNode(value: true)),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'insertPermissions')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: BooleanValueNode(value: true)),
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
                      name: NameNode(value: 'uid'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: '_eq'),
                            value: VariableNode(name: NameNode(value: 'uid')),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
            directives: [
              DirectiveNode(
                name: NameNode(value: 'include'),
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'if'),
                    value: VariableNode(
                      name: NameNode(value: 'deletePermissions'),
                    ),
                  ),
                ],
              ),
            ],
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
            name: NameNode(value: 'insertAuthUsersPermissions'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'objects'),
                value: VariableNode(name: NameNode(value: 'permissions')),
              ),
            ],
            directives: [
              DirectiveNode(
                name: NameNode(value: 'include'),
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'if'),
                    value: VariableNode(
                      name: NameNode(value: 'insertPermissions'),
                    ),
                  ),
                ],
              ),
            ],
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

class Mutation_updateUserPermissions_deleteAuthUsersPermissions {
  Mutation_updateUserPermissions_deleteAuthUsersPermissions({
    required this.affectedRows,
    this.$__typename = 'AuthUsersPermissionsMutationResponse',
  });

  factory Mutation_updateUserPermissions_deleteAuthUsersPermissions.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$affectedRows = json['affectedRows'];
    final l$$__typename = json['__typename'];
    return Mutation_updateUserPermissions_deleteAuthUsersPermissions(
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
    if (other is! Mutation_updateUserPermissions_deleteAuthUsersPermissions ||
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

extension UtilityExtension_Mutation_updateUserPermissions_deleteAuthUsersPermissions
    on Mutation_updateUserPermissions_deleteAuthUsersPermissions {
  CopyWith_Mutation_updateUserPermissions_deleteAuthUsersPermissions<
    Mutation_updateUserPermissions_deleteAuthUsersPermissions
  >
  get copyWith =>
      CopyWith_Mutation_updateUserPermissions_deleteAuthUsersPermissions(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Mutation_updateUserPermissions_deleteAuthUsersPermissions<
  TRes
> {
  factory CopyWith_Mutation_updateUserPermissions_deleteAuthUsersPermissions(
    Mutation_updateUserPermissions_deleteAuthUsersPermissions instance,
    TRes Function(Mutation_updateUserPermissions_deleteAuthUsersPermissions)
    then,
  ) = _CopyWithImpl_Mutation_updateUserPermissions_deleteAuthUsersPermissions;

  factory CopyWith_Mutation_updateUserPermissions_deleteAuthUsersPermissions.stub(
    TRes res,
  ) = _CopyWithStubImpl_Mutation_updateUserPermissions_deleteAuthUsersPermissions;

  TRes call({int? affectedRows, String? $__typename});
}

class _CopyWithImpl_Mutation_updateUserPermissions_deleteAuthUsersPermissions<
  TRes
>
    implements
        CopyWith_Mutation_updateUserPermissions_deleteAuthUsersPermissions<
          TRes
        > {
  _CopyWithImpl_Mutation_updateUserPermissions_deleteAuthUsersPermissions(
    this._instance,
    this._then,
  );

  final Mutation_updateUserPermissions_deleteAuthUsersPermissions _instance;

  final TRes Function(Mutation_updateUserPermissions_deleteAuthUsersPermissions)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? affectedRows = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_updateUserPermissions_deleteAuthUsersPermissions(
      affectedRows: affectedRows == _undefined || affectedRows == null
          ? _instance.affectedRows
          : (affectedRows as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Mutation_updateUserPermissions_deleteAuthUsersPermissions<
  TRes
>
    implements
        CopyWith_Mutation_updateUserPermissions_deleteAuthUsersPermissions<
          TRes
        > {
  _CopyWithStubImpl_Mutation_updateUserPermissions_deleteAuthUsersPermissions(
    this._res,
  );

  TRes _res;

  call({int? affectedRows, String? $__typename}) => _res;
}

class Mutation_updateUserPermissions_insertAuthUsersPermissions {
  Mutation_updateUserPermissions_insertAuthUsersPermissions({
    required this.affectedRows,
    this.$__typename = 'AuthUsersPermissionsMutationResponse',
  });

  factory Mutation_updateUserPermissions_insertAuthUsersPermissions.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$affectedRows = json['affectedRows'];
    final l$$__typename = json['__typename'];
    return Mutation_updateUserPermissions_insertAuthUsersPermissions(
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
    if (other is! Mutation_updateUserPermissions_insertAuthUsersPermissions ||
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

extension UtilityExtension_Mutation_updateUserPermissions_insertAuthUsersPermissions
    on Mutation_updateUserPermissions_insertAuthUsersPermissions {
  CopyWith_Mutation_updateUserPermissions_insertAuthUsersPermissions<
    Mutation_updateUserPermissions_insertAuthUsersPermissions
  >
  get copyWith =>
      CopyWith_Mutation_updateUserPermissions_insertAuthUsersPermissions(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Mutation_updateUserPermissions_insertAuthUsersPermissions<
  TRes
> {
  factory CopyWith_Mutation_updateUserPermissions_insertAuthUsersPermissions(
    Mutation_updateUserPermissions_insertAuthUsersPermissions instance,
    TRes Function(Mutation_updateUserPermissions_insertAuthUsersPermissions)
    then,
  ) = _CopyWithImpl_Mutation_updateUserPermissions_insertAuthUsersPermissions;

  factory CopyWith_Mutation_updateUserPermissions_insertAuthUsersPermissions.stub(
    TRes res,
  ) = _CopyWithStubImpl_Mutation_updateUserPermissions_insertAuthUsersPermissions;

  TRes call({int? affectedRows, String? $__typename});
}

class _CopyWithImpl_Mutation_updateUserPermissions_insertAuthUsersPermissions<
  TRes
>
    implements
        CopyWith_Mutation_updateUserPermissions_insertAuthUsersPermissions<
          TRes
        > {
  _CopyWithImpl_Mutation_updateUserPermissions_insertAuthUsersPermissions(
    this._instance,
    this._then,
  );

  final Mutation_updateUserPermissions_insertAuthUsersPermissions _instance;

  final TRes Function(Mutation_updateUserPermissions_insertAuthUsersPermissions)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? affectedRows = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_updateUserPermissions_insertAuthUsersPermissions(
      affectedRows: affectedRows == _undefined || affectedRows == null
          ? _instance.affectedRows
          : (affectedRows as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Mutation_updateUserPermissions_insertAuthUsersPermissions<
  TRes
>
    implements
        CopyWith_Mutation_updateUserPermissions_insertAuthUsersPermissions<
          TRes
        > {
  _CopyWithStubImpl_Mutation_updateUserPermissions_insertAuthUsersPermissions(
    this._res,
  );

  TRes _res;

  call({int? affectedRows, String? $__typename}) => _res;
}

class Variables_Mutation_addUserAdminOn {
  factory Variables_Mutation_addUserAdminOn({
    required UuidValue uid,
    UuidValue? areaId,
    UuidValue? serviceId,
    UuidValue? groupId,
    bool? areaAllowEdit,
    bool? areaAdminOnUsers,
    bool? serviceAllowEdit,
    bool? serviceAdminOnUsers,
    bool? groupAllowEdit,
    bool? groupAdminOnUsers,
  }) => Variables_Mutation_addUserAdminOn._({
    r'uid': uid,
    if (areaId != null) r'areaId': areaId,
    if (serviceId != null) r'serviceId': serviceId,
    if (groupId != null) r'groupId': groupId,
    if (areaAllowEdit != null) r'areaAllowEdit': areaAllowEdit,
    if (areaAdminOnUsers != null) r'areaAdminOnUsers': areaAdminOnUsers,
    if (serviceAllowEdit != null) r'serviceAllowEdit': serviceAllowEdit,
    if (serviceAdminOnUsers != null)
      r'serviceAdminOnUsers': serviceAdminOnUsers,
    if (groupAllowEdit != null) r'groupAllowEdit': groupAllowEdit,
    if (groupAdminOnUsers != null) r'groupAdminOnUsers': groupAdminOnUsers,
  });

  Variables_Mutation_addUserAdminOn._(this._$data);

  factory Variables_Mutation_addUserAdminOn.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$uid = data['uid'];
    result$data['uid'] = stringToUuid(l$uid);
    if (data.containsKey('areaId')) {
      final l$areaId = data['areaId'];
      result$data['areaId'] = l$areaId == null ? null : stringToUuid(l$areaId);
    }
    if (data.containsKey('serviceId')) {
      final l$serviceId = data['serviceId'];
      result$data['serviceId'] = l$serviceId == null
          ? null
          : stringToUuid(l$serviceId);
    }
    if (data.containsKey('groupId')) {
      final l$groupId = data['groupId'];
      result$data['groupId'] = l$groupId == null
          ? null
          : stringToUuid(l$groupId);
    }
    if (data.containsKey('areaAllowEdit')) {
      final l$areaAllowEdit = data['areaAllowEdit'];
      result$data['areaAllowEdit'] = (l$areaAllowEdit as bool?);
    }
    if (data.containsKey('areaAdminOnUsers')) {
      final l$areaAdminOnUsers = data['areaAdminOnUsers'];
      result$data['areaAdminOnUsers'] = (l$areaAdminOnUsers as bool?);
    }
    if (data.containsKey('serviceAllowEdit')) {
      final l$serviceAllowEdit = data['serviceAllowEdit'];
      result$data['serviceAllowEdit'] = (l$serviceAllowEdit as bool?);
    }
    if (data.containsKey('serviceAdminOnUsers')) {
      final l$serviceAdminOnUsers = data['serviceAdminOnUsers'];
      result$data['serviceAdminOnUsers'] = (l$serviceAdminOnUsers as bool?);
    }
    if (data.containsKey('groupAllowEdit')) {
      final l$groupAllowEdit = data['groupAllowEdit'];
      result$data['groupAllowEdit'] = (l$groupAllowEdit as bool?);
    }
    if (data.containsKey('groupAdminOnUsers')) {
      final l$groupAdminOnUsers = data['groupAdminOnUsers'];
      result$data['groupAdminOnUsers'] = (l$groupAdminOnUsers as bool?);
    }
    return Variables_Mutation_addUserAdminOn._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get uid => (_$data['uid'] as UuidValue);

  UuidValue? get areaId => (_$data['areaId'] as UuidValue?);

  UuidValue? get serviceId => (_$data['serviceId'] as UuidValue?);

  UuidValue? get groupId => (_$data['groupId'] as UuidValue?);

  bool? get areaAllowEdit => (_$data['areaAllowEdit'] as bool?);

  bool? get areaAdminOnUsers => (_$data['areaAdminOnUsers'] as bool?);

  bool? get serviceAllowEdit => (_$data['serviceAllowEdit'] as bool?);

  bool? get serviceAdminOnUsers => (_$data['serviceAdminOnUsers'] as bool?);

  bool? get groupAllowEdit => (_$data['groupAllowEdit'] as bool?);

  bool? get groupAdminOnUsers => (_$data['groupAdminOnUsers'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$uid = uid;
    result$data['uid'] = uuidToString(l$uid);
    if (_$data.containsKey('areaId')) {
      final l$areaId = areaId;
      result$data['areaId'] = l$areaId == null ? null : uuidToString(l$areaId);
    }
    if (_$data.containsKey('serviceId')) {
      final l$serviceId = serviceId;
      result$data['serviceId'] = l$serviceId == null
          ? null
          : uuidToString(l$serviceId);
    }
    if (_$data.containsKey('groupId')) {
      final l$groupId = groupId;
      result$data['groupId'] = l$groupId == null
          ? null
          : uuidToString(l$groupId);
    }
    if (_$data.containsKey('areaAllowEdit')) {
      final l$areaAllowEdit = areaAllowEdit;
      result$data['areaAllowEdit'] = l$areaAllowEdit;
    }
    if (_$data.containsKey('areaAdminOnUsers')) {
      final l$areaAdminOnUsers = areaAdminOnUsers;
      result$data['areaAdminOnUsers'] = l$areaAdminOnUsers;
    }
    if (_$data.containsKey('serviceAllowEdit')) {
      final l$serviceAllowEdit = serviceAllowEdit;
      result$data['serviceAllowEdit'] = l$serviceAllowEdit;
    }
    if (_$data.containsKey('serviceAdminOnUsers')) {
      final l$serviceAdminOnUsers = serviceAdminOnUsers;
      result$data['serviceAdminOnUsers'] = l$serviceAdminOnUsers;
    }
    if (_$data.containsKey('groupAllowEdit')) {
      final l$groupAllowEdit = groupAllowEdit;
      result$data['groupAllowEdit'] = l$groupAllowEdit;
    }
    if (_$data.containsKey('groupAdminOnUsers')) {
      final l$groupAdminOnUsers = groupAdminOnUsers;
      result$data['groupAdminOnUsers'] = l$groupAdminOnUsers;
    }
    return result$data;
  }

  CopyWith_Variables_Mutation_addUserAdminOn<Variables_Mutation_addUserAdminOn>
  get copyWith => CopyWith_Variables_Mutation_addUserAdminOn(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_addUserAdminOn ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uid = uid;
    final lOther$uid = other.uid;
    if (l$uid != lOther$uid) {
      return false;
    }
    final l$areaId = areaId;
    final lOther$areaId = other.areaId;
    if (_$data.containsKey('areaId') != other._$data.containsKey('areaId')) {
      return false;
    }
    if (l$areaId != lOther$areaId) {
      return false;
    }
    final l$serviceId = serviceId;
    final lOther$serviceId = other.serviceId;
    if (_$data.containsKey('serviceId') !=
        other._$data.containsKey('serviceId')) {
      return false;
    }
    if (l$serviceId != lOther$serviceId) {
      return false;
    }
    final l$groupId = groupId;
    final lOther$groupId = other.groupId;
    if (_$data.containsKey('groupId') != other._$data.containsKey('groupId')) {
      return false;
    }
    if (l$groupId != lOther$groupId) {
      return false;
    }
    final l$areaAllowEdit = areaAllowEdit;
    final lOther$areaAllowEdit = other.areaAllowEdit;
    if (_$data.containsKey('areaAllowEdit') !=
        other._$data.containsKey('areaAllowEdit')) {
      return false;
    }
    if (l$areaAllowEdit != lOther$areaAllowEdit) {
      return false;
    }
    final l$areaAdminOnUsers = areaAdminOnUsers;
    final lOther$areaAdminOnUsers = other.areaAdminOnUsers;
    if (_$data.containsKey('areaAdminOnUsers') !=
        other._$data.containsKey('areaAdminOnUsers')) {
      return false;
    }
    if (l$areaAdminOnUsers != lOther$areaAdminOnUsers) {
      return false;
    }
    final l$serviceAllowEdit = serviceAllowEdit;
    final lOther$serviceAllowEdit = other.serviceAllowEdit;
    if (_$data.containsKey('serviceAllowEdit') !=
        other._$data.containsKey('serviceAllowEdit')) {
      return false;
    }
    if (l$serviceAllowEdit != lOther$serviceAllowEdit) {
      return false;
    }
    final l$serviceAdminOnUsers = serviceAdminOnUsers;
    final lOther$serviceAdminOnUsers = other.serviceAdminOnUsers;
    if (_$data.containsKey('serviceAdminOnUsers') !=
        other._$data.containsKey('serviceAdminOnUsers')) {
      return false;
    }
    if (l$serviceAdminOnUsers != lOther$serviceAdminOnUsers) {
      return false;
    }
    final l$groupAllowEdit = groupAllowEdit;
    final lOther$groupAllowEdit = other.groupAllowEdit;
    if (_$data.containsKey('groupAllowEdit') !=
        other._$data.containsKey('groupAllowEdit')) {
      return false;
    }
    if (l$groupAllowEdit != lOther$groupAllowEdit) {
      return false;
    }
    final l$groupAdminOnUsers = groupAdminOnUsers;
    final lOther$groupAdminOnUsers = other.groupAdminOnUsers;
    if (_$data.containsKey('groupAdminOnUsers') !=
        other._$data.containsKey('groupAdminOnUsers')) {
      return false;
    }
    if (l$groupAdminOnUsers != lOther$groupAdminOnUsers) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$uid = uid;
    final l$areaId = areaId;
    final l$serviceId = serviceId;
    final l$groupId = groupId;
    final l$areaAllowEdit = areaAllowEdit;
    final l$areaAdminOnUsers = areaAdminOnUsers;
    final l$serviceAllowEdit = serviceAllowEdit;
    final l$serviceAdminOnUsers = serviceAdminOnUsers;
    final l$groupAllowEdit = groupAllowEdit;
    final l$groupAdminOnUsers = groupAdminOnUsers;
    return Object.hashAll([
      l$uid,
      _$data.containsKey('areaId') ? l$areaId : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
      _$data.containsKey('groupId') ? l$groupId : const {},
      _$data.containsKey('areaAllowEdit') ? l$areaAllowEdit : const {},
      _$data.containsKey('areaAdminOnUsers') ? l$areaAdminOnUsers : const {},
      _$data.containsKey('serviceAllowEdit') ? l$serviceAllowEdit : const {},
      _$data.containsKey('serviceAdminOnUsers')
          ? l$serviceAdminOnUsers
          : const {},
      _$data.containsKey('groupAllowEdit') ? l$groupAllowEdit : const {},
      _$data.containsKey('groupAdminOnUsers') ? l$groupAdminOnUsers : const {},
    ]);
  }
}

abstract class CopyWith_Variables_Mutation_addUserAdminOn<TRes> {
  factory CopyWith_Variables_Mutation_addUserAdminOn(
    Variables_Mutation_addUserAdminOn instance,
    TRes Function(Variables_Mutation_addUserAdminOn) then,
  ) = _CopyWithImpl_Variables_Mutation_addUserAdminOn;

  factory CopyWith_Variables_Mutation_addUserAdminOn.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_addUserAdminOn;

  TRes call({
    UuidValue? uid,
    UuidValue? areaId,
    UuidValue? serviceId,
    UuidValue? groupId,
    bool? areaAllowEdit,
    bool? areaAdminOnUsers,
    bool? serviceAllowEdit,
    bool? serviceAdminOnUsers,
    bool? groupAllowEdit,
    bool? groupAdminOnUsers,
  });
}

class _CopyWithImpl_Variables_Mutation_addUserAdminOn<TRes>
    implements CopyWith_Variables_Mutation_addUserAdminOn<TRes> {
  _CopyWithImpl_Variables_Mutation_addUserAdminOn(this._instance, this._then);

  final Variables_Mutation_addUserAdminOn _instance;

  final TRes Function(Variables_Mutation_addUserAdminOn) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uid = _undefined,
    Object? areaId = _undefined,
    Object? serviceId = _undefined,
    Object? groupId = _undefined,
    Object? areaAllowEdit = _undefined,
    Object? areaAdminOnUsers = _undefined,
    Object? serviceAllowEdit = _undefined,
    Object? serviceAdminOnUsers = _undefined,
    Object? groupAllowEdit = _undefined,
    Object? groupAdminOnUsers = _undefined,
  }) => _then(
    Variables_Mutation_addUserAdminOn._({
      ..._instance._$data,
      if (uid != _undefined && uid != null) 'uid': (uid as UuidValue),
      if (areaId != _undefined) 'areaId': (areaId as UuidValue?),
      if (serviceId != _undefined) 'serviceId': (serviceId as UuidValue?),
      if (groupId != _undefined) 'groupId': (groupId as UuidValue?),
      if (areaAllowEdit != _undefined)
        'areaAllowEdit': (areaAllowEdit as bool?),
      if (areaAdminOnUsers != _undefined)
        'areaAdminOnUsers': (areaAdminOnUsers as bool?),
      if (serviceAllowEdit != _undefined)
        'serviceAllowEdit': (serviceAllowEdit as bool?),
      if (serviceAdminOnUsers != _undefined)
        'serviceAdminOnUsers': (serviceAdminOnUsers as bool?),
      if (groupAllowEdit != _undefined)
        'groupAllowEdit': (groupAllowEdit as bool?),
      if (groupAdminOnUsers != _undefined)
        'groupAdminOnUsers': (groupAdminOnUsers as bool?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_addUserAdminOn<TRes>
    implements CopyWith_Variables_Mutation_addUserAdminOn<TRes> {
  _CopyWithStubImpl_Variables_Mutation_addUserAdminOn(this._res);

  TRes _res;

  call({
    UuidValue? uid,
    UuidValue? areaId,
    UuidValue? serviceId,
    UuidValue? groupId,
    bool? areaAllowEdit,
    bool? areaAdminOnUsers,
    bool? serviceAllowEdit,
    bool? serviceAdminOnUsers,
    bool? groupAllowEdit,
    bool? groupAdminOnUsers,
  }) => _res;
}

class Mutation_addUserAdminOn {
  Mutation_addUserAdminOn({
    this.insertAuthUsersAdminOn,
    this.$__typename = 'mutation_root',
  });

  factory Mutation_addUserAdminOn.fromJson(Map<String, dynamic> json) {
    final l$insertAuthUsersAdminOn = json['insertAuthUsersAdminOn'];
    final l$$__typename = json['__typename'];
    return Mutation_addUserAdminOn(
      insertAuthUsersAdminOn: l$insertAuthUsersAdminOn == null
          ? null
          : Mutation_addUserAdminOn_insertAuthUsersAdminOn.fromJson(
              (l$insertAuthUsersAdminOn as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_addUserAdminOn_insertAuthUsersAdminOn? insertAuthUsersAdminOn;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertAuthUsersAdminOn = insertAuthUsersAdminOn;
    _resultData['insertAuthUsersAdminOn'] = l$insertAuthUsersAdminOn?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertAuthUsersAdminOn = insertAuthUsersAdminOn;
    final l$$__typename = $__typename;
    return Object.hashAll([l$insertAuthUsersAdminOn, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_addUserAdminOn || runtimeType != other.runtimeType) {
      return false;
    }
    final l$insertAuthUsersAdminOn = insertAuthUsersAdminOn;
    final lOther$insertAuthUsersAdminOn = other.insertAuthUsersAdminOn;
    if (l$insertAuthUsersAdminOn != lOther$insertAuthUsersAdminOn) {
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

extension UtilityExtension_Mutation_addUserAdminOn on Mutation_addUserAdminOn {
  CopyWith_Mutation_addUserAdminOn<Mutation_addUserAdminOn> get copyWith =>
      CopyWith_Mutation_addUserAdminOn(this, (i) => i);
}

abstract class CopyWith_Mutation_addUserAdminOn<TRes> {
  factory CopyWith_Mutation_addUserAdminOn(
    Mutation_addUserAdminOn instance,
    TRes Function(Mutation_addUserAdminOn) then,
  ) = _CopyWithImpl_Mutation_addUserAdminOn;

  factory CopyWith_Mutation_addUserAdminOn.stub(TRes res) =
      _CopyWithStubImpl_Mutation_addUserAdminOn;

  TRes call({
    Mutation_addUserAdminOn_insertAuthUsersAdminOn? insertAuthUsersAdminOn,
    String? $__typename,
  });
  CopyWith_Mutation_addUserAdminOn_insertAuthUsersAdminOn<TRes>
  get insertAuthUsersAdminOn;
}

class _CopyWithImpl_Mutation_addUserAdminOn<TRes>
    implements CopyWith_Mutation_addUserAdminOn<TRes> {
  _CopyWithImpl_Mutation_addUserAdminOn(this._instance, this._then);

  final Mutation_addUserAdminOn _instance;

  final TRes Function(Mutation_addUserAdminOn) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insertAuthUsersAdminOn = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_addUserAdminOn(
      insertAuthUsersAdminOn: insertAuthUsersAdminOn == _undefined
          ? _instance.insertAuthUsersAdminOn
          : (insertAuthUsersAdminOn
                as Mutation_addUserAdminOn_insertAuthUsersAdminOn?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_addUserAdminOn_insertAuthUsersAdminOn<TRes>
  get insertAuthUsersAdminOn {
    final local$insertAuthUsersAdminOn = _instance.insertAuthUsersAdminOn;
    return local$insertAuthUsersAdminOn == null
        ? CopyWith_Mutation_addUserAdminOn_insertAuthUsersAdminOn.stub(
            _then(_instance),
          )
        : CopyWith_Mutation_addUserAdminOn_insertAuthUsersAdminOn(
            local$insertAuthUsersAdminOn,
            (e) => call(insertAuthUsersAdminOn: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_addUserAdminOn<TRes>
    implements CopyWith_Mutation_addUserAdminOn<TRes> {
  _CopyWithStubImpl_Mutation_addUserAdminOn(this._res);

  TRes _res;

  call({
    Mutation_addUserAdminOn_insertAuthUsersAdminOn? insertAuthUsersAdminOn,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_addUserAdminOn_insertAuthUsersAdminOn<TRes>
  get insertAuthUsersAdminOn =>
      CopyWith_Mutation_addUserAdminOn_insertAuthUsersAdminOn.stub(_res);
}

const documentNodeMutationaddUserAdminOn = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'addUserAdminOn'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'uid')),
          type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'areaId')),
          type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'serviceId')),
          type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'groupId')),
          type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'areaAllowEdit')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'areaAdminOnUsers')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'serviceAllowEdit')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'serviceAdminOnUsers')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'groupAllowEdit')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'groupAdminOnUsers')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'insertAuthUsersAdminOn'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'objects'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'uid'),
                      value: VariableNode(name: NameNode(value: 'uid')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'areaId'),
                      value: VariableNode(name: NameNode(value: 'areaId')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'serviceId'),
                      value: VariableNode(name: NameNode(value: 'serviceId')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'groupId'),
                      value: VariableNode(name: NameNode(value: 'groupId')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'areaAllowEdit'),
                      value: VariableNode(
                        name: NameNode(value: 'areaAllowEdit'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'areaAdminOnUsers'),
                      value: VariableNode(
                        name: NameNode(value: 'areaAdminOnUsers'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'serviceAllowEdit'),
                      value: VariableNode(
                        name: NameNode(value: 'serviceAllowEdit'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'serviceAdminOnUsers'),
                      value: VariableNode(
                        name: NameNode(value: 'serviceAdminOnUsers'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'groupAllowEdit'),
                      value: VariableNode(
                        name: NameNode(value: 'groupAllowEdit'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'groupAdminOnUsers'),
                      value: VariableNode(
                        name: NameNode(value: 'groupAdminOnUsers'),
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
                  name: NameNode(value: 'returning'),
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
    ),
  ],
);

class Mutation_addUserAdminOn_insertAuthUsersAdminOn {
  Mutation_addUserAdminOn_insertAuthUsersAdminOn({
    required this.affectedRows,
    required this.returning,
    this.$__typename = 'AuthUsersAdminOnMutationResponse',
  });

  factory Mutation_addUserAdminOn_insertAuthUsersAdminOn.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$affectedRows = json['affectedRows'];
    final l$returning = json['returning'];
    final l$$__typename = json['__typename'];
    return Mutation_addUserAdminOn_insertAuthUsersAdminOn(
      affectedRows: (l$affectedRows as int),
      returning: (l$returning as List<dynamic>)
          .map(
            (e) =>
                Mutation_addUserAdminOn_insertAuthUsersAdminOn_returning.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int affectedRows;

  final List<Mutation_addUserAdminOn_insertAuthUsersAdminOn_returning>
  returning;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$affectedRows = affectedRows;
    _resultData['affectedRows'] = l$affectedRows;
    final l$returning = returning;
    _resultData['returning'] = l$returning.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$affectedRows = affectedRows;
    final l$returning = returning;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$affectedRows,
      Object.hashAll(l$returning.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_addUserAdminOn_insertAuthUsersAdminOn ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$affectedRows = affectedRows;
    final lOther$affectedRows = other.affectedRows;
    if (l$affectedRows != lOther$affectedRows) {
      return false;
    }
    final l$returning = returning;
    final lOther$returning = other.returning;
    if (l$returning.length != lOther$returning.length) {
      return false;
    }
    for (int i = 0; i < l$returning.length; i++) {
      final l$returning$entry = l$returning[i];
      final lOther$returning$entry = lOther$returning[i];
      if (l$returning$entry != lOther$returning$entry) {
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

extension UtilityExtension_Mutation_addUserAdminOn_insertAuthUsersAdminOn
    on Mutation_addUserAdminOn_insertAuthUsersAdminOn {
  CopyWith_Mutation_addUserAdminOn_insertAuthUsersAdminOn<
    Mutation_addUserAdminOn_insertAuthUsersAdminOn
  >
  get copyWith =>
      CopyWith_Mutation_addUserAdminOn_insertAuthUsersAdminOn(this, (i) => i);
}

abstract class CopyWith_Mutation_addUserAdminOn_insertAuthUsersAdminOn<TRes> {
  factory CopyWith_Mutation_addUserAdminOn_insertAuthUsersAdminOn(
    Mutation_addUserAdminOn_insertAuthUsersAdminOn instance,
    TRes Function(Mutation_addUserAdminOn_insertAuthUsersAdminOn) then,
  ) = _CopyWithImpl_Mutation_addUserAdminOn_insertAuthUsersAdminOn;

  factory CopyWith_Mutation_addUserAdminOn_insertAuthUsersAdminOn.stub(
    TRes res,
  ) = _CopyWithStubImpl_Mutation_addUserAdminOn_insertAuthUsersAdminOn;

  TRes call({
    int? affectedRows,
    List<Mutation_addUserAdminOn_insertAuthUsersAdminOn_returning>? returning,
    String? $__typename,
  });
  TRes returning(
    Iterable<Mutation_addUserAdminOn_insertAuthUsersAdminOn_returning> Function(
      Iterable<
        CopyWith_Mutation_addUserAdminOn_insertAuthUsersAdminOn_returning<
          Mutation_addUserAdminOn_insertAuthUsersAdminOn_returning
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl_Mutation_addUserAdminOn_insertAuthUsersAdminOn<TRes>
    implements CopyWith_Mutation_addUserAdminOn_insertAuthUsersAdminOn<TRes> {
  _CopyWithImpl_Mutation_addUserAdminOn_insertAuthUsersAdminOn(
    this._instance,
    this._then,
  );

  final Mutation_addUserAdminOn_insertAuthUsersAdminOn _instance;

  final TRes Function(Mutation_addUserAdminOn_insertAuthUsersAdminOn) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? affectedRows = _undefined,
    Object? returning = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_addUserAdminOn_insertAuthUsersAdminOn(
      affectedRows: affectedRows == _undefined || affectedRows == null
          ? _instance.affectedRows
          : (affectedRows as int),
      returning: returning == _undefined || returning == null
          ? _instance.returning
          : (returning
                as List<
                  Mutation_addUserAdminOn_insertAuthUsersAdminOn_returning
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes returning(
    Iterable<Mutation_addUserAdminOn_insertAuthUsersAdminOn_returning> Function(
      Iterable<
        CopyWith_Mutation_addUserAdminOn_insertAuthUsersAdminOn_returning<
          Mutation_addUserAdminOn_insertAuthUsersAdminOn_returning
        >
      >,
    )
    _fn,
  ) => call(
    returning: _fn(
      _instance.returning.map(
        (e) =>
            CopyWith_Mutation_addUserAdminOn_insertAuthUsersAdminOn_returning(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl_Mutation_addUserAdminOn_insertAuthUsersAdminOn<TRes>
    implements CopyWith_Mutation_addUserAdminOn_insertAuthUsersAdminOn<TRes> {
  _CopyWithStubImpl_Mutation_addUserAdminOn_insertAuthUsersAdminOn(this._res);

  TRes _res;

  call({
    int? affectedRows,
    List<Mutation_addUserAdminOn_insertAuthUsersAdminOn_returning>? returning,
    String? $__typename,
  }) => _res;

  returning(_fn) => _res;
}

class Mutation_addUserAdminOn_insertAuthUsersAdminOn_returning {
  Mutation_addUserAdminOn_insertAuthUsersAdminOn_returning({
    required this.permissionId,
    this.$__typename = 'AuthUsersAdminOn',
  });

  factory Mutation_addUserAdminOn_insertAuthUsersAdminOn_returning.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$permissionId = json['permissionId'];
    final l$$__typename = json['__typename'];
    return Mutation_addUserAdminOn_insertAuthUsersAdminOn_returning(
      permissionId: stringToUuid(l$permissionId),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue permissionId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$permissionId = permissionId;
    _resultData['permissionId'] = uuidToString(l$permissionId);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$permissionId = permissionId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$permissionId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_addUserAdminOn_insertAuthUsersAdminOn_returning ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$permissionId = permissionId;
    final lOther$permissionId = other.permissionId;
    if (l$permissionId != lOther$permissionId) {
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

extension UtilityExtension_Mutation_addUserAdminOn_insertAuthUsersAdminOn_returning
    on Mutation_addUserAdminOn_insertAuthUsersAdminOn_returning {
  CopyWith_Mutation_addUserAdminOn_insertAuthUsersAdminOn_returning<
    Mutation_addUserAdminOn_insertAuthUsersAdminOn_returning
  >
  get copyWith =>
      CopyWith_Mutation_addUserAdminOn_insertAuthUsersAdminOn_returning(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Mutation_addUserAdminOn_insertAuthUsersAdminOn_returning<
  TRes
> {
  factory CopyWith_Mutation_addUserAdminOn_insertAuthUsersAdminOn_returning(
    Mutation_addUserAdminOn_insertAuthUsersAdminOn_returning instance,
    TRes Function(Mutation_addUserAdminOn_insertAuthUsersAdminOn_returning)
    then,
  ) = _CopyWithImpl_Mutation_addUserAdminOn_insertAuthUsersAdminOn_returning;

  factory CopyWith_Mutation_addUserAdminOn_insertAuthUsersAdminOn_returning.stub(
    TRes res,
  ) = _CopyWithStubImpl_Mutation_addUserAdminOn_insertAuthUsersAdminOn_returning;

  TRes call({UuidValue? permissionId, String? $__typename});
}

class _CopyWithImpl_Mutation_addUserAdminOn_insertAuthUsersAdminOn_returning<
  TRes
>
    implements
        CopyWith_Mutation_addUserAdminOn_insertAuthUsersAdminOn_returning<
          TRes
        > {
  _CopyWithImpl_Mutation_addUserAdminOn_insertAuthUsersAdminOn_returning(
    this._instance,
    this._then,
  );

  final Mutation_addUserAdminOn_insertAuthUsersAdminOn_returning _instance;

  final TRes Function(Mutation_addUserAdminOn_insertAuthUsersAdminOn_returning)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? permissionId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_addUserAdminOn_insertAuthUsersAdminOn_returning(
      permissionId: permissionId == _undefined || permissionId == null
          ? _instance.permissionId
          : (permissionId as UuidValue),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Mutation_addUserAdminOn_insertAuthUsersAdminOn_returning<
  TRes
>
    implements
        CopyWith_Mutation_addUserAdminOn_insertAuthUsersAdminOn_returning<
          TRes
        > {
  _CopyWithStubImpl_Mutation_addUserAdminOn_insertAuthUsersAdminOn_returning(
    this._res,
  );

  TRes _res;

  call({UuidValue? permissionId, String? $__typename}) => _res;
}

class Variables_Mutation_deleteUserAdminOn {
  factory Variables_Mutation_deleteUserAdminOn({
    required UuidValue permissionId,
  }) => Variables_Mutation_deleteUserAdminOn._({r'permissionId': permissionId});

  Variables_Mutation_deleteUserAdminOn._(this._$data);

  factory Variables_Mutation_deleteUserAdminOn.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$permissionId = data['permissionId'];
    result$data['permissionId'] = stringToUuid(l$permissionId);
    return Variables_Mutation_deleteUserAdminOn._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get permissionId => (_$data['permissionId'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$permissionId = permissionId;
    result$data['permissionId'] = uuidToString(l$permissionId);
    return result$data;
  }

  CopyWith_Variables_Mutation_deleteUserAdminOn<
    Variables_Mutation_deleteUserAdminOn
  >
  get copyWith => CopyWith_Variables_Mutation_deleteUserAdminOn(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_deleteUserAdminOn ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$permissionId = permissionId;
    final lOther$permissionId = other.permissionId;
    if (l$permissionId != lOther$permissionId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$permissionId = permissionId;
    return Object.hashAll([l$permissionId]);
  }
}

abstract class CopyWith_Variables_Mutation_deleteUserAdminOn<TRes> {
  factory CopyWith_Variables_Mutation_deleteUserAdminOn(
    Variables_Mutation_deleteUserAdminOn instance,
    TRes Function(Variables_Mutation_deleteUserAdminOn) then,
  ) = _CopyWithImpl_Variables_Mutation_deleteUserAdminOn;

  factory CopyWith_Variables_Mutation_deleteUserAdminOn.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_deleteUserAdminOn;

  TRes call({UuidValue? permissionId});
}

class _CopyWithImpl_Variables_Mutation_deleteUserAdminOn<TRes>
    implements CopyWith_Variables_Mutation_deleteUserAdminOn<TRes> {
  _CopyWithImpl_Variables_Mutation_deleteUserAdminOn(
    this._instance,
    this._then,
  );

  final Variables_Mutation_deleteUserAdminOn _instance;

  final TRes Function(Variables_Mutation_deleteUserAdminOn) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? permissionId = _undefined}) => _then(
    Variables_Mutation_deleteUserAdminOn._({
      ..._instance._$data,
      if (permissionId != _undefined && permissionId != null)
        'permissionId': (permissionId as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_deleteUserAdminOn<TRes>
    implements CopyWith_Variables_Mutation_deleteUserAdminOn<TRes> {
  _CopyWithStubImpl_Variables_Mutation_deleteUserAdminOn(this._res);

  TRes _res;

  call({UuidValue? permissionId}) => _res;
}

class Mutation_deleteUserAdminOn {
  Mutation_deleteUserAdminOn({
    this.deleteAuthUsersAdminOn,
    this.$__typename = 'mutation_root',
  });

  factory Mutation_deleteUserAdminOn.fromJson(Map<String, dynamic> json) {
    final l$deleteAuthUsersAdminOn = json['deleteAuthUsersAdminOn'];
    final l$$__typename = json['__typename'];
    return Mutation_deleteUserAdminOn(
      deleteAuthUsersAdminOn: l$deleteAuthUsersAdminOn == null
          ? null
          : Mutation_deleteUserAdminOn_deleteAuthUsersAdminOn.fromJson(
              (l$deleteAuthUsersAdminOn as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_deleteUserAdminOn_deleteAuthUsersAdminOn?
  deleteAuthUsersAdminOn;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteAuthUsersAdminOn = deleteAuthUsersAdminOn;
    _resultData['deleteAuthUsersAdminOn'] = l$deleteAuthUsersAdminOn?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteAuthUsersAdminOn = deleteAuthUsersAdminOn;
    final l$$__typename = $__typename;
    return Object.hashAll([l$deleteAuthUsersAdminOn, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_deleteUserAdminOn ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteAuthUsersAdminOn = deleteAuthUsersAdminOn;
    final lOther$deleteAuthUsersAdminOn = other.deleteAuthUsersAdminOn;
    if (l$deleteAuthUsersAdminOn != lOther$deleteAuthUsersAdminOn) {
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

extension UtilityExtension_Mutation_deleteUserAdminOn
    on Mutation_deleteUserAdminOn {
  CopyWith_Mutation_deleteUserAdminOn<Mutation_deleteUserAdminOn>
  get copyWith => CopyWith_Mutation_deleteUserAdminOn(this, (i) => i);
}

abstract class CopyWith_Mutation_deleteUserAdminOn<TRes> {
  factory CopyWith_Mutation_deleteUserAdminOn(
    Mutation_deleteUserAdminOn instance,
    TRes Function(Mutation_deleteUserAdminOn) then,
  ) = _CopyWithImpl_Mutation_deleteUserAdminOn;

  factory CopyWith_Mutation_deleteUserAdminOn.stub(TRes res) =
      _CopyWithStubImpl_Mutation_deleteUserAdminOn;

  TRes call({
    Mutation_deleteUserAdminOn_deleteAuthUsersAdminOn? deleteAuthUsersAdminOn,
    String? $__typename,
  });
  CopyWith_Mutation_deleteUserAdminOn_deleteAuthUsersAdminOn<TRes>
  get deleteAuthUsersAdminOn;
}

class _CopyWithImpl_Mutation_deleteUserAdminOn<TRes>
    implements CopyWith_Mutation_deleteUserAdminOn<TRes> {
  _CopyWithImpl_Mutation_deleteUserAdminOn(this._instance, this._then);

  final Mutation_deleteUserAdminOn _instance;

  final TRes Function(Mutation_deleteUserAdminOn) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteAuthUsersAdminOn = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_deleteUserAdminOn(
      deleteAuthUsersAdminOn: deleteAuthUsersAdminOn == _undefined
          ? _instance.deleteAuthUsersAdminOn
          : (deleteAuthUsersAdminOn
                as Mutation_deleteUserAdminOn_deleteAuthUsersAdminOn?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_deleteUserAdminOn_deleteAuthUsersAdminOn<TRes>
  get deleteAuthUsersAdminOn {
    final local$deleteAuthUsersAdminOn = _instance.deleteAuthUsersAdminOn;
    return local$deleteAuthUsersAdminOn == null
        ? CopyWith_Mutation_deleteUserAdminOn_deleteAuthUsersAdminOn.stub(
            _then(_instance),
          )
        : CopyWith_Mutation_deleteUserAdminOn_deleteAuthUsersAdminOn(
            local$deleteAuthUsersAdminOn,
            (e) => call(deleteAuthUsersAdminOn: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_deleteUserAdminOn<TRes>
    implements CopyWith_Mutation_deleteUserAdminOn<TRes> {
  _CopyWithStubImpl_Mutation_deleteUserAdminOn(this._res);

  TRes _res;

  call({
    Mutation_deleteUserAdminOn_deleteAuthUsersAdminOn? deleteAuthUsersAdminOn,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_deleteUserAdminOn_deleteAuthUsersAdminOn<TRes>
  get deleteAuthUsersAdminOn =>
      CopyWith_Mutation_deleteUserAdminOn_deleteAuthUsersAdminOn.stub(_res);
}

const documentNodeMutationdeleteUserAdminOn = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'deleteUserAdminOn'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'permissionId')),
          type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'deleteAuthUsersAdminOn'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'permissionId'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: '_eq'),
                            value: VariableNode(
                              name: NameNode(value: 'permissionId'),
                            ),
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

class Mutation_deleteUserAdminOn_deleteAuthUsersAdminOn {
  Mutation_deleteUserAdminOn_deleteAuthUsersAdminOn({
    required this.affectedRows,
    this.$__typename = 'AuthUsersAdminOnMutationResponse',
  });

  factory Mutation_deleteUserAdminOn_deleteAuthUsersAdminOn.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$affectedRows = json['affectedRows'];
    final l$$__typename = json['__typename'];
    return Mutation_deleteUserAdminOn_deleteAuthUsersAdminOn(
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
    if (other is! Mutation_deleteUserAdminOn_deleteAuthUsersAdminOn ||
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

extension UtilityExtension_Mutation_deleteUserAdminOn_deleteAuthUsersAdminOn
    on Mutation_deleteUserAdminOn_deleteAuthUsersAdminOn {
  CopyWith_Mutation_deleteUserAdminOn_deleteAuthUsersAdminOn<
    Mutation_deleteUserAdminOn_deleteAuthUsersAdminOn
  >
  get copyWith => CopyWith_Mutation_deleteUserAdminOn_deleteAuthUsersAdminOn(
    this,
    (i) => i,
  );
}

abstract class CopyWith_Mutation_deleteUserAdminOn_deleteAuthUsersAdminOn<
  TRes
> {
  factory CopyWith_Mutation_deleteUserAdminOn_deleteAuthUsersAdminOn(
    Mutation_deleteUserAdminOn_deleteAuthUsersAdminOn instance,
    TRes Function(Mutation_deleteUserAdminOn_deleteAuthUsersAdminOn) then,
  ) = _CopyWithImpl_Mutation_deleteUserAdminOn_deleteAuthUsersAdminOn;

  factory CopyWith_Mutation_deleteUserAdminOn_deleteAuthUsersAdminOn.stub(
    TRes res,
  ) = _CopyWithStubImpl_Mutation_deleteUserAdminOn_deleteAuthUsersAdminOn;

  TRes call({int? affectedRows, String? $__typename});
}

class _CopyWithImpl_Mutation_deleteUserAdminOn_deleteAuthUsersAdminOn<TRes>
    implements
        CopyWith_Mutation_deleteUserAdminOn_deleteAuthUsersAdminOn<TRes> {
  _CopyWithImpl_Mutation_deleteUserAdminOn_deleteAuthUsersAdminOn(
    this._instance,
    this._then,
  );

  final Mutation_deleteUserAdminOn_deleteAuthUsersAdminOn _instance;

  final TRes Function(Mutation_deleteUserAdminOn_deleteAuthUsersAdminOn) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? affectedRows = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_deleteUserAdminOn_deleteAuthUsersAdminOn(
      affectedRows: affectedRows == _undefined || affectedRows == null
          ? _instance.affectedRows
          : (affectedRows as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Mutation_deleteUserAdminOn_deleteAuthUsersAdminOn<TRes>
    implements
        CopyWith_Mutation_deleteUserAdminOn_deleteAuthUsersAdminOn<TRes> {
  _CopyWithStubImpl_Mutation_deleteUserAdminOn_deleteAuthUsersAdminOn(
    this._res,
  );

  TRes _res;

  call({int? affectedRows, String? $__typename}) => _res;
}
