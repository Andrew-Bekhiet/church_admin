import '../../../../../graphql/__generated__/schema.graphql.dart';
import 'fragments.gql.dart';
import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Mutation_deleteGroup {
  factory Variables_Mutation_deleteGroup({required UuidValue groupId}) =>
      Variables_Mutation_deleteGroup._({r'groupId': groupId});

  Variables_Mutation_deleteGroup._(this._$data);

  factory Variables_Mutation_deleteGroup.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$groupId = data['groupId'];
    result$data['groupId'] = stringToUuid(l$groupId);
    return Variables_Mutation_deleteGroup._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get groupId => (_$data['groupId'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$groupId = groupId;
    result$data['groupId'] = uuidToString(l$groupId);
    return result$data;
  }

  CopyWith_Variables_Mutation_deleteGroup<Variables_Mutation_deleteGroup>
  get copyWith => CopyWith_Variables_Mutation_deleteGroup(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_deleteGroup ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$groupId = groupId;
    final lOther$groupId = other.groupId;
    if (l$groupId != lOther$groupId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$groupId = groupId;
    return Object.hashAll([l$groupId]);
  }
}

abstract class CopyWith_Variables_Mutation_deleteGroup<TRes> {
  factory CopyWith_Variables_Mutation_deleteGroup(
    Variables_Mutation_deleteGroup instance,
    TRes Function(Variables_Mutation_deleteGroup) then,
  ) = _CopyWithImpl_Variables_Mutation_deleteGroup;

  factory CopyWith_Variables_Mutation_deleteGroup.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_deleteGroup;

  TRes call({UuidValue? groupId});
}

class _CopyWithImpl_Variables_Mutation_deleteGroup<TRes>
    implements CopyWith_Variables_Mutation_deleteGroup<TRes> {
  _CopyWithImpl_Variables_Mutation_deleteGroup(this._instance, this._then);

  final Variables_Mutation_deleteGroup _instance;

  final TRes Function(Variables_Mutation_deleteGroup) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? groupId = _undefined}) => _then(
    Variables_Mutation_deleteGroup._({
      ..._instance._$data,
      if (groupId != _undefined && groupId != null)
        'groupId': (groupId as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_deleteGroup<TRes>
    implements CopyWith_Variables_Mutation_deleteGroup<TRes> {
  _CopyWithStubImpl_Variables_Mutation_deleteGroup(this._res);

  TRes _res;

  call({UuidValue? groupId}) => _res;
}

class Mutation_deleteGroup {
  Mutation_deleteGroup({this.deleteGroupsByPk});

  factory Mutation_deleteGroup.fromJson(Map<String, dynamic> json) {
    final l$deleteGroupsByPk = json['deleteGroupsByPk'];
    return Mutation_deleteGroup(
      deleteGroupsByPk: l$deleteGroupsByPk == null
          ? null
          : Fragment_Group.fromJson(
              (l$deleteGroupsByPk as Map<String, dynamic>),
            ),
    );
  }

  final Fragment_Group? deleteGroupsByPk;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteGroupsByPk = deleteGroupsByPk;
    _resultData['deleteGroupsByPk'] = l$deleteGroupsByPk?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteGroupsByPk = deleteGroupsByPk;
    return Object.hashAll([l$deleteGroupsByPk]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_deleteGroup || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteGroupsByPk = deleteGroupsByPk;
    final lOther$deleteGroupsByPk = other.deleteGroupsByPk;
    if (l$deleteGroupsByPk != lOther$deleteGroupsByPk) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Mutation_deleteGroup on Mutation_deleteGroup {
  CopyWith_Mutation_deleteGroup<Mutation_deleteGroup> get copyWith =>
      CopyWith_Mutation_deleteGroup(this, (i) => i);
}

abstract class CopyWith_Mutation_deleteGroup<TRes> {
  factory CopyWith_Mutation_deleteGroup(
    Mutation_deleteGroup instance,
    TRes Function(Mutation_deleteGroup) then,
  ) = _CopyWithImpl_Mutation_deleteGroup;

  factory CopyWith_Mutation_deleteGroup.stub(TRes res) =
      _CopyWithStubImpl_Mutation_deleteGroup;

  TRes call({Fragment_Group? deleteGroupsByPk});
  CopyWith_Fragment_Group<TRes> get deleteGroupsByPk;
}

class _CopyWithImpl_Mutation_deleteGroup<TRes>
    implements CopyWith_Mutation_deleteGroup<TRes> {
  _CopyWithImpl_Mutation_deleteGroup(this._instance, this._then);

  final Mutation_deleteGroup _instance;

  final TRes Function(Mutation_deleteGroup) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? deleteGroupsByPk = _undefined}) => _then(
    Mutation_deleteGroup(
      deleteGroupsByPk: deleteGroupsByPk == _undefined
          ? _instance.deleteGroupsByPk
          : (deleteGroupsByPk as Fragment_Group?),
    ),
  );

  CopyWith_Fragment_Group<TRes> get deleteGroupsByPk {
    final local$deleteGroupsByPk = _instance.deleteGroupsByPk;
    return local$deleteGroupsByPk == null
        ? CopyWith_Fragment_Group.stub(_then(_instance))
        : CopyWith_Fragment_Group(
            local$deleteGroupsByPk,
            (e) => call(deleteGroupsByPk: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_deleteGroup<TRes>
    implements CopyWith_Mutation_deleteGroup<TRes> {
  _CopyWithStubImpl_Mutation_deleteGroup(this._res);

  TRes _res;

  call({Fragment_Group? deleteGroupsByPk}) => _res;

  CopyWith_Fragment_Group<TRes> get deleteGroupsByPk =>
      CopyWith_Fragment_Group.stub(_res);
}

const documentNodeMutationdeleteGroup = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'deleteGroup'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'groupId')),
          type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'deleteGroupsByPk'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'groupId')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
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
              ],
            ),
          ),
        ],
      ),
    ),
    fragmentDefinitionGroup,
    fragmentDefinitionGroupNoPhoto,
  ],
);

