import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Mutation_overrideDataCheck {
  factory Variables_Mutation_overrideDataCheck({
    required UuidValue familyId,
    required bool isComplete,
  }) => Variables_Mutation_overrideDataCheck._({
    r'familyId': familyId,
    r'isComplete': isComplete,
  });

  Variables_Mutation_overrideDataCheck._(this._$data);

  factory Variables_Mutation_overrideDataCheck.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$familyId = data['familyId'];
    result$data['familyId'] = stringToUuid(l$familyId);
    final l$isComplete = data['isComplete'];
    result$data['isComplete'] = (l$isComplete as bool);
    return Variables_Mutation_overrideDataCheck._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get familyId => (_$data['familyId'] as UuidValue);

  bool get isComplete => (_$data['isComplete'] as bool);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$familyId = familyId;
    result$data['familyId'] = uuidToString(l$familyId);
    final l$isComplete = isComplete;
    result$data['isComplete'] = l$isComplete;
    return result$data;
  }

  CopyWith_Variables_Mutation_overrideDataCheck<
    Variables_Mutation_overrideDataCheck
  >
  get copyWith => CopyWith_Variables_Mutation_overrideDataCheck(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_overrideDataCheck ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$familyId = familyId;
    final lOther$familyId = other.familyId;
    if (l$familyId != lOther$familyId) {
      return false;
    }
    final l$isComplete = isComplete;
    final lOther$isComplete = other.isComplete;
    if (l$isComplete != lOther$isComplete) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$familyId = familyId;
    final l$isComplete = isComplete;
    return Object.hashAll([l$familyId, l$isComplete]);
  }
}

abstract class CopyWith_Variables_Mutation_overrideDataCheck<TRes> {
  factory CopyWith_Variables_Mutation_overrideDataCheck(
    Variables_Mutation_overrideDataCheck instance,
    TRes Function(Variables_Mutation_overrideDataCheck) then,
  ) = _CopyWithImpl_Variables_Mutation_overrideDataCheck;

  factory CopyWith_Variables_Mutation_overrideDataCheck.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_overrideDataCheck;

  TRes call({UuidValue? familyId, bool? isComplete});
}

class _CopyWithImpl_Variables_Mutation_overrideDataCheck<TRes>
    implements CopyWith_Variables_Mutation_overrideDataCheck<TRes> {
  _CopyWithImpl_Variables_Mutation_overrideDataCheck(
    this._instance,
    this._then,
  );

  final Variables_Mutation_overrideDataCheck _instance;

  final TRes Function(Variables_Mutation_overrideDataCheck) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? familyId = _undefined, Object? isComplete = _undefined}) =>
      _then(
        Variables_Mutation_overrideDataCheck._({
          ..._instance._$data,
          if (familyId != _undefined && familyId != null)
            'familyId': (familyId as UuidValue),
          if (isComplete != _undefined && isComplete != null)
            'isComplete': (isComplete as bool),
        }),
      );
}

class _CopyWithStubImpl_Variables_Mutation_overrideDataCheck<TRes>
    implements CopyWith_Variables_Mutation_overrideDataCheck<TRes> {
  _CopyWithStubImpl_Variables_Mutation_overrideDataCheck(this._res);

  TRes _res;

  call({UuidValue? familyId, bool? isComplete}) => _res;
}

class Mutation_overrideDataCheck {
  Mutation_overrideDataCheck({this.insertDataCheckOverridesOne});

  factory Mutation_overrideDataCheck.fromJson(Map<String, dynamic> json) {
    final l$insertDataCheckOverridesOne = json['insertDataCheckOverridesOne'];
    return Mutation_overrideDataCheck(
      insertDataCheckOverridesOne: l$insertDataCheckOverridesOne == null
          ? null
          : Mutation_overrideDataCheck_insertDataCheckOverridesOne.fromJson(
              (l$insertDataCheckOverridesOne as Map<String, dynamic>),
            ),
    );
  }

