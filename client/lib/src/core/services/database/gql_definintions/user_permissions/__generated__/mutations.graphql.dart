import '../../../../../graphql/__generated__/schema.graphql.dart';
import '../../areas/__generated__/fragments.graphql.dart';
import '../../metadata/study_years/__generated__/fragments.graphql.dart';
import '../../users/__generated__/fragments.graphql.dart';

import 'package:gql/ast.dart';

class Variables_Mutation_updateUserPermissions {
  factory Variables_Mutation_updateUserPermissions({
    required String id,
    Input_UpdateUserPermissionsInput? input,
  }) => Variables_Mutation_updateUserPermissions._({
    r'id': id,
    if (input != null) r'input': input,
  });

  Variables_Mutation_updateUserPermissions._(this._$data);

  factory Variables_Mutation_updateUserPermissions.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    if (data.containsKey('input')) {
      final l$input = data['input'];
      result$data['input'] = l$input == null
          ? null
          : Input_UpdateUserPermissionsInput.fromJson(
              (l$input as Map<String, dynamic>),
            );
    }
    return Variables_Mutation_updateUserPermissions._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Input_UpdateUserPermissionsInput? get input =>
      (_$data['input'] as Input_UpdateUserPermissionsInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('input')) {
      final l$input = input;
      result$data['input'] = l$input?.toJson();
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
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (_$data.containsKey('input') != other._$data.containsKey('input')) {
      return false;
    }
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$input = input;
    return Object.hashAll([
      l$id,
      _$data.containsKey('input') ? l$input : const {},
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

  TRes call({String? id, Input_UpdateUserPermissionsInput? input});
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

  TRes call({Object? id = _undefined, Object? input = _undefined}) => _then(
    Variables_Mutation_updateUserPermissions._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
      if (input != _undefined)
        'input': (input as Input_UpdateUserPermissionsInput?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_updateUserPermissions<TRes>
    implements CopyWith_Variables_Mutation_updateUserPermissions<TRes> {
  _CopyWithStubImpl_Variables_Mutation_updateUserPermissions(this._res);

  TRes _res;

  call({String? id, Input_UpdateUserPermissionsInput? input}) => _res;
}

class Mutation_updateUserPermissions {
  Mutation_updateUserPermissions({
    this.updateUserPermissions,
    this.$__typename = 'RootMutationType',
  });

  factory Mutation_updateUserPermissions.fromJson(Map<String, dynamic> json) {
    final l$updateUserPermissions = json['updateUserPermissions'];
    final l$$__typename = json['__typename'];
    return Mutation_updateUserPermissions(
      updateUserPermissions: l$updateUserPermissions == null
          ? null
          : Mutation_updateUserPermissions_updateUserPermissions.fromJson(
              (l$updateUserPermissions as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_updateUserPermissions_updateUserPermissions?
  updateUserPermissions;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateUserPermissions = updateUserPermissions;
    _resultData['updateUserPermissions'] = l$updateUserPermissions?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateUserPermissions = updateUserPermissions;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateUserPermissions, l$$__typename]);
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
    final l$updateUserPermissions = updateUserPermissions;
    final lOther$updateUserPermissions = other.updateUserPermissions;
    if (l$updateUserPermissions != lOther$updateUserPermissions) {
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
    Mutation_updateUserPermissions_updateUserPermissions? updateUserPermissions,
    String? $__typename,
  });
  CopyWith_Mutation_updateUserPermissions_updateUserPermissions<TRes>
  get updateUserPermissions;
}

class _CopyWithImpl_Mutation_updateUserPermissions<TRes>
    implements CopyWith_Mutation_updateUserPermissions<TRes> {
  _CopyWithImpl_Mutation_updateUserPermissions(this._instance, this._then);

  final Mutation_updateUserPermissions _instance;

  final TRes Function(Mutation_updateUserPermissions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateUserPermissions = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_updateUserPermissions(
      updateUserPermissions: updateUserPermissions == _undefined
          ? _instance.updateUserPermissions
          : (updateUserPermissions
                as Mutation_updateUserPermissions_updateUserPermissions?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_updateUserPermissions_updateUserPermissions<TRes>
  get updateUserPermissions {
    final local$updateUserPermissions = _instance.updateUserPermissions;
    return local$updateUserPermissions == null
        ? CopyWith_Mutation_updateUserPermissions_updateUserPermissions.stub(
            _then(_instance),
          )
        : CopyWith_Mutation_updateUserPermissions_updateUserPermissions(
            local$updateUserPermissions,
            (e) => call(updateUserPermissions: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_updateUserPermissions<TRes>
    implements CopyWith_Mutation_updateUserPermissions<TRes> {
  _CopyWithStubImpl_Mutation_updateUserPermissions(this._res);

  TRes _res;

  call({
    Mutation_updateUserPermissions_updateUserPermissions? updateUserPermissions,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_updateUserPermissions_updateUserPermissions<TRes>
  get updateUserPermissions =>
      CopyWith_Mutation_updateUserPermissions_updateUserPermissions.stub(_res);
}

const documentNodeMutationupdateUserPermissions = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'updateUserPermissions'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'id')),
          type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'UpdateUserPermissionsInput'),
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
            name: NameNode(value: 'updateUserPermissions'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'id')),
              ),
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'input')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'result'),
                  alias: null,
                  arguments: [],
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
                        name: NameNode(value: 'permissions'),
                        alias: null,
                        arguments: [],
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
                      FragmentSpreadNode(
                        name: NameNode(value: 'UserAdminScopes'),
                        directives: [],
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
    fragmentDefinitionUserAdminScopes,
    fragmentDefinitionArea,
    fragmentDefinitionUserScopeService,
    fragmentDefinitionStudyYear,
  ],
);

class Mutation_updateUserPermissions_updateUserPermissions {
  Mutation_updateUserPermissions_updateUserPermissions({
    this.result,
    this.$__typename = 'UpdateUserPermissionsResult',
  });

  factory Mutation_updateUserPermissions_updateUserPermissions.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_updateUserPermissions_updateUserPermissions(
      result: l$result == null
          ? null
          : Mutation_updateUserPermissions_updateUserPermissions_result.fromJson(
              (l$result as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_updateUserPermissions_updateUserPermissions_result? result;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$result = result;
    _resultData['result'] = l$result?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$result = result;
    final l$$__typename = $__typename;
    return Object.hashAll([l$result, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_updateUserPermissions_updateUserPermissions ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$result = result;
    final lOther$result = other.result;
    if (l$result != lOther$result) {
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

extension UtilityExtension_Mutation_updateUserPermissions_updateUserPermissions
    on Mutation_updateUserPermissions_updateUserPermissions {
  CopyWith_Mutation_updateUserPermissions_updateUserPermissions<
    Mutation_updateUserPermissions_updateUserPermissions
  >
  get copyWith => CopyWith_Mutation_updateUserPermissions_updateUserPermissions(
    this,
    (i) => i,
  );
}

abstract class CopyWith_Mutation_updateUserPermissions_updateUserPermissions<
  TRes
> {
  factory CopyWith_Mutation_updateUserPermissions_updateUserPermissions(
    Mutation_updateUserPermissions_updateUserPermissions instance,
    TRes Function(Mutation_updateUserPermissions_updateUserPermissions) then,
  ) = _CopyWithImpl_Mutation_updateUserPermissions_updateUserPermissions;

  factory CopyWith_Mutation_updateUserPermissions_updateUserPermissions.stub(
    TRes res,
  ) = _CopyWithStubImpl_Mutation_updateUserPermissions_updateUserPermissions;

  TRes call({
    Mutation_updateUserPermissions_updateUserPermissions_result? result,
    String? $__typename,
  });
  CopyWith_Mutation_updateUserPermissions_updateUserPermissions_result<TRes>
  get result;
}

class _CopyWithImpl_Mutation_updateUserPermissions_updateUserPermissions<TRes>
    implements
        CopyWith_Mutation_updateUserPermissions_updateUserPermissions<TRes> {
  _CopyWithImpl_Mutation_updateUserPermissions_updateUserPermissions(
    this._instance,
    this._then,
  );

  final Mutation_updateUserPermissions_updateUserPermissions _instance;

  final TRes Function(Mutation_updateUserPermissions_updateUserPermissions)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? result = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_updateUserPermissions_updateUserPermissions(
      result: result == _undefined
          ? _instance.result
          : (result
                as Mutation_updateUserPermissions_updateUserPermissions_result?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_updateUserPermissions_updateUserPermissions_result<TRes>
  get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Mutation_updateUserPermissions_updateUserPermissions_result.stub(
            _then(_instance),
          )
        : CopyWith_Mutation_updateUserPermissions_updateUserPermissions_result(
            local$result,
            (e) => call(result: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_updateUserPermissions_updateUserPermissions<
  TRes
>
    implements
        CopyWith_Mutation_updateUserPermissions_updateUserPermissions<TRes> {
  _CopyWithStubImpl_Mutation_updateUserPermissions_updateUserPermissions(
    this._res,
  );

  TRes _res;

  call({
    Mutation_updateUserPermissions_updateUserPermissions_result? result,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_updateUserPermissions_updateUserPermissions_result<TRes>
  get result =>
      CopyWith_Mutation_updateUserPermissions_updateUserPermissions_result.stub(
        _res,
      );
}

class Mutation_updateUserPermissions_updateUserPermissions_result
    implements Fragment_UserAdminScopes {
  Mutation_updateUserPermissions_updateUserPermissions_result({
    required this.id,
    required this.permissions,
    required this.scopeGrants,
    this.$__typename = 'User',
  });

  factory Mutation_updateUserPermissions_updateUserPermissions_result.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$permissions = json['permissions'];
    final l$scopeGrants = json['scopeGrants'];
    final l$$__typename = json['__typename'];
    return Mutation_updateUserPermissions_updateUserPermissions_result(
      id: (l$id as String),
      permissions: (l$permissions as List<dynamic>)
          .map(
            (e) =>
                Mutation_updateUserPermissions_updateUserPermissions_result_permissions.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      scopeGrants: (l$scopeGrants as List<dynamic>)
          .map(
            (e) =>
                Mutation_updateUserPermissions_updateUserPermissions_result_scopeGrants.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final List<
    Mutation_updateUserPermissions_updateUserPermissions_result_permissions
  >
  permissions;

  final List<
    Mutation_updateUserPermissions_updateUserPermissions_result_scopeGrants
  >
  scopeGrants;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$permissions = permissions;
    _resultData['permissions'] = l$permissions.map((e) => e.toJson()).toList();
    final l$scopeGrants = scopeGrants;
    _resultData['scopeGrants'] = l$scopeGrants.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$permissions = permissions;
    final l$scopeGrants = scopeGrants;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      Object.hashAll(l$permissions.map((v) => v)),
      Object.hashAll(l$scopeGrants.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_updateUserPermissions_updateUserPermissions_result ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    final l$scopeGrants = scopeGrants;
    final lOther$scopeGrants = other.scopeGrants;
    if (l$scopeGrants.length != lOther$scopeGrants.length) {
      return false;
    }
    for (int i = 0; i < l$scopeGrants.length; i++) {
      final l$scopeGrants$entry = l$scopeGrants[i];
      final lOther$scopeGrants$entry = lOther$scopeGrants[i];
      if (l$scopeGrants$entry != lOther$scopeGrants$entry) {
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

extension UtilityExtension_Mutation_updateUserPermissions_updateUserPermissions_result
    on Mutation_updateUserPermissions_updateUserPermissions_result {
  CopyWith_Mutation_updateUserPermissions_updateUserPermissions_result<
    Mutation_updateUserPermissions_updateUserPermissions_result
  >
  get copyWith =>
      CopyWith_Mutation_updateUserPermissions_updateUserPermissions_result(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Mutation_updateUserPermissions_updateUserPermissions_result<
  TRes
> {
  factory CopyWith_Mutation_updateUserPermissions_updateUserPermissions_result(
    Mutation_updateUserPermissions_updateUserPermissions_result instance,
    TRes Function(Mutation_updateUserPermissions_updateUserPermissions_result)
    then,
  ) = _CopyWithImpl_Mutation_updateUserPermissions_updateUserPermissions_result;

  factory CopyWith_Mutation_updateUserPermissions_updateUserPermissions_result.stub(
    TRes res,
  ) = _CopyWithStubImpl_Mutation_updateUserPermissions_updateUserPermissions_result;

  TRes call({
    String? id,
    List<
      Mutation_updateUserPermissions_updateUserPermissions_result_permissions
    >?
    permissions,
    List<
      Mutation_updateUserPermissions_updateUserPermissions_result_scopeGrants
    >?
    scopeGrants,
    String? $__typename,
  });
  TRes permissions(
    Iterable<
      Mutation_updateUserPermissions_updateUserPermissions_result_permissions
    >
    Function(
      Iterable<
        CopyWith_Mutation_updateUserPermissions_updateUserPermissions_result_permissions<
          Mutation_updateUserPermissions_updateUserPermissions_result_permissions
        >
      >,
    )
    _fn,
  );
  TRes scopeGrants(
    Iterable<
      Mutation_updateUserPermissions_updateUserPermissions_result_scopeGrants
    >
    Function(
      Iterable<
        CopyWith_Mutation_updateUserPermissions_updateUserPermissions_result_scopeGrants<
          Mutation_updateUserPermissions_updateUserPermissions_result_scopeGrants
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl_Mutation_updateUserPermissions_updateUserPermissions_result<
  TRes
>
    implements
        CopyWith_Mutation_updateUserPermissions_updateUserPermissions_result<
          TRes
        > {
  _CopyWithImpl_Mutation_updateUserPermissions_updateUserPermissions_result(
    this._instance,
    this._then,
  );

  final Mutation_updateUserPermissions_updateUserPermissions_result _instance;

  final TRes Function(
    Mutation_updateUserPermissions_updateUserPermissions_result,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? permissions = _undefined,
    Object? scopeGrants = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_updateUserPermissions_updateUserPermissions_result(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      permissions: permissions == _undefined || permissions == null
          ? _instance.permissions
          : (permissions
                as List<
                  Mutation_updateUserPermissions_updateUserPermissions_result_permissions
                >),
      scopeGrants: scopeGrants == _undefined || scopeGrants == null
          ? _instance.scopeGrants
          : (scopeGrants
                as List<
                  Mutation_updateUserPermissions_updateUserPermissions_result_scopeGrants
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes permissions(
    Iterable<
      Mutation_updateUserPermissions_updateUserPermissions_result_permissions
    >
    Function(
      Iterable<
        CopyWith_Mutation_updateUserPermissions_updateUserPermissions_result_permissions<
          Mutation_updateUserPermissions_updateUserPermissions_result_permissions
        >
      >,
    )
    _fn,
  ) => call(
    permissions: _fn(
      _instance.permissions.map(
        (e) =>
            CopyWith_Mutation_updateUserPermissions_updateUserPermissions_result_permissions(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  TRes scopeGrants(
    Iterable<
      Mutation_updateUserPermissions_updateUserPermissions_result_scopeGrants
    >
    Function(
      Iterable<
        CopyWith_Mutation_updateUserPermissions_updateUserPermissions_result_scopeGrants<
          Mutation_updateUserPermissions_updateUserPermissions_result_scopeGrants
        >
      >,
    )
    _fn,
  ) => call(
    scopeGrants: _fn(
      _instance.scopeGrants.map(
        (e) =>
            CopyWith_Mutation_updateUserPermissions_updateUserPermissions_result_scopeGrants(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl_Mutation_updateUserPermissions_updateUserPermissions_result<
  TRes
>
    implements
        CopyWith_Mutation_updateUserPermissions_updateUserPermissions_result<
          TRes
        > {
  _CopyWithStubImpl_Mutation_updateUserPermissions_updateUserPermissions_result(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    List<
      Mutation_updateUserPermissions_updateUserPermissions_result_permissions
    >?
    permissions,
    List<
      Mutation_updateUserPermissions_updateUserPermissions_result_scopeGrants
    >?
    scopeGrants,
    String? $__typename,
  }) => _res;

  permissions(_fn) => _res;

  scopeGrants(_fn) => _res;
}

class Mutation_updateUserPermissions_updateUserPermissions_result_permissions {
  Mutation_updateUserPermissions_updateUserPermissions_result_permissions({
    required this.id,
    required this.permission,
    this.$__typename = 'UserPermission',
  });

  factory Mutation_updateUserPermissions_updateUserPermissions_result_permissions.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$permission = json['permission'];
    final l$$__typename = json['__typename'];
    return Mutation_updateUserPermissions_updateUserPermissions_result_permissions(
      id: (l$id as String),
      permission: (l$permission as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String permission;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$permission = permission;
    _resultData['permission'] = l$permission;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$permission = permission;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$permission, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation_updateUserPermissions_updateUserPermissions_result_permissions ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension_Mutation_updateUserPermissions_updateUserPermissions_result_permissions
    on Mutation_updateUserPermissions_updateUserPermissions_result_permissions {
  CopyWith_Mutation_updateUserPermissions_updateUserPermissions_result_permissions<
    Mutation_updateUserPermissions_updateUserPermissions_result_permissions
  >
  get copyWith =>
      CopyWith_Mutation_updateUserPermissions_updateUserPermissions_result_permissions(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Mutation_updateUserPermissions_updateUserPermissions_result_permissions<
  TRes
> {
  factory CopyWith_Mutation_updateUserPermissions_updateUserPermissions_result_permissions(
    Mutation_updateUserPermissions_updateUserPermissions_result_permissions
    instance,
    TRes Function(
      Mutation_updateUserPermissions_updateUserPermissions_result_permissions,
    )
    then,
  ) = _CopyWithImpl_Mutation_updateUserPermissions_updateUserPermissions_result_permissions;

  factory CopyWith_Mutation_updateUserPermissions_updateUserPermissions_result_permissions.stub(
    TRes res,
  ) = _CopyWithStubImpl_Mutation_updateUserPermissions_updateUserPermissions_result_permissions;

  TRes call({String? id, String? permission, String? $__typename});
}

class _CopyWithImpl_Mutation_updateUserPermissions_updateUserPermissions_result_permissions<
  TRes
>
    implements
        CopyWith_Mutation_updateUserPermissions_updateUserPermissions_result_permissions<
          TRes
        > {
  _CopyWithImpl_Mutation_updateUserPermissions_updateUserPermissions_result_permissions(
    this._instance,
    this._then,
  );

  final Mutation_updateUserPermissions_updateUserPermissions_result_permissions
  _instance;

  final TRes Function(
    Mutation_updateUserPermissions_updateUserPermissions_result_permissions,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? permission = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_updateUserPermissions_updateUserPermissions_result_permissions(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      permission: permission == _undefined || permission == null
          ? _instance.permission
          : (permission as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Mutation_updateUserPermissions_updateUserPermissions_result_permissions<
  TRes
>
    implements
        CopyWith_Mutation_updateUserPermissions_updateUserPermissions_result_permissions<
          TRes
        > {
  _CopyWithStubImpl_Mutation_updateUserPermissions_updateUserPermissions_result_permissions(
    this._res,
  );

  TRes _res;

  call({String? id, String? permission, String? $__typename}) => _res;
}

class Mutation_updateUserPermissions_updateUserPermissions_result_scopeGrants
    implements Fragment_UserAdminScopes_scopeGrants {
  Mutation_updateUserPermissions_updateUserPermissions_result_scopeGrants({
    required this.id,
    required this.permissionId,
    this.area,
    this.service,
    this.studyYear,
    this.$__typename = 'ScopeGrant',
  });

  factory Mutation_updateUserPermissions_updateUserPermissions_result_scopeGrants.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$permissionId = json['permissionId'];
    final l$area = json['area'];
    final l$service = json['service'];
    final l$studyYear = json['studyYear'];
    final l$$__typename = json['__typename'];
    return Mutation_updateUserPermissions_updateUserPermissions_result_scopeGrants(
      id: (l$id as String),
      permissionId: (l$permissionId as String),
      area: l$area == null
          ? null
          : Fragment_Area.fromJson((l$area as Map<String, dynamic>)),
      service: l$service == null
          ? null
          : Fragment_UserScopeService.fromJson(
              (l$service as Map<String, dynamic>),
            ),
      studyYear: l$studyYear == null
          ? null
          : Fragment_StudyYear.fromJson((l$studyYear as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String permissionId;

  final Fragment_Area? area;

  final Fragment_UserScopeService? service;

  final Fragment_StudyYear? studyYear;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$permissionId = permissionId;
    _resultData['permissionId'] = l$permissionId;
    final l$area = area;
    _resultData['area'] = l$area?.toJson();
    final l$service = service;
    _resultData['service'] = l$service?.toJson();
    final l$studyYear = studyYear;
    _resultData['studyYear'] = l$studyYear?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$permissionId = permissionId;
    final l$area = area;
    final l$service = service;
    final l$studyYear = studyYear;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$permissionId,
      l$area,
      l$service,
      l$studyYear,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation_updateUserPermissions_updateUserPermissions_result_scopeGrants ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    final l$service = service;
    final lOther$service = other.service;
    if (l$service != lOther$service) {
      return false;
    }
    final l$studyYear = studyYear;
    final lOther$studyYear = other.studyYear;
    if (l$studyYear != lOther$studyYear) {
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

extension UtilityExtension_Mutation_updateUserPermissions_updateUserPermissions_result_scopeGrants
    on Mutation_updateUserPermissions_updateUserPermissions_result_scopeGrants {
  CopyWith_Mutation_updateUserPermissions_updateUserPermissions_result_scopeGrants<
    Mutation_updateUserPermissions_updateUserPermissions_result_scopeGrants
  >
  get copyWith =>
      CopyWith_Mutation_updateUserPermissions_updateUserPermissions_result_scopeGrants(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Mutation_updateUserPermissions_updateUserPermissions_result_scopeGrants<
  TRes
> {
  factory CopyWith_Mutation_updateUserPermissions_updateUserPermissions_result_scopeGrants(
    Mutation_updateUserPermissions_updateUserPermissions_result_scopeGrants
    instance,
    TRes Function(
      Mutation_updateUserPermissions_updateUserPermissions_result_scopeGrants,
    )
    then,
  ) = _CopyWithImpl_Mutation_updateUserPermissions_updateUserPermissions_result_scopeGrants;

  factory CopyWith_Mutation_updateUserPermissions_updateUserPermissions_result_scopeGrants.stub(
    TRes res,
  ) = _CopyWithStubImpl_Mutation_updateUserPermissions_updateUserPermissions_result_scopeGrants;

  TRes call({
    String? id,
    String? permissionId,
    Fragment_Area? area,
    Fragment_UserScopeService? service,
    Fragment_StudyYear? studyYear,
    String? $__typename,
  });
  CopyWith_Fragment_Area<TRes> get area;
  CopyWith_Fragment_UserScopeService<TRes> get service;
  CopyWith_Fragment_StudyYear<TRes> get studyYear;
}

class _CopyWithImpl_Mutation_updateUserPermissions_updateUserPermissions_result_scopeGrants<
  TRes
>
    implements
        CopyWith_Mutation_updateUserPermissions_updateUserPermissions_result_scopeGrants<
          TRes
        > {
  _CopyWithImpl_Mutation_updateUserPermissions_updateUserPermissions_result_scopeGrants(
    this._instance,
    this._then,
  );

  final Mutation_updateUserPermissions_updateUserPermissions_result_scopeGrants
  _instance;

  final TRes Function(
    Mutation_updateUserPermissions_updateUserPermissions_result_scopeGrants,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? permissionId = _undefined,
    Object? area = _undefined,
    Object? service = _undefined,
    Object? studyYear = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_updateUserPermissions_updateUserPermissions_result_scopeGrants(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      permissionId: permissionId == _undefined || permissionId == null
          ? _instance.permissionId
          : (permissionId as String),
      area: area == _undefined ? _instance.area : (area as Fragment_Area?),
      service: service == _undefined
          ? _instance.service
          : (service as Fragment_UserScopeService?),
      studyYear: studyYear == _undefined
          ? _instance.studyYear
          : (studyYear as Fragment_StudyYear?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_Area<TRes> get area {
    final local$area = _instance.area;
    return local$area == null
        ? CopyWith_Fragment_Area.stub(_then(_instance))
        : CopyWith_Fragment_Area(local$area, (e) => call(area: e));
  }

  CopyWith_Fragment_UserScopeService<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith_Fragment_UserScopeService.stub(_then(_instance))
        : CopyWith_Fragment_UserScopeService(
            local$service,
            (e) => call(service: e),
          );
  }

  CopyWith_Fragment_StudyYear<TRes> get studyYear {
    final local$studyYear = _instance.studyYear;
    return local$studyYear == null
        ? CopyWith_Fragment_StudyYear.stub(_then(_instance))
        : CopyWith_Fragment_StudyYear(
            local$studyYear,
            (e) => call(studyYear: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_updateUserPermissions_updateUserPermissions_result_scopeGrants<
  TRes
>
    implements
        CopyWith_Mutation_updateUserPermissions_updateUserPermissions_result_scopeGrants<
          TRes
        > {
  _CopyWithStubImpl_Mutation_updateUserPermissions_updateUserPermissions_result_scopeGrants(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    String? permissionId,
    Fragment_Area? area,
    Fragment_UserScopeService? service,
    Fragment_StudyYear? studyYear,
    String? $__typename,
  }) => _res;

  CopyWith_Fragment_Area<TRes> get area => CopyWith_Fragment_Area.stub(_res);

  CopyWith_Fragment_UserScopeService<TRes> get service =>
      CopyWith_Fragment_UserScopeService.stub(_res);

  CopyWith_Fragment_StudyYear<TRes> get studyYear =>
      CopyWith_Fragment_StudyYear.stub(_res);
}

class Variables_Mutation_approveUser {
  factory Variables_Mutation_approveUser({required String id}) =>
      Variables_Mutation_approveUser._({r'id': id});

  Variables_Mutation_approveUser._(this._$data);

  factory Variables_Mutation_approveUser.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables_Mutation_approveUser._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
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
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith_Variables_Mutation_approveUser<TRes> {
  factory CopyWith_Variables_Mutation_approveUser(
    Variables_Mutation_approveUser instance,
    TRes Function(Variables_Mutation_approveUser) then,
  ) = _CopyWithImpl_Variables_Mutation_approveUser;

  factory CopyWith_Variables_Mutation_approveUser.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_approveUser;

  TRes call({String? id});
}

class _CopyWithImpl_Variables_Mutation_approveUser<TRes>
    implements CopyWith_Variables_Mutation_approveUser<TRes> {
  _CopyWithImpl_Variables_Mutation_approveUser(this._instance, this._then);

  final Variables_Mutation_approveUser _instance;

  final TRes Function(Variables_Mutation_approveUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables_Mutation_approveUser._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_approveUser<TRes>
    implements CopyWith_Variables_Mutation_approveUser<TRes> {
  _CopyWithStubImpl_Variables_Mutation_approveUser(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Mutation_approveUser {
  Mutation_approveUser({
    this.approveUser,
    this.$__typename = 'RootMutationType',
  });

  factory Mutation_approveUser.fromJson(Map<String, dynamic> json) {
    final l$approveUser = json['approveUser'];
    final l$$__typename = json['__typename'];
    return Mutation_approveUser(
      approveUser: l$approveUser == null
          ? null
          : Mutation_approveUser_approveUser.fromJson(
              (l$approveUser as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_approveUser_approveUser? approveUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$approveUser = approveUser;
    _resultData['approveUser'] = l$approveUser?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$approveUser = approveUser;
    final l$$__typename = $__typename;
    return Object.hashAll([l$approveUser, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_approveUser || runtimeType != other.runtimeType) {
      return false;
    }
    final l$approveUser = approveUser;
    final lOther$approveUser = other.approveUser;
    if (l$approveUser != lOther$approveUser) {
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
    Mutation_approveUser_approveUser? approveUser,
    String? $__typename,
  });
  CopyWith_Mutation_approveUser_approveUser<TRes> get approveUser;
}

class _CopyWithImpl_Mutation_approveUser<TRes>
    implements CopyWith_Mutation_approveUser<TRes> {
  _CopyWithImpl_Mutation_approveUser(this._instance, this._then);

  final Mutation_approveUser _instance;

  final TRes Function(Mutation_approveUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? approveUser = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_approveUser(
      approveUser: approveUser == _undefined
          ? _instance.approveUser
          : (approveUser as Mutation_approveUser_approveUser?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_approveUser_approveUser<TRes> get approveUser {
    final local$approveUser = _instance.approveUser;
    return local$approveUser == null
        ? CopyWith_Mutation_approveUser_approveUser.stub(_then(_instance))
        : CopyWith_Mutation_approveUser_approveUser(
            local$approveUser,
            (e) => call(approveUser: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_approveUser<TRes>
    implements CopyWith_Mutation_approveUser<TRes> {
  _CopyWithStubImpl_Mutation_approveUser(this._res);

  TRes _res;

  call({Mutation_approveUser_approveUser? approveUser, String? $__typename}) =>
      _res;

  CopyWith_Mutation_approveUser_approveUser<TRes> get approveUser =>
      CopyWith_Mutation_approveUser_approveUser.stub(_res);
}

const documentNodeMutationapproveUser = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'approveUser'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'id')),
          type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'approveUser'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'id')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'result'),
                  alias: null,
                  arguments: [],
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
                        name: NameNode(value: 'permissions'),
                        alias: null,
                        arguments: [],
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

class Mutation_approveUser_approveUser {
  Mutation_approveUser_approveUser({
    this.result,
    this.$__typename = 'ApproveUserResult',
  });

  factory Mutation_approveUser_approveUser.fromJson(Map<String, dynamic> json) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_approveUser_approveUser(
      result: l$result == null
          ? null
          : Mutation_approveUser_approveUser_result.fromJson(
              (l$result as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_approveUser_approveUser_result? result;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$result = result;
    _resultData['result'] = l$result?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$result = result;
    final l$$__typename = $__typename;
    return Object.hashAll([l$result, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_approveUser_approveUser ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$result = result;
    final lOther$result = other.result;
    if (l$result != lOther$result) {
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

extension UtilityExtension_Mutation_approveUser_approveUser
    on Mutation_approveUser_approveUser {
  CopyWith_Mutation_approveUser_approveUser<Mutation_approveUser_approveUser>
  get copyWith => CopyWith_Mutation_approveUser_approveUser(this, (i) => i);
}

abstract class CopyWith_Mutation_approveUser_approveUser<TRes> {
  factory CopyWith_Mutation_approveUser_approveUser(
    Mutation_approveUser_approveUser instance,
    TRes Function(Mutation_approveUser_approveUser) then,
  ) = _CopyWithImpl_Mutation_approveUser_approveUser;

  factory CopyWith_Mutation_approveUser_approveUser.stub(TRes res) =
      _CopyWithStubImpl_Mutation_approveUser_approveUser;

  TRes call({
    Mutation_approveUser_approveUser_result? result,
    String? $__typename,
  });
  CopyWith_Mutation_approveUser_approveUser_result<TRes> get result;
}

class _CopyWithImpl_Mutation_approveUser_approveUser<TRes>
    implements CopyWith_Mutation_approveUser_approveUser<TRes> {
  _CopyWithImpl_Mutation_approveUser_approveUser(this._instance, this._then);

  final Mutation_approveUser_approveUser _instance;

  final TRes Function(Mutation_approveUser_approveUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? result = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_approveUser_approveUser(
          result: result == _undefined
              ? _instance.result
              : (result as Mutation_approveUser_approveUser_result?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Mutation_approveUser_approveUser_result<TRes> get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Mutation_approveUser_approveUser_result.stub(
            _then(_instance),
          )
        : CopyWith_Mutation_approveUser_approveUser_result(
            local$result,
            (e) => call(result: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_approveUser_approveUser<TRes>
    implements CopyWith_Mutation_approveUser_approveUser<TRes> {
  _CopyWithStubImpl_Mutation_approveUser_approveUser(this._res);

  TRes _res;

  call({
    Mutation_approveUser_approveUser_result? result,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_approveUser_approveUser_result<TRes> get result =>
      CopyWith_Mutation_approveUser_approveUser_result.stub(_res);
}

class Mutation_approveUser_approveUser_result {
  Mutation_approveUser_approveUser_result({
    required this.id,
    required this.permissions,
    this.$__typename = 'User',
  });

  factory Mutation_approveUser_approveUser_result.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$permissions = json['permissions'];
    final l$$__typename = json['__typename'];
    return Mutation_approveUser_approveUser_result(
      id: (l$id as String),
      permissions: (l$permissions as List<dynamic>)
          .map(
            (e) => Mutation_approveUser_approveUser_result_permissions.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final List<Mutation_approveUser_approveUser_result_permissions> permissions;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$permissions = permissions;
    _resultData['permissions'] = l$permissions.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$permissions = permissions;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      Object.hashAll(l$permissions.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_approveUser_approveUser_result ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension_Mutation_approveUser_approveUser_result
    on Mutation_approveUser_approveUser_result {
  CopyWith_Mutation_approveUser_approveUser_result<
    Mutation_approveUser_approveUser_result
  >
  get copyWith =>
      CopyWith_Mutation_approveUser_approveUser_result(this, (i) => i);
}

abstract class CopyWith_Mutation_approveUser_approveUser_result<TRes> {
  factory CopyWith_Mutation_approveUser_approveUser_result(
    Mutation_approveUser_approveUser_result instance,
    TRes Function(Mutation_approveUser_approveUser_result) then,
  ) = _CopyWithImpl_Mutation_approveUser_approveUser_result;

  factory CopyWith_Mutation_approveUser_approveUser_result.stub(TRes res) =
      _CopyWithStubImpl_Mutation_approveUser_approveUser_result;

  TRes call({
    String? id,
    List<Mutation_approveUser_approveUser_result_permissions>? permissions,
    String? $__typename,
  });
  TRes permissions(
    Iterable<Mutation_approveUser_approveUser_result_permissions> Function(
      Iterable<
        CopyWith_Mutation_approveUser_approveUser_result_permissions<
          Mutation_approveUser_approveUser_result_permissions
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl_Mutation_approveUser_approveUser_result<TRes>
    implements CopyWith_Mutation_approveUser_approveUser_result<TRes> {
  _CopyWithImpl_Mutation_approveUser_approveUser_result(
    this._instance,
    this._then,
  );

  final Mutation_approveUser_approveUser_result _instance;

  final TRes Function(Mutation_approveUser_approveUser_result) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? permissions = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_approveUser_approveUser_result(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      permissions: permissions == _undefined || permissions == null
          ? _instance.permissions
          : (permissions
                as List<Mutation_approveUser_approveUser_result_permissions>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes permissions(
    Iterable<Mutation_approveUser_approveUser_result_permissions> Function(
      Iterable<
        CopyWith_Mutation_approveUser_approveUser_result_permissions<
          Mutation_approveUser_approveUser_result_permissions
        >
      >,
    )
    _fn,
  ) => call(
    permissions: _fn(
      _instance.permissions.map(
        (e) => CopyWith_Mutation_approveUser_approveUser_result_permissions(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl_Mutation_approveUser_approveUser_result<TRes>
    implements CopyWith_Mutation_approveUser_approveUser_result<TRes> {
  _CopyWithStubImpl_Mutation_approveUser_approveUser_result(this._res);

  TRes _res;

  call({
    String? id,
    List<Mutation_approveUser_approveUser_result_permissions>? permissions,
    String? $__typename,
  }) => _res;

  permissions(_fn) => _res;
}

class Mutation_approveUser_approveUser_result_permissions {
  Mutation_approveUser_approveUser_result_permissions({
    required this.id,
    required this.permission,
    this.$__typename = 'UserPermission',
  });

  factory Mutation_approveUser_approveUser_result_permissions.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$permission = json['permission'];
    final l$$__typename = json['__typename'];
    return Mutation_approveUser_approveUser_result_permissions(
      id: (l$id as String),
      permission: (l$permission as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String permission;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$permission = permission;
    _resultData['permission'] = l$permission;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$permission = permission;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$permission, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_approveUser_approveUser_result_permissions ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension_Mutation_approveUser_approveUser_result_permissions
    on Mutation_approveUser_approveUser_result_permissions {
  CopyWith_Mutation_approveUser_approveUser_result_permissions<
    Mutation_approveUser_approveUser_result_permissions
  >
  get copyWith => CopyWith_Mutation_approveUser_approveUser_result_permissions(
    this,
    (i) => i,
  );
}

abstract class CopyWith_Mutation_approveUser_approveUser_result_permissions<
  TRes
> {
  factory CopyWith_Mutation_approveUser_approveUser_result_permissions(
    Mutation_approveUser_approveUser_result_permissions instance,
    TRes Function(Mutation_approveUser_approveUser_result_permissions) then,
  ) = _CopyWithImpl_Mutation_approveUser_approveUser_result_permissions;

  factory CopyWith_Mutation_approveUser_approveUser_result_permissions.stub(
    TRes res,
  ) = _CopyWithStubImpl_Mutation_approveUser_approveUser_result_permissions;

  TRes call({String? id, String? permission, String? $__typename});
}

class _CopyWithImpl_Mutation_approveUser_approveUser_result_permissions<TRes>
    implements
        CopyWith_Mutation_approveUser_approveUser_result_permissions<TRes> {
  _CopyWithImpl_Mutation_approveUser_approveUser_result_permissions(
    this._instance,
    this._then,
  );

  final Mutation_approveUser_approveUser_result_permissions _instance;

  final TRes Function(Mutation_approveUser_approveUser_result_permissions)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? permission = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_approveUser_approveUser_result_permissions(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      permission: permission == _undefined || permission == null
          ? _instance.permission
          : (permission as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Mutation_approveUser_approveUser_result_permissions<
  TRes
>
    implements
        CopyWith_Mutation_approveUser_approveUser_result_permissions<TRes> {
  _CopyWithStubImpl_Mutation_approveUser_approveUser_result_permissions(
    this._res,
  );

  TRes _res;

  call({String? id, String? permission, String? $__typename}) => _res;
}

class Variables_Mutation_unapproveUser {
  factory Variables_Mutation_unapproveUser({required String id}) =>
      Variables_Mutation_unapproveUser._({r'id': id});

  Variables_Mutation_unapproveUser._(this._$data);

  factory Variables_Mutation_unapproveUser.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables_Mutation_unapproveUser._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
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
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith_Variables_Mutation_unapproveUser<TRes> {
  factory CopyWith_Variables_Mutation_unapproveUser(
    Variables_Mutation_unapproveUser instance,
    TRes Function(Variables_Mutation_unapproveUser) then,
  ) = _CopyWithImpl_Variables_Mutation_unapproveUser;

  factory CopyWith_Variables_Mutation_unapproveUser.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_unapproveUser;

  TRes call({String? id});
}

class _CopyWithImpl_Variables_Mutation_unapproveUser<TRes>
    implements CopyWith_Variables_Mutation_unapproveUser<TRes> {
  _CopyWithImpl_Variables_Mutation_unapproveUser(this._instance, this._then);

  final Variables_Mutation_unapproveUser _instance;

  final TRes Function(Variables_Mutation_unapproveUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables_Mutation_unapproveUser._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_unapproveUser<TRes>
    implements CopyWith_Variables_Mutation_unapproveUser<TRes> {
  _CopyWithStubImpl_Variables_Mutation_unapproveUser(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Mutation_unapproveUser {
  Mutation_unapproveUser({
    this.unapproveUser,
    this.$__typename = 'RootMutationType',
  });

  factory Mutation_unapproveUser.fromJson(Map<String, dynamic> json) {
    final l$unapproveUser = json['unapproveUser'];
    final l$$__typename = json['__typename'];
    return Mutation_unapproveUser(
      unapproveUser: l$unapproveUser == null
          ? null
          : Mutation_unapproveUser_unapproveUser.fromJson(
              (l$unapproveUser as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_unapproveUser_unapproveUser? unapproveUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$unapproveUser = unapproveUser;
    _resultData['unapproveUser'] = l$unapproveUser?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$unapproveUser = unapproveUser;
    final l$$__typename = $__typename;
    return Object.hashAll([l$unapproveUser, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_unapproveUser || runtimeType != other.runtimeType) {
      return false;
    }
    final l$unapproveUser = unapproveUser;
    final lOther$unapproveUser = other.unapproveUser;
    if (l$unapproveUser != lOther$unapproveUser) {
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
    Mutation_unapproveUser_unapproveUser? unapproveUser,
    String? $__typename,
  });
  CopyWith_Mutation_unapproveUser_unapproveUser<TRes> get unapproveUser;
}

class _CopyWithImpl_Mutation_unapproveUser<TRes>
    implements CopyWith_Mutation_unapproveUser<TRes> {
  _CopyWithImpl_Mutation_unapproveUser(this._instance, this._then);

  final Mutation_unapproveUser _instance;

  final TRes Function(Mutation_unapproveUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? unapproveUser = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_unapproveUser(
      unapproveUser: unapproveUser == _undefined
          ? _instance.unapproveUser
          : (unapproveUser as Mutation_unapproveUser_unapproveUser?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_unapproveUser_unapproveUser<TRes> get unapproveUser {
    final local$unapproveUser = _instance.unapproveUser;
    return local$unapproveUser == null
        ? CopyWith_Mutation_unapproveUser_unapproveUser.stub(_then(_instance))
        : CopyWith_Mutation_unapproveUser_unapproveUser(
            local$unapproveUser,
            (e) => call(unapproveUser: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_unapproveUser<TRes>
    implements CopyWith_Mutation_unapproveUser<TRes> {
  _CopyWithStubImpl_Mutation_unapproveUser(this._res);

  TRes _res;

  call({
    Mutation_unapproveUser_unapproveUser? unapproveUser,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_unapproveUser_unapproveUser<TRes> get unapproveUser =>
      CopyWith_Mutation_unapproveUser_unapproveUser.stub(_res);
}

const documentNodeMutationunapproveUser = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'unapproveUser'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'id')),
          type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'unapproveUser'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'id')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'result'),
                  alias: null,
                  arguments: [],
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
                        name: NameNode(value: 'permissions'),
                        alias: null,
                        arguments: [],
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

class Mutation_unapproveUser_unapproveUser {
  Mutation_unapproveUser_unapproveUser({
    this.result,
    this.$__typename = 'UnapproveUserResult',
  });

  factory Mutation_unapproveUser_unapproveUser.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_unapproveUser_unapproveUser(
      result: l$result == null
          ? null
          : Mutation_unapproveUser_unapproveUser_result.fromJson(
              (l$result as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_unapproveUser_unapproveUser_result? result;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$result = result;
    _resultData['result'] = l$result?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$result = result;
    final l$$__typename = $__typename;
    return Object.hashAll([l$result, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_unapproveUser_unapproveUser ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$result = result;
    final lOther$result = other.result;
    if (l$result != lOther$result) {
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

extension UtilityExtension_Mutation_unapproveUser_unapproveUser
    on Mutation_unapproveUser_unapproveUser {
  CopyWith_Mutation_unapproveUser_unapproveUser<
    Mutation_unapproveUser_unapproveUser
  >
  get copyWith => CopyWith_Mutation_unapproveUser_unapproveUser(this, (i) => i);
}

abstract class CopyWith_Mutation_unapproveUser_unapproveUser<TRes> {
  factory CopyWith_Mutation_unapproveUser_unapproveUser(
    Mutation_unapproveUser_unapproveUser instance,
    TRes Function(Mutation_unapproveUser_unapproveUser) then,
  ) = _CopyWithImpl_Mutation_unapproveUser_unapproveUser;

  factory CopyWith_Mutation_unapproveUser_unapproveUser.stub(TRes res) =
      _CopyWithStubImpl_Mutation_unapproveUser_unapproveUser;

  TRes call({
    Mutation_unapproveUser_unapproveUser_result? result,
    String? $__typename,
  });
  CopyWith_Mutation_unapproveUser_unapproveUser_result<TRes> get result;
}

class _CopyWithImpl_Mutation_unapproveUser_unapproveUser<TRes>
    implements CopyWith_Mutation_unapproveUser_unapproveUser<TRes> {
  _CopyWithImpl_Mutation_unapproveUser_unapproveUser(
    this._instance,
    this._then,
  );

  final Mutation_unapproveUser_unapproveUser _instance;

  final TRes Function(Mutation_unapproveUser_unapproveUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? result = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_unapproveUser_unapproveUser(
          result: result == _undefined
              ? _instance.result
              : (result as Mutation_unapproveUser_unapproveUser_result?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Mutation_unapproveUser_unapproveUser_result<TRes> get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Mutation_unapproveUser_unapproveUser_result.stub(
            _then(_instance),
          )
        : CopyWith_Mutation_unapproveUser_unapproveUser_result(
            local$result,
            (e) => call(result: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_unapproveUser_unapproveUser<TRes>
    implements CopyWith_Mutation_unapproveUser_unapproveUser<TRes> {
  _CopyWithStubImpl_Mutation_unapproveUser_unapproveUser(this._res);

  TRes _res;

  call({
    Mutation_unapproveUser_unapproveUser_result? result,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_unapproveUser_unapproveUser_result<TRes> get result =>
      CopyWith_Mutation_unapproveUser_unapproveUser_result.stub(_res);
}

class Mutation_unapproveUser_unapproveUser_result {
  Mutation_unapproveUser_unapproveUser_result({
    required this.id,
    required this.permissions,
    this.$__typename = 'User',
  });

  factory Mutation_unapproveUser_unapproveUser_result.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$permissions = json['permissions'];
    final l$$__typename = json['__typename'];
    return Mutation_unapproveUser_unapproveUser_result(
      id: (l$id as String),
      permissions: (l$permissions as List<dynamic>)
          .map(
            (e) =>
                Mutation_unapproveUser_unapproveUser_result_permissions.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final List<Mutation_unapproveUser_unapproveUser_result_permissions>
  permissions;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$permissions = permissions;
    _resultData['permissions'] = l$permissions.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$permissions = permissions;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      Object.hashAll(l$permissions.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_unapproveUser_unapproveUser_result ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension_Mutation_unapproveUser_unapproveUser_result
    on Mutation_unapproveUser_unapproveUser_result {
  CopyWith_Mutation_unapproveUser_unapproveUser_result<
    Mutation_unapproveUser_unapproveUser_result
  >
  get copyWith =>
      CopyWith_Mutation_unapproveUser_unapproveUser_result(this, (i) => i);
}

abstract class CopyWith_Mutation_unapproveUser_unapproveUser_result<TRes> {
  factory CopyWith_Mutation_unapproveUser_unapproveUser_result(
    Mutation_unapproveUser_unapproveUser_result instance,
    TRes Function(Mutation_unapproveUser_unapproveUser_result) then,
  ) = _CopyWithImpl_Mutation_unapproveUser_unapproveUser_result;

  factory CopyWith_Mutation_unapproveUser_unapproveUser_result.stub(TRes res) =
      _CopyWithStubImpl_Mutation_unapproveUser_unapproveUser_result;

  TRes call({
    String? id,
    List<Mutation_unapproveUser_unapproveUser_result_permissions>? permissions,
    String? $__typename,
  });
  TRes permissions(
    Iterable<Mutation_unapproveUser_unapproveUser_result_permissions> Function(
      Iterable<
        CopyWith_Mutation_unapproveUser_unapproveUser_result_permissions<
          Mutation_unapproveUser_unapproveUser_result_permissions
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl_Mutation_unapproveUser_unapproveUser_result<TRes>
    implements CopyWith_Mutation_unapproveUser_unapproveUser_result<TRes> {
  _CopyWithImpl_Mutation_unapproveUser_unapproveUser_result(
    this._instance,
    this._then,
  );

  final Mutation_unapproveUser_unapproveUser_result _instance;

  final TRes Function(Mutation_unapproveUser_unapproveUser_result) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? permissions = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_unapproveUser_unapproveUser_result(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      permissions: permissions == _undefined || permissions == null
          ? _instance.permissions
          : (permissions
                as List<
                  Mutation_unapproveUser_unapproveUser_result_permissions
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes permissions(
    Iterable<Mutation_unapproveUser_unapproveUser_result_permissions> Function(
      Iterable<
        CopyWith_Mutation_unapproveUser_unapproveUser_result_permissions<
          Mutation_unapproveUser_unapproveUser_result_permissions
        >
      >,
    )
    _fn,
  ) => call(
    permissions: _fn(
      _instance.permissions.map(
        (e) => CopyWith_Mutation_unapproveUser_unapproveUser_result_permissions(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl_Mutation_unapproveUser_unapproveUser_result<TRes>
    implements CopyWith_Mutation_unapproveUser_unapproveUser_result<TRes> {
  _CopyWithStubImpl_Mutation_unapproveUser_unapproveUser_result(this._res);

  TRes _res;

  call({
    String? id,
    List<Mutation_unapproveUser_unapproveUser_result_permissions>? permissions,
    String? $__typename,
  }) => _res;

  permissions(_fn) => _res;
}

class Mutation_unapproveUser_unapproveUser_result_permissions {
  Mutation_unapproveUser_unapproveUser_result_permissions({
    required this.id,
    required this.permission,
    this.$__typename = 'UserPermission',
  });

  factory Mutation_unapproveUser_unapproveUser_result_permissions.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$permission = json['permission'];
    final l$$__typename = json['__typename'];
    return Mutation_unapproveUser_unapproveUser_result_permissions(
      id: (l$id as String),
      permission: (l$permission as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String permission;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$permission = permission;
    _resultData['permission'] = l$permission;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$permission = permission;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$permission, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_unapproveUser_unapproveUser_result_permissions ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension_Mutation_unapproveUser_unapproveUser_result_permissions
    on Mutation_unapproveUser_unapproveUser_result_permissions {
  CopyWith_Mutation_unapproveUser_unapproveUser_result_permissions<
    Mutation_unapproveUser_unapproveUser_result_permissions
  >
  get copyWith =>
      CopyWith_Mutation_unapproveUser_unapproveUser_result_permissions(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Mutation_unapproveUser_unapproveUser_result_permissions<
  TRes
> {
  factory CopyWith_Mutation_unapproveUser_unapproveUser_result_permissions(
    Mutation_unapproveUser_unapproveUser_result_permissions instance,
    TRes Function(Mutation_unapproveUser_unapproveUser_result_permissions) then,
  ) = _CopyWithImpl_Mutation_unapproveUser_unapproveUser_result_permissions;

  factory CopyWith_Mutation_unapproveUser_unapproveUser_result_permissions.stub(
    TRes res,
  ) = _CopyWithStubImpl_Mutation_unapproveUser_unapproveUser_result_permissions;

  TRes call({String? id, String? permission, String? $__typename});
}

class _CopyWithImpl_Mutation_unapproveUser_unapproveUser_result_permissions<
  TRes
>
    implements
        CopyWith_Mutation_unapproveUser_unapproveUser_result_permissions<TRes> {
  _CopyWithImpl_Mutation_unapproveUser_unapproveUser_result_permissions(
    this._instance,
    this._then,
  );

  final Mutation_unapproveUser_unapproveUser_result_permissions _instance;

  final TRes Function(Mutation_unapproveUser_unapproveUser_result_permissions)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? permission = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_unapproveUser_unapproveUser_result_permissions(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      permission: permission == _undefined || permission == null
          ? _instance.permission
          : (permission as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Mutation_unapproveUser_unapproveUser_result_permissions<
  TRes
>
    implements
        CopyWith_Mutation_unapproveUser_unapproveUser_result_permissions<TRes> {
  _CopyWithStubImpl_Mutation_unapproveUser_unapproveUser_result_permissions(
    this._res,
  );

  TRes _res;

  call({String? id, String? permission, String? $__typename}) => _res;
}