class Variables_Mutation_insertGroup {
  factory Variables_Mutation_insertGroup({
    required Input_GroupsInsertInput newGroup,
  }) => Variables_Mutation_insertGroup._({r'newGroup': newGroup});

  Variables_Mutation_insertGroup._(this._$data);

  factory Variables_Mutation_insertGroup.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$newGroup = data['newGroup'];
    result$data['newGroup'] = Input_GroupsInsertInput.fromJson(
      (l$newGroup as Map<String, dynamic>),
    );
    return Variables_Mutation_insertGroup._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_GroupsInsertInput get newGroup =>
      (_$data['newGroup'] as Input_GroupsInsertInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$newGroup = newGroup;
    result$data['newGroup'] = l$newGroup.toJson();
    return result$data;
  }

  CopyWith_Variables_Mutation_insertGroup<Variables_Mutation_insertGroup>
  get copyWith => CopyWith_Variables_Mutation_insertGroup(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_insertGroup ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$newGroup = newGroup;
    final lOther$newGroup = other.newGroup;
    if (l$newGroup != lOther$newGroup) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$newGroup = newGroup;
    return Object.hashAll([l$newGroup]);
  }
}

abstract class CopyWith_Variables_Mutation_insertGroup<TRes> {
  factory CopyWith_Variables_Mutation_insertGroup(
    Variables_Mutation_insertGroup instance,
    TRes Function(Variables_Mutation_insertGroup) then,
  ) = _CopyWithImpl_Variables_Mutation_insertGroup;

  factory CopyWith_Variables_Mutation_insertGroup.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_insertGroup;

  TRes call({Input_GroupsInsertInput? newGroup});
}

