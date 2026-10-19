import '../../../../../graphql/__generated__/schema.graphql.dart';
import '../../metadata/study_years/__generated__/fragments.graphql.dart';
import '../../services/__generated__/fragments.graphql.dart';
import 'fragments.graphql.dart';

import 'package:gql/ast.dart';

class Variables_Mutation_createGroup {
  factory Variables_Mutation_createGroup({
    required Input_CreateGroupInput input,
  }) => Variables_Mutation_createGroup._({r'input': input});

  Variables_Mutation_createGroup._(this._$data);

  factory Variables_Mutation_createGroup.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input_CreateGroupInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables_Mutation_createGroup._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_CreateGroupInput get input =>
      (_$data['input'] as Input_CreateGroupInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith_Variables_Mutation_createGroup<Variables_Mutation_createGroup>
  get copyWith => CopyWith_Variables_Mutation_createGroup(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_createGroup ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith_Variables_Mutation_createGroup<TRes> {
  factory CopyWith_Variables_Mutation_createGroup(
    Variables_Mutation_createGroup instance,
    TRes Function(Variables_Mutation_createGroup) then,
  ) = _CopyWithImpl_Variables_Mutation_createGroup;

  factory CopyWith_Variables_Mutation_createGroup.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_createGroup;

  TRes call({Input_CreateGroupInput? input});
}

class _CopyWithImpl_Variables_Mutation_createGroup<TRes>
    implements CopyWith_Variables_Mutation_createGroup<TRes> {
  _CopyWithImpl_Variables_Mutation_createGroup(this._instance, this._then);

  final Variables_Mutation_createGroup _instance;

  final TRes Function(Variables_Mutation_createGroup) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables_Mutation_createGroup._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input_CreateGroupInput),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_createGroup<TRes>
    implements CopyWith_Variables_Mutation_createGroup<TRes> {
  _CopyWithStubImpl_Variables_Mutation_createGroup(this._res);

  TRes _res;

  call({Input_CreateGroupInput? input}) => _res;
}

class Mutation_createGroup {
  Mutation_createGroup({
    this.createGroup,
    this.$__typename = 'RootMutationType',
  });

  factory Mutation_createGroup.fromJson(Map<String, dynamic> json) {
    final l$createGroup = json['createGroup'];
    final l$$__typename = json['__typename'];
    return Mutation_createGroup(
      createGroup: l$createGroup == null
          ? null
          : Mutation_createGroup_createGroup.fromJson(
              (l$createGroup as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_createGroup_createGroup? createGroup;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createGroup = createGroup;
    _resultData['createGroup'] = l$createGroup?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createGroup = createGroup;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createGroup, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_createGroup || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createGroup = createGroup;
    final lOther$createGroup = other.createGroup;
    if (l$createGroup != lOther$createGroup) {
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

extension UtilityExtension_Mutation_createGroup on Mutation_createGroup {
  CopyWith_Mutation_createGroup<Mutation_createGroup> get copyWith =>
      CopyWith_Mutation_createGroup(this, (i) => i);
}

abstract class CopyWith_Mutation_createGroup<TRes> {
  factory CopyWith_Mutation_createGroup(
    Mutation_createGroup instance,
    TRes Function(Mutation_createGroup) then,
  ) = _CopyWithImpl_Mutation_createGroup;

  factory CopyWith_Mutation_createGroup.stub(TRes res) =
      _CopyWithStubImpl_Mutation_createGroup;

  TRes call({
    Mutation_createGroup_createGroup? createGroup,
    String? $__typename,
  });
  CopyWith_Mutation_createGroup_createGroup<TRes> get createGroup;
}

class _CopyWithImpl_Mutation_createGroup<TRes>
    implements CopyWith_Mutation_createGroup<TRes> {
  _CopyWithImpl_Mutation_createGroup(this._instance, this._then);

  final Mutation_createGroup _instance;

  final TRes Function(Mutation_createGroup) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createGroup = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_createGroup(
      createGroup: createGroup == _undefined
          ? _instance.createGroup
          : (createGroup as Mutation_createGroup_createGroup?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_createGroup_createGroup<TRes> get createGroup {
    final local$createGroup = _instance.createGroup;
    return local$createGroup == null
        ? CopyWith_Mutation_createGroup_createGroup.stub(_then(_instance))
        : CopyWith_Mutation_createGroup_createGroup(
            local$createGroup,
            (e) => call(createGroup: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_createGroup<TRes>
    implements CopyWith_Mutation_createGroup<TRes> {
  _CopyWithStubImpl_Mutation_createGroup(this._res);

  TRes _res;

  call({Mutation_createGroup_createGroup? createGroup, String? $__typename}) =>
      _res;

  CopyWith_Mutation_createGroup_createGroup<TRes> get createGroup =>
      CopyWith_Mutation_createGroup_createGroup.stub(_res);
}

const documentNodeMutationcreateGroup = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'createGroup'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'CreateGroupInput'),
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
            name: NameNode(value: 'createGroup'),
            alias: null,
            arguments: [
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
                      FragmentSpreadNode(
                        name: NameNode(value: 'GroupDetails'),
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
    fragmentDefinitionGroupDetails,
    fragmentDefinitionGroup,
    fragmentDefinitionGroupNoPhoto,
    fragmentDefinitionOrgMeeting,
    fragmentDefinitionServiceNoPhoto,
    fragmentDefinitionStudyYear,
    fragmentDefinitionServiceWithStudyYears,
    fragmentDefinitionService,
    fragmentDefinitionOrgLatestEdit,
    fragmentDefinitionOrgUser,
  ],
);

class Mutation_createGroup_createGroup {
  Mutation_createGroup_createGroup({
    this.result,
    this.$__typename = 'CreateGroupResult',
  });

  factory Mutation_createGroup_createGroup.fromJson(Map<String, dynamic> json) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_createGroup_createGroup(
      result: l$result == null
          ? null
          : Fragment_GroupDetails.fromJson((l$result as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_GroupDetails? result;

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
    if (other is! Mutation_createGroup_createGroup ||
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

extension UtilityExtension_Mutation_createGroup_createGroup
    on Mutation_createGroup_createGroup {
  CopyWith_Mutation_createGroup_createGroup<Mutation_createGroup_createGroup>
  get copyWith => CopyWith_Mutation_createGroup_createGroup(this, (i) => i);
}

abstract class CopyWith_Mutation_createGroup_createGroup<TRes> {
  factory CopyWith_Mutation_createGroup_createGroup(
    Mutation_createGroup_createGroup instance,
    TRes Function(Mutation_createGroup_createGroup) then,
  ) = _CopyWithImpl_Mutation_createGroup_createGroup;

  factory CopyWith_Mutation_createGroup_createGroup.stub(TRes res) =
      _CopyWithStubImpl_Mutation_createGroup_createGroup;

  TRes call({Fragment_GroupDetails? result, String? $__typename});
  CopyWith_Fragment_GroupDetails<TRes> get result;
}

class _CopyWithImpl_Mutation_createGroup_createGroup<TRes>
    implements CopyWith_Mutation_createGroup_createGroup<TRes> {
  _CopyWithImpl_Mutation_createGroup_createGroup(this._instance, this._then);

  final Mutation_createGroup_createGroup _instance;

  final TRes Function(Mutation_createGroup_createGroup) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? result = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_createGroup_createGroup(
          result: result == _undefined
              ? _instance.result
              : (result as Fragment_GroupDetails?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_GroupDetails<TRes> get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Fragment_GroupDetails.stub(_then(_instance))
        : CopyWith_Fragment_GroupDetails(local$result, (e) => call(result: e));
  }
}

class _CopyWithStubImpl_Mutation_createGroup_createGroup<TRes>
    implements CopyWith_Mutation_createGroup_createGroup<TRes> {
  _CopyWithStubImpl_Mutation_createGroup_createGroup(this._res);

  TRes _res;

  call({Fragment_GroupDetails? result, String? $__typename}) => _res;

  CopyWith_Fragment_GroupDetails<TRes> get result =>
      CopyWith_Fragment_GroupDetails.stub(_res);
}

class Variables_Mutation_updateGroup {
  factory Variables_Mutation_updateGroup({
    required String id,
    Input_UpdateGroupInput? input,
  }) => Variables_Mutation_updateGroup._({
    r'id': id,
    if (input != null) r'input': input,
  });

  Variables_Mutation_updateGroup._(this._$data);

  factory Variables_Mutation_updateGroup.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    if (data.containsKey('input')) {
      final l$input = data['input'];
      result$data['input'] = l$input == null
          ? null
          : Input_UpdateGroupInput.fromJson((l$input as Map<String, dynamic>));
    }
    return Variables_Mutation_updateGroup._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Input_UpdateGroupInput? get input =>
      (_$data['input'] as Input_UpdateGroupInput?);

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

abstract class CopyWith_Variables_Mutation_updateGroup<TRes> {
  factory CopyWith_Variables_Mutation_updateGroup(
    Variables_Mutation_updateGroup instance,
    TRes Function(Variables_Mutation_updateGroup) then,
  ) = _CopyWithImpl_Variables_Mutation_updateGroup;

  factory CopyWith_Variables_Mutation_updateGroup.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_updateGroup;

  TRes call({String? id, Input_UpdateGroupInput? input});
}

class _CopyWithImpl_Variables_Mutation_updateGroup<TRes>
    implements CopyWith_Variables_Mutation_updateGroup<TRes> {
  _CopyWithImpl_Variables_Mutation_updateGroup(this._instance, this._then);

  final Variables_Mutation_updateGroup _instance;

  final TRes Function(Variables_Mutation_updateGroup) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? input = _undefined}) => _then(
    Variables_Mutation_updateGroup._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
      if (input != _undefined) 'input': (input as Input_UpdateGroupInput?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_updateGroup<TRes>
    implements CopyWith_Variables_Mutation_updateGroup<TRes> {
  _CopyWithStubImpl_Variables_Mutation_updateGroup(this._res);

  TRes _res;

  call({String? id, Input_UpdateGroupInput? input}) => _res;
}

class Mutation_updateGroup {
  Mutation_updateGroup({
    this.updateGroup,
    this.$__typename = 'RootMutationType',
  });

  factory Mutation_updateGroup.fromJson(Map<String, dynamic> json) {
    final l$updateGroup = json['updateGroup'];
    final l$$__typename = json['__typename'];
    return Mutation_updateGroup(
      updateGroup: l$updateGroup == null
          ? null
          : Mutation_updateGroup_updateGroup.fromJson(
              (l$updateGroup as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_updateGroup_updateGroup? updateGroup;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateGroup = updateGroup;
    _resultData['updateGroup'] = l$updateGroup?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateGroup = updateGroup;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateGroup, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_updateGroup || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateGroup = updateGroup;
    final lOther$updateGroup = other.updateGroup;
    if (l$updateGroup != lOther$updateGroup) {
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

  TRes call({
    Mutation_updateGroup_updateGroup? updateGroup,
    String? $__typename,
  });
  CopyWith_Mutation_updateGroup_updateGroup<TRes> get updateGroup;
}

class _CopyWithImpl_Mutation_updateGroup<TRes>
    implements CopyWith_Mutation_updateGroup<TRes> {
  _CopyWithImpl_Mutation_updateGroup(this._instance, this._then);

  final Mutation_updateGroup _instance;

  final TRes Function(Mutation_updateGroup) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateGroup = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_updateGroup(
      updateGroup: updateGroup == _undefined
          ? _instance.updateGroup
          : (updateGroup as Mutation_updateGroup_updateGroup?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_updateGroup_updateGroup<TRes> get updateGroup {
    final local$updateGroup = _instance.updateGroup;
    return local$updateGroup == null
        ? CopyWith_Mutation_updateGroup_updateGroup.stub(_then(_instance))
        : CopyWith_Mutation_updateGroup_updateGroup(
            local$updateGroup,
            (e) => call(updateGroup: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_updateGroup<TRes>
    implements CopyWith_Mutation_updateGroup<TRes> {
  _CopyWithStubImpl_Mutation_updateGroup(this._res);

  TRes _res;

  call({Mutation_updateGroup_updateGroup? updateGroup, String? $__typename}) =>
      _res;

  CopyWith_Mutation_updateGroup_updateGroup<TRes> get updateGroup =>
      CopyWith_Mutation_updateGroup_updateGroup.stub(_res);
}

const documentNodeMutationupdateGroup = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'updateGroup'),
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
            name: NameNode(value: 'UpdateGroupInput'),
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
            name: NameNode(value: 'updateGroup'),
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
                      FragmentSpreadNode(
                        name: NameNode(value: 'GroupDetails'),
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
    fragmentDefinitionGroupDetails,
    fragmentDefinitionGroup,
    fragmentDefinitionGroupNoPhoto,
    fragmentDefinitionOrgMeeting,
    fragmentDefinitionServiceNoPhoto,
    fragmentDefinitionStudyYear,
    fragmentDefinitionServiceWithStudyYears,
    fragmentDefinitionService,
    fragmentDefinitionOrgLatestEdit,
    fragmentDefinitionOrgUser,
  ],
);

class Mutation_updateGroup_updateGroup {
  Mutation_updateGroup_updateGroup({
    this.result,
    this.$__typename = 'UpdateGroupResult',
  });

  factory Mutation_updateGroup_updateGroup.fromJson(Map<String, dynamic> json) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_updateGroup_updateGroup(
      result: l$result == null
          ? null
          : Fragment_GroupDetails.fromJson((l$result as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_GroupDetails? result;

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
    if (other is! Mutation_updateGroup_updateGroup ||
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

extension UtilityExtension_Mutation_updateGroup_updateGroup
    on Mutation_updateGroup_updateGroup {
  CopyWith_Mutation_updateGroup_updateGroup<Mutation_updateGroup_updateGroup>
  get copyWith => CopyWith_Mutation_updateGroup_updateGroup(this, (i) => i);
}

abstract class CopyWith_Mutation_updateGroup_updateGroup<TRes> {
  factory CopyWith_Mutation_updateGroup_updateGroup(
    Mutation_updateGroup_updateGroup instance,
    TRes Function(Mutation_updateGroup_updateGroup) then,
  ) = _CopyWithImpl_Mutation_updateGroup_updateGroup;

  factory CopyWith_Mutation_updateGroup_updateGroup.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updateGroup_updateGroup;

  TRes call({Fragment_GroupDetails? result, String? $__typename});
  CopyWith_Fragment_GroupDetails<TRes> get result;
}

class _CopyWithImpl_Mutation_updateGroup_updateGroup<TRes>
    implements CopyWith_Mutation_updateGroup_updateGroup<TRes> {
  _CopyWithImpl_Mutation_updateGroup_updateGroup(this._instance, this._then);

  final Mutation_updateGroup_updateGroup _instance;

  final TRes Function(Mutation_updateGroup_updateGroup) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? result = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_updateGroup_updateGroup(
          result: result == _undefined
              ? _instance.result
              : (result as Fragment_GroupDetails?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_GroupDetails<TRes> get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Fragment_GroupDetails.stub(_then(_instance))
        : CopyWith_Fragment_GroupDetails(local$result, (e) => call(result: e));
  }
}

class _CopyWithStubImpl_Mutation_updateGroup_updateGroup<TRes>
    implements CopyWith_Mutation_updateGroup_updateGroup<TRes> {
  _CopyWithStubImpl_Mutation_updateGroup_updateGroup(this._res);

  TRes _res;

  call({Fragment_GroupDetails? result, String? $__typename}) => _res;

  CopyWith_Fragment_GroupDetails<TRes> get result =>
      CopyWith_Fragment_GroupDetails.stub(_res);
}

class Variables_Mutation_deleteGroup {
  factory Variables_Mutation_deleteGroup({required String id}) =>
      Variables_Mutation_deleteGroup._({r'id': id});

  Variables_Mutation_deleteGroup._(this._$data);

  factory Variables_Mutation_deleteGroup.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables_Mutation_deleteGroup._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
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

abstract class CopyWith_Variables_Mutation_deleteGroup<TRes> {
  factory CopyWith_Variables_Mutation_deleteGroup(
    Variables_Mutation_deleteGroup instance,
    TRes Function(Variables_Mutation_deleteGroup) then,
  ) = _CopyWithImpl_Variables_Mutation_deleteGroup;

  factory CopyWith_Variables_Mutation_deleteGroup.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_deleteGroup;

  TRes call({String? id});
}

class _CopyWithImpl_Variables_Mutation_deleteGroup<TRes>
    implements CopyWith_Variables_Mutation_deleteGroup<TRes> {
  _CopyWithImpl_Variables_Mutation_deleteGroup(this._instance, this._then);

  final Variables_Mutation_deleteGroup _instance;

  final TRes Function(Variables_Mutation_deleteGroup) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables_Mutation_deleteGroup._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_deleteGroup<TRes>
    implements CopyWith_Variables_Mutation_deleteGroup<TRes> {
  _CopyWithStubImpl_Variables_Mutation_deleteGroup(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Mutation_deleteGroup {
  Mutation_deleteGroup({
    this.deleteGroup,
    this.$__typename = 'RootMutationType',
  });

  factory Mutation_deleteGroup.fromJson(Map<String, dynamic> json) {
    final l$deleteGroup = json['deleteGroup'];
    final l$$__typename = json['__typename'];
    return Mutation_deleteGroup(
      deleteGroup: l$deleteGroup == null
          ? null
          : Mutation_deleteGroup_deleteGroup.fromJson(
              (l$deleteGroup as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_deleteGroup_deleteGroup? deleteGroup;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteGroup = deleteGroup;
    _resultData['deleteGroup'] = l$deleteGroup?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteGroup = deleteGroup;
    final l$$__typename = $__typename;
    return Object.hashAll([l$deleteGroup, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_deleteGroup || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteGroup = deleteGroup;
    final lOther$deleteGroup = other.deleteGroup;
    if (l$deleteGroup != lOther$deleteGroup) {
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

  TRes call({
    Mutation_deleteGroup_deleteGroup? deleteGroup,
    String? $__typename,
  });
  CopyWith_Mutation_deleteGroup_deleteGroup<TRes> get deleteGroup;
}

class _CopyWithImpl_Mutation_deleteGroup<TRes>
    implements CopyWith_Mutation_deleteGroup<TRes> {
  _CopyWithImpl_Mutation_deleteGroup(this._instance, this._then);

  final Mutation_deleteGroup _instance;

  final TRes Function(Mutation_deleteGroup) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteGroup = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_deleteGroup(
      deleteGroup: deleteGroup == _undefined
          ? _instance.deleteGroup
          : (deleteGroup as Mutation_deleteGroup_deleteGroup?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_deleteGroup_deleteGroup<TRes> get deleteGroup {
    final local$deleteGroup = _instance.deleteGroup;
    return local$deleteGroup == null
        ? CopyWith_Mutation_deleteGroup_deleteGroup.stub(_then(_instance))
        : CopyWith_Mutation_deleteGroup_deleteGroup(
            local$deleteGroup,
            (e) => call(deleteGroup: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_deleteGroup<TRes>
    implements CopyWith_Mutation_deleteGroup<TRes> {
  _CopyWithStubImpl_Mutation_deleteGroup(this._res);

  TRes _res;

  call({Mutation_deleteGroup_deleteGroup? deleteGroup, String? $__typename}) =>
      _res;

  CopyWith_Mutation_deleteGroup_deleteGroup<TRes> get deleteGroup =>
      CopyWith_Mutation_deleteGroup_deleteGroup.stub(_res);
}

const documentNodeMutationdeleteGroup = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'deleteGroup'),
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
            name: NameNode(value: 'deleteGroup'),
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
    fragmentDefinitionGroup,
    fragmentDefinitionGroupNoPhoto,
  ],
);

class Mutation_deleteGroup_deleteGroup {
  Mutation_deleteGroup_deleteGroup({
    this.result,
    this.$__typename = 'DeleteGroupResult',
  });

  factory Mutation_deleteGroup_deleteGroup.fromJson(Map<String, dynamic> json) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_deleteGroup_deleteGroup(
      result: l$result == null
          ? null
          : Fragment_Group.fromJson((l$result as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Group? result;

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
    if (other is! Mutation_deleteGroup_deleteGroup ||
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

extension UtilityExtension_Mutation_deleteGroup_deleteGroup
    on Mutation_deleteGroup_deleteGroup {
  CopyWith_Mutation_deleteGroup_deleteGroup<Mutation_deleteGroup_deleteGroup>
  get copyWith => CopyWith_Mutation_deleteGroup_deleteGroup(this, (i) => i);
}

abstract class CopyWith_Mutation_deleteGroup_deleteGroup<TRes> {
  factory CopyWith_Mutation_deleteGroup_deleteGroup(
    Mutation_deleteGroup_deleteGroup instance,
    TRes Function(Mutation_deleteGroup_deleteGroup) then,
  ) = _CopyWithImpl_Mutation_deleteGroup_deleteGroup;

  factory CopyWith_Mutation_deleteGroup_deleteGroup.stub(TRes res) =
      _CopyWithStubImpl_Mutation_deleteGroup_deleteGroup;

  TRes call({Fragment_Group? result, String? $__typename});
  CopyWith_Fragment_Group<TRes> get result;
}

class _CopyWithImpl_Mutation_deleteGroup_deleteGroup<TRes>
    implements CopyWith_Mutation_deleteGroup_deleteGroup<TRes> {
  _CopyWithImpl_Mutation_deleteGroup_deleteGroup(this._instance, this._then);

  final Mutation_deleteGroup_deleteGroup _instance;

  final TRes Function(Mutation_deleteGroup_deleteGroup) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? result = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_deleteGroup_deleteGroup(
          result: result == _undefined
              ? _instance.result
              : (result as Fragment_Group?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_Group<TRes> get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Fragment_Group.stub(_then(_instance))
        : CopyWith_Fragment_Group(local$result, (e) => call(result: e));
  }
}

class _CopyWithStubImpl_Mutation_deleteGroup_deleteGroup<TRes>
    implements CopyWith_Mutation_deleteGroup_deleteGroup<TRes> {
  _CopyWithStubImpl_Mutation_deleteGroup_deleteGroup(this._res);

  TRes _res;

  call({Fragment_Group? result, String? $__typename}) => _res;

  CopyWith_Fragment_Group<TRes> get result =>
      CopyWith_Fragment_Group.stub(_res);
}