  final Mutation_overrideDataCheck_insertDataCheckOverridesOne?
  insertDataCheckOverridesOne;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertDataCheckOverridesOne = insertDataCheckOverridesOne;
    _resultData['insertDataCheckOverridesOne'] = l$insertDataCheckOverridesOne
        ?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertDataCheckOverridesOne = insertDataCheckOverridesOne;
    return Object.hashAll([l$insertDataCheckOverridesOne]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_overrideDataCheck ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$insertDataCheckOverridesOne = insertDataCheckOverridesOne;
    final lOther$insertDataCheckOverridesOne =
        other.insertDataCheckOverridesOne;
    if (l$insertDataCheckOverridesOne != lOther$insertDataCheckOverridesOne) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Mutation_overrideDataCheck
    on Mutation_overrideDataCheck {
  CopyWith_Mutation_overrideDataCheck<Mutation_overrideDataCheck>
  get copyWith => CopyWith_Mutation_overrideDataCheck(this, (i) => i);
}

abstract class CopyWith_Mutation_overrideDataCheck<TRes> {
  factory CopyWith_Mutation_overrideDataCheck(
    Mutation_overrideDataCheck instance,
    TRes Function(Mutation_overrideDataCheck) then,
  ) = _CopyWithImpl_Mutation_overrideDataCheck;

  factory CopyWith_Mutation_overrideDataCheck.stub(TRes res) =
      _CopyWithStubImpl_Mutation_overrideDataCheck;

  TRes call({
    Mutation_overrideDataCheck_insertDataCheckOverridesOne?
    insertDataCheckOverridesOne,
  });
  CopyWith_Mutation_overrideDataCheck_insertDataCheckOverridesOne<TRes>
  get insertDataCheckOverridesOne;
}

class _CopyWithImpl_Mutation_overrideDataCheck<TRes>
    implements CopyWith_Mutation_overrideDataCheck<TRes> {
  _CopyWithImpl_Mutation_overrideDataCheck(this._instance, this._then);

  final Mutation_overrideDataCheck _instance;

  final TRes Function(Mutation_overrideDataCheck) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? insertDataCheckOverridesOne = _undefined}) => _then(
    Mutation_overrideDataCheck(
      insertDataCheckOverridesOne: insertDataCheckOverridesOne == _undefined
          ? _instance.insertDataCheckOverridesOne
          : (insertDataCheckOverridesOne
                as Mutation_overrideDataCheck_insertDataCheckOverridesOne?),
    ),
  );

  CopyWith_Mutation_overrideDataCheck_insertDataCheckOverridesOne<TRes>
  get insertDataCheckOverridesOne {
    final local$insertDataCheckOverridesOne =
        _instance.insertDataCheckOverridesOne;
    return local$insertDataCheckOverridesOne == null
        ? CopyWith_Mutation_overrideDataCheck_insertDataCheckOverridesOne.stub(
            _then(_instance),
          )
        : CopyWith_Mutation_overrideDataCheck_insertDataCheckOverridesOne(
            local$insertDataCheckOverridesOne,
            (e) => call(insertDataCheckOverridesOne: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_overrideDataCheck<TRes>
    implements CopyWith_Mutation_overrideDataCheck<TRes> {
  _CopyWithStubImpl_Mutation_overrideDataCheck(this._res);

  TRes _res;

  call({
    Mutation_overrideDataCheck_insertDataCheckOverridesOne?
    insertDataCheckOverridesOne,
  }) => _res;

  CopyWith_Mutation_overrideDataCheck_insertDataCheckOverridesOne<TRes>
  get insertDataCheckOverridesOne =>
      CopyWith_Mutation_overrideDataCheck_insertDataCheckOverridesOne.stub(
        _res,
      );
}

const documentNodeMutationoverrideDataCheck = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'overrideDataCheck'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'familyId')),
          type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'isComplete')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
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
            name: NameNode(value: 'insertDataCheckOverridesOne'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'object'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'familyId'),
                      value: VariableNode(name: NameNode(value: 'familyId')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'isComplete'),
                      value: VariableNode(name: NameNode(value: 'isComplete')),
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
                        name: NameNode(value: 'data_check_overrides_pkey'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'updateColumns'),
                      value: ListValueNode(
                        values: [
                          EnumValueNode(name: NameNode(value: 'isComplete')),
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
                  name: NameNode(value: 'familyId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'isComplete'),
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
        ],
      ),
    ),
  ],
);