class _CopyWithImpl_Variables_Mutation_insertGroup<TRes>
    implements CopyWith_Variables_Mutation_insertGroup<TRes> {
  _CopyWithImpl_Variables_Mutation_insertGroup(this._instance, this._then);

  final Variables_Mutation_insertGroup _instance;

  final TRes Function(Variables_Mutation_insertGroup) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? newGroup = _undefined}) => _then(
    Variables_Mutation_insertGroup._({
      ..._instance._$data,
      if (newGroup != _undefined && newGroup != null)
        'newGroup': (newGroup as Input_GroupsInsertInput),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_insertGroup<TRes>
    implements CopyWith_Variables_Mutation_insertGroup<TRes> {
  _CopyWithStubImpl_Variables_Mutation_insertGroup(this._res);

  TRes _res;

  call({Input_GroupsInsertInput? newGroup}) => _res;
}

class Mutation_insertGroup {
  Mutation_insertGroup({this.insertGroupsOne});

  factory Mutation_insertGroup.fromJson(Map<String, dynamic> json) {
    final l$insertGroupsOne = json['insertGroupsOne'];
    return Mutation_insertGroup(
      insertGroupsOne: l$insertGroupsOne == null
          ? null
          : Fragment_Group.fromJson(
              (l$insertGroupsOne as Map<String, dynamic>),
            ),
    );
  }

  final Fragment_Group? insertGroupsOne;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertGroupsOne = insertGroupsOne;
    _resultData['insertGroupsOne'] = l$insertGroupsOne?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertGroupsOne = insertGroupsOne;
    return Object.hashAll([l$insertGroupsOne]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_insertGroup || runtimeType != other.runtimeType) {
      return false;
    }
    final l$insertGroupsOne = insertGroupsOne;
    final lOther$insertGroupsOne = other.insertGroupsOne;
    if (l$insertGroupsOne != lOther$insertGroupsOne) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Mutation_insertGroup on Mutation_insertGroup {
  CopyWith_Mutation_insertGroup<Mutation_insertGroup> get copyWith =>
      CopyWith_Mutation_insertGroup(this, (i) => i);
}

abstract class CopyWith_Mutation_insertGroup<TRes> {
  factory CopyWith_Mutation_insertGroup(
    Mutation_insertGroup instance,
    TRes Function(Mutation_insertGroup) then,
  ) = _CopyWithImpl_Mutation_insertGroup;

  factory CopyWith_Mutation_insertGroup.stub(TRes res) =
      _CopyWithStubImpl_Mutation_insertGroup;

  TRes call({Fragment_Group? insertGroupsOne});
  CopyWith_Fragment_Group<TRes> get insertGroupsOne;
}

class _CopyWithImpl_Mutation_insertGroup<TRes>
    implements CopyWith_Mutation_insertGroup<TRes> {
  _CopyWithImpl_Mutation_insertGroup(this._instance, this._then);

  final Mutation_insertGroup _instance;

  final TRes Function(Mutation_insertGroup) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? insertGroupsOne = _undefined}) => _then(
    Mutation_insertGroup(
      insertGroupsOne: insertGroupsOne == _undefined
          ? _instance.insertGroupsOne
          : (insertGroupsOne as Fragment_Group?),
    ),
  );

  CopyWith_Fragment_Group<TRes> get insertGroupsOne {
    final local$insertGroupsOne = _instance.insertGroupsOne;
    return local$insertGroupsOne == null
        ? CopyWith_Fragment_Group.stub(_then(_instance))
        : CopyWith_Fragment_Group(
            local$insertGroupsOne,
            (e) => call(insertGroupsOne: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_insertGroup<TRes>
    implements CopyWith_Mutation_insertGroup<TRes> {
  _CopyWithStubImpl_Mutation_insertGroup(this._res);

  TRes _res;

  call({Fragment_Group? insertGroupsOne}) => _res;

  CopyWith_Fragment_Group<TRes> get insertGroupsOne =>
      CopyWith_Fragment_Group.stub(_res);
}

const documentNodeMutationinsertGroup = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'insertGroup'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'newGroup')),
          type: NamedTypeNode(
            name: NameNode(value: 'GroupsInsertInput'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'insertGroupsOne'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'object'),
                value: VariableNode(name: NameNode(value: 'newGroup')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
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
              ],
            ),
          ),
        ],
      ),
    ),
    fragmentDefinitionGroup,
    fragmentDefinitionGroupNoPhoto,
  ],
);

class Variables_Mutation_updateGroup {
  factory Variables_Mutation_updateGroup({
    required UuidValue groupId,
    required Input_GroupsSetInput newGroup,
  }) => Variables_Mutation_updateGroup._({
    r'groupId': groupId,
    r'newGroup': newGroup,
  });

  Variables_Mutation_updateGroup._(this._$data);

  factory Variables_Mutation_updateGroup.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$groupId = data['groupId'];
    result$data['groupId'] = stringToUuid(l$groupId);
    final l$newGroup = data['newGroup'];
    result$data['newGroup'] = Input_GroupsSetInput.fromJson(
      (l$newGroup as Map<String, dynamic>),
    );
    return Variables_Mutation_updateGroup._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get groupId => (_$data['groupId'] as UuidValue);

  Input_GroupsSetInput get newGroup =>
      (_$data['newGroup'] as Input_GroupsSetInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$groupId = groupId;
    result$data['groupId'] = uuidToString(l$groupId);
    final l$newGroup = newGroup;
    result$data['newGroup'] = l$newGroup.toJson();
    return result$data;
  }

  CopyWith_Variables_Mutation_updateGroup<Variables_Mutation_updateGroup>
  get copyWith => CopyWith_Variables_Mutation_updateGroup(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_updateGroup ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$groupId = groupId;
    final lOther$groupId = other.groupId;
    if (l$groupId != lOther$groupId) {
      return false;
    }
    final l$newGroup = newGroup;
    final lOther$newGroup = other.newGroup;
    if (l$newGroup != lOther$newGroup) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$groupId = groupId;
    final l$newGroup = newGroup;
    return Object.hashAll([l$groupId, l$newGroup]);
  }
}

abstract class CopyWith_Variables_Mutation_updateGroup<TRes> {
  factory CopyWith_Variables_Mutation_updateGroup(
    Variables_Mutation_updateGroup instance,
    TRes Function(Variables_Mutation_updateGroup) then,
  ) = _CopyWithImpl_Variables_Mutation_updateGroup;

  factory CopyWith_Variables_Mutation_updateGroup.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_updateGroup;

  TRes call({UuidValue? groupId, Input_GroupsSetInput? newGroup});
}

