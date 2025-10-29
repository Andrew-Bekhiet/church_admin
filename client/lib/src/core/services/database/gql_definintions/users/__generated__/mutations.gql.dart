import '../../../../../graphql/__generated__/schema.graphql.dart';
import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Mutation_updateUserPermissions {
  factory Variables_Mutation_updateUserPermissions({
    required UuidValue uid,
    required List<String> permissionsToDelete,
    required List<Input_AuthUsersPermissionsInsertInput> permissionsToInsert,
    bool? deletePermissions,
    bool? insertPermissions,
  }) => Variables_Mutation_updateUserPermissions._({
    r'uid': uid,
    r'permissionsToDelete': permissionsToDelete,
    r'permissionsToInsert': permissionsToInsert,
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
    final l$permissionsToDelete = data['permissionsToDelete'];
    result$data['permissionsToDelete'] =
        (l$permissionsToDelete as List<dynamic>)
            .map((e) => (e as String))
            .toList();
    final l$permissionsToInsert = data['permissionsToInsert'];
    result$data['permissionsToInsert'] =
        (l$permissionsToInsert as List<dynamic>)
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

  List<String> get permissionsToDelete =>
      (_$data['permissionsToDelete'] as List<String>);

  List<Input_AuthUsersPermissionsInsertInput> get permissionsToInsert =>
      (_$data['permissionsToInsert']
          as List<Input_AuthUsersPermissionsInsertInput>);

  bool? get deletePermissions => (_$data['deletePermissions'] as bool?);

  bool? get insertPermissions => (_$data['insertPermissions'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$uid = uid;
    result$data['uid'] = uuidToString(l$uid);
    final l$permissionsToDelete = permissionsToDelete;
    result$data['permissionsToDelete'] = l$permissionsToDelete
        .map((e) => e)
        .toList();
    final l$permissionsToInsert = permissionsToInsert;
    result$data['permissionsToInsert'] = l$permissionsToInsert
        .map((e) => e.toJson())
        .toList();
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
    final l$permissionsToDelete = permissionsToDelete;
    final lOther$permissionsToDelete = other.permissionsToDelete;
    if (l$permissionsToDelete.length != lOther$permissionsToDelete.length) {
      return false;
    }
    for (int i = 0; i < l$permissionsToDelete.length; i++) {
      final l$permissionsToDelete$entry = l$permissionsToDelete[i];
      final lOther$permissionsToDelete$entry = lOther$permissionsToDelete[i];
      if (l$permissionsToDelete$entry != lOther$permissionsToDelete$entry) {
        return false;
      }
    }
    final l$permissionsToInsert = permissionsToInsert;
    final lOther$permissionsToInsert = other.permissionsToInsert;
    if (l$permissionsToInsert.length != lOther$permissionsToInsert.length) {
      return false;
    }
    for (int i = 0; i < l$permissionsToInsert.length; i++) {
      final l$permissionsToInsert$entry = l$permissionsToInsert[i];
      final lOther$permissionsToInsert$entry = lOther$permissionsToInsert[i];
      if (l$permissionsToInsert$entry != lOther$permissionsToInsert$entry) {
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
    final l$permissionsToDelete = permissionsToDelete;
    final l$permissionsToInsert = permissionsToInsert;
    final l$deletePermissions = deletePermissions;
    final l$insertPermissions = insertPermissions;
    return Object.hashAll([
      l$uid,
      Object.hashAll(l$permissionsToDelete.map((v) => v)),
      Object.hashAll(l$permissionsToInsert.map((v) => v)),
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
    List<String>? permissionsToDelete,
    List<Input_AuthUsersPermissionsInsertInput>? permissionsToInsert,
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
    Object? permissionsToDelete = _undefined,
    Object? permissionsToInsert = _undefined,
    Object? deletePermissions = _undefined,
    Object? insertPermissions = _undefined,
  }) => _then(
    Variables_Mutation_updateUserPermissions._({
      ..._instance._$data,
      if (uid != _undefined && uid != null) 'uid': (uid as UuidValue),
      if (permissionsToDelete != _undefined && permissionsToDelete != null)
        'permissionsToDelete': (permissionsToDelete as List<String>),
      if (permissionsToInsert != _undefined && permissionsToInsert != null)
        'permissionsToInsert':
            (permissionsToInsert
                as List<Input_AuthUsersPermissionsInsertInput>),
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
    List<String>? permissionsToDelete,
    List<Input_AuthUsersPermissionsInsertInput>? permissionsToInsert,
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
          variable: VariableNode(name: NameNode(value: 'permissionsToDelete')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'String'),
              isNonNull: true,
            ),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'permissionsToInsert')),
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
                                      name: NameNode(value: '_in'),
                                      value: VariableNode(
                                        name: NameNode(
                                          value: 'permissionsToDelete',
                                        ),
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
                value: VariableNode(
                  name: NameNode(value: 'permissionsToInsert'),
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