class Mutation_overrideDataCheck_insertDataCheckOverridesOne {
  Mutation_overrideDataCheck_insertDataCheckOverridesOne({
    required this.familyId,
    required this.isComplete,
    this.$__typename = 'DataCheckOverrides',
  });

  factory Mutation_overrideDataCheck_insertDataCheckOverridesOne.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$familyId = json['familyId'];
    final l$isComplete = json['isComplete'];
    final l$$__typename = json['__typename'];
    return Mutation_overrideDataCheck_insertDataCheckOverridesOne(
      familyId: stringToUuid(l$familyId),
      isComplete: (l$isComplete as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue familyId;

  final bool isComplete;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$familyId = familyId;
    _resultData['familyId'] = uuidToString(l$familyId);
    final l$isComplete = isComplete;
    _resultData['isComplete'] = l$isComplete;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$familyId = familyId;
    final l$isComplete = isComplete;
    final l$$__typename = $__typename;
    return Object.hashAll([l$familyId, l$isComplete, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_overrideDataCheck_insertDataCheckOverridesOne ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$familyId = familyId;
    final lOther$familyId = other.familyId;
    if (l$familyId != lOther$familyId) {
      return false;
    }
    final l$isComplete = isComplete;
    final lOther$isComplete = other.isComplete;
    if (l$isComplete != lOther$isComplete) {
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

extension UtilityExtension_Mutation_overrideDataCheck_insertDataCheckOverridesOne
    on Mutation_overrideDataCheck_insertDataCheckOverridesOne {
  CopyWith_Mutation_overrideDataCheck_insertDataCheckOverridesOne<
    Mutation_overrideDataCheck_insertDataCheckOverridesOne
  >
  get copyWith =>
      CopyWith_Mutation_overrideDataCheck_insertDataCheckOverridesOne(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Mutation_overrideDataCheck_insertDataCheckOverridesOne<
  TRes
> {
  factory CopyWith_Mutation_overrideDataCheck_insertDataCheckOverridesOne(
    Mutation_overrideDataCheck_insertDataCheckOverridesOne instance,
    TRes Function(Mutation_overrideDataCheck_insertDataCheckOverridesOne) then,
  ) = _CopyWithImpl_Mutation_overrideDataCheck_insertDataCheckOverridesOne;

  factory CopyWith_Mutation_overrideDataCheck_insertDataCheckOverridesOne.stub(
    TRes res,
  ) = _CopyWithStubImpl_Mutation_overrideDataCheck_insertDataCheckOverridesOne;

  TRes call({UuidValue? familyId, bool? isComplete, String? $__typename});
}

class _CopyWithImpl_Mutation_overrideDataCheck_insertDataCheckOverridesOne<TRes>
    implements
        CopyWith_Mutation_overrideDataCheck_insertDataCheckOverridesOne<TRes> {
  _CopyWithImpl_Mutation_overrideDataCheck_insertDataCheckOverridesOne(
    this._instance,
    this._then,
  );

  final Mutation_overrideDataCheck_insertDataCheckOverridesOne _instance;

  final TRes Function(Mutation_overrideDataCheck_insertDataCheckOverridesOne)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? familyId = _undefined,
    Object? isComplete = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_overrideDataCheck_insertDataCheckOverridesOne(
      familyId: familyId == _undefined || familyId == null
          ? _instance.familyId
          : (familyId as UuidValue),
      isComplete: isComplete == _undefined || isComplete == null
          ? _instance.isComplete
          : (isComplete as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Mutation_overrideDataCheck_insertDataCheckOverridesOne<
  TRes
>
    implements
        CopyWith_Mutation_overrideDataCheck_insertDataCheckOverridesOne<TRes> {
  _CopyWithStubImpl_Mutation_overrideDataCheck_insertDataCheckOverridesOne(
    this._res,
  );

  TRes _res;

  call({UuidValue? familyId, bool? isComplete, String? $__typename}) => _res;
}

class Variables_Mutation_clearDataCheckOverride {
  factory Variables_Mutation_clearDataCheckOverride({
    required UuidValue familyId,
  }) => Variables_Mutation_clearDataCheckOverride._({r'familyId': familyId});

  Variables_Mutation_clearDataCheckOverride._(this._$data);

  factory Variables_Mutation_clearDataCheckOverride.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$familyId = data['familyId'];
    result$data['familyId'] = stringToUuid(l$familyId);
    return Variables_Mutation_clearDataCheckOverride._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get familyId => (_$data['familyId'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$familyId = familyId;
    result$data['familyId'] = uuidToString(l$familyId);
    return result$data;
  }

  CopyWith_Variables_Mutation_clearDataCheckOverride<
    Variables_Mutation_clearDataCheckOverride
  >
  get copyWith =>
      CopyWith_Variables_Mutation_clearDataCheckOverride(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_clearDataCheckOverride ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$familyId = familyId;
    final lOther$familyId = other.familyId;
    if (l$familyId != lOther$familyId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$familyId = familyId;
    return Object.hashAll([l$familyId]);
  }
}

abstract class CopyWith_Variables_Mutation_clearDataCheckOverride<TRes> {
  factory CopyWith_Variables_Mutation_clearDataCheckOverride(
    Variables_Mutation_clearDataCheckOverride instance,
    TRes Function(Variables_Mutation_clearDataCheckOverride) then,
  ) = _CopyWithImpl_Variables_Mutation_clearDataCheckOverride;

  factory CopyWith_Variables_Mutation_clearDataCheckOverride.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_clearDataCheckOverride;

  TRes call({UuidValue? familyId});
}

class _CopyWithImpl_Variables_Mutation_clearDataCheckOverride<TRes>
    implements CopyWith_Variables_Mutation_clearDataCheckOverride<TRes> {
  _CopyWithImpl_Variables_Mutation_clearDataCheckOverride(
    this._instance,
    this._then,
  );

  final Variables_Mutation_clearDataCheckOverride _instance;

  final TRes Function(Variables_Mutation_clearDataCheckOverride) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? familyId = _undefined}) => _then(
    Variables_Mutation_clearDataCheckOverride._({
      ..._instance._$data,
      if (familyId != _undefined && familyId != null)
        'familyId': (familyId as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_clearDataCheckOverride<TRes>
    implements CopyWith_Variables_Mutation_clearDataCheckOverride<TRes> {
  _CopyWithStubImpl_Variables_Mutation_clearDataCheckOverride(this._res);

  TRes _res;

  call({UuidValue? familyId}) => _res;
}

class Mutation_clearDataCheckOverride {
  Mutation_clearDataCheckOverride({this.deleteDataCheckOverridesByPk});

  factory Mutation_clearDataCheckOverride.fromJson(Map<String, dynamic> json) {
    final l$deleteDataCheckOverridesByPk = json['deleteDataCheckOverridesByPk'];
    return Mutation_clearDataCheckOverride(
      deleteDataCheckOverridesByPk: l$deleteDataCheckOverridesByPk == null
          ? null
          : Mutation_clearDataCheckOverride_deleteDataCheckOverridesByPk.fromJson(
              (l$deleteDataCheckOverridesByPk as Map<String, dynamic>),
            ),
    );
  }

  final Mutation_clearDataCheckOverride_deleteDataCheckOverridesByPk?
  deleteDataCheckOverridesByPk;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteDataCheckOverridesByPk = deleteDataCheckOverridesByPk;
    _resultData['deleteDataCheckOverridesByPk'] = l$deleteDataCheckOverridesByPk
        ?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteDataCheckOverridesByPk = deleteDataCheckOverridesByPk;
    return Object.hashAll([l$deleteDataCheckOverridesByPk]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_clearDataCheckOverride ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteDataCheckOverridesByPk = deleteDataCheckOverridesByPk;
    final lOther$deleteDataCheckOverridesByPk =
        other.deleteDataCheckOverridesByPk;
    if (l$deleteDataCheckOverridesByPk != lOther$deleteDataCheckOverridesByPk) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Mutation_clearDataCheckOverride
    on Mutation_clearDataCheckOverride {
  CopyWith_Mutation_clearDataCheckOverride<Mutation_clearDataCheckOverride>
  get copyWith => CopyWith_Mutation_clearDataCheckOverride(this, (i) => i);
}

abstract class CopyWith_Mutation_clearDataCheckOverride<TRes> {
  factory CopyWith_Mutation_clearDataCheckOverride(
    Mutation_clearDataCheckOverride instance,
    TRes Function(Mutation_clearDataCheckOverride) then,
  ) = _CopyWithImpl_Mutation_clearDataCheckOverride;

  factory CopyWith_Mutation_clearDataCheckOverride.stub(TRes res) =
      _CopyWithStubImpl_Mutation_clearDataCheckOverride;

  TRes call({
    Mutation_clearDataCheckOverride_deleteDataCheckOverridesByPk?
    deleteDataCheckOverridesByPk,
  });
  CopyWith_Mutation_clearDataCheckOverride_deleteDataCheckOverridesByPk<TRes>
  get deleteDataCheckOverridesByPk;
}

class _CopyWithImpl_Mutation_clearDataCheckOverride<TRes>
    implements CopyWith_Mutation_clearDataCheckOverride<TRes> {
  _CopyWithImpl_Mutation_clearDataCheckOverride(this._instance, this._then);

  final Mutation_clearDataCheckOverride _instance;

  final TRes Function(Mutation_clearDataCheckOverride) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? deleteDataCheckOverridesByPk = _undefined}) => _then(
    Mutation_clearDataCheckOverride(
      deleteDataCheckOverridesByPk: deleteDataCheckOverridesByPk == _undefined
          ? _instance.deleteDataCheckOverridesByPk
          : (deleteDataCheckOverridesByPk
                as Mutation_clearDataCheckOverride_deleteDataCheckOverridesByPk?),
    ),
  );

  CopyWith_Mutation_clearDataCheckOverride_deleteDataCheckOverridesByPk<TRes>
  get deleteDataCheckOverridesByPk {
    final local$deleteDataCheckOverridesByPk =
        _instance.deleteDataCheckOverridesByPk;
    return local$deleteDataCheckOverridesByPk == null
        ? CopyWith_Mutation_clearDataCheckOverride_deleteDataCheckOverridesByPk.stub(
            _then(_instance),
          )
        : CopyWith_Mutation_clearDataCheckOverride_deleteDataCheckOverridesByPk(
            local$deleteDataCheckOverridesByPk,
            (e) => call(deleteDataCheckOverridesByPk: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_clearDataCheckOverride<TRes>
    implements CopyWith_Mutation_clearDataCheckOverride<TRes> {
  _CopyWithStubImpl_Mutation_clearDataCheckOverride(this._res);

  TRes _res;

  call({
    Mutation_clearDataCheckOverride_deleteDataCheckOverridesByPk?
    deleteDataCheckOverridesByPk,
  }) => _res;

  CopyWith_Mutation_clearDataCheckOverride_deleteDataCheckOverridesByPk<TRes>
  get deleteDataCheckOverridesByPk =>
      CopyWith_Mutation_clearDataCheckOverride_deleteDataCheckOverridesByPk.stub(
        _res,
      );
}

const documentNodeMutationclearDataCheckOverride = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'clearDataCheckOverride'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'familyId')),
          type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'deleteDataCheckOverridesByPk'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'familyId'),
                value: VariableNode(name: NameNode(value: 'familyId')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'familyId'),
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
        ],
      ),
    ),
  ],
);

class Mutation_clearDataCheckOverride_deleteDataCheckOverridesByPk {
  Mutation_clearDataCheckOverride_deleteDataCheckOverridesByPk({
    required this.familyId,
    this.$__typename = 'DataCheckOverrides',
  });

  factory Mutation_clearDataCheckOverride_deleteDataCheckOverridesByPk.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$familyId = json['familyId'];
    final l$$__typename = json['__typename'];
    return Mutation_clearDataCheckOverride_deleteDataCheckOverridesByPk(
      familyId: stringToUuid(l$familyId),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue familyId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$familyId = familyId;
    _resultData['familyId'] = uuidToString(l$familyId);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$familyId = familyId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$familyId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation_clearDataCheckOverride_deleteDataCheckOverridesByPk ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$familyId = familyId;
    final lOther$familyId = other.familyId;
    if (l$familyId != lOther$familyId) {
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

extension UtilityExtension_Mutation_clearDataCheckOverride_deleteDataCheckOverridesByPk
    on Mutation_clearDataCheckOverride_deleteDataCheckOverridesByPk {
  CopyWith_Mutation_clearDataCheckOverride_deleteDataCheckOverridesByPk<
    Mutation_clearDataCheckOverride_deleteDataCheckOverridesByPk
  >
  get copyWith =>
      CopyWith_Mutation_clearDataCheckOverride_deleteDataCheckOverridesByPk(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Mutation_clearDataCheckOverride_deleteDataCheckOverridesByPk<
  TRes
> {
  factory CopyWith_Mutation_clearDataCheckOverride_deleteDataCheckOverridesByPk(
    Mutation_clearDataCheckOverride_deleteDataCheckOverridesByPk instance,
    TRes Function(Mutation_clearDataCheckOverride_deleteDataCheckOverridesByPk)
    then,
  ) = _CopyWithImpl_Mutation_clearDataCheckOverride_deleteDataCheckOverridesByPk;

  factory CopyWith_Mutation_clearDataCheckOverride_deleteDataCheckOverridesByPk.stub(
    TRes res,
  ) = _CopyWithStubImpl_Mutation_clearDataCheckOverride_deleteDataCheckOverridesByPk;

  TRes call({UuidValue? familyId, String? $__typename});
}

class _CopyWithImpl_Mutation_clearDataCheckOverride_deleteDataCheckOverridesByPk<
  TRes
>
    implements
        CopyWith_Mutation_clearDataCheckOverride_deleteDataCheckOverridesByPk<
          TRes
        > {
  _CopyWithImpl_Mutation_clearDataCheckOverride_deleteDataCheckOverridesByPk(
    this._instance,
    this._then,
  );

  final Mutation_clearDataCheckOverride_deleteDataCheckOverridesByPk _instance;

  final TRes Function(
    Mutation_clearDataCheckOverride_deleteDataCheckOverridesByPk,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? familyId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_clearDataCheckOverride_deleteDataCheckOverridesByPk(
      familyId: familyId == _undefined || familyId == null
          ? _instance.familyId
          : (familyId as UuidValue),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Mutation_clearDataCheckOverride_deleteDataCheckOverridesByPk<
  TRes
>
    implements
        CopyWith_Mutation_clearDataCheckOverride_deleteDataCheckOverridesByPk<
          TRes
        > {
  _CopyWithStubImpl_Mutation_clearDataCheckOverride_deleteDataCheckOverridesByPk(
    this._res,
  );

  TRes _res;

  call({UuidValue? familyId, String? $__typename}) => _res;
}