class _CopyWithImpl_Variables_Mutation_updateGroup<TRes>
    implements CopyWith_Variables_Mutation_updateGroup<TRes> {
  _CopyWithImpl_Variables_Mutation_updateGroup(this._instance, this._then);

  final Variables_Mutation_updateGroup _instance;

  final TRes Function(Variables_Mutation_updateGroup) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? groupId = _undefined, Object? newGroup = _undefined}) =>
      _then(
        Variables_Mutation_updateGroup._({
          ..._instance._$data,
          if (groupId != _undefined && groupId != null)
            'groupId': (groupId as UuidValue),
          if (newGroup != _undefined && newGroup != null)
            'newGroup': (newGroup as Input_GroupsSetInput),
        }),
      );
}

class _CopyWithStubImpl_Variables_Mutation_updateGroup<TRes>
    implements CopyWith_Variables_Mutation_updateGroup<TRes> {
  _CopyWithStubImpl_Variables_Mutation_updateGroup(this._res);

  TRes _res;

  call({UuidValue? groupId, Input_GroupsSetInput? newGroup}) => _res;
}

class Mutation_updateGroup {
  Mutation_updateGroup({this.updateGroupsByPk});

  factory Mutation_updateGroup.fromJson(Map<String, dynamic> json) {
    final l$updateGroupsByPk = json['updateGroupsByPk'];
    return Mutation_updateGroup(
      updateGroupsByPk: l$updateGroupsByPk == null
          ? null
          : Fragment_Group.fromJson(
              (l$updateGroupsByPk as Map<String, dynamic>),
            ),
    );
  }

  final Fragment_Group? updateGroupsByPk;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateGroupsByPk = updateGroupsByPk;
    _resultData['updateGroupsByPk'] = l$updateGroupsByPk?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateGroupsByPk = updateGroupsByPk;
    return Object.hashAll([l$updateGroupsByPk]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_updateGroup || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateGroupsByPk = updateGroupsByPk;
    final lOther$updateGroupsByPk = other.updateGroupsByPk;
    if (l$updateGroupsByPk != lOther$updateGroupsByPk) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Mutation_updateGroup on Mutation_updateGroup {
  CopyWith_Mutation_updateGroup<Mutation_updateGroup> get copyWith =>
      CopyWith_Mutation_updateGroup(this, (i) => i);
}

abstract class CopyWith_Mutation_updateGroup<TRes> {
  factory CopyWith_Mutation_updateGroup(
    Mutation_updateGroup instance,
    TRes Function(Mutation_updateGroup) then,
  ) = _CopyWithImpl_Mutation_updateGroup;

  factory CopyWith_Mutation_updateGroup.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updateGroup;

  TRes call({Fragment_Group? updateGroupsByPk});
  CopyWith_Fragment_Group<TRes> get updateGroupsByPk;
}

class _CopyWithImpl_Mutation_updateGroup<TRes>
    implements CopyWith_Mutation_updateGroup<TRes> {
  _CopyWithImpl_Mutation_updateGroup(this._instance, this._then);

  final Mutation_updateGroup _instance;

  final TRes Function(Mutation_updateGroup) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? updateGroupsByPk = _undefined}) => _then(
    Mutation_updateGroup(
      updateGroupsByPk: updateGroupsByPk == _undefined
          ? _instance.updateGroupsByPk
          : (updateGroupsByPk as Fragment_Group?),
    ),
  );

  CopyWith_Fragment_Group<TRes> get updateGroupsByPk {
    final local$updateGroupsByPk = _instance.updateGroupsByPk;
    return local$updateGroupsByPk == null
        ? CopyWith_Fragment_Group.stub(_then(_instance))
        : CopyWith_Fragment_Group(
            local$updateGroupsByPk,
            (e) => call(updateGroupsByPk: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_updateGroup<TRes>
    implements CopyWith_Mutation_updateGroup<TRes> {
  _CopyWithStubImpl_Mutation_updateGroup(this._res);

  TRes _res;

  call({Fragment_Group? updateGroupsByPk}) => _res;

  CopyWith_Fragment_Group<TRes> get updateGroupsByPk =>
      CopyWith_Fragment_Group.stub(_res);
}

const documentNodeMutationupdateGroup = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'updateGroup'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'groupId')),
          type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'newGroup')),
          type: NamedTypeNode(
            name: NameNode(value: 'GroupsSetInput'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'updateGroupsByPk'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'pkColumns'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'id'),
                      value: VariableNode(name: NameNode(value: 'groupId')),
                    ),
                  ],
                ),
              ),
              ArgumentNode(
                name: NameNode(value: '_set'),
                value: VariableNode(name: NameNode(value: 'newGroup')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
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
              ],
            ),
          ),
        ],
      ),
    ),
    fragmentDefinitionGroup,
    fragmentDefinitionGroupNoPhoto,
  ],
);
